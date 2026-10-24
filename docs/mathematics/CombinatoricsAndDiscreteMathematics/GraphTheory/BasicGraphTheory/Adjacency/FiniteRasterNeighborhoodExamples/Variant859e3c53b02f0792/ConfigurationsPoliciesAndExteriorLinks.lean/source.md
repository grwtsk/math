# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.Adjacency.FiniteRasterNeighborhoodExamples.Variant859e3c53b02f0792.ConfigurationsPoliciesAndExteriorLinks

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e862b03fa4f9efee60033f907300e4d440136bf8` · SHA-256 `cdc85290ca775aa01c309e113307f28d071a03d7765d4d45c25bfd0a4a748bbb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ConfigurationsPoliciesAndExteriorLinks — exact original finite mathematical examples
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 859e3c53b02f07923fa45dc9fdded6de1258ca27b31d6ca600ba4bf418ee6b52
Organized SHA-256: 8cd283783330c49c72311378d343ed1c392e9ee5e50eb642a694d2e64b3ee9c7
PMD: 510.7.030.010.020 adjacency (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole fixed3x3 configurations, positive cell bounds, two-field CutDatum values, edge/vertex distinction, exact shared-face criterion, coordinate inequalities and exterior foreground/background links remain exact. The cross has the original nonbranching rejection; no manifold identification is inferred. Original decide/native_decide proof text is retained without execution or proof acceptance. -/

import BitMatrix.Surgery.CanonicalRaster

/-!
# Canonical raster-surgery mutation boundaries

These compile-time tests pin the incidence, complementary adjacency, graph
Betti, exact-carrier, link, and nonbranching conditions used by the production
`controlledShift`.  A semantic mutation to any one of those definitions must
invalidate at least one witness below.
-/

namespace GRWTSK.Topology.CombinatorialTopology.CanonicalRasterCounterexamples.Variant859e3c53b02f0792

namespace BitMatrix.Tests.CanonicalRasterSurgery

open BitMatrix.Runtime.Semantics
open BitMatrix.Topology.Raster
open BitMatrix.Surgery.Digital
open BitMatrix.Surgery.CanonicalRaster

/-- A five-pixel cross branches with degree four at its center. -/
def branchingCross : RasterState 3 3 := fun cell =>
  cell.row.val = 1 ∨ cell.column.val = 1

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

example : CanonicalAdjacencyPair .edge .vertex := ⟨rfl, rfl⟩

example : ¬ CanonicalAdjacencyPair .vertex .edge := by decide

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

example : ¬ NonbranchingCubicalGraph .edge branchingCross := by decide

end BitMatrix.Tests.CanonicalRasterSurgery

end GRWTSK.Topology.CombinatorialTopology.CanonicalRasterCounterexamples.Variant859e3c53b02f0792
```
