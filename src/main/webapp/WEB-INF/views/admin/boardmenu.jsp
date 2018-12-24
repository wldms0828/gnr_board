<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/common/public.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.menu_list {width: 200px;}
.menu_category{
	padding: 5px 10px;
	cursor: pointer;
	position: relative;
	font-weight: bold;
	background-color: darkgray;
	color: lightgray;
}
.menu_body{
	display: none;
	text-align: left;
	}
.menu_body a{
	display: block;
	background: lightgray;
	padding: 10px;
	text-decoration: none;
	
}
.menu_body a:hobver{
	color: steelblue;
	text-decoration: underline;
}
</style>

<script type="text/javascript">
	$(document).ready(function name() {
		$('#boardmenu p.menu_category').click(function() {
			$(this).next("div.menu_body").slideDown(500).siblings("div.menu_body").slideUp("slow");
		});
	});
</script>
</head>
<body>
<div id="boardmenu"  class="menu_list" align="center">
<c:set var="idx" value="0"/>
<c:forEach varStatus="i" var="board" items="${menu}">
	<c:if test="${board.ccode != idx}">
	<p class="menu_category">${board.cname}</p>
	<c:set var="idx" value="${board.ccode}"/>
	<div class="menu_body">
		</c:if>
	<a href="${root}/${board.control}/list.bit?bcode=${board.bcode}&pg=1&key=&word=">${board.bname}</a>
	<!-- 어떤 페이지에서 넘어왔는지는 항상 기억하고 있어야 한다. -->
	<c:if test="${i.index < menu.size()-1 }">
		<c:if test="${idx != menu.get(i.index+1).ccode}">
	</div>
		</c:if>
	</c:if>

</c:forEach>

</div>


</body>
</html>