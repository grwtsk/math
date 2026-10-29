import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.CommonJCounterexamples
open GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples
set_option autoImplicit false
example : Commute hostileUpper hostileLower := by
  norm_num [Commute, SemiconjBy, hostileUpper, hostileLower, Matrix.mul_apply, Fin.sum_univ_two]
