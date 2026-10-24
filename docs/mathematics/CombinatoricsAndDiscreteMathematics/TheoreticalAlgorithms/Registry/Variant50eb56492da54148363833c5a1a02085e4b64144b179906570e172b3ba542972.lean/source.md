# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Registry.Variant50eb56492da54148363833c5a1a02085e4b64144b179906570e172b3ba542972

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a8c66bf60e154db9b3088be5612bb69802c73a3` · SHA-256 `50eb56492da54148363833c5a1a02085e4b64144b179906570e172b3ba542972`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ecosystem.Snapshot

/-! # Finite ecosystem registries -/

namespace Mathematics.Ecosystem

/-- Revision-qualified key for one immutable project snapshot. -/
structure ProjectSnapshotKey where
  project : ProjectId
  revisionId : StableId
  deriving DecidableEq, Repr

def ProjectSnapshot.key (snapshot : ProjectSnapshot) : ProjectSnapshotKey :=
  ⟨snapshot.identity.projectId, snapshot.revision.revisionId⟩

/-- A finite ecosystem snapshot permits many project and toolchain versions. -/
structure Registry where
  snapshots : List ProjectSnapshot
  keysUnique : (snapshots.map ProjectSnapshot.key).Nodup
  registryDigest : Digest

namespace Registry

/-- Lookup is revision-qualified; project name alone is never a global key. -/
def find?
    (registry : Registry)
    (key : ProjectSnapshotKey) : Option ProjectSnapshot :=
  registry.snapshots.find? fun snapshot ↦ snapshot.key = key

end Registry

end Mathematics.Ecosystem
```
