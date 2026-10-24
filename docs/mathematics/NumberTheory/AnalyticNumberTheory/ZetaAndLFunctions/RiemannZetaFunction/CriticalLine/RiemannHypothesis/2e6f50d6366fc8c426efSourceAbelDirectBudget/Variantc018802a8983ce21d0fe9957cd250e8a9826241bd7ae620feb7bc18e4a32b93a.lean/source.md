# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.2e6f50d6366fc8c426efSourceAbelDirectBudget.Variantc018802a8983ce21d0fe9957cd250e8a9826241bd7ae620feb7bc18e4a32b93a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f3b36fad8b88a2442a590219aaa95d9adbc54fa` · SHA-256 `096b831fb104389ec94280f4c369153e85d2da6024184b8d30d0583d7fe1e5d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AllRealSourceLowerOfCompensatedJointWorkTail.Variant2e6f50d6366fc8c426ef14bd27be18aa855fe2563fa314e8bfc6d7156e5aa098","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e6f50d6366fc8c426ef14bd27be18aa855fe2563fa314e8bfc6d7156e5aa098","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.AllRealSourceLowerOfCompensatedJointWorkTail.Variant2e6f50d6366fc8c426ef14bd27be18aa855fe2563fa314e8bfc6d7156e5aa098","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2e6f50d6366fc8c426ef14bd27be18aa855fe2563fa314e8bfc6d7156e5aa098","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/2e6f50d6366fc8c426ef-SourceAbelDirectBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceResidualBudget
import SourceLocalizedSignedConsumer

/-!
Exact conditional lower budgets for the full source Abel block, endpoint three,
and independently bounded ledger. D and R remain explicit open witness premises.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AllRealSourceLowerOfCompensatedJointWorkTail.Variant2e6f50d6366fc8c426ef14bd27be18aa855fe2563fa314e8bfc6d7156e5aa098

set_option autoImplicit false

namespace RH16ResumeBudget

open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceJointWorkConsumer
open FormalResearch.RiemannHypothesis.SourceLocalizedSignedConsumer
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

noncomputable section

theorem all_real_source_lower_of_compensatedJointWork_tail
    (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedJointWork A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R) (archimedeanMultiplier 0 - 2 * (D + 3 + C_F)) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_compensatedJointWork_tail D R hD hR hwork
  exact ⟨C_F, hF0, all_real_source_lower_of_residual_tail (D + 3 + C_F) R hR hF⟩

theorem all_real_source_lower_of_compensatedLocalizedWork_tail
    (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedLocalizedWork A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R) (archimedeanMultiplier 0 - 2 * (D + 3 + C_F)) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_compensatedLocalizedWork_tail D R hD hR hwork
  exact ⟨C_F, hF0, all_real_source_lower_of_residual_tail (D + 3 + C_F) R hR hF⟩

end
end RH16ResumeBudget
```
