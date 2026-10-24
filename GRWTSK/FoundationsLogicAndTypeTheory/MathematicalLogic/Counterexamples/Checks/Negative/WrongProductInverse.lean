import GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples
open GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples
set_option autoImplicit false
example : hostileSign * (hostileLower * hostileUpper) * hostileSign⁻¹ = (hostileLower * hostileUpper)⁻¹ := by
  apply Units.ext
  ext i j
  fin_cases i <;> fin_cases j <;> norm_num [hostileSign, hostileUpper, hostileLower, Matrix.mul_apply, Fin.sum_univ_two]
