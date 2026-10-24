-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.FileOperationKind.Variantd923d9a28ef6cda4be9aa4f8f6c6cad0d460218f7e5886dbddff98a41e846b08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d923d9a28ef6cda4be9aa4f8f6c6cad0d460218f7e5886dbddff98a41e846b08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.FileOperationKind.Variantd923d9a28ef6cda4be9aa4f8f6c6cad0d460218f7e5886dbddff98a41e846b08","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"d923d9a28ef6cda4be9aa4f8f6c6cad0d460218f7e5886dbddff98a41e846b08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Refactor/Plan.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Refactor.Partition

/-! # Filesystem rewrite plans -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.FileOperationKind.Variantd923d9a28ef6cda4be9aa4f8f6c6cad0d460218f7e5886dbddff98a41e846b08

namespace MathDiscovery.Refactor

open MathDiscovery

inductive FileOperationKind
  | create
  | replace
  | remove
  | preserve
  deriving DecidableEq, Repr, Inhabited

structure FileOperation where
  kind : FileOperationKind
  sourcePath : Option String
  targetPath : String
  baselineDigest : Option Digest
  candidateDigest : Option Digest
  deriving DecidableEq, Repr

structure Plan where
  id : RefactorPlanId
  sessionId : RefactorSessionId
  profile : Profile
  baselineSourceDigest : Digest
  analyzerDigest : Digest
  featureProfileDigest : Digest
  learnedProfileDigest : Option Digest
  partition : Partition
  operations : Array FileOperation
  expectedModuleGraphDigest : Digest
  planDigest : Digest
  deriving DecidableEq, Repr

end MathDiscovery.Refactor
