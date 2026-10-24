# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualTiltFourierDictionary.Varianted746cd1f0ce3ae0ad14b0771015b2078b8d947e18a1b5f76b5ae11844cb113e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b68bc29d6d8e1c8f6efb785d32229c8e6803139` · SHA-256 `ed746cd1f0ce3ae0ad14b0771015b2078b8d947e18a1b5f76b5ae11844cb113e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualTiltL2State
import FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility
import SourceActualPrimeBumpDictionary

/-!
The actual tilted physical L2 state has the literal standard Fourier spectrum.
The frequency orientation is -2 pi xi; its ordinary square is the actual bump
Mellin weight. The modulus square is used only for state energy, not the head.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualTiltFourierDictionary
open MeasureTheory Filter Set FourierTransform
open scoped FourierTransform
open SourceActualTiltEnergy SourceActualTiltL2State SourceReflectionDuality
open SourceActualComplexEndpointAsymptotic ActualComplexCorrelationSquare
open SourcePairing
open SourceActualBumpTransform SourceActualBumpMellinLineBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- The actual tilted standard-frequency spectrum, with its entire complex phase. -/
def actualTiltStandardSpectrum (A ξ : ℝ) : ℂ :=
  actualSourceComplexTransform A (1 - ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I)

/-- The literal complex physical representative is genuinely integrable. -/
theorem actualUnitTilt_complex_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun x => (actualUnitTilt A x : ℂ)) volume := by
  have hp : 0 < A := by linarith
  have hc : Continuous (actualUnitTilt A) :=
    (normalizedTest_contDiff A hp).continuous.mul Real.continuous_exp
  have hs : HasCompactSupport (actualUnitTilt A) :=
    (normalizedTest_hasCompactSupport A hp).mul_right
  exact (Complex.continuous_ofReal.comp hc).integrable_of_hasCompactSupport
    (hs.comp_left (g := Complex.ofReal) (by simp))

/-- The equivalence class has the same genuine whole-line L1 prerequisite. -/
theorem actualUnitTiltState_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (actualUnitTiltState A : ℝ → ℂ) volume :=
  (actualUnitTilt_complex_integrable hA).congr (actualUnitTiltState_coe_ae hA).symm

/-- Standard Bochner Fourier orientation agrees with the literal tilted Mellin argument. -/
theorem actualUnitTilt_fourier_eq {A : ℝ} (hA : 1 ≤ A) (ξ : ℝ) :
    𝓕 (fun x => (actualUnitTilt A x : ℂ)) ξ = actualTiltStandardSpectrum A ξ := by
  rw [Real.fourier_eq']
  simp only [smul_eq_mul, RCLike.inner_apply', conj_trivial]
  push_cast
  have he (x : ℝ) :
      Complex.exp (-(2 * Real.pi * (x * ξ)) * Complex.I) * (actualUnitTilt A x : ℂ) =
      (normalizedTest explicitSecondDerivative A x : ℂ) *
        Complex.exp ((1 - ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) * (x : ℂ)) := by
    unfold actualUnitTilt
    push_cast
    calc
      _ = (normalizedTest explicitSecondDerivative A x : ℂ) *
        (Complex.exp (-(2 * Real.pi * (x * ξ)) * Complex.I) * Complex.exp (x : ℂ)) := by ring
      _ = _ := by
        rw [← Complex.exp_add]
        congr 2
        ring
  calc
    _ = ∫ x : ℝ, (normalizedTest explicitSecondDerivative A x : ℂ) *
        Complex.exp ((1 - ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) * (x : ℂ)) := by
      apply integral_congr_ae
      exact Eventually.of_forall fun x => by
        convert he x using 1 <;> ring
    _ = _ := by
      rw [actualTiltStandardSpectrum, actualSourceComplexTransform,
        intervalIntegral.integral_of_le (by linarith), ← integral_Icc_eq_integral_Ioc]
      apply (setIntegral_eq_integral_of_forall_compl_eq_zero _).symm
      intro x hx
      rw [normalizedTest_eq_indicator A (by linarith : 0 < A), indicator_of_notMem hx]
      simp

/-- The actual Hilbert Fourier state equals this exact standard spectrum almost everywhere. -/
theorem actualUnitTiltState_fourier_coe_ae {A : ℝ} (hA : 1 ≤ A) :
    (𝓕 (actualUnitTiltState A) : ComplexL2) =ᵐ[volume] actualTiltStandardSpectrum A := by
  apply (SourceL2FourierCompatibility.fourier_coe_ae _
    (actualUnitTiltState_integrable hA)).trans
  exact Eventually.of_forall fun ξ =>
    (Real.fourier_congr_ae (actualUnitTiltState_coe_ae hA) ξ).trans
      (actualUnitTilt_fourier_eq hA ξ)

/-- The ordinary square retains the genuine bump weight and negative angular orientation. -/
theorem actualTiltStandardSpectrum_sq_eq_weight {A : ℝ} (hA : 1 ≤ A) (ξ : ℝ) :
    actualTiltStandardSpectrum A ξ ^ 2 =
      bumpMellinWeight A ((3 / 2 : ℂ) - ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) := by
  rw [actualTiltStandardSpectrum, ← actualBilateralCorrelationTransform_eq_square hA]
  have he : (1 : ℂ) - ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I =
      ((3 / 2 : ℂ) - ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) - 1 / 2 := by ring
  rw [he, actualBilateralCorrelationTransform_eq_bump hA]
  rfl

/-- The energy density is the norm of the ordinary square; head phases are not replaced. -/
theorem actualTiltStandardSpectrum_norm_sq_eq_weight_norm {A : ℝ} (hA : 1 ≤ A) (ξ : ℝ) :
    ‖actualTiltStandardSpectrum A ξ‖ ^ 2 =
      ‖bumpMellinWeight A ((3 / 2 : ℂ) - ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I)‖ := by
  rw [← norm_pow, actualTiltStandardSpectrum_sq_eq_weight hA]

end FormalResearch.RiemannHypothesis.SourceActualTiltFourierDictionary
```
