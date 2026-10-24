# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variantc3843874567b7ba3be3097d6500090b3f9b54cf9ceff565ed2a10e11a0bf27c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c25ff0b4eda501229532c83da1d30fc82fa6948c` · SHA-256 `ef82ff59125d83fc7ed4b7d0c50048de7cccbe08aed7abab4b87779d67df2e32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceFourierIndicator.Variant500baaad159ed618969eadf600f690c56d3e8a0cf64bf8b1f63b7a32f05b44ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"500baaad159ed618969eadf600f690c56d3e8a0cf64bf8b1f63b7a32f05b44ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SourceFourierIndicator.Variant500baaad159ed618969eadf600f690c56d3e8a0cf64bf8b1f63b7a32f05b44ea","mathematical_subject":"Analysis.Calculus","original_sha256":"500baaad159ed618969eadf600f690c56d3e8a0cf64bf8b1f63b7a32f05b44ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/500baaad159ed618969eadf600f690c56d3e8a0cf64bf8b1f63b7a32f05b44ea.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment

/-!
# Exact Fourier factorization of the immutable dilation test

Two integrations by parts use the existing polynomial derivatives and their
zero endpoint traces. The positive imaginary exponential convention and the
source normalization are preserved. The real exponential pole cancellations
are separately proved facts, not evaluations of the Fourier transform at an
imaginary argument.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceFourierIndicator.Variant500baaad159ed618969eadf600f690c56d3e8a0cf64bf8b1f63b7a32f05b44ea

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace DilationFourierFactorization

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization

noncomputable section

/-- Fourier integration of a closed interval zero extension has no endpoint atom. -/
theorem sourceFourier_indicator (f : ℝ → ℝ) (a b ξ : ℝ) (hab : a ≤ b) :
    sourceFourier ((Icc a b).indicator f) ξ =
      ∫ x in a..b, (f x : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ)) := by
  unfold sourceFourier
  have he : (fun x : ℝ ↦ (((Icc a b).indicator f x : ℝ) : ℂ) *
      Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) =
      (Icc a b).indicator (fun x : ℝ ↦ (f x : ℂ) *
        Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) := by
    funext x
    by_cases hx : x ∈ Icc a b <;> simp [hx]
  rw [he, integral_indicator measurableSet_Icc, integral_Icc_eq_integral_Ioc,
    intervalIntegral.integral_of_le hab]

/-- Exact differentiation of the source positive-exponent Fourier wave. -/
theorem wave_hasDerivAt (ξ x : ℝ) :
    HasDerivAt (fun x : ℝ ↦ Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ)))
      ((Complex.I * (ξ : ℂ)) *
        Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) x := by
  simpa [mul_comm] using
    (((hasDerivAt_id x).ofReal_comp.const_mul (Complex.I * (ξ : ℂ))).cexp)

/-- The actual weak second derivative has Fourier multiplier `-ξ²`. -/
theorem explicitSecondDerivative_fourier (A ξ : ℝ) (hA : 1 ≤ A) :
    sourceFourier (explicitSecondDerivative A) ξ =
      -(ξ : ℂ) ^ 2 * sourceFourier (scaledBump A) ξ := by
  have hpos : 0 < A := by linarith
  have hne : A ≠ 0 := ne_of_gt hpos
  let w : ℝ → ℂ := fun x ↦ Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))
  let c : ℂ := Complex.I * (ξ : ℂ)
  have hw : Continuous w := by dsimp [w]; fun_prop
  have hc : Continuous (fun x ↦ c * w x) := continuous_const.mul hw
  have hb : Continuous (fun x ↦ (bumpInterior A x : ℂ)) :=
    Complex.continuous_ofReal.comp (bumpInterior_continuous A)
  have hf : Continuous (fun x ↦ (firstInterior A x : ℂ)) :=
    Complex.continuous_ofReal.comp (firstInterior_continuous A)
  have hs : Continuous (fun x ↦ (secondInterior A x : ℂ)) :=
    Complex.continuous_ofReal.comp (secondInterior_continuous A)
  have ibp₁ := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := -A) (b := A) hb.continuousOn hw.continuousOn
    (fun x _ ↦ (bumpInterior_hasDerivAt A x).ofReal_comp)
    (fun x _ ↦ wave_hasDerivAt ξ x)
    (hf.intervalIntegrable (-A) A) (hc.intervalIntegrable (-A) A)
  have ibp₂ := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := -A) (b := A) hf.continuousOn hw.continuousOn
    (fun x _ ↦ (firstInterior_hasDerivAt A x).ofReal_comp)
    (fun x _ ↦ wave_hasDerivAt ξ x)
    (hs.intervalIntegrable (-A) A) (hc.intervalIntegrable (-A) A)
  rw [(bumpInterior_endpoints A hne).1, (bumpInterior_endpoints A hne).2] at ibp₁
  rw [(firstInterior_endpoints A hne).1, (firstInterior_endpoints A hne).2] at ibp₂
  simp only [Complex.ofReal_zero, zero_mul, sub_zero, zero_sub] at ibp₁ ibp₂
  have hfactor (f : ℝ → ℝ) :
      (∫ x in -A..A, (f x : ℂ) * (c * w x)) =
        c * ∫ x in -A..A, (f x : ℂ) * w x := by
    simp_rw [mul_left_comm (f _ : ℂ) c]
    rw [intervalIntegral.integral_const_mul]
  change (∫ x in -A..A, (bumpInterior A x : ℂ) * (c * w x)) =
    -(∫ x in -A..A, (firstInterior A x : ℂ) * w x) at ibp₁
  change (∫ x in -A..A, (firstInterior A x : ℂ) * (c * w x)) =
    -(∫ x in -A..A, (secondInterior A x : ℂ) * w x) at ibp₂
  rw [hfactor] at ibp₁ ibp₂
  rw [scaledBump_eq_indicator A hpos, explicitSecondDerivative,
    sourceFourier_indicator _ _ _ _ (by linarith),
    sourceFourier_indicator _ _ _ _ (by linarith)]
  change (∫ x in -A..A, (secondInterior A x : ℂ) * w x) =
    -(ξ : ℂ) ^ 2 * ∫ x in -A..A, (bumpInterior A x : ℂ) * w x
  have hcsq : c * c = -(ξ : ℂ) ^ 2 := by
    dsimp [c]
    calc
      _ = (Complex.I * Complex.I) * (ξ : ℂ) ^ 2 := by ring
      _ = _ := by rw [Complex.I_mul_I]; ring
  calc
    _ = c * (c * ∫ x in -A..A, (bumpInterior A x : ℂ) * w x) := by
      rw [ibp₁]
      linear_combination ibp₂
    _ = _ := by rw [← mul_assoc, hcsq]

/-- Exact linearity for the integrable source bump subtraction. -/
theorem sourceFourier_dilationTest (A ξ : ℝ) (hA : 1 ≤ A) :
    sourceFourier (dilationTest explicitSecondDerivative A) ξ =
      -((ξ : ℂ) ^ 2 + 1 / 4) * sourceFourier (scaledBump A) ξ := by
  have hpos : 0 < A := by linarith
  have hf : Integrable (fun x ↦ (scaledBump A x : ℂ)) :=
    Complex.ofRealCLM.integrable_comp (scaledBump_integrable A hpos)
  have hg : Integrable (fun x ↦ (explicitSecondDerivative A x : ℂ)) :=
    Complex.ofRealCLM.integrable_comp (explicitSecondDerivative_integrable A)
  have hmul (f : ℝ → ℂ) (hi : Integrable f) :
      Integrable (fun x ↦ f x * Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) := by
    apply hi.mul_bdd (c := 1) (by fun_prop)
    filter_upwards [] with x
    simp [Complex.norm_exp]
  unfold sourceFourier dilationTest
  simp_rw [Complex.ofReal_sub, Complex.ofReal_div, Complex.ofReal_ofNat,
    sub_mul, div_mul_eq_mul_div]
  rw [integral_sub (hmul _ hg) ((hmul _ hf).div_const 4), integral_div]
  change sourceFourier (explicitSecondDerivative A) ξ -
    sourceFourier (scaledBump A) ξ / 4 = _
  rw [explicitSecondDerivative_fourier A ξ hA]
  change -(ξ : ℂ) ^ 2 * sourceFourier (scaledBump A) ξ -
    sourceFourier (scaledBump A) ξ / 4 =
    -((ξ : ℂ) ^ 2 + 1 / 4) * sourceFourier (scaledBump A) ξ
  ring

/-- The Fourier identity retains exactly the repository normalization `√Z_A`. -/
theorem sourceFourier_normalizedTest (A ξ : ℝ) (hA : 1 ≤ A) :
    sourceFourier (normalizedTest explicitSecondDerivative A) ξ =
      -((ξ : ℂ) ^ 2 + 1 / 4) * sourceFourier (scaledBump A) ξ /
        (Real.sqrt (sourceNormalization A) : ℂ) := by
  unfold normalizedTest sourceFourier
  simp_rw [Complex.ofReal_div, div_mul_eq_mul_div]
  rw [integral_div]
  change sourceFourier (dilationTest explicitSecondDerivative A) ξ / _ = _
  rw [sourceFourier_dilationTest A ξ hA]
  rfl

/-- The same source differential operator supplies both the real-frequency
factorization and the two real exponential cancellations. No complex-frequency
extension of the Fourier transform is asserted. -/
theorem factorization_and_pole_cancellation (A : ℝ) (hA : 1 ≤ A) :
    (∀ ξ : ℝ, sourceFourier (normalizedTest explicitSecondDerivative A) ξ =
      -((ξ : ℂ) ^ 2 + 1 / 4) * sourceFourier (scaledBump A) ξ /
        (Real.sqrt (sourceNormalization A) : ℂ)) ∧
      (∫ x, Real.exp (x / 2) * normalizedTest explicitSecondDerivative A x) = 0 ∧
      (∫ x, Real.exp (-x / 2) * normalizedTest explicitSecondDerivative A x) = 0 :=
  ⟨fun ξ ↦ sourceFourier_normalizedTest A ξ hA,
    CorrelationMoment.positive_pole_zero A hA, CorrelationMoment.negative_pole_zero A hA⟩

end
end DilationFourierFactorization
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
