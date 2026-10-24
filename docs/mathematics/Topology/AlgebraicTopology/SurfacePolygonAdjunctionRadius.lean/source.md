# Complete source: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionRadius

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf2faf5bf87aecb427e4d7335d25663c4922888a` · SHA-256 `e12cf19ae0dd340ce3ef15bc1f2510334f953e29973f0355663bd45ed1797cb0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
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

private theorem cornerProductTopology_eq_bot (k : ℕ) :
    @instTopologicalSpaceProd (Handle k) (Fin 4) inferInstance inferInstance =
      (⊥ : TopologicalSpace (PolygonCorner k)) := by
  exact DiscreteTopology.eq_bot

/-- Actual quotient radial coordinate transported along the
explicit reverse disk-adjunction map. -/
def attachedRadialCoordinate (k : ℕ) :
    PolygonAttachedDisk k → unitInterval :=
  (radialCoordinate k) ∘ (adjunctionToFilling k)

/-- Continuity follows from the separately constructed reverse
map and the original quotient's already-proved radial invariant. -/
theorem attachedRadialCoordinate_continuous (k : ℕ) :
    Continuous (attachedRadialCoordinate k) := by
  have hradius : Continuous (radialCoordinate k) := by
    have h := radialCoordinate_continuous k
    convert h using 1
    congr 3
    exact cornerProductTopology_eq_bot k
  exact hradius.comp
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
  change radialCoordinate k (boundaryInclusion k (boundaryProjection k p)) = 1
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
  let : TopologicalSpace (PolygonCorner k) := ⊥
  unfold attachedRadialCoordinate
  rw [Function.comp_apply, adjunctionToFilling_disk]
  unfold euclideanDiskToFilling
  rw [Function.comp_apply, Homeomorph.symm_apply_apply,
    perimeterConeToFilling_source,
    perimeterCylinderToFilling_source,
    radialCoordinate_projection]

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionRadius
```
