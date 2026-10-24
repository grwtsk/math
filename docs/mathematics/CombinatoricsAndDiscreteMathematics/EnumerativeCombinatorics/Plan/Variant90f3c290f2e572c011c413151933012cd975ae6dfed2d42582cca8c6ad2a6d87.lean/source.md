# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Plan.Variant90f3c290f2e572c011c413151933012cd975ae6dfed2d42582cca8c6ad2a6d87

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `406d7fab2c079b15fcdb8d5b15d32c57389b8781` · SHA-256 `fbcac10601552d6d0168d22c5943b7722866f01272fba81a18648eae17b30a03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
