# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Constraint.Variant39c3718266ded52d95860d66687bf40fc625952ce878166da43f6f6bfbb7d1a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `693bffdec7a74c8c41576eebacc11eae5a5831f6` · SHA-256 `8971476affccc98a5ec77a2b11d70638f1ac493e0125f92f886f80e6e2ac76ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConstraintKind.Variant42581feacfb9ae312e516a25adbb0dd0bce3c7b99ffdf4d8ea6e066801e42ae2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"42581feacfb9ae312e516a25adbb0dd0bce3c7b99ffdf4d8ea6e066801e42ae2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ConstraintKind.Variant42581feacfb9ae312e516a25adbb0dd0bce3c7b99ffdf4d8ea6e066801e42ae2","mathematical_subject":"Computation.DataStructures","original_sha256":"42581feacfb9ae312e516a25adbb0dd0bce3c7b99ffdf4d8ea6e066801e42ae2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Refactor/Constraint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Refactor.Profile

/-! # Hard module-planning constraints -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConstraintKind.Variant42581feacfb9ae312e516a25adbb0dd0bce3c7b99ffdf4d8ea6e066801e42ae2

namespace MathDiscovery.Refactor

open MathDiscovery

inductive ConstraintKind
  | exactlyOneModule
  | mustLink
  | cannotLink
  | acyclicImports
  | reconstructibleContext
  | publicNamePreservation
  | statementPreservation
  | trustNonincrease
  | safetyPreservation
  | stableLayering
  | canonicalRootIsolation
  | importOnlyUmbrella
  deriving DecidableEq, Repr, Inhabited

structure Constraint where
  id : StableId
  kind : ConstraintKind
  atomIds : Array SourceAtomId
  moduleIds : Array TargetModuleId
  evidenceDigest : Digest
  satisfied : Bool
  deriving DecidableEq, Repr

end MathDiscovery.Refactor
```
