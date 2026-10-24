# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Holonomy.Variant7ed06a2d36653fc97f3c5539ea45cb9b763c499f2d05c8e717d74f16332e8670

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `526ffb16d36ec03b1517c8194c56c26792441923` · SHA-256 `7ed06a2d36653fc97f3c5539ea45cb9b763c499f2d05c8e717d74f16332e8670`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Federation.VersionTransport

/-! # Version-loop holonomy -/

namespace Mathematics.Federation

universe u

/-- A closed version loop records the complete composite action. -/
structure VersionHolonomy (Object : Type u) where
  baseRevision : StableId
  route : List StableId
  composite : Object → Option Object
  fixed : Object → Prop
  fixed_exact :
    ∀ object, fixed object ↔ composite object = some object
  unresolved : List TransportResidue
  holonomyDigest : Digest

end Mathematics.Federation
```
