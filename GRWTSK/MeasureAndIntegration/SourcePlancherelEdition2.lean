import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation
import Mathlib.Analysis.Fourier.Convolution
import Mathlib.Analysis.Fourier.Inversion

/-!
# Exact Plancherel normalization for the actual source test

Fourier inversion of the actual autocorrelation at zero proves its normalized
Fourier square mass. The convolution identity and reflected-real conjugation
identify the Fourier transform of the autocorrelation with the genuine square
energy. Its integrability has already been proved independently. Finally the
source angular-frequency convention contributes exactly the factor `2π`.

The source test is not assumed to be Schwartz, and no positivity or RH premise
is used. All inversion and convolution integrability requirements are proved.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel
open MeasureTheory
open scoped FourierTransform Convolution ComplexConjugate
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity BridgeFourier
noncomputable section

/-- Reflecting a real input conjugates its actual Fourier transform. -/
lemma fourier_reflected_real (f : ℝ → ℝ) (ξ : ℝ) :
    𝓕 (fun x ↦ (f (-x) : ℂ)) ξ = conj (𝓕 (fun x ↦ (f x : ℂ)) ξ) := by
  rw [Real.fourier_real_eq_integral_exp_smul,
    ← integral_neg_eq_self (fun x : ℝ ↦
      Complex.exp (((-2 * Real.pi * x * ξ : ℝ) : ℂ) * Complex.I) • (f (-x) : ℂ)) volume]
  rw [Real.fourier_real_eq_integral_exp_smul, ← integral_conj]
  apply integral_congr_ae
  filter_upwards [] with x
  simp only [smul_eq_mul, neg_neg, map_mul, Complex.conj_ofReal, ← Complex.exp_conj,
    Complex.conj_I]
  congr 2
  push_cast
  ring

/-- Complexification preserves the actual autocorrelation convolution. -/
lemma correlation_complex_eq_convolution (A : ℝ) :
    (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) =
      (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ⋆[ContinuousLinearMap.mul ℂ ℂ]
        (fun x ↦ (normalizedTest explicitSecondDerivative A (-x) : ℂ)) := by
  funext t
  unfold sourceCorrelation
  calc
    _ = ∫ x, ((normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - t) : ℝ) : ℂ) := integral_ofReal.symm
    _ = _ := ?_
  rw [convolution]
  apply integral_congr_ae
  filter_upwards [] with x
  simp [neg_sub]

/-- The actual autocorrelation transforms to the squared modulus. -/
lemma fourier_correlation (A : ℝ) (hA : 1 ≤ A) (ξ : ℝ) :
    𝓕 (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) ξ =
      (Complex.normSq (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ) := by
  rw [correlation_complex_eq_convolution]
  have hf : Integrable (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) :=
    Complex.ofRealCLM.integrable_comp (normalizedTest_integrable A (by linarith))
  have hg : Integrable (fun x ↦ (normalizedTest explicitSecondDerivative A (-x) : ℂ)) :=
    Complex.ofRealCLM.integrable_comp (reflectedTest_integrable A (by linarith))
  rw [Real.fourier_mul_convolution_eq hf hg, fourier_reflected_real, Complex.mul_conj]

/-- Exact conversion from Mathlib frequency to the source angular frequency. -/
lemma standardFourier_eq_sourceFourier (f : ℝ → ℝ) (ξ : ℝ) :
    𝓕 (fun x ↦ (f x : ℂ)) ξ = sourceFourier f (-(2 * Real.pi) * ξ) := by
  rw [sourceFourier_eq_fourier]
  field_simp

/-- The proved source square integrability survives the frequency change. -/
lemma standardFourier_square_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ Complex.normSq
      (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ)) := by
  simp_rw [standardFourier_eq_sourceFourier]
  exact (integrable_comp_mul_left_iff _
    (neg_ne_zero.mpr (mul_ne_zero two_ne_zero Real.pi_ne_zero))).mpr
      (actual_fourier_square_integrable A hA)

/-- Inversion of the integrable autocorrelation at zero gives the exact mass one. -/
lemma actual_standard_fourier_mass (A : ℝ) (hA : 1 ≤ A) :
    (∫ ξ, Complex.normSq
      (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ)) = 1 := by
  have hc : Integrable (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
    Complex.ofRealCLM.integrable_comp (sourceCorrelation_integrable A (by linarith))
  have hfc : Integrable (𝓕 (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ))) := by
    have heq : 𝓕 (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) =
        fun ξ ↦ (Complex.normSq
          (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ) :=
      funext (fourier_correlation A hA)
    rw [heq]
    exact Complex.ofRealCLM.integrable_comp (standardFourier_square_integrable A hA)
  have hcont : ContinuousAt
      (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) 0 :=
    Complex.continuous_ofReal.continuousAt.comp
      (sourceCorrelation_contDiff A (by linarith)).continuous.continuousAt
  have h := hc.fourierInv_fourier_eq hfc hcont
  rw [Real.fourierInv_eq_fourier_neg, neg_zero, Real.fourier_real_eq_integral_exp_smul] at h
  simp only [mul_zero, Complex.ofReal_zero, zero_mul, Complex.exp_zero, one_smul] at h
  simp_rw [fourier_correlation A hA] at h
  have heq : (∫ ξ, (Complex.normSq
      (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ)) =
        ((∫ ξ, Complex.normSq
          (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℝ) : ℂ) :=
    integral_ofReal
  rw [heq, EstimateCorrelation.actual_correlation_at_zero A hA] at h
  exact_mod_cast h

/-- The actual source convention has total Fourier square mass exactly `2π`. -/
lemma actual_source_fourier_mass (A : ℝ) (hA : 1 ≤ A) :
    (∫ ξ, Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) ξ)) = 2 * Real.pi := by
  have h := actual_standard_fourier_mass A hA
  simp_rw [standardFourier_eq_sourceFourier] at h
  rw [Measure.integral_comp_mul_left
    (fun ξ ↦ Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ξ))
    (-(2 * Real.pi)), smul_eq_mul, abs_inv, abs_neg,
    abs_of_pos (by positivity : 0 < 2 * Real.pi)] at h
  exact ((inv_mul_eq_one₀ (by positivity : 2 * Real.pi ≠ 0)).mp h).symm

end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel
