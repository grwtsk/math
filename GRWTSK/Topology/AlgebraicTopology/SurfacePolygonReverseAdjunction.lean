/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. -/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseCone

/-! # Exact reverse map via the original polygon attaching square. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseAdjunction
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskBoundary
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskAdjunction
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseCone

/-- Exact boundary square for the original one-skeleton and disk maps.
It is proved by surjectivity of the actual perimeter boundary chart. -/
theorem reverse_boundary_commutes (k : ℕ)
    (z : TopCat.diskBoundary.{0} 2) :
    boundaryInclusion k (diskBoundaryAttachingMap k z) =
      euclideanDiskToFilling k ((TopCat.diskBoundaryInclusion 2) z) := by
  obtain ⟨x, rfl⟩ := (perimeterDiskBoundaryHomeomorph k).surjective z
  rw [diskBoundaryAttachingMap_factorization]
  exact (euclideanDiskToFilling_boundary k x).symm

/-- The genuine continuous universal map induced by the two
original boundary-compatible components. -/
def adjunctionToFilling (k : ℕ) :
    PolygonAttachedDisk k → FilledPolygonQuotient k :=
  polygonDescend k (boundaryInclusion k) (euclideanDiskToFilling k)
    (reverse_boundary_commutes k)

theorem adjunctionToFilling_continuous (k : ℕ) :
    Continuous (adjunctionToFilling k) :=
  polygonDescend_continuous k _ _ (reverse_boundary_commutes k)
    (boundaryInclusion_continuous k)
    (euclideanDiskToFilling_continuous k)

@[simp] theorem adjunctionToFilling_skeleton (k : ℕ)
    (b : PolygonBoundaryOneSkeleton k) :
    adjunctionToFilling k (originalSkeletonMap k b) =
      boundaryInclusion k b :=
  polygonDescend_skeleton k _ _ (reverse_boundary_commutes k) b

@[simp] theorem adjunctionToFilling_disk (k : ℕ)
    (d : TopCat.disk.{0} 2) :
    adjunctionToFilling k (originalDiskMap k d) =
      euclideanDiskToFilling k d :=
  polygonDescend_disk k _ _ (reverse_boundary_commutes k) d

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseAdjunction
