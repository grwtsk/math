import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature

/-!
# Hostile sign fixture for the actual source curvature

The derivative energy is strictly positive at every positive scale. The
curvature at zero is its negative, so the formula with a positive sign is
false for the unchanged source itself. This guards the reflected-factor sign.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureSign

open MeasureTheory
open SourcePairing SourceDerivativeEnergy SourceCorrelationCurvature
open SourceDerivativeCoefficientBound
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

theorem actual_derivative_energy_pos {A : ℝ} (hA : 0 < A) :
    0 < ∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2 := by
  have hr : 0 ≤ (A ^ 2)⁻¹ := by positivity
  have hn : 0 < derivativePolynomial ((A ^ 2)⁻¹) := by
    unfold derivativePolynomial
    positivity
  have hd := normPolynomial_pos ((A ^ 2)⁻¹) hr
  have he := actual_derivative_energy_eq hA
  have hp : 0 < A ^ 2 *
      (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) := by
    rw [he]
    exact div_pos hn hd
  exact (mul_pos_iff_of_pos_left (by positivity : 0 < A ^ 2)).mp hp

theorem sourceCorrelation_curvature_at_zero {A : ℝ} (hA : 0 < A) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0 =
      -(∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) := by
  simpa only [sub_zero, ← pow_two] using sourceCorrelation_second_deriv_eq_integral hA 0

theorem sourceCorrelation_curvature_at_zero_neg {A : ℝ} (hA : 0 < A) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0 < 0 := by
  rw [sourceCorrelation_curvature_at_zero hA]
  exact neg_neg_of_pos (actual_derivative_energy_pos hA)

theorem positive_autocorrelation_formula_false {A : ℝ} (hA : 0 < A) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0 ≠
      ∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2 := by
  have hn := sourceCorrelation_curvature_at_zero_neg hA
  have hp := actual_derivative_energy_pos hA
  exact ne_of_lt (hn.trans hp)

end FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureSign
