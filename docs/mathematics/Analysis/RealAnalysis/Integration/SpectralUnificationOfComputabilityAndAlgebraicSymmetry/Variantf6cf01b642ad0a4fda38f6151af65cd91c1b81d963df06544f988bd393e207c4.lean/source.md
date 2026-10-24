# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variantf6cf01b642ad0a4fda38f6151af65cd91c1b81d963df06544f988bd393e207c4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2e2dc53b884bfaea3bd0d77592b50692cd75ff0` · SHA-256 `088c38f5721bcb6c0efd69175ff08c533f5a639c6d66ab5a172667380e563c00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SpectralDensity.Variant382cd862e5e4deb81845b24a5a34f529325660f49e8cfbded24978b6a2aadfb3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"382cd862e5e4deb81845b24a5a34f529325660f49e8cfbded24978b6a2aadfb3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SpectralDensity.Variant382cd862e5e4deb81845b24a5a34f529325660f49e8cfbded24978b6a2aadfb3","mathematical_subject":"Analysis.Integration","original_sha256":"382cd862e5e4deb81845b24a5a34f529325660f49e8cfbded24978b6a2aadfb3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/382cd862e5e4deb81845b24a5a34f529325660f49e8cfbded24978b6a2aadfb3.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel

/-!
# The positive spectral density of the actual source correlation

The density keeps the immutable normalized test and angular Fourier convention.
Its positivity concerns this autocorrelation, not the signed arithmetic Weil form.
No zero simplicity, RH, or arithmetic cancellation estimate is assumed.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.SpectralDensity.Variant382cd862e5e4deb81845b24a5a34f529325660f49e8cfbded24978b6a2aadfb3

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace CorrelationSpectralLens

open MeasureTheory Complex
open scoped FourierTransform Convolution ComplexConjugate
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier

noncomputable section

/-- Angular-frequency density of the actual normalized source test. -/
def spectralDensity (A ξ : ℝ) : ℝ :=
  Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ξ) /
    (2 * Real.pi)

/-- The source density is nonnegative at every real frequency. -/
theorem spectralDensity_nonneg (A ξ : ℝ) : 0 ≤ spectralDensity A ξ := by
  unfold spectralDensity
  exact div_nonneg (Complex.normSq_nonneg _) (mul_pos (by norm_num) Real.pi_pos).le

/-- The actual Fourier square is integrable, so the density has genuine finite mass. -/
theorem spectralDensity_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (spectralDensity A) :=
  (actual_fourier_square_integrable A hA).div_const _

/-- Unit mass follows from the existing exact source Plancherel theorem. -/
theorem spectralDensity_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ ξ : ℝ, spectralDensity A ξ) = 1 := by
  unfold spectralDensity
  rw [integral_div, SourcePlancherel.actual_source_fourier_mass A hA]
  exact div_self (mul_ne_zero two_ne_zero Real.pi_ne_zero)

/-- The Fourier transform of the complexified correlation is genuinely integrable. -/
theorem fourier_sourceCorrelation_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (𝓕 (fun t ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ))) := by
  have hi : Integrable (fun ξ ↦ (Complex.normSq
      (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ)) :=
    Complex.ofRealCLM.integrable_comp (SourcePlancherel.standardFourier_square_integrable A hA)
  convert hi using 1
  funext ξ
  exact SourcePlancherel.fourier_correlation A hA ξ

/-- Fourier inversion applies to the actual compact correlation at every time. -/
theorem sourceCorrelation_eq_inverseFourier (A t : ℝ) (hA : 1 ≤ A) :
    (sourceCorrelation explicitSecondDerivative A t : ℂ) =
      ∫ ξ : ℝ, Complex.exp ((2 * Real.pi * ξ * t : ℝ) * Complex.I) *
        (Complex.normSq (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ) := by
  have hi : Integrable (fun t ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
    Complex.ofRealCLM.integrable_comp (sourceCorrelation_integrable A (by linarith))
  have hc : Continuous (fun t ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
    Complex.continuous_ofReal.comp (sourceCorrelation_contDiff A (by linarith)).continuous
  have heq := hi.fourierInv_fourier_eq (fourier_sourceCorrelation_integrable A hA)
    (hc.continuousAt (x := t))
  rw [← heq, Real.fourierInv_eq']
  apply integral_congr_ae
  filter_upwards [] with ξ
  rw [SourcePlancherel.fourier_correlation A hA ξ]
  simp only [smul_eq_mul, RCLike.inner_apply, conj_trivial, ofReal_mul, ofReal_ofNat]
  congr 2
  ring

/-- Every cosine observation is integrable against the actual finite density. -/
theorem spectralDensity_cos_integrable (A t : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ Real.cos (ξ * t) * spectralDensity A ξ) := by
  apply (spectralDensity_integrable A hA).bdd_mul (c := 1)
  · exact (by fun_prop : Continuous (fun ξ : ℝ ↦ Real.cos (ξ * t))).aestronglyMeasurable
  · filter_upwards [] with ξ
    exact Real.abs_cos_le_one _

/-- The ordinary Fourier cosine formula follows by taking the real part of inversion. -/
theorem sourceCorrelation_eq_integral_cos_fourier (A t : ℝ) (hA : 1 ≤ A) :
    sourceCorrelation explicitSecondDerivative A t =
      ∫ ξ : ℝ, Real.cos (2 * Real.pi * ξ * t) *
        Complex.normSq (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) := by
  have hn : Integrable (fun ξ : ℝ ↦
      (Complex.normSq (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ)) := by
    convert fourier_sourceCorrelation_integrable A hA using 1
    funext ξ
    exact (SourcePlancherel.fourier_correlation A hA ξ).symm
  have hi : Integrable (fun ξ : ℝ ↦
      Complex.exp ((2 * Real.pi * ξ * t : ℝ) * Complex.I) *
        (Complex.normSq
          (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ)) := by
    apply hn.bdd_mul (c := 1)
    · exact (by fun_prop : Continuous (fun ξ : ℝ ↦
        Complex.exp ((2 * Real.pi * ξ * t : ℝ) * Complex.I))).aestronglyMeasurable
    · filter_upwards [] with ξ
      simp [Complex.norm_exp]
  have heq := congrArg Complex.re (sourceCorrelation_eq_inverseFourier A t hA)
  have hre : (∫ ξ : ℝ, Complex.exp ((2 * Real.pi * ξ * t : ℝ) * Complex.I) *
      (Complex.normSq (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ)).re =
      ∫ ξ : ℝ, (Complex.exp ((2 * Real.pi * ξ * t : ℝ) * Complex.I) *
        (Complex.normSq
          (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ)).re :=
    (integral_re hi).symm
  rw [hre] at heq
  simpa [Complex.exp_re, Complex.mul_re] using heq

/-- The source convention gives the actual correlation as a cosine observation of its density. -/
theorem sourceCorrelation_eq_integral_cos (A t : ℝ) (hA : 1 ≤ A) :
    sourceCorrelation explicitSecondDerivative A t =
      ∫ ξ : ℝ, Real.cos (ξ * t) * spectralDensity A ξ := by
  rw [sourceCorrelation_eq_integral_cos_fourier A t hA]
  simp_rw [SourcePlancherel.standardFourier_eq_sourceFourier]
  have heq : (fun ξ : ℝ ↦ Real.cos (2 * Real.pi * ξ * t) *
      Complex.normSq
        (sourceFourier (normalizedTest explicitSecondDerivative A) (-(2 * Real.pi) * ξ))) =
      (fun ξ : ℝ ↦ (Real.cos (ξ * t) *
        Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ξ))) ∘
          (fun ξ : ℝ ↦ -(2 * Real.pi) * ξ) := by
    funext ξ
    simp only [Function.comp_apply]
    have hneg : -(2 * Real.pi) * ξ * t = -(2 * Real.pi * ξ * t) := by ring
    rw [hneg, Real.cos_neg]
  rw [heq]
  change (∫ ξ : ℝ, (fun η : ℝ ↦ Real.cos (η * t) *
        Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) η))
      (- (2 * Real.pi) * ξ)) = _
  rw [Measure.integral_comp_mul_left (fun ξ : ℝ ↦ Real.cos (ξ * t) *
    Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ξ))
      (-(2 * Real.pi))]
  have habs : |(-(2 * Real.pi))⁻¹| = (2 * Real.pi)⁻¹ := by
    rw [inv_neg, abs_neg, abs_of_pos (inv_pos.mpr (mul_pos (by norm_num) Real.pi_pos))]
  rw [habs, smul_eq_mul, ← integral_const_mul]
  apply integral_congr_ae
  filter_upwards [] with ξ
  unfold spectralDensity
  ring

end
end CorrelationSpectralLens
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
