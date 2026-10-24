-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LineageRelation.Variantbc1fb03efeec944e5af851805cfd6c1dbbd2f703922818c84329afa8d1449528","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc1fb03efeec944e5af851805cfd6c1dbbd2f703922818c84329afa8d1449528","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LineageRelation.Variantbc1fb03efeec944e5af851805cfd6c1dbbd2f703922818c84329afa8d1449528","mathematical_subject":"Foundations.Unclassified","original_sha256":"bc1fb03efeec944e5af851805cfd6c1dbbd2f703922818c84329afa8d1449528","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Federation/Lineage.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Federation.GlobalId

/-! # Declaration lineage -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LineageRelation.Variantbc1fb03efeec944e5af851805cfd6c1dbbd2f703922818c84329afa8d1449528

namespace Mathematics.Federation

inductive LineageRelation
  | unchanged
  | renamed
  | moved
  | generalized
  | specialized
  | split
  | merged
  | deleted
  deriving DecidableEq, Repr

/-- Lineage records evolution without identifying different declarations. -/
structure DeclarationLineageEdge where
  source : GlobalDeclarationId
  target : GlobalDeclarationId
  relation : LineageRelation
  evidenceDigest : Digest
  authority : String
  deriving DecidableEq, Repr

end Mathematics.Federation
