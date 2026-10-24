-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BlueprintRecord.Variant3c80bf49dc8b5ab257b1f35651e313fd0c2f198f8d02e81c8343a311921c0fdc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3c80bf49dc8b5ab257b1f35651e313fd0c2f198f8d02e81c8343a311921c0fdc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BlueprintRecord.Variant3c80bf49dc8b5ab257b1f35651e313fd0c2f198f8d02e81c8343a311921c0fdc","mathematical_subject":"Computation.DataStructures","original_sha256":"3c80bf49dc8b5ab257b1f35651e313fd0c2f198f8d02e81c8343a311921c0fdc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/Blueprint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ingestion.Source

/-! # Informal blueprints and mathematical plans -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BlueprintRecord.Variant3c80bf49dc8b5ab257b1f35651e313fd0c2f198f8d02e81c8343a311921c0fdc

namespace Mathematics.Ingestion

structure BlueprintRecord where
  blueprintId : StableId
  source : SourceUnit
  sectionPath : List String
  statementDigest : Digest
  linkedDeclarationNames : List String
  proposalOnly : Bool := true
  deriving DecidableEq, Repr

end Mathematics.Ingestion
