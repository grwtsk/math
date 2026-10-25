# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rotation.Variant9deb5b80ab4f8c672c2086655d4d77ae096ef129812e7025f1661cbafa6c6cc0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aaf022a4c3a6aa83d3d98eaf57f5c3f161811c55` · SHA-256 `9deb5b80ab4f8c672c2086655d4d77ae096ef129812e7025f1661cbafa6c6cc0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Cubical.Complex
import Mathematics.Oracle.Naming.CyclicCubical

/-! # Rotation-equivariant cubical boundary -/

namespace Mathematics.Cubical

open Mathematics.Oracle.Naming

theorem rotation_commutes_boundary
    {n : Nat} [NeZero n]
    (turn : ZMod n)
    (chain : CubicalChain n) :
    cubicalBoundary (rotate_chainMap turn chain) =
      rotate_chainMap turn (cubicalBoundary chain) :=
  boundary_rotate turn chain

end Mathematics.Cubical
```
