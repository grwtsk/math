-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FoldDatum.Variantd493063600be3b428c780f97419b3690e516c69fad618594203d0b83f4dc84b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d493063600be3b428c780f97419b3690e516c69fad618594203d0b83f4dc84b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FoldDatum.Variantd493063600be3b428c780f97419b3690e516c69fad618594203d0b83f4dc84b6","mathematical_subject":"Foundations.Unclassified","original_sha256":"d493063600be3b428c780f97419b3690e516c69fad618594203d0b83f4dc84b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Fold/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Universe.Manifest

/-!
# Identity-bound fold data
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FoldDatum.Variantd493063600be3b428c780f97419b3690e516c69fad618594203d0b83f4dc84b6

namespace DAF.Fold

/-- A fold is bound to immutable source and target cells and digests.  The
`reversible` flag is metadata only; inverse evidence is carried separately by
operator-level structures. -/
structure FoldDatum where
  id : Universe.FoldId
  sourceCell : Universe.TerrainCellId
  targetCell : Universe.TerrainCellId
  sourceDigest : Universe.Digest
  targetDigest : Universe.Digest
  reversible : Bool
  deriving DecidableEq, Repr

end DAF.Fold
