S' -> S

S -> PRE
S -> IMP
S -> CLS

PRE -> # ID : " ID " ;
PRE -> ε

IMP -> import ID ;
IMP -> IMP as ID ;
IMP -> ε

CLS -> AC_MODIFIER class ID { STMT }

AC_MODIFIER -> public
AC_MODIFIER -> private
AC_MODIFIER -> protected
AC_MODIFIER -> ε

TYPE -> class
TYPE -> string
TYPE -> int
TYPE -> boolean
TYPE -> float
TYPE -> Double
TYPE -> typedef
TYPE -> T
TYPE -> void
TYPE -> Object
TYPE -> ID

MODIFIER -> static
MODIFIER -> abstract

FUNC -> AC_MODIFIER MODIFIER TYPE ID ( ARGS_LIST ) { STMT }

ARGS_LIST -> TYPE ID
ARGS_LIST -> ARGS_LIST, ARGS_LIST
ARGS_LIST -> ε

STMT -> STMT
STMT -> FUNC
STMT -> EXPR
STMT -> if ( IF_EXPR ) { STMT }
STMT -> if ( IF_EXPR ) { STMT } else { STMT }
STMT -> IF ( IF_EXPR ) { STMT } else EXPR ;
STMT -> if ( IF_EXPR ) EXPR ;

IF_EXPR -> IF_STMT_LIST
IF_EXPR -> STMT
IF_STMT_LIST -> TYPE ID

STMT -> for ( FOR_EXPR ) { STMT }
STMT -> for ( FOR_EXPR ) EXPR ;

FOR_EXPR -> FOR_EXPR_LEFT ; FOR_EXPR_RIGHT ; FOR_EXPR_RIGHT
FOR_EXPR -> TYPE ID : ID
FOR_EXPR_LEFT -> TYPE ID = VALUE
FOR_EXPR_LEFT -> FOR_EXPR_ONE , FOR_EXPR_ONE
FOR_EXPR_LEFT -> ε
FOR_EXPR_RIGHT -> EXPR
FOR_EXPR_RIGHT -> ε