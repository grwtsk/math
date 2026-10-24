# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GlobalReference.Variant4dbbfa0873f7489a8c466f61a3e5203e944e1997f2b244b268c823ec88e59b8b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3cc5a05cca9ed749d04c081059d324bc3a0f146c` · SHA-256 `4dbbfa0873f7489a8c466f61a3e5203e944e1997f2b244b268c823ec88e59b8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Terrain.Core
import Mathlib.Data.Fintype.Card

/-!
# Known maximal global terrain state

The global reference is fixed before any local query is evaluated.  Its finite
coordinate type, decidable equality, and enumeration are carried as data so
clients install them locally instead of creating orphan global instances.  The
equivalence with `Fin cardinality` makes the declared bound exact.
-/

universe u v

namespace DAF.Terrain

/-- One fixed maximal finite state with an absolute coordinate frame. -/
structure KnownMaximalState (State : Type u) where
  Coord : Type v
  coordFintype : Fintype Coord
  coordDecEq : DecidableEq Coord
  cardinality : Nat
  absoluteIndex : Coord ≃ Fin cardinality
  reference : Coord → State

namespace KnownMaximalState

variable {State : Type u} (G : KnownMaximalState State)

/-- The carried enumeration has exactly the declared cardinality. -/
theorem card_coord :
    @Fintype.card G.Coord G.coordFintype = G.cardinality := by
  letI : Fintype G.Coord := G.coordFintype
  simpa using Fintype.card_congr G.absoluteIndex

/-- Absolute indexing is injective, so a local carrier never aliases coordinates. -/
theorem absoluteIndex_injective : Function.Injective G.absoluteIndex :=
  G.absoluteIndex.injective

/-- Absolute indexing is surjective onto the entire declared coordinate bound. -/
theorem absoluteIndex_surjective : Function.Surjective G.absoluteIndex :=
  G.absoluteIndex.surjective

end KnownMaximalState

end DAF.Terrain
```
