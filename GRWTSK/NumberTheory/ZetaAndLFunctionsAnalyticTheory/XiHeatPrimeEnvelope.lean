/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic

/-! Strip and saddle estimates for the prime explicit formula with differentiated heat tests. -/
namespace GRWTSK.XiHeatPrimeEnvelope
open Real
noncomputable section

theorem strip_log_bound {n t s u b v : ℝ} (ht : 0 ≤ t) (hs : 0 < s)
    (hv : 0 < v) (he : v^2 = u^2+b^2) (hn : n=t*s^2) :
    2*n*log (v/s)-t*(u^2-b^2-s^2) ≤ 2*t*b^2-t*(v-s)^2 := by
  have h := log_le_sub_one_of_pos (div_pos hv hs)
  have hl := mul_le_mul_of_nonneg_left h (show 0 ≤ 2*t*s^2 by positivity)
  have hq : 2*t*s^2*(v/s-1)=2*t*s*(v-s) := by field_simp <;> ring
  rw [hq] at hl
  rw [hn]
  nlinarith [show t*v^2=t*(u^2+b^2) by rw [he]]

theorem shift_cost {t : ℝ} (ht : 0 ≤ t) :
    2*t*(1/2+1/(2*(1+t)))^2 ≤ t/2+1 := by
  have hp : 0 < 1+t := by linarith
  field_simp
  nlinarith [sq_nonneg t]

theorem small_radial_part {s v b : ℝ} (hs : 0 < s)
    (hvb : v^2 ≤ 2*b^2) (hbs : 8*b^2 ≤ s^2) :
    v ≤ s/2 := by nlinarith [sq_nonneg (v-s/2)]

theorem normalized_tail {x b : ℝ} (h : 0 ≤ b) (hx : b ≤ |x|/4) :
    (3*|x|/4)^2 ≤ (|x|-b)^2 := by
  exact sq_le_sq' (by linarith [abs_nonneg x]) (by linarith)

theorem explicit_positive {y main pole primes t : ℝ}
    (h : y=main+pole-primes) (hm : 1/4*Real.log t-25 ≤ main)
    (hp : -13 ≤ pole) {B : ℝ} (hb : primes ≤ B) (hs : 4*(38+B)<Real.log t) :
    0 < y := by linarith

end
end GRWTSK.XiHeatPrimeEnvelope
