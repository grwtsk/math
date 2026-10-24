# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Plan.Variantd923d9a28ef6cda4be9aa4f8f6c6cad0d460218f7e5886dbddff98a41e846b08

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83ff59fe1bd5f3da81ca37784068c0ec02acdf2a` · SHA-256 `d923d9a28ef6cda4be9aa4f8f6c6cad0d460218f7e5886dbddff98a41e846b08`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Refactor.Partition

/-! # Filesystem rewrite plans -/

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
