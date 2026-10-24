/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. -/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionSource

/-!
# Quantitative radius and apex comparison on original source sectors

The quotient comparison retains the actual Euclidean radial norm,
not only a pair of abstract mutually inverse maps. This module does
not assert a global attached-space norm (the one-skeleton already
has multiple disk-boundary representatives).
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionRadius

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskBoundary
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskAdjunction
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionComparison
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionInverse

/-- Actual Euclidean radius of a polygon-sector representative,
before applying the disk-adjunction quotient, is its exact original
real radial parameter. -/
theorem euclidean_radius_source (k : ℕ)
    (p : BoundaryPoint k) (r : unitInterval) :
    ‖((perimeterConeDiskHomeomorph k
      (CircleCone.coneMk (perimeterProjection k p) r)).down :
      ComplexDisk.EuclideanPlane)‖ = (r : ℝ) := by
  rw [norm_perimeterConeDiskHomeomorph]
  rfl

/-- The homeomorphism's source-side disk representative has the
same radius as the *original* radial quotient invariant. -/
theorem radius_agrees_with_filled_source (k : ℕ)
    (p : BoundaryPoint k) (r : unitInterval) :
    ‖((perimeterConeDiskHomeomorph k
      (CircleCone.coneMk (perimeterProjection k p) r)).down :
      ComplexDisk.EuclideanPlane)‖ =
      (radialCoordinate k (radialProjection k (p, r)) : ℝ) := by
  rw [euclidean_radius_source, radialCoordinate_projection]

/-- In particular, the original radial apex maps to Euclidean
radius zero in the disk before its attaching quotient. -/
theorem apex_euclidean_radius_zero (k : ℕ) (p : BoundaryPoint k) :
    ‖((perimeterConeDiskHomeomorph k
      (CircleCone.coneMk (perimeterProjection k p) 0)).down :
      ComplexDisk.EuclideanPlane)‖ = 0 := by
  exact euclidean_radius_source k p 0

/-- The outer original polygon boundary is sent to radius one,
without reversing or reparametrizing its tangential coordinate. -/
theorem boundary_euclidean_radius_one (k : ℕ) (p : BoundaryPoint k) :
    ‖((perimeterConeDiskHomeomorph k
      (CircleCone.coneMk (perimeterProjection k p) 1)).down :
      ComplexDisk.EuclideanPlane)‖ = 1 := by
  exact euclidean_radius_source k p 1

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionRadius
