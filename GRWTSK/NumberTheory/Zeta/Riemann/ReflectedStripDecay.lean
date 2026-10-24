/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ReflectedStripBudget
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecificLimits.Basic

set_option autoImplicit false

/-!
# The normalized full-strip budget tends to zero

The existing source-derived stripBudget is quadratic in growthLog and affine
in the SAME separatedHeight. No growth-rate hypothesis or replacement height
sequence is introduced. All constants are independent of the contour index.
This scalar result alone is not a zero-sum or prime-distribution theorem.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ReflectedStripDecay

open Filter
open scoped Topology
open SeparatedContourHeights JensenDiskLogDerivative JensenCentralLogDerivative
open ReflectedStripBudget
open GRWTSK.NumberTheory.Chebyshev.TentPerronLine
open GRWTSK.Analysis.ComplexAnalysis.GammaVerticalBound

noncomputable section

theorem nat_add_two_tendsto_atTop :
    Tendsto (fun N : ℕ => (N : ℝ) + 2) atTop atTop :=
  tendsto_atTop_mono (f := fun N : ℕ => (N : ℝ))
    (fun _ => by linarith) tendsto_natCast_atTop_atTop

theorem inv_nat_succ_tendsto_zero :
    Tendsto (fun N : ℕ => (1 : ℝ) / ((N : ℝ) + 1)) atTop (𝓝 0) := by
  have ht : Tendsto (fun N : ℕ => (N : ℝ) + 1) atTop atTop :=
    tendsto_atTop_mono (f := fun N : ℕ => (N : ℝ))
      (fun _ => by linarith) tendsto_natCast_atTop_atTop
  exact tendsto_const_nhds.div_atTop ht

/-- The shifted denominator is N+1, not N+2; retain the affine offset. -/
theorem log_div_nat_succ_tendsto_zero :
    Tendsto (fun N : ℕ => Real.log ((N : ℝ) + 2) / ((N : ℝ) + 1))
      atTop (𝓝 0) := by
  have ht := (Real.tendsto_pow_log_div_mul_add_atTop 1 (-1) 1 one_ne_zero).comp
    nat_add_two_tendsto_atTop
  convert ht using 1
  funext N
  simp only [Function.comp_def, pow_one, one_mul]
  congr 1
  ring

theorem growthLog_div_nat_succ_tendsto_zero :
    Tendsto (fun N : ℕ => growthLog N / ((N : ℝ) + 1)) atTop (𝓝 0) := by
  have ht := (inv_nat_succ_tendsto_zero.const_mul (Real.log 4)).add
    (log_div_nat_succ_tendsto_zero.const_mul 3)
  convert ht using 1
  · funext N
    unfold growthLog
    ring
  · simp

theorem inv_height_tendsto_zero :
    Tendsto (fun N : ℕ => (1 : ℝ) / separatedHeight N) atTop (𝓝 0) :=
  tendsto_const_nhds.div_atTop separatedHeight_tendsto

/-- Actual height bounds transfer the logarithmic rate without rounding the cutoffs. -/
theorem growthLog_div_height_tendsto_zero :
    Tendsto (fun N : ℕ => growthLog N / separatedHeight N) atTop (𝓝 0) := by
  apply squeeze_zero
    (fun N => div_nonneg (growthLog_pos N).le (separatedHeight_pos N).le)
    (fun N => div_le_div_of_nonneg_left (growthLog_pos N).le
      (by positivity : (0 : ℝ) < (N : ℝ) + 1) (separatedHeight_bounds N).1.le)
  exact growthLog_div_nat_succ_tendsto_zero

theorem const_div_height_sq_tendsto_zero (c : ℝ) :
    Tendsto (fun N : ℕ => c / (separatedHeight N) ^ 2) atTop (𝓝 0) := by
  have ht := (inv_height_tendsto_zero.pow 2).const_mul c
  convert ht using 1
  · funext N
    simp only [div_pow, one_pow]
    ring
  · simp

/-- The full central bound, including its analytic factor, is normalized here. -/
theorem centralBudget_div_height_sq_tendsto_zero :
    Tendsto (fun N : ℕ => centralBudget N / (separatedHeight N) ^ 2)
      atTop (𝓝 0) := by
  have ht := ((growthLog_div_height_tendsto_zero.pow 2).const_mul
    (8 / (Real.log (12 / 11 : ℝ) * Real.log (6 / 5 : ℝ)))).add
    ((growthLog_div_height_tendsto_zero.mul inv_height_tendsto_zero).const_mul
      (80 + 5 / Real.log (12 / 11 : ℝ)))
  convert ht using 1
  · funext N
    unfold centralBudget
    rw [budget_eq_quadratic]
    simp only [div_eq_mul_inv, mul_pow, inv_pow]
    ring
  · simp

/-- No caller supplies the normalized growth condition from the old ray theorem. -/
theorem stripBudget_div_height_sq_tendsto_zero :
    Tendsto (fun N : ℕ => stripBudget N / (separatedHeight N) ^ 2)
      atTop (𝓝 0) := by
  have ht := (centralBudget_div_height_sq_tendsto_zero.add
    (const_div_height_sq_tendsto_zero
      (mangoldtLineMass + ‖Complex.log (2 * (Real.pi : ℂ))‖ +
        112 * Real.log envelope + 3 * Real.pi / 2))).add
    (inv_height_tendsto_zero.const_mul (56 * Real.pi))
  convert ht using 1
  · funext N
    rw [stripBudget_eq_affine_height]
    field_simp [(separatedHeight_pos N).ne']
  · simp

/-- Fixed geometric coefficients may be transported; index-dependent ones may not. -/
theorem weighted_strip_div_height_sq_tendsto_zero (c d e : ℝ) :
    Tendsto (fun N : ℕ => ((stripBudget N + c) * d + e) /
      (separatedHeight N) ^ 2) atTop (𝓝 0) := by
  have ht := (stripBudget_div_height_sq_tendsto_zero.const_mul d).add
    (const_div_height_sq_tendsto_zero (c * d + e))
  convert ht using 1
  · funext N
    ring
  · simp

end
end GRWTSK.RiemannHypothesis.ReflectedStripDecay
