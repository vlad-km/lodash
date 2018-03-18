;;; -*- mode:lisp; coding:utf-8 -*-

;;; Lisp wrapper for lodash.js
;;; Copyright © 2018 Vladimir Mezentsev
;;;


(in-package :cl-user)

(eval-when (:compile-toplevel :load-toplevel :execute)
    (unless #j:lodash_loaded
        (klib:resloadjs
         "node_modules/lodash/lodash.js"
         (lambda ()
             (setf #j:lodash_loaded 1)
             (push :lodash *features*)))))


;;; template
(defmacro lodef (fn rn)
    `(fset ',fn (oget JSCL::*ROOT* "_" ,rn)))

(lodef _.replace "replace")
(lodef _.filter "filter" )

(lodef _.eq "eq")

(lodef _.isEqual "isEqual")
(lodef _.isDate "isDate")
(lodef _.isArrayLike "isArrayLike")
(lodef _.isArrayLikeObject "isArrayLikeObject")
(lodef _.isElement "isElement")
(lodef _.isEmpty "isEmpty")
(lodef _.isError "isError")
(lodef _.isFunction "isFunction")
(lodef _.isNative "isNative")
(lodef _.isNil "isNil")
(lodef _.isNull "isNull")
(lodef _.isObject "isObject")
(lodef _.isObjectLike "isObjectLike")
(lodef _.isPlainObject "isPlainObject")
(lodef _.isRegExp "isRegExp")
(lodef _.isUndefined "isUndefined")
(lodef _.isMatch "isMatch")

(lodef _.camelCase "camelCase")



;;; EOF
