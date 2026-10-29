-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderTwoRecursiveCumulant.Variant11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.OrderTwoRecursiveCumulant.Variant11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/11/11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038--EmbeddingCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.OrderTwoRecursiveCumulant
import Mathlib.Data.Fin.VecNotation

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderTwoRecursiveCumulant.Variant11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038

namespace FormalResearch.PositiveAtlas.MomentCumulant
example {E : Type} (directions : Fin 4 → E) :
    blockDirections directions ({(0 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)) =
      ![directions 0, directions 2] := by
  have h := Finset.orderEmbOfFin_unique
    (s := ({(0 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)))
    (f := (![0, 2] : Fin 2 → Fin 4)) (by decide : _ = 2)
    (by decide) (by decide)
  funext j
  unfold blockDirections blockOrderIso
  rw [Finset.coe_orderIsoOfFin_apply, ← h]
  fin_cases j <;> rfl
end FormalResearch.PositiveAtlas.MomentCumulant
