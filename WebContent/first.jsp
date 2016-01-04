<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- Bootstrap -->
    <link href="bootstrap-3.3.4-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>

</head>
<body>
                  
<%
Connection conn = null;                                        // null로 초기화 한다.

try{

String url = "jdbc:oracle:thin:@localhost:1521:orcl";        // 사용하려는 데이터베이스명을 포함한 URL 기술

String id = "scott";                                                    // 사용자 계정

String pw = "tiger";                                                // 사용자 계정의 패스워드



Class.forName("oracle.jdbc.driver.OracleDriver");                       // 데이터베이스와 연동하기 위해 DriverManager에 등록한다.

conn=DriverManager.getConnection(url,id,pw);              // DriverManager 객체로부터 Connection 객체를 얻어온다.

out.println("제대로 연결되었습니다.");                            // 커넥션이 제대로 연결되면 수행된다.



}catch(Exception e){                                                    // 예외가 발생하면 예외 상황을 처리한다.

e.printStackTrace();

}

%>
</body>
</html> 