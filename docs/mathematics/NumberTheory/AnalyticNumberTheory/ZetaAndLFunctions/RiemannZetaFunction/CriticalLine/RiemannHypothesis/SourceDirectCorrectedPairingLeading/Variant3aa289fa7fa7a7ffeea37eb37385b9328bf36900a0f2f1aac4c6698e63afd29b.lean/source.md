# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceDirectCorrectedPairingLeading.Variant3aa289fa7fa7a7ffeea37eb37385b9328bf36900a0f2f1aac4c6698e63afd29b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd982644d626178e4924eb1ca5e5b2b996a5f1ab` · SHA-256 `b2dd9bf599a99ad9832737bf9aa37a47ba300a032c49a7b50c28128361c9ad20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LeadingUpperOfCompleteCorrectedPairing.Variant2d03c4603c2f7ade93445f59c44e40f5c417958f09a196c227e1ae535508b52b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d03c4603c2f7ade93445f59c44e40f5c417958f09a196c227e1ae535508b52b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.LeadingUpperOfCompleteCorrectedPairing.Variant2d03c4603c2f7ade93445f59c44e40f5c417958f09a196c227e1ae535508b52b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2d03c4603c2f7ade93445f59c44e40f5c417958f09a196c227e1ae535508b52b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/root/independent-SourceDirectCorrectedPairingLeading-1791329796631295000/SourceDirectCorrectedPairingLeading.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceLeadingTailQuantitative

/-!
Direct native upper-bound consumer for the unchanged complete corrected Abel
pairing. The supplied arithmetic witness remains explicit; the source's
actual sharp comparison has cost fifty-nine and introduces no smoothing loss.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LeadingUpperOfCompleteCorrectedPairing.Variant2d03c4603c2f7ade93445f59c44e40f5c417958f09a196c227e1ae535508b52b

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceDirectCorrectedPairingLeading
open SourceLeadingTailQuantitative SourceLeadingTailBudget
open SourceCompleteCorrectedAbelPairing
noncomputable section

/-- Apply the actual direct source comparison at its proved radius. -/
theorem leading_upper_of_complete_corrected_pairing (K A : ℝ) (hA : 25600 ≤ A)
    (hpair : completeCorrectedAbelPairing A ≤ K) :
    actualLeadingRenormalizedTail A ≤ K + 59 := by
  have h := (actual_leading_complete_pairing_sharp_comparisons hA).2
  linarith only [h, hpair]

/-- Preserve the supplied tail radius and use its maximum with the native calibration radius. -/
theorem leading_tail_of_complete_corrected_pairing (K R : ℝ)
    (hpair : ∀ A : ℝ, R ≤ A → completeCorrectedAbelPairing A ≤ K) :
    ∀ A : ℝ, max 25600 R ≤ A → actualLeadingRenormalizedTail A ≤ K + 59 := by
  intro A hA
  exact leading_upper_of_complete_corrected_pairing K A ((le_max_left _ _).trans hA)
    (hpair A ((le_max_right _ _).trans hA))

end
end FormalResearch.RiemannHypothesis.SourceDirectCorrectedPairingLeading
```
