/-
Copyright (c) 2026 grwtsk contributors. Released under MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1024 exact head b02373edc5267ebca88a4e8c831071d9bfd21f64.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWCellSources

/-!
# Positive edge interiors cannot collapse to the polygon zero-cell

The authentic paired boundary quotient preserves endpoint status.
This gives an all-interior-parameter separation theorem, not merely
a midpoint fixture. Pairwise interior cell embeddings and CW axioms
are independent further obligations.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWInteriorSeparation

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWCellSources

/-- Any nonendpoint on any authentic directed source edge remains
different from the one genuine polygon vertex. -/
theorem directedInterior_ne_zeroCell (k : ℕ)
    (c : PolygonCorner k) (t : unitInterval)
    (ht : ¬ IsEndpoint t) :
    boundaryProjection k (c, t) ≠ polygonZeroCell k := by
  intro heq
  have hc : BoundaryConnected k
      (c, t) (originalCornerPoint k (firstHandle k, 0)) :=
    Quotient.exact heq
  have hv : IsEndpoint t :=
    (boundary_connected_preserves_endpoint k hc).mpr
      (by simp [IsEndpoint, originalCornerPoint])
  exact ht hv

/-- Every positive a/b edge has its entire strict interval interior
separated from the unique vertex, for all handles. -/
theorem positiveInterior_ne_zeroCell (k : ℕ)
    (h : Handle k) (i : Fin 2) (t : unitInterval)
    (ht : ¬ IsEndpoint t) :
    positiveOneCell k h i t ≠ polygonZeroCell k := by
  fin_cases i
  · exact directedInterior_ne_zeroCell k (h, 0) t ht
  · exact directedInterior_ne_zeroCell k (h, 1) t ht

/-- The original real midpoint of every positive edge is a concrete
nonvertex point; this is a genuine negative collapse control. -/
theorem positiveMidpoint_ne_zeroCell (k : ℕ)
    (h : Handle k) (i : Fin 2) :
    positiveOneCell k h i midpoint ≠ polygonZeroCell k :=
  positiveInterior_ne_zeroCell k h i midpoint midpoint_not_endpoint

/-- The original 2g positive edge sources retain nonvertex
midpoints, including the genus-two fixture. -/
theorem genusTwo_positiveMidpoint_ne_zeroCell
    (h : Handle 0) (i : Fin 2) :
    positiveOneCell 0 h i midpoint ≠ polygonZeroCell 0 :=
  positiveMidpoint_ne_zeroCell 0 h i

/-- Genus-three fixture retains the extra original handle. -/
theorem genusThree_positiveMidpoint_ne_zeroCell
    (h : Handle 1) (i : Fin 2) :
    positiveOneCell 1 h i midpoint ≠ polygonZeroCell 1 :=
  positiveMidpoint_ne_zeroCell 1 h i

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWInteriorSeparation
