# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Depth.Variant8ffc8e3d9622a71e3c0be576ef8ef88ed2dacac65e434ca46daba93caa566ec2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a1409d1acb496e4f514a0a8e4ef3d441d086458` · SHA-256 `a283e43f3ccde61105efc293a963225dfaf700f2e216d05865e9e533f1c7d1e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.DepthAttentionWeights.Variant88decc5d2eab7f6f047d9fb06fdf35957aefdebdc72f84cd4bbc4de2fba4fdc5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88decc5d2eab7f6f047d9fb06fdf35957aefdebdc72f84cd4bbc4de2fba4fdc5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.DepthAttentionWeights.Variant88decc5d2eab7f6f047d9fb06fdf35957aefdebdc72f84cd4bbc4de2fba4fdc5","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"88decc5d2eab7f6f047d9fb06fdf35957aefdebdc72f84cd4bbc4de2fba4fdc5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Attention/Depth.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Attention.Retention
import Mathlib.Analysis.Normed.Module.Basic

/-!
# Normalized depth retrieval

Attention Residuals are represented only by a nonnegative normalized
barycentric family over retained depth sources.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.DepthAttentionWeights.Variant88decc5d2eab7f6f047d9fb06fdf35957aefdebdc72f84cd4bbc4de2fba4fdc5

namespace Mathematics.Attention

open scoped BigOperators

structure DepthAttentionWeights (sourceCount : Nat) where
  weight : Fin sourceCount → ℝ
  nonnegative : ∀ source, 0 ≤ weight source
  normalized : ∑ source, weight source = 1

namespace DepthAttentionWeights

variable {Carrier : Type*}
  [NormedAddCommGroup Carrier] [NormedSpace ℝ Carrier]

noncomputable def retrieve
    (weights : DepthAttentionWeights sourceCount)
    (source : Fin sourceCount → Carrier) : Carrier :=
  ∑ index, weights.weight index • source index

theorem norm_retrieve_le
    (weights : DepthAttentionWeights sourceCount)
    (source : Fin sourceCount → Carrier)
    (bound : ℝ)
    (sourceBound : ∀ index, ‖source index‖ ≤ bound) :
    ‖weights.retrieve source‖ ≤ bound := by
  calc
    ‖weights.retrieve source‖
        ≤ ∑ index, ‖weights.weight index • source index‖ :=
      norm_sum_le _ _
    _ = ∑ index, weights.weight index * ‖source index‖ := by
      apply Finset.sum_congr rfl
      intro index _
      rw [norm_smul, Real.norm_eq_abs, abs_of_nonneg
        (weights.nonnegative index)]
    _ ≤ ∑ index, weights.weight index * bound := by
      apply Finset.sum_le_sum
      intro index _
      exact mul_le_mul_of_nonneg_left
        (sourceBound index) (weights.nonnegative index)
    _ = bound := by
      rw [← Finset.sum_mul, weights.normalized, one_mul]

end DepthAttentionWeights

structure DepthAttentionNormalizationCertificate
    (sourceCount : Nat) where
  weights : DepthAttentionWeights sourceCount
  pseudoQueryDigest : String
  retainedSourceDigest : String
  pseudoQueryPresent : pseudoQueryDigest ≠ ""
  retainedSourcesPresent : retainedSourceDigest ≠ ""

end Mathematics.Attention
```
