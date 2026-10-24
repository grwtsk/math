# Complete source: GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserPortFixtures

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3dbb185a237194ef639696a6bede0ce2b164940a` · SHA-256 `e39f5f2a5029997033a0c927371beba1fd8e65e1f317a14be2f4fc68f08f0826`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserPorts

namespace GRWTSK.Combinatorics.GraphTheory.HadwigerNelson.MoserPortFixtures

open GRWTSK.Combinatorics.GraphTheory

/-- One four-vertex Moser diamond. -/
def diamondEdges : Finset (Fin 4 × Fin 4) :=
  {(0, 1), (0, 2), (1, 2), (3, 1), (3, 2)}

/-- Undirected adjacency of the diamond. -/
def diamondAdj (i j : Fin 4) : Prop :=
  (i, j) ∈ diamondEdges ∨ (j, i) ∈ diamondEdges

/-- The two nonadjacent diamond tips are the boundary ports. -/
def diamondPort : Fin 2 → Fin 4 := ![0, 3]

/-- Moser diamond as a two-port color gadget. -/
def diamondGadget : ColorPortGadget (Fin 4) (Fin 2) where
  edge := diamondAdj
  port := diamondPort

/-- A three-color boundary state extends across the diamond exactly when its two tip colors agree. -/
theorem diamond_extends_iff_boundary_equal (state : Fin 2 → Fin 3) :
    diamondGadget.Extends state ↔ state 0 = state 1 := by
  unfold ColorPortGadget.Extends ProperColoring diamondGadget diamondAdj diamondEdges diamondPort
  decide +revert

/-- Binary relation exposed by the diamond boundary. -/
def diamondRelation (left right : Fin 3) : Prop :=
  diamondGadget.Extends ![left, right]

/-- The diamond relation is equality of the two boundary colors. -/
theorem diamondRelation_iff (left right : Fin 3) :
    diamondRelation left right ↔ left = right := by
  simpa [diamondRelation] using
    diamond_extends_iff_boundary_equal (![left, right] : Fin 2 → Fin 3)

/-- Gluing two diamond relations along one color port composes to the same equality relation. -/
theorem diamondRelation_comp :
    RelationComp diamondRelation diamondRelation = diamondRelation := by
  funext left right
  apply propext
  constructor
  · rintro ⟨middle, hlm, hmr⟩
    apply (diamondRelation_iff left right).2
    exact ((diamondRelation_iff left middle).1 hlm).trans
      ((diamondRelation_iff middle right).1 hmr)
  · intro hlr
    refine ⟨left, ?_, ?_⟩
    · exact (diamondRelation_iff left left).2 rfl
    · exact (diamondRelation_iff left right).2
        ((diamondRelation_iff left right).1 hlr)

/-- Hostile control: delete one incident edge from the second tip. -/
def brokenDiamondEdges : Finset (Fin 4 × Fin 4) :=
  {(0, 1), (0, 2), (1, 2), (3, 1)}

/-- Undirected adjacency after deleting the `(3,2)` edge. -/
def brokenDiamondAdj (i j : Fin 4) : Prop :=
  (i, j) ∈ brokenDiamondEdges ∨ (j, i) ∈ brokenDiamondEdges

/-- Broken diamond with the same printed boundary ports. -/
def brokenDiamondGadget : ColorPortGadget (Fin 4) (Fin 2) where
  edge := brokenDiamondAdj
  port := diamondPort

/-- Deleting one edge destroys the equality constraint: an unequal boundary state extends. -/
theorem brokenDiamond_allows_unequal_boundary :
    ∃ state : Fin 2 → Fin 3,
      state 0 ≠ state 1 ∧ brokenDiamondGadget.Extends state := by
  unfold ColorPortGadget.Extends ProperColoring brokenDiamondGadget brokenDiamondAdj
    brokenDiamondEdges diamondPort
  decide

end GRWTSK.Combinatorics.GraphTheory.HadwigerNelson.MoserPortFixtures
```
