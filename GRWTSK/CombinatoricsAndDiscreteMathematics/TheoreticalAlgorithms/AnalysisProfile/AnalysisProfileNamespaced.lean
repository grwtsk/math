-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AnalysisProfile.Variant9d4fd4bc4139f7a369a5e81bdfbd734f49212502b1bb2777cbc10e791e3dee1a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d4fd4bc4139f7a369a5e81bdfbd734f49212502b1bb2777cbc10e791e3dee1a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AnalysisProfile.Variant9d4fd4bc4139f7a369a5e81bdfbd734f49212502b1bb2777cbc10e791e3dee1a","mathematical_subject":"Computation.DataStructures","original_sha256":"9d4fd4bc4139f7a369a5e81bdfbd734f49212502b1bb2777cbc10e791e3dee1a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projects/Tao/AnalysisProfile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projects.Profile

/-! # Tao `analysis` pedagogical profile -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AnalysisProfile.Variant9d4fd4bc4139f7a369a5e81bdfbd734f49212502b1bb2777cbc10e791e3dee1a

namespace Mathematics.Projects.Tao

structure AnalysisProfile where
  base : Projects.ProjectProfile
  textbookChapterArtifacts : List StableId
  localDefinitionIds : List StableId
  mathlibDefinitionIds : List StableId
  bridgeCertificateIds : List StableId
  exerciseObligationIds : List StableId
  pedagogicalCommentArtifactIds : List StableId
  literateDocumentArtifactIds : List StableId
  transitionPointIds : List StableId
  preservePedagogicalDivergence : Bool := true
  profileDigest : Digest

end Mathematics.Projects.Tao
