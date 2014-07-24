## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	cinv <- NULL
    setvalue <- function(y) {
        x <<- y
        cinv <<- NULL
    }
    getvalue <- function() x
    setinverse <- function(inverse) cinv <<- inverse
    getinverse <- function() cinv
    list(set=setvalue, get=getvalue, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("fetching inverse from cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}
