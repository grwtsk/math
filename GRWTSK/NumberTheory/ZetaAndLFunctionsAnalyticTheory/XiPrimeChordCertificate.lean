/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-! Deterministic two-endpoint envelopes for a finite prime sum. -/
namespace GRWTSK.XiPrimeChordCertificate

/-- The first-order terms cancel when expanding both endpoints about an interior point. -/
theorem chord_linear_cancellation (u h : ℝ) :
    (1-u)*(-u*h)+u*((1-u)*h) = 0 := by ring

/-- Exact interpolation remainder weight for two second-order endpoint expansions. -/
theorem chord_second_weight (u h : ℝ) :
    (1-u)*(u*h)^2+u*((1-u)*h)^2 = u*(1-u)*h^2 := by ring

/-- A uniform bound for the error between a demodulated sum and its chord. -/
theorem chord_error_cap {u M h e : ℝ} (hM : 0 ≤ M)
    (he : e ≤ M/2 * (u*(1-u)*h^2)) : e ≤ M*h^2/8 := by
  have hquad : u*(1-u) ≤ 1/4 := by nlinarith [sq_nonneg (u-1/2)]
  have hpos : 0 ≤ M*h^2 := mul_nonneg hM (sq_nonneg h)
  nlinarith [mul_le_mul_of_nonneg_right hquad hpos]

/-- A bounded residual and two bounded endpoints imply a bound on the interior value. -/
theorem interpolated_norm_le {z a b : ℂ} {u B E : ℝ} (hu : 0 ≤ u) (hv : u ≤ 1)
    (ha : ‖a‖ ≤ B) (hb : ‖b‖ ≤ B)
    (hr : ‖z-((1-u : ℝ) • a+u • b)‖ ≤ E) : ‖z‖ ≤ B+E := by
  have hz := norm_add_le (z-((1-u : ℝ) • a+u • b)) ((1-u : ℝ) • a+u • b)
  rw [sub_add_cancel] at hz
  have hs := norm_add_le ((1-u : ℝ) • a) (u • b)
  rw [norm_smul, norm_smul, Real.norm_eq_abs, Real.norm_eq_abs,
      abs_of_nonneg (by linarith : 0 ≤ 1-u), abs_of_nonneg hu] at hs
  nlinarith [mul_le_mul_of_nonneg_left ha (by linarith : 0 ≤ 1-u),
    mul_le_mul_of_nonneg_left hb hu]

end GRWTSK.XiPrimeChordCertificate
