import GRWTSK.LinearAlgebra.CommonJCounterexamples
open GRWTSK.LinearAlgebra.CommonJCounterexamples
set_option autoImplicit false
example : hostileSign * hostileUpper * hostileSign⁻¹ = hostileUpper⁻¹ := hostileUpper_sign_inverse
example : hostileSign * hostileLower * hostileSign⁻¹ = hostileLower⁻¹ := hostileLower_sign_inverse
example : ¬ Commute hostileUpper hostileLower := hostile_edges_noncommute
example : hostileSign * (hostileLower * hostileUpper) * hostileSign⁻¹ ≠ (hostileLower * hostileUpper)⁻¹ := noncommuting_sign_loop_fails
