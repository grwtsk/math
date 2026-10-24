# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.Adjacency.FiniteRasterGraphProfile.Variant9d8d6b4b14ac34b9.ConcreteProfileAndPathShift

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2f3aba83ea9fe6d126922b345468d5d307d71b5` · SHA-256 `ee80b1b6728d1172acf1389ef270e793323ba4f5f647c751117eb5161fcb4b39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ConcreteProfileAndPathShift — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 9d8d6b4b14ac34b928414013268f4e05a39218dfb8cac89820e7c1d0068cba05
Organized SHA-256: d3bee6b4015f921dc918754c94dedf6b808e3ecb599479c9ca64708bd2f91b32
PMD: 510.7.030.010.020 adjacency (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The complete captured DigitalTopologySemantics fields are instantiated by the stated finite graph functions. The three-pixel witness retains both adjacency choices, exact support, foreground/background links, nonbranching and actual graph sequence equalities. It is not smooth manifold surgery, execution of a production system or acceptance of the later audit reports. -/

import BitMatrix.Surgery.Digital
import Mathlib.Combinatorics.SimpleGraph.Connectivity.Finite

import GRWTSK.Topology.CombinatorialTopology.CellComplexes.CubicalComplexes.FiniteRasterGraphProfile.Variant9d8d6b4b14ac34b9.ImmediateCubicalIncidence
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.ConnectedComponents.FiniteRasterGraphProfile.Variant9d8d6b4b14ac34b9.ForegroundComponentsAndCycleRank
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.Adjacency.FiniteRasterGraphProfile.Variant9d8d6b4b14ac34b9.LocalGraphPredicatesAndLinks
/-!
# Canonical finite-raster digital topology

This module inhabits the conditional topology interface from `Surgery.Digital`
for the project's finite Boolean raster profile.  Foreground pixels form a
finite simple graph.  The canonical convention uses edge (four-neighbor)
foreground adjacency and vertex (eight-neighbor) background adjacency.

The topology measured here is the topology of that finite foreground graph:
`beta 0` is its exact connected-component count and `beta 1` is its graph
cycle rank.  The canonical manifold predicate is consequently the
nonbranching one-dimensional cubical-graph condition (degree at most two), not
a claim that the union of closed raster squares is a smooth surface.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.FiniteRasterGraphProfile.Variant9d8d6b4b14ac34b9

namespace BitMatrix.Surgery.CanonicalRaster

open BitMatrix.Runtime.Semantics
open BitMatrix.Topology.Raster
open BitMatrix.Surgery.Digital

/-- The concrete canonical digital-topology provider.  No topology-sensitive
operation remains caller-selected. -/
def semantics (rows columns : Nat) : DigitalTopologySemantics rows columns where
  incidenceMap := fun _foreground _background cell => incidenceFaces cell
  incidenceLowersDimension := fun _foreground _background cell face member =>
    incidenceFaces_lowersDimension cell face member
  linkCondition := canonicalLinkCondition
  betti := graphBetti
  exactCarrierCompatible := canonicalExactCarrierCompatible
  cubicalManifold := canonicalCubicalManifold

/-! ## A nontrivial checked surgery -/

/-- The left endpoint of the canonical three-pixel path. -/
def leftCell : GridCell 1 3 := ⟨⟨0, by omega⟩, ⟨0, by omega⟩⟩

/-- The retained middle pixel of the canonical three-pixel path. -/
def middleCell : GridCell 1 3 := ⟨⟨0, by omega⟩, ⟨1, by omega⟩⟩

/-- The right endpoint of the canonical three-pixel path. -/
def rightCell : GridCell 1 3 := ⟨⟨0, by omega⟩, ⟨2, by omega⟩⟩

/-- Before state `110`: a two-vertex path on the left. -/
def shiftBefore : RasterState 1 3 := fun cell => cell.column.val < 2

/-- The two endpoint cells are the exact local change carrier. -/
def shiftCut : CutDatum 1 3 where
  source := shiftBefore
  selected := {leftCell, rightCell}

/-- Replace `110` by `011`, retaining the middle pixel and shifting the path
one cell to the right. -/
def shiftRepair : Repair shiftCut where
  replacement := fun cell _ => cell = rightCell

/-- After state of the nontrivial shift repair. -/
def shiftAfter : RasterState 1 3 := shiftRepair.apply

theorem shiftRepair_changes_state : shiftAfter ≠ shiftBefore := by
  intro equal
  have atLeft := congrFun equal leftCell
  simp [shiftAfter, shiftRepair, Repair.apply, shiftCut, shiftBefore,
    leftCell, rightCell] at atLeft

theorem shift_changeSupport : shiftRepair.changeSupport = shiftCut.selected := by
  decide

theorem shift_interface_nonempty :
    foregroundLink shiftCut .edge shiftBefore ≠ ∅ := by
  decide

theorem shift_link_preserved :
    foregroundLink shiftCut .edge shiftBefore =
      foregroundLink shiftCut .edge shiftAfter := by
  decide

theorem shift_background_link_preserved :
    backgroundLink shiftCut .vertex shiftBefore =
      backgroundLink shiftCut .vertex shiftAfter := by
  decide

theorem shift_before_nonbranching :
    NonbranchingCubicalGraph .edge shiftBefore := by
  decide

theorem shift_after_nonbranching :
    NonbranchingCubicalGraph .edge shiftAfter := by
  decide

theorem shift_betti_preserved :
    graphBetti .edge .vertex shiftBefore = graphBetti .edge .vertex shiftAfter := by
  funext degree
  rcases degree with _ | _ | degree
  · decide
  · decide
  · rfl

theorem shift_background_components_preserved :
    backgroundBetaZero .vertex shiftBefore =
      backgroundBetaZero .vertex shiftAfter := by
  decide

/-- A production inhabitant of controlled digital surgery.  It changes two
pixels, retains the middle interface, and proves that the foreground graph is
a one-edge path before and after. -/
def controlledShift : ControlledDigitalSurgery (semantics 1 3) shiftCut where
  repair := shiftRepair
  foregroundAdjacency := .edge
  backgroundAdjacency := .vertex
  adjacencyCompatible := by decide
  linkConditionEvidence :=
    ⟨⟨rfl, rfl⟩, shift_interface_nonempty, shift_link_preserved,
      shift_background_link_preserved,
      shift_before_nonbranching,
      shift_after_nonbranching, shift_betti_preserved,
      shift_background_components_preserved⟩
  expectedBettiDelta := fun _ => 0
  bettiDeltaVerified := by
    intro degree
    change Int.ofNat (graphBetti .edge .vertex shiftAfter degree) -
      Int.ofNat (graphBetti .edge .vertex shiftBefore degree) = 0
    rw [← congrFun shift_betti_preserved degree]
    simp
  exactCarrierEvidence := ⟨⟨rfl, rfl⟩, shift_changeSupport⟩
  cubicalManifoldEvidence := ⟨⟨rfl, rfl⟩, shift_after_nonbranching⟩


end BitMatrix.Surgery.CanonicalRaster

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.FiniteRasterGraphProfile.Variant9d8d6b4b14ac34b9
```
