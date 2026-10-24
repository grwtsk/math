# Complete source: GRWTSK.Topology.GeneralTopology.Conflict.Variant99749584eb236537bc48d6bb48128ce5a4f5e838f638d328c9f7b9af4e332d00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4c9a335b6b8d250b47b6759228a27beb1054242` · SHA-256 `99749584eb236537bc48d6bb48128ce5a4f5e838f638d328c9f7b9af4e332d00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Federation.Alignment

/-! # Preserved cross-project conflicts -/

namespace Mathematics.Federation

inductive ConflictKind
  | statement
  | definition
  | notation
  | dependency
  | axiomClosure
  | toolchain
  | license
  deriving DecidableEq, Repr

/-- A conflict remains explicit until independently resolved. -/
structure ConflictRecord where
  conflictId : StableId
  left : GlobalDeclarationId
  right : GlobalDeclarationId
  kind : ConflictKind
  evidenceIds : List StableId
  resolution : Option StableId
  conflictDigest : Digest
  deriving DecidableEq, Repr

def ConflictRecord.IsOpen (conflict : ConflictRecord) : Prop :=
  conflict.resolution = none

end Mathematics.Federation
```
