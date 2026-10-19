import FormalResearch.RiemannHypothesis.SourceComparison.HomogeneityDefect
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

set_option autoImplicit false
namespace ScaleComparisonScratch

open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourceComparison
open RealThetaKernel HomogeneityDefect

noncomputable section

/-- The actual homogeneity coefficient, without a scale-independent term. -/
def scaleComparisonCoefficient (A : ℝ) : ℝ :=
  32 * Real.sqrt (65 / 3) / A + 20 * (65 / (3 * A ^ 2)) +
    8 * Real.sqrt (325325 / 18) / A ^ 3

theorem scaleComparisonCoefficient_nonneg (A : ℝ) (hA : 1 ≤ A) :
    0 ≤ scaleComparisonCoefficient A := by
  unfold scaleComparisonCoefficient
  have hA0 : 0 < A := by linarith
  positivity

/-- The same real source remainder, multiplied by its exact square-root weight. -/
def sqrtWeightedRemainder (A q : ℝ) : ℝ :=
  Real.sqrt q * realThetaRemainder A q

/-- The signed homogeneity defect is precisely the derivative of the weighted remainder. -/
theorem sqrtWeightedRemainder_hasDerivAt (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    HasDerivAt (sqrtWeightedRemainder A)
      ((q * deriv (realThetaRemainder A) q + realThetaRemainder A q / 2) /
        Real.sqrt q) q := by
  have hd := (Real.hasDerivAt_sqrt hq.ne').mul
    (realThetaRemainder_hasDerivAt A q hA hq).differentiableAt.hasDerivAt
  apply hd.congr_deriv
  have hs : Real.sqrt q ≠ 0 := (Real.sqrt_pos.mpr hq).ne'
  have hs2 := Real.sq_sqrt hq.le
  field_simp
  rw [hs2]
  ring

/-- The proved actual homogeneity estimate gives an inverse-linear derivative bound. -/
theorem sqrtWeightedRemainder_derivative_abs_le (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |deriv (sqrtWeightedRemainder A) q| ≤ scaleComparisonCoefficient A / q := by
  have hq0 : 0 < q := by linarith
  rw [(sqrtWeightedRemainder_hasDerivAt A q hA hq0).deriv, abs_div,
    abs_of_pos (Real.sqrt_pos.mpr hq0)]
  calc
    _ ≤ (scaleComparisonCoefficient A / Real.sqrt q) / Real.sqrt q :=
      div_le_div_of_nonneg_right (homogeneity_defect_abs_le A q hA hq)
        (Real.sqrt_nonneg q)
    _ = _ := by rw [div_div, Real.mul_self_sqrt hq0.le]

/-- The derivative has a genuine integral on every positive compact comparison interval. -/
theorem sqrtWeightedRemainder_derivative_intervalIntegrable (A a b : ℝ)
    (hA : 1 ≤ A) (ha : 1 ≤ a) (hab : a ≤ b) :
    IntervalIntegrable (deriv (sqrtWeightedRemainder A)) volume a b := by
  apply (intervalIntegrable_iff_integrableOn_Icc_of_le hab).mpr
  have ha0 : 0 < a := by linarith
  have hc : IntegrableOn (fun _ : ℝ ↦ scaleComparisonCoefficient A / a) (Icc a b) :=
    continuous_const.integrableOn_Icc
  apply hc.mono'
    (stronglyMeasurable_deriv (sqrtWeightedRemainder A)).aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Icc] with q hq
  rw [Real.norm_eq_abs]
  exact (sqrtWeightedRemainder_derivative_abs_le A q hA (ha.trans hq.1)).trans
    (div_le_div_of_nonneg_left (scaleComparisonCoefficient_nonneg A hA)
      ha0 hq.1)

/-- Fundamental theorem of calculus for the actual weighted source remainder. -/
theorem sqrtWeightedRemainder_integral_derivative (A a b : ℝ)
    (hA : 1 ≤ A) (ha : 1 ≤ a) (hab : a ≤ b) :
    (∫ q in a..b, deriv (sqrtWeightedRemainder A) q) =
      sqrtWeightedRemainder A b - sqrtWeightedRemainder A a := by
  apply intervalIntegral.integral_deriv_eq_sub _
    (sqrtWeightedRemainder_derivative_intervalIntegrable A a b hA ha hab)
  intro q hq
  rw [uIcc_of_le hab] at hq
  exact (sqrtWeightedRemainder_hasDerivAt A q hA (by linarith [hq.1])).differentiableAt

/-- Integrating the actual inverse-linear bound retains the logarithm of the scale ratio. -/
theorem sqrtWeightedRemainder_abs_sub_le_log_ratio (A a b : ℝ)
    (hA : 1 ≤ A) (ha : 1 ≤ a) (hab : a ≤ b) :
    |sqrtWeightedRemainder A b - sqrtWeightedRemainder A a| ≤
      scaleComparisonCoefficient A * Real.log (b / a) := by
  have ha0 : 0 < a := by linarith
  have hb0 : 0 < b := ha0.trans_le hab
  have hi : IntervalIntegrable (fun q : ℝ ↦ scaleComparisonCoefficient A / q)
      volume a b := by
    apply ContinuousOn.intervalIntegrable
    apply continuousOn_const.div continuousOn_id
    intro q hq
    rw [uIcc_of_le hab] at hq
    exact ne_of_gt (ha0.trans_le hq.1)
  rw [← sqrtWeightedRemainder_integral_derivative A a b hA ha hab, ← Real.norm_eq_abs]
  calc
    _ ≤ ∫ q in a..b, scaleComparisonCoefficient A / q := by
      apply intervalIntegral.norm_integral_le_of_norm_le hab _ hi
      apply Eventually.of_forall
      intro q hq
      rw [Real.norm_eq_abs]
      exact sqrtWeightedRemainder_derivative_abs_le A q hA (ha.trans hq.1.le)
    _ = _ := by
      simp_rw [div_eq_mul_inv]
      rw [intervalIntegral.integral_const_mul, integral_inv_of_pos ha0 hb0]
      rfl

/-- A genuine logarithmic scale comparison for the unchanged real source remainder. -/
theorem real_remainder_scale_comparison (A q r : ℝ)
    (hA : 1 ≤ A) (hq : 1 ≤ q) (hr : 1 ≤ r) :
    |Real.sqrt r * realThetaRemainder A (r * q) - realThetaRemainder A q| ≤
      scaleComparisonCoefficient A * Real.log r / Real.sqrt q := by
  have hq0 : 0 < q := by linarith
  have hr0 : 0 < r := by linarith
  have hqq : q ≤ r * q := by nlinarith
  have h := sqrtWeightedRemainder_abs_sub_le_log_ratio A q (r * q) hA hq hqq
  have heq : sqrtWeightedRemainder A (r * q) - sqrtWeightedRemainder A q =
      Real.sqrt q * (Real.sqrt r * realThetaRemainder A (r * q) -
        realThetaRemainder A q) := by
    unfold sqrtWeightedRemainder
    rw [Real.sqrt_mul hr0.le]
    ring
  rw [heq, abs_mul, abs_of_pos (Real.sqrt_pos.mpr hq0),
    mul_div_cancel_right₀ r hq0.ne'] at h
  exact (le_div_iff₀ (Real.sqrt_pos.mpr hq0)).mpr (by simpa only [mul_comm] using h)

/-- At positive natural arguments this is the original complete finite source remainder. -/
theorem theta_remainder_scale_comparison (A : ℝ) (q p : ℕ)
    (hA : 1 ≤ A) (hq : 1 ≤ q) (hp : 1 ≤ p) :
    |Real.sqrt (p : ℝ) * ThetaRemainder.thetaRemainder A (p * q) -
      ThetaRemainder.thetaRemainder A q| ≤
      scaleComparisonCoefficient A * Real.log (p : ℝ) / Real.sqrt (q : ℝ) := by
  have hpq : 1 ≤ p * q := by nlinarith
  have h := real_remainder_scale_comparison A (q : ℝ) (p : ℝ) hA
    (by exact_mod_cast hq) (by exact_mod_cast hp)
  rw [← Nat.cast_mul, realThetaRemainder_eq_nat A (p*q) hpq,
    realThetaRemainder_eq_nat A q hq] at h
  exact h

/-- The first-prime source difference gains the same inverse-A coefficient, with log two. -/
theorem theta_remainder_two_difference_abs_le (A : ℝ) (q : ℕ)
    (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |ThetaRemainder.thetaRemainder A (2 * q) -
      ThetaRemainder.thetaRemainder A q / Real.sqrt 2| ≤
      scaleComparisonCoefficient A * Real.log 2 / (Real.sqrt 2 * Real.sqrt (q : ℝ)) := by
  have hs : 0 < Real.sqrt (2 : ℝ) := Real.sqrt_pos.mpr (by norm_num)
  have heq : ThetaRemainder.thetaRemainder A (2*q) -
      ThetaRemainder.thetaRemainder A q / Real.sqrt 2 =
      (Real.sqrt 2 * ThetaRemainder.thetaRemainder A (2*q) -
        ThetaRemainder.thetaRemainder A q) / Real.sqrt 2 := by field_simp
  rw [heq, abs_div, abs_of_pos hs]
  have h := div_le_div_of_nonneg_right
    (theta_remainder_scale_comparison A q 2 hA hq (by norm_num)) hs.le
  norm_num only [Nat.cast_ofNat] at h
  simpa only [div_div, mul_comm] using h

end
end ScaleComparisonScratch
