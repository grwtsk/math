/-
Copyright (c) 2026 grwtsk contributors. Released under MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1036 exact head 331b11eac53781e8f79b91f837daf884b4f34a5e.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWPositiveEdges

/-!
# Source-exact positive-edge coverage of the paired one-skeleton

Every original side is positive or is its reversed negative partner.
This bounded source records that all directed source points have
positive edge representatives, and every endpoint lies at the
single original vertex. The complete quotient partition is the
next theorem; no open embedding or CW structure is asserted.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWPartition

open GRWTSK.Algebra.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWCellSources
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWPositiveEdges

/-- The second endpoint of any original directed source edge is also
the unique polygon vertex, using its successor corner seam. -/
theorem directedEdge_one_eq_zeroCell (k : ℕ)
    (h : Handle k) (i : Fin 4) :
    orientedEdgeMap k h i 1 = polygonZeroCell k := by
  fin_cases i
  · rw [adjacent_edge_maps_agree_01]
    exact allCorners_eq_polygonZeroCell k (h, 1)
  · rw [adjacent_edge_maps_agree_12]
    exact allCorners_eq_polygonZeroCell k (h, 2)
  · rw [adjacent_edge_maps_agree_23]
    exact allCorners_eq_polygonZeroCell k (h, 3)
  · rw [adjacent_edge_maps_agree_next]
    exact allCorners_eq_polygonZeroCell k (nextHandle k h, 0)

/-- Both endpoints of every positive characteristic interval are
the same genuine topological vertex. -/
theorem positiveOneCell_one_eq_zeroCell (k : ℕ)
    (h : Handle k) (i : Fin 2) :
    positiveOneCell k h i 1 = polygonZeroCell k := by
  fin_cases i
  · exact directedEdge_one_eq_zeroCell k h 0
  · exact directedEdge_one_eq_zeroCell k h 1

/-- Every original directed source side has a positive a/b
representative after applying only the authentic reversed pairings. -/
theorem directedEdge_has_positive_representative (k : ℕ)
    (h : Handle k) (i : Fin 4) (t : unitInterval) :
    ∃ (j : Fin 2) (u : unitInterval),
      orientedEdgeMap k h i t = positiveOneCell k h j u := by
  fin_cases i
  · exact ⟨0, t, rfl⟩
  · exact ⟨1, t, rfl⟩
  · exact ⟨0, unitInterval.symm t, by
      simpa using (negativeA_eq_positiveA_reverse k h
        (unitInterval.symm t))⟩
  · exact ⟨1, unitInterval.symm t, by
      simpa using (negativeB_eq_positiveB_reverse k h
        (unitInterval.symm t))⟩

/-- Every source point is already represented by a positive edge
interval; no finite-cardinality surrogate replaces the quotient. -/
theorem source_has_positive_representative (k : ℕ)
    (p : BoundaryPoint k) :
    ∃ (h : Handle k) (i : Fin 2) (t : unitInterval),
      boundaryProjection k p = positiveOneCell k h i t := by
  rcases p with ⟨⟨h, i⟩, t⟩
  obtain ⟨j, u, hu⟩ :=
    directedEdge_has_positive_representative k h i t
  exact ⟨h, j, u, hu⟩

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWPartition
