# Complete source: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionSource

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b569bf3ab91a385b107f7aec5704d58bc603e98f` · SHA-256 `1bd5226c058c3771b3ace6daee0806be301cbfbcc63200320a193a91495b81bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. -/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionInverse

/-!
# Exact source equations of the proposed quotient comparison

These laws test the actual orientation, original sector IDs and
radial position. They reuse the two genuine quotient maps and do not
replace any source equivalence relation or assume a new homeomorphism.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionSource
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskBoundary
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskAdjunction
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionComparison
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseRadial
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseCone
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseAdjunction
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionInverse

/-- Exact image of each original directed-sector source point under
the proposed comparison homeomorphism. -/
@[simp] theorem homeomorph_source (k : ℕ)
    (p : BoundaryPoint k) (r : unitInterval) :
    filledPolygonHomeomorphAttachedDisk k (radialProjection k (p, r)) =
      originalDiskMap k
        (perimeterConeDiskHomeomorph k
          (CircleCone.coneMk (perimeterProjection k p) r)) :=
  rfl

/-- The inverse recovers each original radial-sector point, even at
the apex and at the outer reversed-side boundary. -/
@[simp] theorem homeomorph_symm_source (k : ℕ)
    (p : BoundaryPoint k) (r : unitInterval) :
    (filledPolygonHomeomorphAttachedDisk k).symm
      (originalDiskMap k
        (perimeterConeDiskHomeomorph k
          (CircleCone.coneMk (perimeterProjection k p) r))) =
      radialProjection k (p, r) := by
  let : TopologicalSpace (PolygonCorner k) := ⊥
  change adjunctionToFilling k
    (originalDiskMap k
      (perimeterConeDiskHomeomorph k
        (CircleCone.coneMk (perimeterProjection k p) r))) = _
  rw [adjunctionToFilling_disk]
  unfold euclideanDiskToFilling
  rw [Function.comp_apply, Homeomorph.symm_apply_apply,
    perimeterConeToFilling_source]
  exact perimeterCylinderToFilling_source k p r

/-- Exact original polygon boundary map transported through the
proposed homeomorphism: no change in the attaching orientation. -/
theorem homeomorph_outer_source (k : ℕ) (p : BoundaryPoint k) :
    filledPolygonHomeomorphAttachedDisk k
      (radialProjection k (p, 1)) =
      originalSkeletonMap k (boundaryProjection k p) := by
  change radialSourceToAdjunction k (p, 1) = _
  exact radialSourceToAdjunction_outer k p

/-- The inverse recovers the authentic original outer-boundary
inclusion, rather than an unrelated quotient section. -/
theorem homeomorph_symm_outer_source (k : ℕ) (p : BoundaryPoint k) :
    (filledPolygonHomeomorphAttachedDisk k).symm
      (originalSkeletonMap k (boundaryProjection k p)) =
      radialProjection k (p, 1) := by
  change adjunctionToFilling k
    (originalSkeletonMap k (boundaryProjection k p)) = _
  rw [adjunctionToFilling_skeleton]
  exact boundaryInclusion_projection k p

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionSource
```
