<%@ include file="/WEB-INF/template/include.jsp" %>
<%@ include file="template/header.jsp" %>
<title>Manage Cohort Program</title> <!--set page title-->
</head>
<openmrs:htmlInclude file="/moduleResources/cohort/styles/genericPageStyle.css" />
<openmrs:htmlInclude file="/moduleResources/cohort/styles/pages/genericManagePageStyling.css" />
<%@ include file="template/navbar.jsp" %>

<body>
<div class="container">
    <div class="row">
        <div class="col-sm-10">
            <h4 class="heading"><span>Manage Cohort Program</span></h4>
            <div class="main-container">

                <div class="row">
                    <div class="col-sm-7">
                        <form id="login" method="get">
                            <div class="input-group">
                                <spring:bind path="cohortprogram.name">
                                    <span class="input-group-btn">
                                        <input class="btn btn-default" type="submit" id="search" name="search" value="search">
                                    </span>
                                    <input class="search form-control" type="text" id="name" name="name" value="${status.value}" placeholder="Search Cohort Program"
                                           required>
                                    <c:if test="${status.errorMessage != ''}"><span class="error">${status.errorMessage}</span></c:if>
                                </spring:bind>
                            </div>
                        </form>
                    </div>

                    <div class="col-sm-3 ">
                        <a class="btn btn-primary" href="addCohortProgram.form" style="padding-top: 0; padding-bottom: 0">
                            <h4>
                                <i class="fa fa-plus-square-o fa-lg"></i> Add Cohort Program
                            </h4>
                        </a>
                    </div>

                </div>
                <br/>

                <div class="row">
                    <div class="col-sm-11">
                        <table class="table table-hover table-bordered results">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th class="col-md-5 col-xs-5">Cohort Program Name<span class="text-muted"> (click entry to edit)</span></th>
                                <th class="col-md-4 col-xs-4">Description</th>
                            </tr>
                            </thead>
                            <tbody>

                            <c:forEach var="ls" items="${CohortTypeList}" varStatus="status">
                                <tr class='${status.index % 2 == 0 ? "oddRow" : "evenRow" }'>
                                    <th scope="row">${status.index+1}</th>
                                    <td class="tdStyle">
                                        <a href="${pageContext.request.contextPath}/module/cohort/editCohortProgram.form?cpid=${ls.cohortProgramId}">${ls.name}</a>
                                    </td>
                                    <td class="tdStyle">
                                            ${ls.description}
                                    </td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>

                    </div>
                    <br/>
                </div>
            </div>
        </div>
    </div>
</div>
</body>


<!--Code Body-->


<!--Script includes for new UI -->
<%--<openmrs:htmlInclude file="/moduleResources/cohort/scripts/pages/patientSearch.js" />--%>
<!--END-->