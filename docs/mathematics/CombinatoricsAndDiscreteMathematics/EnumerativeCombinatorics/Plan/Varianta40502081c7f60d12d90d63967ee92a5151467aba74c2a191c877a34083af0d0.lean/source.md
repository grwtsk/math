# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Plan.Varianta40502081c7f60d12d90d63967ee92a5151467aba74c2a191c877a34083af0d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8da372b55f0b47746839f83d59a188786f487ce` · SHA-256 `01b7cefcf10c9e85575d610dc4b15fc4c71e66a21c4bd743e52ffbdb42c5840e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.FileOperationKind.Variant887d22c002c3b726ac087b3f78eafe96b43604cbe2c235d1ba5e84236d3f9071","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"887d22c002c3b726ac087b3f78eafe96b43604cbe2c235d1ba5e84236d3f9071","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.FileOperationKind.Variant887d22c002c3b726ac087b3f78eafe96b43604cbe2c235d1ba5e84236d3f9071","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"887d22c002c3b726ac087b3f78eafe96b43604cbe2c235d1ba5e84236d3f9071","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Refactor/Plan.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Refactor.Partition

/-! # Filesystem rewrite plans -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.FileOperationKind.Variant887d22c002c3b726ac087b3f78eafe96b43604cbe2c235d1ba5e84236d3f9071

namespace Mathematics.Refactor

open Mathematics

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

end Mathematics.Refactor
```
