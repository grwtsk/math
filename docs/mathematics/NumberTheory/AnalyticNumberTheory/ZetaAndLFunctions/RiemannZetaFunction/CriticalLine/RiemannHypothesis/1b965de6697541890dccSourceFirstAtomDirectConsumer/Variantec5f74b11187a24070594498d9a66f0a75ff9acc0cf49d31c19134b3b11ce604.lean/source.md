# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.1b965de6697541890dccSourceFirstAtomDirectConsumer.Variantec5f74b11187a24070594498d9a66f0a75ff9acc0cf49d31c19134b3b11ce604

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15ac33a01145b03b74a520716a90444529d4b423` · SHA-256 `fd33a1754d86337dd6d6816c6765ea4c48c6cc441ab2e673f5d83c563f6e3b0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ResidualUpperOfRemainingSignedLower.Variant1b965de6697541890dcc2d74cf6acca39ed8247223c523b7abecdb62f80d03e8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b965de6697541890dcc2d74cf6acca39ed8247223c523b7abecdb62f80d03e8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ResidualUpperOfRemainingSignedLower.Variant1b965de6697541890dcc2d74cf6acca39ed8247223c523b7abecdb62f80d03e8","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"1b965de6697541890dcc2d74cf6acca39ed8247223c523b7abecdb62f80d03e8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/1b965de6697541890dcc-SourceFirstAtomDirectConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceMangoldtDirectBudget
import SourceFirstAtomSignedWork

/-!
Exact return of the newly checked signed first-atom estimate to the original
all-real source. The remaining full-Mangoldt integral is an explicit open premise.
Research direction: grwtsk contributors. AI construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ResidualUpperOfRemainingSignedLower.Variant1b965de6697541890dcc2d74cf6acca39ed8247223c523b7abecdb62f80d03e8

set_option autoImplicit false

namespace RH16ResumeApplication

open RH16ResumeBudget
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceMangoldtAbel
open FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

noncomputable section

theorem residual_upper_of_remaining_signed_lower (D R A : ℝ) (hR : 40 ≤ R)
    (hRA : R ≤ A) (htail : -D ≤ remainingAtomWork A) :
    mertensResidual A ≤ D - 3 / 8 + criticalBaselineCorrection R := by
  have hw := criticalMangoldtWork_lower_of_remaining_lower A D (hR.trans hRA) htail
  have hr := residual_upper_of_original_Mangoldt_work_lower (D + 5 / 8) R A
    (by linarith) hRA hw
  linarith only [hr]

theorem all_real_source_lower_of_remaining_signed_tail
    (D R : ℝ) (hR : 40 ≤ R)
    (htail : ∀ A : ℝ, R ≤ A → -D ≤ remainingAtomWork A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (D - 3 / 8 + criticalBaselineCorrection R)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail
    (D - 3 / 8 + criticalBaselineCorrection R) R (by linarith)
  intro A hRA
  exact residual_upper_of_remaining_signed_lower D R A hR hRA (htail A hRA)

theorem estimate_of_remaining_signed_tail
    (D R : ℝ) (hR : 40 ≤ R)
    (htail : ∀ A : ℝ, R ≤ A → -D ≤ remainingAtomWork A) :
    CorrelationAssembly.EstimateObligation :=
  ⟨min (originalPrefixLower R)
      (archimedeanMultiplier 0 - 2 * (D - 3 / 8 + criticalBaselineCorrection R)),
    all_real_source_lower_of_remaining_signed_tail D R hR htail⟩

end
end RH16ResumeApplication
```
