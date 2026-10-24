# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.Adjacency.FiniteRasterGraphProfile.Variant9d8d6b4b14ac34b9.LocalGraphPredicatesAndLinks

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3678f07e0c60f1665b261d67ff34a92e4f7f3b42` · SHA-256 `fd438d0755cd9e8da7ec256dcc0bbf174353767ef43c504d00eb21f52b517fe5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
LocalGraphPredicatesAndLinks — individual source review
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

/- Canonical edge/vertex policy, degree<=2, exact change support, complement background and all link/betti/component equalities remain explicit. boundaryComponentCount counts degree-one vertices. These finite graph definitions do not prove surface manifold, orientability, genus, homology or fundamental-group identifications. -/

import BitMatrix.Surgery.Digital
import Mathlib.Combinatorics.SimpleGraph.Connectivity.Finite

import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.ConnectedComponents.FiniteRasterGraphProfile.Variant9d8d6b4b14ac34b9.ForegroundComponentsAndCycleRank
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

/-! ## Canonical profile obligations -/

/-- The project-selected complementary adjacency convention. -/
def CanonicalAdjacencyPair (foreground background : AdjacencyPolicy) : Prop :=
  foreground = .edge ∧ background = .vertex

instance canonicalAdjacencyPairDecidable
    (foreground background : AdjacencyPolicy) :
    Decidable (CanonicalAdjacencyPair foreground background) := by
  unfold CanonicalAdjacencyPair
  infer_instance

/-- Exact coordinate characterization of eight-neighbor adjacency.  Both
coordinates differ by at most one and the cells are distinct. -/
theorem vertexAdjacent_iff_coordinate_bounds {rows columns : Nat}
    (left right : GridCell rows columns) :
    AdjacencyPolicy.vertex.Adjacent left right ↔
      left ≠ right ∧
      left.row.val ≤ right.row.val + 1 ∧
      right.row.val ≤ left.row.val + 1 ∧
      left.column.val ≤ right.column.val + 1 ∧
      right.column.val ≤ left.column.val + 1 := by
  simp only [AdjacencyPolicy.Adjacent, VertexAdjacent, NeighboringCoordinate]
  constructor
  · rintro ⟨distinct, rowNeighbor, columnNeighbor⟩
    rcases rowNeighbor with equal | forward | backward <;>
      rcases columnNeighbor with equal' | forward' | backward' <;>
      constructor
    all_goals try exact distinct
    all_goals omega
  · rintro ⟨distinct, rowForward, rowBackward, columnForward, columnBackward⟩
    refine ⟨distinct, ?_, ?_⟩ <;> omega

/-- Number of foreground neighbors of one foreground pixel. -/
def foregroundDegree {rows columns : Nat} (policy : AdjacencyPolicy)
    (state : RasterState rows columns) (cell : ForegroundCell state) : Nat :=
  (Finset.univ.filter fun other : ForegroundCell state =>
    policy.Adjacent cell.1 other.1).card

/-- A finite foreground graph is a nonbranching cubical graph when every
vertex has degree at most two.  Paths, cycles, and isolated zero-dimensional
components satisfy this precise mixed-dimensional digital condition. -/
def NonbranchingCubicalGraph {rows columns : Nat}
    (policy : AdjacencyPolicy) (state : RasterState rows columns) : Prop :=
  ∀ cell : ForegroundCell state, foregroundDegree policy state cell ≤ 2

instance nonbranchingCubicalGraphDecidable {rows columns : Nat}
    (policy : AdjacencyPolicy) (state : RasterState rows columns) :
    Decidable (NonbranchingCubicalGraph policy state) := by
  unfold NonbranchingCubicalGraph
  infer_instance

/-- The canonical manifold condition couples the fixed adjacency pair to the
nonbranching graph condition. -/
def canonicalCubicalManifold {rows columns : Nat}
    (foreground background : AdjacencyPolicy)
    (state : RasterState rows columns) : Prop :=
  CanonicalAdjacencyPair foreground background ∧
    NonbranchingCubicalGraph foreground state

/-- Exact carrier compatibility means precisely that the declared cut is the
change carrier; no selected cell is inert and no unselected cell changes. -/
def canonicalExactCarrierCompatible {rows columns : Nat}
    (foreground background : AdjacencyPolicy)
    (cut : CutDatum rows columns) (repair : Repair cut) : Prop :=
  CanonicalAdjacencyPair foreground background ∧
    repair.changeSupport = cut.selected

/-- Foreground part of the cut link: retained true cells adjacent to a true
selected cell in the supplied state.  Unlike the geometric interface, this
depends on the foreground state on both sides of the cut. -/
def foregroundLink {rows columns : Nat} (cut : CutDatum rows columns)
    (policy : AdjacencyPolicy) (state : RasterState rows columns) :
    Finset (GridCell rows columns) :=
  cut.exterior.filter fun outside =>
    state outside = true ∧
      ∃ inside ∈ cut.selected,
        state inside = true ∧ policy.Adjacent outside inside

theorem foregroundLink_subset_exterior {rows columns : Nat}
    (cut : CutDatum rows columns) (policy : AdjacencyPolicy)
    (state : RasterState rows columns) :
    foregroundLink cut policy state ⊆ cut.exterior := by
  intro cell member
  exact (Finset.mem_filter.mp member).1

/-- The Boolean complement interpreted as the retained background state. -/
def backgroundState {rows columns : Nat} (state : RasterState rows columns) :
    RasterState rows columns :=
  fun cell => !state cell

/-- Retained false cells adjacent to a false selected cell, computed using
the explicitly supplied background policy. -/
def backgroundLink {rows columns : Nat} (cut : CutDatum rows columns)
    (policy : AdjacencyPolicy) (state : RasterState rows columns) :
    Finset (GridCell rows columns) :=
  foregroundLink cut policy (backgroundState state)

/-- Exact connected-component count of the complementary background graph. -/
def backgroundBetaZero {rows columns : Nat} (policy : AdjacencyPolicy)
    (state : RasterState rows columns) : Nat :=
  betaZero policy (backgroundState state)

/-- The finite graph link condition used by the canonical profile.  A
controlled event must use the selected adjacency pair, expose a retained
foreground neighbor, preserve both foreground and background links, preserve
the foreground nonbranching condition and graph Betti sequence, and preserve
the number of vertex-adjacent background components.  Topology-changing
repairs can use a separate profile; this canonical controlled profile
certifies topology-preserving local moves. -/
def canonicalLinkCondition {rows columns : Nat}
    (foreground background : AdjacencyPolicy)
    (cut : CutDatum rows columns) (repair : Repair cut) : Prop :=
  CanonicalAdjacencyPair foreground background ∧
    foregroundLink cut foreground cut.source ≠ ∅ ∧
    foregroundLink cut foreground cut.source =
      foregroundLink cut foreground repair.apply ∧
    backgroundLink cut background cut.source =
      backgroundLink cut background repair.apply ∧
    NonbranchingCubicalGraph foreground cut.source ∧
    NonbranchingCubicalGraph foreground repair.apply ∧
    graphBetti foreground background cut.source =
      graphBetti foreground background repair.apply ∧
    backgroundBetaZero background cut.source =
      backgroundBetaZero background repair.apply


/-- Number of boundary components of the zero-dimensional boundary of a
nonbranching foreground graph: exactly its degree-one vertices. -/
def boundaryComponentCount {rows columns : Nat} (policy : AdjacencyPolicy)
    (state : RasterState rows columns) : Nat :=
  (Finset.univ.filter fun cell : ForegroundCell state =>
    foregroundDegree policy state cell = 1).card


end BitMatrix.Surgery.CanonicalRaster

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.FiniteRasterGraphProfile.Variant9d8d6b4b14ac34b9
```
