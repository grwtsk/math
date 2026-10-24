# Complete source: GRWTSK.Topology.CombinatorialTopology.CellComplexes.CubicalComplexes.FiniteRasterGraphProfile.Variant9d8d6b4b14ac34b9.ImmediateCubicalIncidence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41d258259afecc0e76b3bb77d6d5661bb7923df7` · SHA-256 `73405c695e9a3970ff792b902aa99509ad8e8bd48fe759fb92fdcd9e2696c424`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ImmediateCubicalIncidence — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 9d8d6b4b14ac34b928414013268f4e05a39218dfb8cac89820e7c1d0068cba05
Organized SHA-256: d3bee6b4015f921dc918754c94dedf6b808e3ecb599479c9ca64708bd2f91b32
PMD: 510.4.070.020.040 cubical complexes (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Typed vertices/edges/squares retain the captured RasterCubicalComplex provider. Incidence lowers dimension, and square shared-face adjacency has its exact distinctness condition. No manifold, rasterization or smooth-topology bridge is inferred. -/

import BitMatrix.Surgery.Digital
import Mathlib.Combinatorics.SimpleGraph.Connectivity.Finite

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

/-! ## Exact cubical incidence -/

/-- Every immediate face of a typed rectangular raster cell.  Incidence is
geometric and therefore independent of the foreground/background adjacency
pair. -/
def incidenceFaces {rows columns : Nat} :
    Cell rows columns → Finset (Cell rows columns)
  | .vertex _ => ∅
  | .horizontal edge =>
      let endpoints := horizontalEndpoints edge
      { .vertex endpoints.1, .vertex endpoints.2 }
  | .vertical edge =>
      let endpoints := verticalEndpoints edge
      { .vertex endpoints.1, .vertex endpoints.2 }
  | .square cell =>
      let boundary := squareBoundary cell
      { .horizontal boundary.top, .horizontal boundary.bottom,
        .vertical boundary.left, .vertical boundary.right }

/-- The square case is definitionally the exact four-face boundary: no face
is inferred from adjacency, and no additional cell occurs in the incidence
set. -/
theorem incidenceFaces_square_eq {rows columns : Nat}
    (cell : GridCell rows columns) :
    incidenceFaces (Cell.square cell) =
      { Cell.horizontal (squareBoundary cell).top,
        Cell.horizontal (squareBoundary cell).bottom,
        Cell.vertical (squareBoundary cell).left,
        Cell.vertical (squareBoundary cell).right } := by
  rfl

/-- Membership in a square's incidence set is exactly membership among its
four typed boundary edges. -/
theorem mem_incidenceFaces_square_iff {rows columns : Nat}
    (cell : GridCell rows columns) (face : Cell rows columns) :
    face ∈ incidenceFaces (Cell.square cell) ↔
      face = Cell.horizontal (squareBoundary cell).top ∨
      face = Cell.horizontal (squareBoundary cell).bottom ∨
      face = Cell.vertical (squareBoundary cell).left ∨
      face = Cell.vertical (squareBoundary cell).right := by
  simp [incidenceFaces]

/-- Geometric compatibility of the canonical four-neighbor relation: two
distinct raster squares are edge-adjacent exactly when their exact immediate
incidence sets share a typed one-dimensional face.  Vertex-only contact is
therefore excluded from foreground adjacency by construction. -/
theorem edgeAdjacent_iff_shared_incidence_face {rows columns : Nat}
    (left right : GridCell rows columns) :
    AdjacencyPolicy.edge.Adjacent left right ↔
      left ≠ right ∧
        ∃ face : Cell rows columns,
          face ∈ incidenceFaces (Cell.square left) ∧
          face ∈ incidenceFaces (Cell.square right) := by
  rcases left with ⟨leftRow, leftColumn⟩
  rcases right with ⟨rightRow, rightColumn⟩
  simp [AdjacencyPolicy.Adjacent, EdgeAdjacent, incidenceFaces, squareBoundary]
  omega

/-- Canonical incidence always lowers cubical dimension by exactly one. -/
theorem incidenceFaces_lowersDimension {rows columns : Nat}
    (cell face : Cell rows columns) (member : face ∈ incidenceFaces cell) :
    face.dimension < cell.dimension := by
  cases cell with
  | vertex vertex => simp [incidenceFaces] at member
  | horizontal edge =>
      simp only [incidenceFaces, Finset.mem_insert, Finset.mem_singleton] at member
      rcases member with rfl | rfl <;> simp [Cell.dimension]
  | vertical edge =>
      simp only [incidenceFaces, Finset.mem_insert, Finset.mem_singleton] at member
      rcases member with rfl | rfl <;> simp [Cell.dimension]
  | square cell =>
      simp only [incidenceFaces, Finset.mem_insert, Finset.mem_singleton] at member
      rcases member with rfl | rfl | rfl | rfl <;> simp [Cell.dimension]


end BitMatrix.Surgery.CanonicalRaster

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.FiniteRasterGraphProfile.Variant9d8d6b4b14ac34b9
```
