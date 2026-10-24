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
