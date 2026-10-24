# Complete source: GRWTSK.Algebra.LinearAlgebra.CanonicalRasterSurgery.Variant859e3c53b02f07923fa45dc9fdded6de1258ca27b31d6ca600ba4bf418ee6b52

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1eb0ee631ef5b626307b6c68fc920d4ffb77710` · SHA-256 `859e3c53b02f07923fa45dc9fdded6de1258ca27b31d6ca600ba4bf418ee6b52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Surgery.CanonicalRaster

/-!
# Canonical raster-surgery mutation boundaries

These compile-time tests pin the incidence, complementary adjacency, graph
Betti, exact-carrier, link, and nonbranching conditions used by the production
`controlledShift`.  A semantic mutation to any one of those definitions must
invalidate at least one witness below.
-/

namespace BitMatrix.Tests.CanonicalRasterSurgery

open BitMatrix.Runtime.Semantics
open BitMatrix.Topology.Raster
open BitMatrix.Surgery.Digital
open BitMatrix.Surgery.CanonicalRaster

/-- Two diagonal pixels distinguish edge from vertex adjacency. -/
def diagonalState : RasterState 2 2 := fun cell =>
  cell.row.val = cell.column.val

/-- A five-pixel cross branches with degree four at its center. -/
def branchingCross : RasterState 3 3 := fun cell =>
  cell.row.val = 1 ∨ cell.column.val = 1

/-- The unique top-dimensional cell in the unit raster. -/
def unitCell : GridCell 1 1 := ⟨⟨0, by omega⟩, ⟨0, by omega⟩⟩

/-- Named cells for exact three-by-three adjacency and link counterexamples. -/
def northWest : GridCell 3 3 := ⟨⟨0, by omega⟩, ⟨0, by omega⟩⟩

def center : GridCell 3 3 := ⟨⟨1, by omega⟩, ⟨1, by omega⟩⟩

def southEast : GridCell 3 3 := ⟨⟨2, by omega⟩, ⟨2, by omega⟩⟩

def northMiddle : GridCell 3 3 := ⟨⟨0, by omega⟩, ⟨1, by omega⟩⟩

def northEast : GridCell 3 3 := ⟨⟨0, by omega⟩, ⟨2, by omega⟩⟩

def middleWest : GridCell 3 3 := ⟨⟨1, by omega⟩, ⟨0, by omega⟩⟩

def southWest : GridCell 3 3 := ⟨⟨2, by omega⟩, ⟨0, by omega⟩⟩

def southMiddle : GridCell 3 3 := ⟨⟨2, by omega⟩, ⟨1, by omega⟩⟩

def fullThreeByThree : RasterState 3 3 := fun _cell => true

/-- A cut at the northwest corner leaves the far southeast foreground cell
retained but nonadjacent under either canonical neighborhood relation. -/
def farCut : CutDatum 3 3 where
  source := fullThreeByThree
  selected := {northWest}

/-- Two diagonal background cells distinguish the edge and vertex policies. -/
def diagonalVoidState : RasterState 3 3 := fun cell =>
  decide (cell ≠ northWest ∧ cell ≠ center)

def diagonalVoidCut : CutDatum 3 3 where
  source := diagonalVoidState
  selected := {northWest}

/-- A foreground-tree repair engineered so every canonical link and
foreground invariant is preserved while the complementary eight-neighbor
background changes from two components to one. -/
def backgroundMergeBefore : RasterState 3 3 := fun cell =>
  decide (cell = northMiddle ∨ cell = northEast ∨
    cell = middleWest ∨ cell = center)

def backgroundMergeAfter : RasterState 3 3 := fun cell =>
  decide (cell = northWest ∨ cell = northMiddle ∨ cell = northEast ∨
    cell = middleWest ∨ cell = southWest ∨ cell = southMiddle)

def backgroundMergeCut : CutDatum 3 3 where
  source := backgroundMergeBefore
  selected := {northWest, center, southWest, southMiddle}

def backgroundMergeRepair : Repair backgroundMergeCut where
  replacement := fun cell _member => backgroundMergeAfter cell

theorem backgroundMergeRepair_apply :
    backgroundMergeRepair.apply = backgroundMergeAfter := by
  funext cell
  rcases cell with ⟨row, column⟩
  fin_cases row <;> fin_cases column <;>
    decide

example :
    Cell.horizontal (squareBoundary unitCell).top ∈
      incidenceFaces (Cell.square unitCell) := by
  simp [incidenceFaces]

example :
    incidenceFaces (Cell.square unitCell) =
      { Cell.horizontal (squareBoundary unitCell).top,
        Cell.horizontal (squareBoundary unitCell).bottom,
        Cell.vertical (squareBoundary unitCell).left,
        Cell.vertical (squareBoundary unitCell).right } :=
  incidenceFaces_square_eq unitCell

example :
    Cell.horizontal (squareBoundary unitCell).bottom ∈
      incidenceFaces (Cell.square unitCell) := by
  simp [incidenceFaces]

example :
    Cell.vertical (squareBoundary unitCell).left ∈
      incidenceFaces (Cell.square unitCell) := by
  simp [incidenceFaces]

example :
    Cell.vertical (squareBoundary unitCell).right ∈
      incidenceFaces (Cell.square unitCell) := by
  simp [incidenceFaces]

example (face : Cell 1 1)
    (member : face ∈ incidenceFaces (Cell.square unitCell)) :
    face.dimension < (Cell.square unitCell).dimension :=
  incidenceFaces_lowersDimension _ _ member

example : CanonicalAdjacencyPair .edge .vertex := ⟨rfl, rfl⟩

example : ¬ CanonicalAdjacencyPair .vertex .edge := by decide

example : betaZero .edge diagonalState = 2 := by decide

example : betaZero .vertex diagonalState = 1 := by decide

example : betaOne .edge shiftBefore = 0 := by decide

example : betaZero .edge fullTwoByTwo = 1 := fullTwoByTwo_betaZero

example : betaOne .edge fullTwoByTwo = 1 := fullTwoByTwo_betaOne

example : ¬ AdjacencyPolicy.vertex.Adjacent northWest southEast := by
  rw [vertexAdjacent_iff_coordinate_bounds]
  decide

example : AdjacencyPolicy.vertex.Adjacent northWest center := by
  rw [vertexAdjacent_iff_coordinate_bounds]
  decide

example : ¬ AdjacencyPolicy.edge.Adjacent northWest center := by
  decide

example :
    ¬ ∃ face : Cell 3 3,
      face ∈ incidenceFaces (Cell.square northWest) ∧
      face ∈ incidenceFaces (Cell.square center) := by
  intro shared
  have adjacent : AdjacencyPolicy.edge.Adjacent northWest center :=
    (edgeAdjacent_iff_shared_incidence_face northWest center).mpr
      ⟨by decide, shared⟩
  exact (by decide : ¬ AdjacencyPolicy.edge.Adjacent northWest center) adjacent

example :
    AdjacencyPolicy.edge.Adjacent northWest northMiddle ↔
      northWest ≠ northMiddle ∧
        ∃ face : Cell 3 3,
          face ∈ incidenceFaces (Cell.square northWest) ∧
          face ∈ incidenceFaces (Cell.square northMiddle) :=
  edgeAdjacent_iff_shared_incidence_face northWest northMiddle

example (left right : GridCell 3 3) :
    AdjacencyPolicy.vertex.Adjacent left right ↔
      left ≠ right ∧
      left.row.val ≤ right.row.val + 1 ∧
      right.row.val ≤ left.row.val + 1 ∧
      left.column.val ≤ right.column.val + 1 ∧
      right.column.val ≤ left.column.val + 1 :=
  vertexAdjacent_iff_coordinate_bounds left right

example : southEast ∈ farCut.exterior := by decide

example : southEast ∉ foregroundLink farCut .edge fullThreeByThree := by
  decide

example : southEast ∉ foregroundLink farCut .vertex fullThreeByThree := by
  decide

example : center ∈ backgroundLink diagonalVoidCut .vertex diagonalVoidState := by
  decide

example : center ∉ backgroundLink diagonalVoidCut .edge diagonalVoidState := by
  decide

example :
    backgroundBetaZero .vertex diagonalVoidState = 1 ∧
      backgroundBetaZero .edge diagonalVoidState = 2 := by
  decide

example :
    foregroundLink backgroundMergeCut .edge backgroundMergeBefore =
      foregroundLink backgroundMergeCut .edge backgroundMergeRepair.apply := by
  rw [backgroundMergeRepair_apply]
  decide

example : foregroundLink backgroundMergeCut .edge backgroundMergeBefore ≠ ∅ := by
  decide

example :
    backgroundLink backgroundMergeCut .vertex backgroundMergeBefore =
      backgroundLink backgroundMergeCut .vertex backgroundMergeRepair.apply := by
  rw [backgroundMergeRepair_apply]
  decide

example :
    NonbranchingCubicalGraph .edge backgroundMergeBefore ∧
      NonbranchingCubicalGraph .edge backgroundMergeRepair.apply := by
  rw [backgroundMergeRepair_apply]
  decide

example :
    graphBetti .edge .vertex backgroundMergeBefore =
      graphBetti .edge .vertex backgroundMergeRepair.apply := by
  rw [backgroundMergeRepair_apply]
  funext degree
  rcases degree with _ | _ | degree
  · decide
  · decide
  · rfl

example :
    backgroundBetaZero .vertex backgroundMergeBefore = 2 ∧
      backgroundBetaZero .vertex backgroundMergeRepair.apply = 1 := by
  rw [backgroundMergeRepair_apply]
  decide

/-- The background-component clause is material: all earlier link and
foreground conditions hold for this repair, but the canonical condition
rejects the background merge. -/
example :
    ¬ canonicalLinkCondition .edge .vertex
      backgroundMergeCut backgroundMergeRepair := by
  intro condition
  rcases condition with
    ⟨_pair, _foregroundNonempty, _foregroundLink, _backgroundLink,
      _beforeManifold, _afterManifold, _foregroundBetti, backgroundComponents⟩
  have unequal :
      backgroundBetaZero .vertex backgroundMergeBefore ≠
        backgroundBetaZero .vertex backgroundMergeRepair.apply := by
    rw [backgroundMergeRepair_apply]
    decide
  exact unequal backgroundComponents

example : ¬ NonbranchingCubicalGraph .edge branchingCross := by decide

example : canonicalExactCarrierCompatible .edge .vertex shiftCut shiftRepair :=
  ⟨⟨rfl, rfl⟩, shift_changeSupport⟩

example :
    ¬ canonicalExactCarrierCompatible .edge .vertex shiftCut
      (Repair.reconstruct shiftCut) := by
  intro compatible
  have changed :
      leftCell ∈ (Repair.reconstruct shiftCut).changeSupport := by
    rw [compatible.2]
    decide
  have reconstructed := Repair.reconstruct_apply shiftCut
  simp [Repair.changeSupport, reconstructed] at changed

example : canonicalLinkCondition .edge .vertex shiftCut shiftRepair :=
  controlledShift.linkConditionEvidence

example : ¬ canonicalLinkCondition .vertex .edge shiftCut shiftRepair := by
  intro link
  exact (by decide : ¬ CanonicalAdjacencyPair .vertex .edge) link.1

example : shiftAfter ≠ shiftBefore := shiftRepair_changes_state

example : controlledShiftReport.datum.selectedCells = 2 ∧
    controlledShiftReport.datum.changedCells = 2 ∧
    controlledShiftReport.datum.retainedLinkBefore = 1 ∧
    controlledShiftReport.datum.retainedLinkAfter = 1 ∧
    controlledShiftReport.datum.addedCells = 1 ∧
    controlledShiftReport.datum.deletedCells = 1 :=
  controlledShiftReport_local_counts

example : controlledShiftReport.before.betti 0 = 1 ∧
    controlledShiftReport.after.betti 0 = 1 :=
  controlledShiftReport_bettiZero

example : controlledShiftReport.before.backgroundComponents = 1 ∧
    controlledShiftReport.after.backgroundComponents = 1 :=
  controlledShiftReport_backgroundComponents

example : controlledShiftReport.before.eulerCharacteristic = 1 ∧
    controlledShiftReport.after.eulerCharacteristic = 1 :=
  controlledShiftReport_eulerCharacteristic

end BitMatrix.Tests.CanonicalRasterSurgery
```
