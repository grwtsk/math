# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Core.Variant6bbfd7ce4b5dab626effc2e9fd0ebd83d14e31fe35afdd562b6573b6ed16e9e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7aef78ea7460aa8e747f7e738aaf859ef88d99b8` · SHA-256 `6bbfd7ce4b5dab626effc2e9fd0ebd83d14e31fe35afdd562b6573b6ed16e9e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Fintype.Basic

set_option linter.dupNamespace false

/-!
# Finite declarative terrain carriers

This module contains only the finite, mathematical carrier used by the terrain
layer.  A `Terrain` is an undirected loop-free adjacency relation presented by
exact finite neighbour lists.  Geometry, raster values, executable caches, and
arithmetic-prismatic data are deliberately not part of this carrier.
-/

universe u v

namespace DAF.Terrain

/-- A finite undirected, loop-free terrain graph. -/
structure Terrain (V : Type u) [Fintype V] [DecidableEq V] where
  neighbors : V → Finset V
  adjacency_symmetric : ∀ {v w}, w ∈ neighbors v ↔ v ∈ neighbors w
  irreflexive : ∀ v, v ∉ neighbors v

namespace Terrain

/-- The named adjacency proposition of a terrain. -/
def Adjacent {V : Type u} [Fintype V] [DecidableEq V]
    (T : Terrain V) (v w : V) : Prop :=
  w ∈ T.neighbors v

theorem adjacent_comm {V : Type u} [Fintype V] [DecidableEq V]
    (T : Terrain V) {v w : V} :
    T.Adjacent v w ↔ T.Adjacent w v :=
  T.adjacency_symmetric

theorem not_adjacent_self {V : Type u} [Fintype V] [DecidableEq V]
    (T : Terrain V) (v : V) :
    ¬ T.Adjacent v v :=
  T.irreflexive v

end Terrain

/-- Values carried by an exact finite terrain carrier. -/
structure TerrainSection {V : Type u} [Fintype V] [DecidableEq V]
    (T : Terrain V) (Value : Type v) where
  value : V → Value

/-- Stable typed information explaining why a requested capability is absent. -/
structure Obstruction (Kind : Type u) where
  kind : Kind
  identifier : String
  detail : String
  unresolvedObligations : List String
  deriving Repr

end DAF.Terrain
```
