import SourceFullPeanoEnergy

/-!
Positive initial window of the actual weighted source correlation.
The complete Peano error and all source conventions remain unchanged.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourcePeanoPositiveWindow
open MeasureTheory Set
open SourcePairing SourceNativeReadout SourceActualWeightedPeano SourceFullPeanoEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateCorrelation
noncomputable section

theorem weightedCorrelation_deriv_formula (A u : ℝ) (hA : 1 ≤ A) :
    deriv (weightedCorrelation A) u =
      (deriv (sourceCorrelation explicitSecondDerivative A) u +
        (3 / 2) * sourceCorrelation explicitSecondDerivative A u) * Real.exp (3 * u / 2) := by
  have hc := SourceCorrelationCurvature.sourceCorrelation_contDiff_two
    (show 0 < A by linarith)
  have hd := (hc.differentiable (by norm_num) u).hasDerivAt
  have he : HasDerivAt (fun x : ℝ ↦ Real.exp (3 * x / 2))
      (Real.exp (3 * u / 2) * (3 / 2)) u := by
    convert (((hasDerivAt_id u).const_mul 3).div_const 2).exp using 1 <;> simp
  have hm := (hd.mul he).deriv
  change deriv (weightedCorrelation A) u = _ at hm
  rw [hm]
  ring

theorem weightedCorrelation_second_deriv_formula (A u : ℝ) (hA : 1 ≤ A) :
    deriv (deriv (weightedCorrelation A)) u =
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u +
        3 * deriv (sourceCorrelation explicitSecondDerivative A) u +
        (9 / 4) * sourceCorrelation explicitSecondDerivative A u) * Real.exp (3 * u / 2) := by
  have hc := SourceCorrelationCurvature.sourceCorrelation_contDiff_two
    (show 0 < A by linarith)
  have hd := (hc.differentiable (by norm_num) u).hasDerivAt
  have hdc : ContDiff ℝ 1 (deriv (sourceCorrelation explicitSecondDerivative A)) := hc.deriv'
  have hdd := (hdc.differentiable (by norm_num) u).hasDerivAt
  have he : HasDerivAt (fun x : ℝ ↦ Real.exp (3 * x / 2))
      (Real.exp (3 * u / 2) * (3 / 2)) u := by
    convert (((hasDerivAt_id u).const_mul 3).div_const 2).exp using 1 <;> simp
  have hsum := hdd.add (hd.const_mul (3 / 2))
  change HasDerivAt (fun x : ℝ ↦
    deriv (sourceCorrelation explicitSecondDerivative A) x +
      (3 / 2) * sourceCorrelation explicitSecondDerivative A x)
    (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u +
      (3 / 2) * deriv (sourceCorrelation explicitSecondDerivative A) u) u at hsum
  have hm := hsum.mul he
  change HasDerivAt (fun x : ℝ ↦
    (deriv (sourceCorrelation explicitSecondDerivative A) x +
      (3 / 2) * sourceCorrelation explicitSecondDerivative A x) * Real.exp (3 * x / 2))
    ((deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u +
      (3 / 2) * deriv (sourceCorrelation explicitSecondDerivative A) u) * Real.exp (3 * u / 2) +
      (deriv (sourceCorrelation explicitSecondDerivative A) u +
        (3 / 2) * sourceCorrelation explicitSecondDerivative A u) *
      (Real.exp (3 * u / 2) * (3 / 2))) u at hm
  have heq : deriv (weightedCorrelation A) = fun x : ℝ ↦
      (deriv (sourceCorrelation explicitSecondDerivative A) x +
        (3 / 2) * sourceCorrelation explicitSecondDerivative A x) * Real.exp (3 * x / 2) :=
    funext fun x ↦ weightedCorrelation_deriv_formula A x hA
  rw [heq, hm.deriv]
  ring

/-- A fixed fractional window has strictly positive curvature in the actual exponential weight. -/
theorem weightedCorrelation_second_deriv_window (A u : ℝ) (hA : 10 ≤ A)
    (hu : 0 ≤ u) (huA : u ≤ A / 20) :
    (3 / 2) * Real.exp (3 * u / 2) ≤ deriv (deriv (weightedCorrelation A)) u := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hs : (100 : ℝ) ≤ A ^ 2 := by nlinarith
  have hden : 0 < 7623 * A ^ 2 := by positivity
  have hb0 : 162826 / (7623 * A ^ 2) ≤ (11 / 50 : ℝ) := by
    apply (div_le_iff₀ hden).2
    nlinarith
  have hb1 : 162826 / (7623 * A ^ 2) * u ≤ (11 / 100 : ℝ) := by
    rw [div_mul_eq_mul_div]
    apply (div_le_iff₀ hden).2
    have hua : 20 * u ≤ A := by linarith
    have hsq : 10 * A ≤ A ^ 2 := by nlinarith
    nlinarith
  have hb2 : 162826 / (7623 * A ^ 2) * u ^ 2 / 2 ≤ (11 / 400 : ℝ) := by
    rw [div_mul_eq_mul_div, div_div]
    apply (div_le_iff₀ (by positivity : 0 < 7623 * A ^ 2 * 2)).2
    have husq : 400 * u ^ 2 ≤ A ^ 2 := by nlinarith
    nlinarith
  have h0 := SourceCorrelationCurvature.sourceCorrelation_second_deriv_abs_le_coefficient hA1 u
  have h1 := SourceCorrelationCurvature.sourceCorrelation_deriv_increment_bound hA1 0 u
  have h2 := SourceCorrelationCurvature.sourceCorrelation_linear_taylor_bound hA1 0 u
  simp only [zero_add, actual_correlation_deriv_zero A hA1, sub_zero, abs_of_nonneg hu] at h1
  simp only [zero_add, actual_correlation_at_zero A hA1,
    actual_correlation_deriv_zero A hA1, mul_zero, sub_zero] at h2
  have hc0 := (abs_le.mp (h0.trans hb0)).1
  have hc1 := (abs_le.mp (h1.trans hb1)).1
  have hc2 := (abs_le.mp (h2.trans hb2)).1
  rw [weightedCorrelation_second_deriv_formula A u hA1]
  exact mul_le_mul_of_nonneg_right (by nlinarith) (Real.exp_pos _).le

end
end FormalResearch.RiemannHypothesis.SourcePeanoPositiveWindow
