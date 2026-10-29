/-
ForegroundComponentsAndCycleRank — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 9d8d6b4b14ac34b928414013268f4e05a39218dfb8cac89820e7c1d0068cba05
Organized SHA-256: d3bee6b4015f921dc918754c94dedf6b808e3ecb599479c9ca64708bd2f91b32
PMD: 510.7.030.010.060 connected components (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- betaZero is the exact finite SimpleGraph connected-component cardinality. betaOne is the displayed Nat edge+component-vertex formula. graphBetti assigns higher entries zero; no independently constructed homology theory, fundamental group or smooth surface is asserted. The by-decide source terms are preserved and never run. -/

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

/-! ## Foreground graph and graph Betti numbers -/

/-- The true cells of one Boolean raster state. -/
abbrev ForegroundCell {rows columns : Nat} (state : RasterState rows columns) :=
  { cell : GridCell rows columns // state cell = true }

/-- The exact finite foreground-adjacency graph selected by a policy. -/
def foregroundGraph {rows columns : Nat} (policy : AdjacencyPolicy)
    (state : RasterState rows columns) : SimpleGraph (ForegroundCell state) where
  Adj := fun left right => policy.Adjacent left.1 right.1
  symm := ⟨fun _left _right adjacent =>
    policy.adjacent_symmetric.mp adjacent⟩
  loopless := ⟨fun cell adjacent =>
    policy.not_adjacent_self cell.1 adjacent⟩

instance foregroundGraphAdjacencyDecidable {rows columns : Nat}
    (policy : AdjacencyPolicy) (state : RasterState rows columns) :
    DecidableRel (foregroundGraph policy state).Adj := fun left right =>
  adjacencyPolicyDecidable policy left.1 right.1

/-- Zeroth graph Betti number: exact connected-component count. -/
def betaZero {rows columns : Nat} (policy : AdjacencyPolicy)
    (state : RasterState rows columns) : Nat :=
  Fintype.card (foregroundGraph policy state).ConnectedComponent

/-- First graph Betti number (cycle rank) of the finite foreground graph. -/
def betaOne {rows columns : Nat} (policy : AdjacencyPolicy)
    (state : RasterState rows columns) : Nat :=
  (foregroundGraph policy state).edgeFinset.card + betaZero policy state -
    Fintype.card (ForegroundCell state)

/-- The full `2 x 2` raster is the smallest edge-adjacent raster cycle. -/
def fullTwoByTwo : RasterState 2 2 := fun _cell => true

/-- The full `2 x 2` edge-adjacency graph is connected. -/
theorem fullTwoByTwo_betaZero : betaZero .edge fullTwoByTwo = 1 := by
  decide

/-- The full `2 x 2` edge-adjacency graph has four vertices and four edges,
so its graph cycle rank is exactly one.  This is a nontrivial witness that
`betaOne` detects a cycle rather than merely paths and isolated vertices. -/
theorem fullTwoByTwo_betaOne : betaOne .edge fullTwoByTwo = 1 := by
  decide

/-- The canonical finite graph Betti sequence.  A graph has no homology above
degree one. -/
def graphBetti {rows columns : Nat} (foreground _background : AdjacencyPolicy)
    (state : RasterState rows columns) : Nat → Nat
  | 0 => betaZero foreground state
  | 1 => betaOne foreground state
  | _ + 2 => 0


end BitMatrix.Surgery.CanonicalRaster

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.FiniteRasterGraphProfile.Variant9d8d6b4b14ac34b9
