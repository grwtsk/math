# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.State.Variant6b8b31b8644d022e9e5baef800953a0e4c224783dee5e64bef236a4f1eb8d4df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b90d38d092db3c4a886fea50320bce03d58ca992` · SHA-256 `6b8b31b8644d022e9e5baef800953a0e4c224783dee5e64bef236a4f1eb8d4df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ecosystem.Registry
import Mathematics.Relaxation.Level

/-! # Immutable-source, mutable-overlay relaxation state -/

namespace Mathematics.Relaxation

/-- One proposal-only overlay object; source bytes remain untouched. -/
structure OverlayElement where
  elementId : StableId
  sourceObjectIds : List StableId
  payloadDigest : Digest
  authority : String
  deriving DecidableEq, Repr

/-- Finite work-package identity and exact source boundary. -/
structure WorkPackage where
  packageId : StableId
  sourceSnapshots : List Ecosystem.ProjectSnapshot
  sourceSnapshotKeysUnique :
    (sourceSnapshots.map Ecosystem.ProjectSnapshot.key).Nodup
  projectSnapshots : List Ecosystem.ProjectSnapshotKey
  projectSnapshots_exact :
    projectSnapshots =
      sourceSnapshots.map Ecosystem.ProjectSnapshot.key
  sourceObjectIds : List StableId
  scopeDigest : Digest

/-- Relaxation state separates immutable ecosystem input from its overlay. -/
structure State where
  ecosystemDigest : Digest
  workPackage : WorkPackage
  level : Level
  overlay : List OverlayElement
  openResidueIds : List StableId
  openObligationIds : List StableId
  overlayDigest : Digest

end Mathematics.Relaxation
```
