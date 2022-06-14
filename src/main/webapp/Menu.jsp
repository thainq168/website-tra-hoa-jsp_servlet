<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--begin of menu-->
<nav class="navbar navbar-expand-md" style="position: fixed; top: 0; width:100%;  z-index: 100000; background-color: #5b7553;">
    <div class="container">
        <a class="navbar-brand" href="home"><img src="https://i.imgur.com/AS4pXpc.png" style="width:150px;"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto text-white">
            <li class="nav-item">
                        <a class="nav-link" href="home">Trang chủ</a>
                    </li> 
            <li class="nav-item">
                        <a class="nav-link" href="shop">Sản phẩm</a>
                    </li> 
                
               <%--  <c:if test="${sessionScope.acc.isSell == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="manager">Manager Product</a>
                    </li>
                </c:if> --%>
                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Xin chào ${sessionScope.acc.user}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Đăng xuất</a>
                    </li> 
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="login">Đăng nhập</a>
                    </li>
                </c:if>
                
                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="EditProfile.jsp">Chỉnh sửa thông tin</a>
                    </li>
                </c:if>
               <c:if test="${sessionScope.acc.isAdmin == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="admin">Admin Dashboard</a>
                    </li>
                </c:if>
            </ul>

            <form action="search" method="post" class="form-inline my-2 my-lg-0">
                
                <a class="btn btn-dark btn-sm ml-3" href="managerCart">
                    <i class="fa fa-shopping-cart"></i> <span style="font-size: 14px;">&ensp;</span>
                    <b><span id="amountCart" class="badge badge-light" style="color:black; font-size: 12px;"></span></b>
                  
                </a>
            </form>
        </div>
    </div>
</nav>



<!--end of menu-->
