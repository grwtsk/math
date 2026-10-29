-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ConceptRegion.Variant0e34feb0aa0eeea0897e7815c37fffa191a38b5505e9a7d00aac23d7486dd928","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e34feb0aa0eeea0897e7815c37fffa191a38b5505e9a7d00aac23d7486dd928","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ConceptRegion.Variant0e34feb0aa0eeea0897e7815c37fffa191a38b5505e9a7d00aac23d7486dd928","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0e34feb0aa0eeea0897e7815c37fffa191a38b5505e9a7d00aac23d7486dd928","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Terrain/Region.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Taxonomy.All

/-! # Polyhierarchical mathematical terrain -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ConceptRegion.Variant0e34feb0aa0eeea0897e7815c37fffa191a38b5505e9a7d00aac23d7486dd928

namespace Mathematics.Terrain

structure ConceptRegion where
  id : RegionId
  members : Finset ConceptId
  boundaryRelations : Finset RelationId
  profileDigest : Digest
  deriving DecidableEq

end Mathematics.Terrain
