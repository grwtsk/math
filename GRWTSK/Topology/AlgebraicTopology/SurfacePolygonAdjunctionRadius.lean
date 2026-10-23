/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. -/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionRadius

/-!
# A continuous radial invariant on the authentic polygon disk adjunction

Transport the existing filled quotient's actual radial invariant through
the explicitly constructed reverse map. On original one-skeleton points
it has radius one; on original disk-sector representatives it returns
exactly the original radial coordinate. This does not postulate any
new radius function or replace either quotient carrier.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionRadius

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskBoundary
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskAdjunction
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseRadial
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseCone
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseAdjunction

/-- Actual quotient radial coordinate transported along the
explicit reverse disk-adjunction map. -/
def attachedRadialCoordinate (k : ℕ) :
    PolygonAttachedDisk k → unitInterval :=
  (radialCoordinate k) ∘ (adjunctionToFilling k)

/-- Continuity follows from the separately constructed reverse
map and the original quotient's already-proved radial invariant. -/
theorem attachedRadialCoordinate_continuous (k : ℕ) :
    Continuous (attachedRadialCoordinate k) :=
  (radialCoordinate_continuous k).comp
    (adjunctionToFilling_continuous k)

/-- Every point of the original paired one-skeleton sits on the
outer radius-one stratum, not only selected endpoint vertices. -/
@[simp] theorem attachedRadialCoordinate_skeleton (k : ℕ)
    (b : PolygonBoundaryOneSkeleton k) :
    attachedRadialCoordinate k (originalSkeletonMap k b) = 1 := by
  unfold attachedRadialCoordinate
  rw [Function.comp_apply, adjunctionToFilling_skeleton]
  refine Quotient.inductionOn b ?_
  intro p
  rw [boundaryInclusion_projection]
  rfl

/-- Exact agreement with every original disk sector's radial
parameter after the verified cone-coordinate map. -/
@[simp] theorem attachedRadialCoordinate_disk_source (k : ℕ)
    (p : BoundaryPoint k) (r : unitInterval) :
    attachedRadialCoordinate k
      (originalDiskMap k
        (perimeterConeDiskHomeomorph k
          (CircleCone.coneMk (perimeterProjection k p) r))) = r := by
  unfold attachedRadialCoordinate
  rw [Function.comp_apply, adjunctionToFilling_disk]
  unfold euclideanDiskToFilling
  rw [Function.comp_apply, Homeomorph.symm_apply_apply,
    perimeterConeToFilling_source,
    perimeterCylinderToFilling_source,
    radialCoordinate_projection]

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionRadius
