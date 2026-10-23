/-
Copyright (c) 2026 grwtsk contributors. Released under MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1022 exact head 6c896a797fd9b460a758c8e8345d5ea17589c7aa.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionMapping

/-!
# Genuine zero-cell and directed one-cell source skeleton

This bounded source reuses the actual paired topological one-skeleton
and its original interval characteristic maps. It does not identify
the open one-cell interiors or assert the full CW axioms.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWCellSources

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology

/-- The original first polygon corner gives the canonical
topological zero-cell in the genuine paired one-skeleton. -/
def polygonZeroCell (k : ℕ) : PolygonBoundaryOneSkeleton k :=
  boundaryProjection k
    (originalCornerPoint k (firstHandle k, 0))

/-- Every original polygon corner represents the same actual vertex. -/
theorem allCorners_eq_polygonZeroCell (k : ℕ)
    (c : PolygonCorner k) :
    boundaryProjection k (originalCornerPoint k c) =
      polygonZeroCell k := by
  exact all_original_corners_same_topological_vertex k c
    (firstHandle k, 0)

/-- The 2g directed positive edge representatives, one a and one b
for each authentic Handle k. Opposite edges are the same paired cell
with reversed orientation, not additional cells. -/
def positiveOneCell (k : ℕ) (h : Handle k) (i : Fin 2) :
    unitInterval → PolygonBoundaryOneSkeleton k :=
  match i with
  | 0 => orientedEdgeMap k h 0
  | 1 => orientedEdgeMap k h 1

/-- Each positive representative is one of the original continuous
directed interval characteristic maps. -/
theorem positiveOneCell_continuous (k : ℕ)
    (h : Handle k) (i : Fin 2) :
    Continuous (positiveOneCell k h i) := by
  fin_cases i
  · exact orientedEdgeMap_continuous k h 0
  · exact orientedEdgeMap_continuous k h 1

/-- Opposite a-side characteristic maps coincide after reversal,
using the authentic source quotient relation. -/
theorem negativeA_eq_positiveA_reverse (k : ℕ)
    (h : Handle k) (t : unitInterval) :
    orientedEdgeMap k h 2 (unitInterval.symm t) =
      positiveOneCell k h 0 t := by
  exact (opposite_a_edge_maps_agree k h t).symm

/-- Opposite b-side characteristic maps coincide after reversal. -/
theorem negativeB_eq_positiveB_reverse (k : ℕ)
    (h : Handle k) (t : unitInterval) :
    orientedEdgeMap k h 3 (unitInterval.symm t) =
      positiveOneCell k h 1 t := by
  exact (opposite_b_edge_maps_agree k h t).symm

/-- The first endpoint of each original positive edge is the one
topological vertex, not merely a combinatorial corner ID. -/
theorem positiveOneCell_zero (k : ℕ)
    (h : Handle k) (i : Fin 2) :
    positiveOneCell k h i 0 = polygonZeroCell k := by
  fin_cases i
  · exact allCorners_eq_polygonZeroCell k (h, 0)
  · exact allCorners_eq_polygonZeroCell k (h, 1)

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWCellSources
