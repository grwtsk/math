# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ZeroLogarithmicNormProbe.Variantd88dd99f6aa5f7552c32d72dd6631af4ec635f0395e50d01263686bf226bd0f4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e204f3d58a9b16d81f155a0119594b7ccd8a30b` · SHA-256 `5ef2340d12c3cd714edafd53ef50f32f5d0d41707f951fb049f35e2f27f8bfdd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicWeight.Variant14adc00fc4768601c828b954ca5a11fde64206a5a8d3e200eb569cdaa392217f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"14adc00fc4768601c828b954ca5a11fde64206a5a8d3e200eb569cdaa392217f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.LogarithmicWeight.Variant14adc00fc4768601c828b954ca5a11fde64206a5a8d3e200eb569cdaa392217f","mathematical_subject":"Analysis.Integration","original_sha256":"14adc00fc4768601c828b954ca5a11fde64206a5a8d3e200eb569cdaa392217f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/ZeroLogarithmicNormProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource

/-!
# The exact source logarithmic energy and analytic integrability

The weight retains its unweighted term and coefficient one-half, and the source
energy retains its factor `1 / (2π)`. Genuine integrability follows from the
actual angular-frequency Fourier estimates. Archimedean integrability uses the
proved estimate for the actual digamma multiplier, without a surrogate or an
unproved analytic premise. No explicit formula or zero-side descent is asserted.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicWeight.Variant14adc00fc4768601c828b954ca5a11fde64206a5a8d3e200eb569cdaa392217f

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroLogarithmicNorm

open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourcePairing
open BridgeFourier

noncomputable section

/-- The source's exact logarithmic norm weight includes the unweighted term. -/
def logarithmicWeight (ξ : ℝ) : ℝ := 1 + Real.log (1 + 4 * ξ ^ 2) / 2

/-- The weighted Fourier square integral before the fixed source normalization. -/
def rawLogarithmicEnergy (f : ℝ → ℝ) : ℝ :=
  ∫ ξ : ℝ, logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ)

/-- The source's squared logarithmic norm includes its exact factor `1 / (2π)`. -/
def sourceLogarithmicEnergy (f : ℝ → ℝ) : ℝ :=
  rawLogarithmicEnergy f / (2 * Real.pi)

/-- Every source frequency has a nonnegative logarithmic weight. -/
theorem logarithmicWeight_nonneg (ξ : ℝ) : 0 ≤ logarithmicWeight ξ := by
  have hlog : 0 ≤ Real.log (1 + 4 * ξ ^ 2) :=
    Real.log_nonneg (by nlinarith [sq_nonneg ξ])
  unfold logarithmicWeight
  positivity

/-- The complete weighted Fourier square is genuinely integrable under the stated premises. -/
theorem logarithmic_integrand_integrable (f : ℝ → ℝ) (hf : Integrable f volume)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f) volume) :
    Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ)) volume := by
  have hu := fourier_normSq_integrable f hf hd hdi
  have hl := logarithmic_fourier_integrable f hf hd hdi
  apply (hu.add (hl.div_const 2)).congr
  exact Eventually.of_forall fun ξ ↦ by
    dsimp
    unfold logarithmicWeight
    ring

/-- Source normalization preserves genuine integrability of the energy integrand. -/
theorem sourceLogarithmic_integrand_integrable (f : ℝ → ℝ) (hf : Integrable f volume)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f) volume) :
    Integrable
      (fun ξ ↦ (logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ)) / (2 * Real.pi))
      volume :=
  (logarithmic_integrand_integrable f hf hd hdi).div_const (2 * Real.pi)

/-- The exact normalization can equivalently be kept inside the source energy integral. -/
theorem sourceLogarithmicEnergy_eq_integral (f : ℝ → ℝ) :
    sourceLogarithmicEnergy f =
      ∫ ξ : ℝ, (logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ)) / (2 * Real.pi) := by
  simp only [sourceLogarithmicEnergy, rawLogarithmicEnergy, div_eq_mul_inv, integral_mul_const]

/-- The raw logarithmic energy has no negative contribution. -/
theorem rawLogarithmicEnergy_nonneg (f : ℝ → ℝ) : 0 ≤ rawLogarithmicEnergy f :=
  integral_nonneg fun ξ ↦ mul_nonneg (logarithmicWeight_nonneg ξ) (Complex.normSq_nonneg _)

/-- The source energy remains nonnegative under its actual positive normalization. -/
theorem sourceLogarithmicEnergy_nonneg (f : ℝ → ℝ) : 0 ≤ sourceLogarithmicEnergy f :=
  div_nonneg (rawLogarithmicEnergy_nonneg f) (by positivity)

/-- The actual digamma multiplier is integrable against the Fourier square of these C¹ data.
The multiplier estimate is supplied by its existing unconditional source proof. -/
theorem archimedean_integrable_of_c1 (f : ℝ → ℝ) (hf : Integrable f volume)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f) volume) :
    Integrable (fun ξ ↦ archimedeanMultiplier ξ * Complex.normSq (sourceFourier f ξ))
      volume := by
  have hc := sourceFourier_continuous hf
  have hm : AEStronglyMeasurable
      (fun ξ ↦ archimedeanMultiplier ξ * Complex.normSq (sourceFourier f ξ)) volume :=
    (BridgeMultiplier.archimedeanMultiplier_measurable.mul
      (Complex.continuous_normSq.comp hc).measurable).aestronglyMeasurable
  have hmajor := ((fourier_normSq_integrable f hf hd hdi).const_mul
    (|BridgeAdmissibility.archimedeanConstant| + 4)).add
      ((logarithmic_fourier_integrable f hf hd hdi).div_const 2)
  apply hmajor.mono' hm
  filter_upwards [] with ξ
  rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (Complex.normSq_nonneg _)]
  calc
    |archimedeanMultiplier ξ| * Complex.normSq (sourceFourier f ξ) ≤
        (|BridgeAdmissibility.archimedeanConstant| + 4 +
          Real.log (1 + 4 * ξ ^ 2) / 2) * Complex.normSq (sourceFourier f ξ) :=
      mul_le_mul_of_nonneg_right
        (BridgeMultiplier.multiplier_abs_le_of_estimate AdmissionSource.multiplier_estimate ξ)
        (Complex.normSq_nonneg _)
    _ = _ := by simp only [Pi.add_apply]; ring

end
end ZeroLogarithmicNorm
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
