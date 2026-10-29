import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMovingFrontBound

/-!
# The actual moving tail and the limit of the absolute-envelope strategy

The elementary arithmetic envelope and actual anchored source derivative give
an unconditional explicit estimate for the complete signed moving tail. The
resulting majorant exceeds every fixed polynomial eventually. This diagnoses
that estimate, and asserts no unboundedness of the actual signed tail.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateMovingTailEnvelope

open MeasureTheory Set Filter
open scoped Topology
open EstimateMovingFrontBound EstimateMovingFrontTransport EstimateWeightedMobiusPairing
open EstimateSourceKernelAnchor EstimateSourceKernelLogProfile

noncomputable section

/-- The explicit envelope obtained by taking absolute values before integrating. -/
def tailEnvelope (A : ℝ) : ℝ :=
  4160 / (3 * A ^ 2) * (Real.exp A * (A + 1) - A * (Real.log A + 1))

private theorem integral_exp_half_linear_between (u v : ℝ) :
    (∫ s in u..v, Real.exp (s / 2) * (s + 4)) =
      2 * (Real.exp (v / 2) * (v + 2) - Real.exp (u / 2) * (u + 2)) := by
  have hi (a b : ℝ) : IntervalIntegrable
      (fun s : ℝ => Real.exp (s / 2) * (s + 4)) volume a b :=
    (by fun_prop : Continuous (fun s : ℝ => Real.exp (s / 2) * (s + 4))).intervalIntegrable _ _
  have h := intervalIntegral.integral_add_adjacent_intervals (hi 0 u) (hi u v)
  rw [integral_exp_half_linear, integral_exp_half_linear] at h
  linarith

/-- An unconditional all-real-scale estimate for the full signed moving tail.
Both integration endpoints remain present in the envelope. -/
theorem sourceMovingTail_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |sourceMovingTail A| ≤ tailEnvelope A := by
  have hp : 0 < A := lt_of_lt_of_le zero_lt_one hA
  have hfront := square_front_mem A hA
  have hb := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hfront.2
    (f := fun s : ℝ => weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)
    (g := fun s : ℝ => (1040 / (3 * A ^ 2)) * (Real.exp (s / 2) * (s + 4))) ?_
    ((by fun_prop : Continuous (fun s : ℝ =>
      (1040 / (3 * A ^ 2)) * (Real.exp (s / 2) * (s + 4)))).intervalIntegrable _ _)
  · rw [intervalIntegral.integral_const_mul, integral_exp_half_linear_between,
      show (2 * A) / 2 = A by ring,
      show (2 * Real.log A) / 2 = Real.log A by ring, Real.exp_log hp,
      Real.norm_eq_abs] at hb
    rw [sourceMovingTail, abs_neg]
    unfold tailEnvelope
    convert hb using 1
    ring
  · filter_upwards with s hs
    have hs0 : 0 ≤ s := hfront.1.trans hs.1.le
    rw [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ (2 * Real.exp (s / 2)) * (520 * (s + 4) / (3 * A ^ 2)) :=
        mul_le_mul (weightedMobiusPrimitive_abs_le hs0)
          (sourceLogKernel_deriv_abs_le_anchored A s hA hs0) (abs_nonneg _) (by positivity)
      _ = _ := by ring

/-- The displayed majorant itself contains exponential growth. This lower
bound concerns the majorant, not the source tail it bounds above. -/
theorem exp_div_sq_le_tailEnvelope (A : ℝ) (hA : 1 ≤ A) :
    Real.exp A / A ^ 2 ≤ tailEnvelope A := by
  have hp : 0 < A := lt_of_lt_of_le zero_lt_one hA
  have hl : Real.log A + 1 ≤ A := by linarith [Real.log_le_sub_one_of_pos hp]
  have he : A ≤ Real.exp A := by linarith [Real.add_one_le_exp A]
  have hmain : Real.exp A ≤ Real.exp A * (A + 1) - A * (Real.log A + 1) := by
    nlinarith [mul_nonneg hp.le (sub_nonneg.mpr (hl.trans he))]
  unfold tailEnvelope
  calc
    _ ≤ (4160 / (3 * A ^ 2)) * Real.exp A := by
      have hsmall : 1 / A ^ 2 ≤ 4160 / (3 * A ^ 2) := by
        apply (div_le_div_iff₀ (sq_pos_of_pos hp) (by positivity)).2
        nlinarith [sq_nonneg A]
      simpa only [one_mul, div_mul_eq_mul_div] using
        mul_le_mul_of_nonneg_right hsmall (Real.exp_pos A).le
    _ ≤ _ := mul_le_mul_of_nonneg_left hmain (by positivity)

/-- After division by any fixed natural power, this particular norm envelope
still tends to positive infinity through real scales. -/
theorem tailEnvelope_div_pow_tendsto_atTop (m : ℕ) :
    Tendsto (fun A : ℝ => tailEnvelope A / A ^ m) atTop atTop := by
  apply tendsto_atTop_mono' atTop ?_ (Real.tendsto_exp_div_pow_atTop (m + 2))
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  calc
    Real.exp A / A ^ (m + 2) = (Real.exp A / A ^ 2) / A ^ m := by
      rw [pow_add]
      ring
    _ ≤ _ := div_le_div_of_nonneg_right (exp_div_sq_le_tailEnvelope A hA)
      (pow_nonneg (by linarith) _)

/-- The absolute-envelope strategy cannot supply the desired polynomial
arithmetic hypothesis. This is not a negation of that hypothesis for the actual tail. -/
theorem tailEnvelope_not_eventually_polynomial :
    ¬ ∃ m : ℕ, ∃ D : ℝ, ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → tailEnvelope A ≤ D * A ^ m := by
  rintro ⟨m, D, R, hR, hb⟩
  obtain ⟨S, hS⟩ := (tendsto_atTop_atTop.mp (tailEnvelope_div_pow_tendsto_atTop m)) (D + 1)
  let A := max R S
  have hRA : R ≤ A := le_max_left _ _
  have hA : 1 ≤ A := hR.trans hRA
  have hl := hS A (le_max_right R S)
  have hu : tailEnvelope A / A ^ m ≤ D :=
    (div_le_iff₀ (pow_pos (by linarith : 0 < A) m)).2 (hb A hRA)
  linarith

end
end EstimateMovingTailEnvelope
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
