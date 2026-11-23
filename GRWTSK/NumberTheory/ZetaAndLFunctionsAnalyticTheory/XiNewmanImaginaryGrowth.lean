/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Calculus.Deriv.Inv
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Tactic

/-! Normalized heat-moment derivatives and bounds used to compare the
imaginary-axis determinant with the undeformed theta transform. -/

namespace GRWTSK.XiNewmanImaginaryGrowth

/-- Derivative of four times the normalized second moment, given the heat moment recursion. -/
theorem trace_derivative {h m : ℝ → ℝ} {t fourth : ℝ}
    (hh : HasDerivAt h (m t) t) (hm : HasDerivAt m fourth t) (hn : h t ≠ 0) :
    HasDerivAt (fun s => 4 * (m s / h s))
      (4 * (fourth / h t - (m t / h t)^2)) t := by
  convert (hm.fun_div hh hn).const_mul 4 using 1
  field_simp

/-- A co-monotone pair has nonnegative contribution to symmetrized covariance. -/
theorem covariance_pair {a b c d : ℝ} (hab : a ≤ b) (hcd : c ≤ d) :
    0 ≤ (a-b)*(c-d) := mul_nonneg_of_nonpos_of_nonpos (sub_nonpos.mpr hab) (sub_nonpos.mpr hcd)

/-- Two ordered intervals give a definite squared difference between their squared coordinates. -/
theorem separated_square {a b : ℝ} (ha : 0 ≤ a) (ha' : a ≤ 1/20) (hb : 1/5 ≤ b) :
    (3/80)^2 ≤ (b^2-a^2)^2 := by
  have hab : 3/80 ≤ b^2-a^2 := by
    nlinarith [sq_nonneg (b-1/5), mul_nonneg (sub_nonneg.mpr ha') (by linarith : 0 ≤ 1/20+a)]
  nlinarith [sq_nonneg (b^2-a^2-3/80)]

/-- Variation in the tilt over the central saddle window. -/
theorem tilt_difference (center offset time : ℝ) :
    time*((center+offset/4)^2-center^2) =
    time*center*offset/2+time*offset^2/16 := by ring

/-- A missing quartet of modulus at most the sampling radius costs a fixed determinant factor. -/
theorem quartet_lower_factor {x y : ℝ} (hx : 1 ≤ x) (hy : 7/9 ≤ y) :
    32/9 ≤ 1 + 2*x*y + x^2 := by
  nlinarith [mul_nonneg (sub_nonneg.mpr hy) (by linarith : 0 ≤ x), sq_nonneg (x-1)]

end GRWTSK.XiNewmanImaginaryGrowth
