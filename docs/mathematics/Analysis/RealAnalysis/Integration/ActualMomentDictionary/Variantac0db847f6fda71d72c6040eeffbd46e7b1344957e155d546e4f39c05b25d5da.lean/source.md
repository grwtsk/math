# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualMomentDictionary.Variantac0db847f6fda71d72c6040eeffbd46e7b1344957e155d546e4f39c05b25d5da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79fe83c650f955903e0db131f1734544ce09561c` · SHA-256 `ebd77837e86d0446bc1ad16398e5d0716943f540d27ecbbde457c41abf656135`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualNormalizedEven.Variant8c1bdbc281600e758c04171f9c37c89a8fe45e720bce7578e632588fcb34b241","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c1bdbc281600e758c04171f9c37c89a8fe45e720bce7578e632588fcb34b241","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualNormalizedEven.Variant8c1bdbc281600e758c04171f9c37c89a8fe45e720bce7578e632588fcb34b241","mathematical_subject":"Analysis.Integration","original_sha256":"8c1bdbc281600e758c04171f9c37c89a8fe45e720bce7578e632588fcb34b241","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass8/real_mode/ActualMomentDictionary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualRealMode
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment

namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualNormalizedEven.Variant8c1bdbc281600e758c04171f9c37c89a8fe45e720bce7578e632588fcb34b241

set_option autoImplicit false
namespace ContinuousResearch.ActualMomentDictionary
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment ZeroSideTargets
open ContinuousResearch.ActualRealMode
noncomputable section

theorem actual_normalized_even (A : ℝ) (hA : 1 ≤ A) :
    Function.Even (normalizedTest explicitSecondDerivative A) := by
  intro x
  rw [normalizedTest_eq_indicator A (by linarith)]
  have hm : -x ∈ Icc (-A) A ↔ x ∈ Icc (-A) A := by simp only [mem_Icc]; constructor <;> intro h <;> constructor <;> linarith [h.1,h.2]
  by_cases hx : x ∈ Icc (-A) A
  · rw [indicator_of_mem (hm.mpr hx),indicator_of_mem hx]
    simp [normalizedInterior,secondInterior,bumpInterior,neg_div]
    ring
  · rw [indicator_of_notMem (fun h => hx (hm.mp h)),indicator_of_notMem hx]

theorem real_transform_dictionary (A σ : ℝ) :
    ((∫ x : ℝ, Real.exp (σ*x)*normalizedTest explicitSecondDerivative A x : ℝ) : ℂ) =
      bilateralTransform A (σ : ℂ)/(Real.sqrt (sourceNormalization A) : ℂ) := by
  unfold bilateralTransform actualTest normalizedTest
  rw [← integral_complex_ofReal,← integral_div]
  apply integral_congr_ae
  filter_upwards [] with x
  push_cast
  rw [← Complex.ofReal_mul,← Complex.ofReal_exp]
  ring

theorem full_correlation_square (A : ℝ) (hA : 1 ≤ A) (σ : ℝ) :
    (∫ t : ℝ, Real.exp (σ*t)*sourceCorrelation explicitSecondDerivative A t) =
      normalizedSquare A σ := by
  have hp := weighted_normalizedTest_integrable A σ hA
  have hn := weighted_normalizedTest_integrable A (-σ) hA
  have hs := weighted_correlation_integral (normalizedTest explicitSecondDerivative A) σ hp hn
  have he : (∫ x : ℝ, Real.exp ((-σ)*x)*normalizedTest explicitSecondDerivative A x) =
      ∫ x : ℝ, Real.exp (σ*x)*normalizedTest explicitSecondDerivative A x := by
    have h := integral_neg_eq_self (fun x : ℝ => Real.exp ((-σ)*x)*normalizedTest explicitSecondDerivative A x) volume
    have heven (x : ℝ) := actual_normalized_even A hA x
    simpa only [neg_mul_neg,heven] using h.symm
  change (∫ t : ℝ, Real.exp (σ*t)*sourceCorrelation explicitSecondDerivative A t) = _ at hs
  rw [hs,he]
  have hq := real_transform_dictionary A σ
  unfold normalizedSquare
  rw [← hq,← Complex.ofReal_pow,Complex.ofReal_re]
  ring

theorem interval_correlation_square (A : ℝ) (hA : 1 ≤ A) (σ : ℝ) :
    (∫ t in (-2*A)..(2*A),Real.exp (σ*t)*sourceCorrelation explicitSecondDerivative A t) =
      normalizedSquare A σ := by
  have he : (fun t : ℝ => Real.exp (σ*t)*sourceCorrelation explicitSecondDerivative A t) =
      (Icc (-2*A) (2*A)).indicator
        (fun t : ℝ => Real.exp (σ*t)*sourceCorrelation explicitSecondDerivative A t) := by
    funext t
    by_cases ht : t ∈ Icc (-2*A) (2*A)
    · rw [indicator_of_mem ht]
    · rw [indicator_of_notMem ht]
      have hb : 2*A ≤ |t| := by
        simp only [mem_Icc,not_and_or] at ht
        rcases ht with ht | ht
        · have : t < -2*A := lt_of_not_ge ht
          have hh := neg_le_abs t; linarith
        · have : 2*A < t := lt_of_not_ge ht
          exact this.le.trans (le_abs_self t)
      rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith) hb,mul_zero]
  have hf := full_correlation_square A hA σ
  rw [he,integral_indicator measurableSet_Icc,integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by linarith : -2*A ≤ 2*A)] at hf
  exact hf

#check actual_normalized_even
#print axioms actual_normalized_even
#check real_transform_dictionary
#print axioms real_transform_dictionary
#check full_correlation_square
#print axioms full_correlation_square
#check interval_correlation_square
#print axioms interval_correlation_square
end
end ContinuousResearch.ActualMomentDictionary
```
