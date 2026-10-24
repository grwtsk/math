# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Capsule.Variant8da03620cfc0aa032bfb8cab84d6da219099c8f94714f8251e345fa8e84f0eb3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6a4b4a21ab0a365a936d75b5392b8dea68a8124` · SHA-256 `8da03620cfc0aa032bfb8cab84d6da219099c8f94714f8251e345fa8e84f0eb3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ecosystem.ProjectIdentity
import Mathematics.Toolchain.LakeGraph

/-! # Project-federated toolchain capsules -/

namespace Mathematics.Toolchain

/--
An exact, project-local reconstruction environment.  Multiple capsules may
carry incompatible Lean or Mathlib revisions without flattening.
-/
structure Capsule where
  capsuleId : StableId
  project : ProjectId
  revisionId : StableId
  lean : LeanVersion
  lakeGraph : LakeGraph
  buildTargetIds : List StableId
  buildTargetIdsUnique : buildTargetIds.Nodup
  platform : String
  toolchainDigest : Digest
  buildOptionsDigest : Digest
  environmentDigest : Digest

/-- Capsule identity is qualified by project and revision. -/
structure CapsuleKey where
  project : ProjectId
  revisionId : StableId
  capsuleId : StableId
  deriving DecidableEq, Repr

def Capsule.key (capsule : Capsule) : CapsuleKey :=
  ⟨capsule.project, capsule.revisionId, capsule.capsuleId⟩

end Mathematics.Toolchain
```
