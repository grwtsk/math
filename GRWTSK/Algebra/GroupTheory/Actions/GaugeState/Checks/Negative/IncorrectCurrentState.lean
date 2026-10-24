import GRWTSK.Algebra.LinearAlgebra.GaugeState
open GRWTSK.Algebra.LinearAlgebra.GaugeState GRWTSK.Algebra
private def B (n : ℕ) : ℚˣ := Units.mk0 (n + 1 : ℚ) (by positivity)
private def X (_ : ℕ) : ℚˣ := 1
example : gaugeState B X 1 = gaugeTransfer (fun _ => (1 : ℚˣ)) B 0 • gaugeState B X 1 := by
  apply Units.ext
  norm_num [gaugeState, gaugeTransfer, B, X, smul_eq_mul]
