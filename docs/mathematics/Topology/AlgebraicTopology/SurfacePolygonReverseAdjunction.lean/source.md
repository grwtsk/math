# Complete source: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseAdjunction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c044ecd8e7064595fbb15a6a695a1f6d762d7e7` · SHA-256 `f05f8f8ac4563a3c94826a8e55c080e9fc4ecf93d374d1ed195656fb6741a27b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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

private theorem cornerProductTopology_eq_bot (k : ℕ) :
    @instTopologicalSpaceProd (Handle k) (Fin 4) inferInstance inferInstance =
      (⊥ : TopologicalSpace (PolygonCorner k)) := by
  exact DiscreteTopology.eq_bot

/-- Exact boundary square for the original one-skeleton and disk maps.
It is proved by surjectivity of the actual perimeter boundary chart. -/
theorem reverse_boundary_commutes (k : ℕ)
    (z : TopCat.diskBoundary.{0} 2) :
    boundaryInclusion k (diskBoundaryAttachingMap k z) =
      euclideanDiskToFilling k ((TopCat.diskBoundaryInclusion 2) z) := by
  let : TopologicalSpace (PolygonCorner k) := ⊥
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
    Continuous (adjunctionToFilling k) := by
  have hboundary : Continuous (boundaryInclusion k) := by
    have h := boundaryInclusion_continuous k
    convert h using 1
    all_goals
      congr 3
      exact cornerProductTopology_eq_bot k
  have hdisk : Continuous (euclideanDiskToFilling k) := by
    have h := euclideanDiskToFilling_continuous k
    convert h using 1
    congr 3
    exact cornerProductTopology_eq_bot k
  exact polygonDescend_continuous k _ _ (reverse_boundary_commutes k)
    hboundary
    hdisk

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
```
