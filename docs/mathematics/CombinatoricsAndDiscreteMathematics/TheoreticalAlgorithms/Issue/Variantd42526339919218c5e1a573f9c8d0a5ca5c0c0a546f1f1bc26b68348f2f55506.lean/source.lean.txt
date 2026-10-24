-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IssueRecord.Variantb65fcaca6f30c613124dfc7e93c79a00877665387d78a4ec1dce0af9afc3df4d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b65fcaca6f30c613124dfc7e93c79a00877665387d78a4ec1dce0af9afc3df4d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.IssueRecord.Variantb65fcaca6f30c613124dfc7e93c79a00877665387d78a4ec1dce0af9afc3df4d","mathematical_subject":"Computation.DataStructures","original_sha256":"b65fcaca6f30c613124dfc7e93c79a00877665387d78a4ec1dce0af9afc3df4d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/Issue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ingestion.Source

/-! # Issue and discussion records -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IssueRecord.Variantb65fcaca6f30c613124dfc7e93c79a00877665387d78a4ec1dce0af9afc3df4d

namespace Mathematics.Ingestion

structure IssueRecord where
  issueId : StableId
  project : ProjectId
  externalNumber : String
  state : String
  titleDigest : Digest
  bodyDigest : Digest
  eventHistoryDigest : Digest
  sourceArtifactIds : List Ecosystem.ArtifactId
  deriving DecidableEq, Repr

end Mathematics.Ingestion
