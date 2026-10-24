# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceReducedOffAxisQuadraticSharp.Variantaf6a04f429a90eab1cda8f68607ba2bc0b0e143985cea213318f3912fdf868a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2dbc58251dff4fd317e13e6c78039d1ee6868076` · SHA-256 `fba83bbafd9c0a73aa79fc5b92213d5199aae87f44f4f65d24a57726237cabbc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualReducedZeroEnvelopeLeAtRadius.Variant29c05dcabc0308e9920e3ec4001a24f009613ee68b2b7f69c2a9fa62c2b0dee6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"29c05dcabc0308e9920e3ec4001a24f009613ee68b2b7f69c2a9fa62c2b0dee6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualReducedZeroEnvelopeLeAtRadius.Variant29c05dcabc0308e9920e3ec4001a24f009613ee68b2b7f69c2a9fa62c2b0dee6","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"29c05dcabc0308e9920e3ec4001a24f009613ee68b2b7f69c2a9fa62c2b0dee6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791352077417968000/SourceReducedOffAxisQuadraticSharp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceReducedOffAxisEstimateConsumer

/-!
Use the exact original quadratic head-tail identity to retain the sharper
one-sided off-axis consequence without paying an archimedean allowance.
The complete actual tail and supplied unrestricted signed J remain literal.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualReducedZeroEnvelopeLeAtRadius.Variant29c05dcabc0308e9920e3ec4001a24f009613ee68b2b7f69c2a9fa62c2b0dee6

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceReducedOffAxisQuadraticSharp
open SourceActualReducedZeroHeight SourceActualCriticalZeroHead SourceActualZeroTailBudget
open SourceReducedOffAxisEstimateConsumer SourcePairing RH16ResumeBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

theorem actualReducedZeroEnvelope_le_at_radius {A0 S A : ℝ}
    (hA0 : 1 ≤ A0) (hS : 200 ≤ S) (hA : S ≤ A) :
    actualReducedZeroEnvelope A0 A ≤ actualReducedZeroEnvelope A0 S := by
  have hSp : 0 < S := by linarith
  have hAp : 0 < A := by linarith
  have hc : 0 ≤ actualZeroTailWeightConstant := by
    unfold actualZeroTailWeightConstant
    positivity
  unfold actualReducedZeroEnvelope
  gcongr

theorem quadratic_tail_of_reduced_offAxis_lower (J R : ℝ)
    (hhead : ∀ A : ℝ, R ≤ A →
      -J ≤ (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ A : ℝ, max 200 R ≤ A →
      -J - actualReducedZeroEnvelope A0 (max 200 R) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨A0, hA0, hb⟩ := actualReducedZeroTail_norm_bound
  refine ⟨A0, hA0, fun A hA => ?_⟩
  have h200 : 200 ≤ A := (le_max_left _ _).trans hA
  have hA1 : 1 ≤ A := by linarith
  have hh := hhead A ((le_max_right _ _).trans hA)
  have hp := actualOffAxisZeroHeightHead_re_le_full A (actualReducedZeroHeight A) hA1
  have he := congrArg Complex.re (actualSourceQuadraticValue_sub_reducedHead A hA1)
  simp only [Complex.sub_re, Complex.ofReal_re] at he
  have ht := (abs_le.mp ((Complex.abs_re_le_norm
    (actualZeroHeightTail A (actualReducedZeroHeight A))).trans (hb A h200))).1
  have hs := actualReducedZeroEnvelope_le_at_radius hA0 (le_max_left 200 R) hA
  linarith

theorem all_real_sharp_lower_of_reduced_offAxis_lower (J R : ℝ)
    (hhead : ∀ A : ℝ, R ≤ A →
      -J ≤ (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (max 200 R))
        (-J - actualReducedZeroEnvelope A0 (max 200 R)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨A0, hA0, hb⟩ := quadratic_tail_of_reduced_offAxis_lower J R hhead
  refine ⟨A0, hA0, fun A hA => ?_⟩
  by_cases hSA : max 200 R ≤ A
  · exact (min_le_right _ _).trans (hb A hSA)
  · exact (min_le_left _ _).trans
      (originalPrefixLower_le_source (max 200 R) A hA (le_of_not_ge hSA))

theorem estimate_sharp_of_reduced_offAxis_lower (J R : ℝ)
    (hhead : ∀ A : ℝ, R ≤ A →
      -J ≤ (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨A0, _, hb⟩ := all_real_sharp_lower_of_reduced_offAxis_lower J R hhead
  exact ⟨min (originalPrefixLower (max 200 R))
    (-J - actualReducedZeroEnvelope A0 (max 200 R)), hb⟩

end FormalResearch.RiemannHypothesis.SourceReducedOffAxisQuadraticSharp
```
