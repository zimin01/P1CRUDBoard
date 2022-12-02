<%--
  Created by IntelliJ IDEA.
  User: jimin
  Date: 2022/11/30
  Time: 2:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>게시판</title>
  <link rel="stylesheet" href="../../resources/css/style.css">

    <script>
        function delete_ok(id){
            var a=confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/'+id;
        }
    </script>

    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>

</head>
<body>
<h1>회원관리 게시판</h1>

<table id="list" width="90%">
    <tr>
        <th>id</th>
        <th>카테고리</th>
        <th>제목</th>
        <th>글쓴이</th>
        <th>내용</th>
        <th>등록일</th>
        <th>수정</th>
        <th>삭제</th>
    </tr>

    <c:forEach items="${list}" var="u">
        <tr>

            <td>${u.seq}</td>
            <td>${u.category}</td>
            <td>${u.title}</td>
            <td>${u.writer}</td>
            <td>${u.content}</td>
            <td>${u.regdate}</td>
            <td><a href="editform/${u.seq}">글수정</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">글삭제</a></td>

        </tr>
    </c:forEach>

    <br/>
</table>
<button type="button" onclick="location.href='add'">새글쓰기</button>
<%--<br/><a href="addpostform.jsp">Add New Post</a>--%>



</body>
</html>
