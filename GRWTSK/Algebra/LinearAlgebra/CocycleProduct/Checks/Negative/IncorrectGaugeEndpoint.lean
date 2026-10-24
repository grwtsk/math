import GRWTSK.Algebra.LinearAlgebra.CocycleProduct
open GRWTSK.Algebra.LinearAlgebra.CocycleProduct GRWTSK.Algebra GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer
private def B (n : ℕ) : ℚˣ := Units.mk0 (n + 1 : ℚ) (by positivity)
example : cocycleProduct Nat.succ (cocycleGaugeTransfer Nat.succ (fun _ => (1 : ℚˣ)) B) 2 0 =
    (B 1)⁻¹ * cocycleProduct Nat.succ (fun _ => (1 : ℚˣ)) 2 0 * B 0 := by
  apply Units.ext
  norm_num [cocycleProduct, cocycleGaugeTransfer, B, Function.iterate_succ_apply']
