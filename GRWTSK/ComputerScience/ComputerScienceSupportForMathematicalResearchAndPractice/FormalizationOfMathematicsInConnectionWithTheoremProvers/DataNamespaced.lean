-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DataRecord.Variantbf56148330e229e75841acf65fab1fa1cf5ec62e568cdfe8bea041b0d9851ce5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf56148330e229e75841acf65fab1fa1cf5ec62e568cdfe8bea041b0d9851ce5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DataRecord.Variantbf56148330e229e75841acf65fab1fa1cf5ec62e568cdfe8bea041b0d9851ce5","mathematical_subject":"Foundations.Unclassified","original_sha256":"bf56148330e229e75841acf65fab1fa1cf5ec62e568cdfe8bea041b0d9851ce5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/Data.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ingestion.Source

/-! # Research data artifacts -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DataRecord.Variantbf56148330e229e75841acf65fab1fa1cf5ec62e568cdfe8bea041b0d9851ce5

namespace Mathematics.Ingestion

structure DataRecord where
  dataId : StableId
  artifact : Ecosystem.RawArtifact
  schemaDigest : Option Digest
  rowCount : Option Nat
  semanticStatus : String
  immutableBytes : Bool := true
  deriving DecidableEq, Repr

end Mathematics.Ingestion
