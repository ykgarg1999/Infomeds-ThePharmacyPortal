<%@page import="com.dao.med_ret"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>InfoMeds</title>
<!-- Bootstrap CDN -->

<link 
rel="stylesheet" 
href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" 
crossorigin="anonymous"
/>

<!-- Font Awesome CDN -->
<script src="https://kit.fontawesome.com/1ca005bb23.js" crossorigin="anonymous"></script>

<!-- Slick Slider -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

<!-- Custom StyleSheet -->
<link rel="stylesheet" type="text/css" href="med_info.css"/>
<link rel="stylesheet" type="text/css" href="med_info_1.css"/>


<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
 
<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">

</head>
<body>

<!-- header -->

<header>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-12 col-12">
				<div class="btn-group">
					<button class="btn border dropdown-toggle my-md-4 my-2 text-white" 
						data-toggle="dropdown" 
						aria-haspopup="true"
						aria-expanded="false">
						USD
					</button>
					<div class="dropdown-menu">
					<a href="#" class="dropdown-item">INR-Rupees</a>
					</div>
				</div>
			</div>
				<div class="col-md-4 col-12 text center">
					<h1 class="my-md-3 site-title text-white">Medicial Info</h1>
				</div>
				<div class="col-md-4 col-12 text-right">
						<p class="my-md-4 header-links">
					    	<a href="login.html" class="px-2">Sign In</a>
					    	<a href="signup.html" class="px-1">Create an Account</a>
						</p>
				</div>
		</div>
	</div>
<div class="container-fluid p-0">
	<nav class="navbar navbar-expand-lg navbar-light bg-white">		
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">HOME<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Medicines</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Fitness</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Personal Care</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About Us</a>
      </li>
    </ul>
    
    <form class="form-inline my-2 my-lg-0" action="submit" method="post">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="srch">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" >Search</button>
    </form>
    
  </div>
  
</nav>
</div>
</header>

<!-- /header -->


<!-- /MAIN -->
<div class="main">
	<div class = "main_sec">
	<div class = "cont_sec">
		<div class = "left_sec">
			<div class="prod_info">
				<div class="pro_info_left">
					<h5 class="drg_nam">
					<% 
				med_ret nam=(med_ret)request.getAttribute("drg");
				out.print("<h4>"+nam.getDrg_nam()+"</h4>");
					
					%>
					</h5><br>
					<div class="drg_img">
						<img src="med_pic.jpeg" class="img_drg">
					</div>

					
				</div>
				<div class="pro_info_right">
					<br><br>
					<ul>
						<li>
						<%
						out.print("<h6>"+"Med Id : "+"</h6>"+nam.getId());
						%>
						</li><br>
						<li><h6>Rating : </h6>
						<%
						out.print(nam.getRat());
						%>
						</li><br>
						<li><h6>Condition : </h6>
						<%
						out.print(nam.getCond());
						%>
						</li>
					</ul>
					
				</div>
			


				
			</div>
			
		</div>
		<div class="right_sec">

		</div>

	</div>

	<div class="rev_sec">
		<center><h5>REVIEWS</h5></center>
		<div class="rev">
			<%
				out.print(nam.getRev());
			%>
			
		</div>
		
	</div>



	</div>


</div>

</body>
</html>