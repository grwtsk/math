/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. -/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseAdjunction

/-!
# Mutual inverse comparison of the actual radial and attached quotients

The identities are proved by induction on the two actual quotient
carriers, reducing every point to its original radial-sector source
or its actual skeleton/disk source. No homeomorphism is supplied as an
assumption or structure field.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionInverse

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskBoundary
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskAdjunction
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionComparison
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionContinuity
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseRadial
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseCone
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseAdjunction

/-- Reverse after forward, checked on each genuine original radial
square source point with no replacement identification relation. -/
theorem reverse_forward_source (k : ℕ) (p : RadialSource k) :
    adjunctionToFilling k
      (radialFillingToAdjunction k (radialProjection k p)) =
        radialProjection k p := by
  rcases p with ⟨p, r⟩
  rw [radialFillingToAdjunction_source]
  change adjunctionToFilling k
    (originalDiskMap k
      (perimeterConeDiskHomeomorph k
        (CircleCone.coneMk (perimeterProjection k p) r))) = _
  rw [adjunctionToFilling_disk]
  unfold euclideanDiskToFilling
  rw [Function.comp_apply, Homeomorph.symm_apply_apply]
  rw [perimeterConeToFilling_source]
  exact perimeterCylinderToFilling_source k p r

/-- The composite equals identity on the actual radial quotient,
by quotient induction, not by a supplied injectivity assertion. -/
theorem reverse_forward (k : ℕ) :
    adjunctionToFilling k ∘ radialFillingToAdjunction k =
      id := by
  funext x
  refine Quotient.inductionOn x ?_
  intro p
  exact reverse_forward_source k p

/-- Forward after reverse on the genuine original one-skeleton. -/
theorem forward_reverse_skeleton (k : ℕ)
    (b : PolygonBoundaryOneSkeleton k) :
    radialFillingToAdjunction k
      (adjunctionToFilling k (originalSkeletonMap k b)) =
        originalSkeletonMap k b := by
  rw [adjunctionToFilling_skeleton]
  refine Quotient.inductionOn b ?_
  intro p
  rw [show boundaryInclusion k (boundaryProjection k p) =
    radialProjection k (p, 1) from boundaryInclusion_projection k p]
  rw [radialFillingToAdjunction_source]
  exact radialSourceToAdjunction_outer k p

/-- Forward after reverse on every point of the entire genuine
Euclidean disk, using surjectivity of the checked cone chart. -/
theorem forward_reverse_disk (k : ℕ)
    (d : TopCat.disk.{0} 2) :
    radialFillingToAdjunction k
      (adjunctionToFilling k (originalDiskMap k d)) =
        originalDiskMap k d := by
  rw [adjunctionToFilling_disk]
  obtain ⟨c, rfl⟩ := (perimeterConeDiskHomeomorph k).surjective d
  refine Quotient.inductionOn c ?_
  intro pr
  rcases pr with ⟨x, r⟩
  unfold euclideanDiskToFilling
  rw [Function.comp_apply, Homeomorph.symm_apply_apply]
  change radialFillingToAdjunction k
    (perimeterCylinderToFilling k (x, r)) = _
  refine Quotient.inductionOn x ?_
  intro p
  rw [show perimeterCylinderToFilling k
      (perimeterProjection k p, r) = radialProjection k (p, r)
      from perimeterCylinderToFilling_source k p r]
  rfl

/-- Forward after reverse is identity on the authentic quotient
of the disjoint one-skeleton and the whole disk. -/
theorem forward_reverse (k : ℕ) :
    radialFillingToAdjunction k ∘ adjunctionToFilling k =
      id := by
  funext x
  refine Quotient.inductionOn x ?_
  intro p
  cases p with
  | inl b => exact forward_reverse_skeleton k b
  | inr d => exact forward_reverse_disk k d

/-- Genuine candidate homeomorphism between the two exact quotients;
its inverse laws are the preceding source-derived quotient inductions. -/
noncomputable def filledPolygonHomeomorphAttachedDisk (k : ℕ) :
    FilledPolygonQuotient k ≃ₜ PolygonAttachedDisk k where
  toFun := radialFillingToAdjunction k
  invFun := adjunctionToFilling k
  left_inv := fun x => congrFun (reverse_forward k) x
  right_inv := fun x => congrFun (forward_reverse k) x
  continuous_toFun := radialFillingToAdjunction_continuous k
  continuous_invFun := adjunctionToFilling_continuous k

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionInverse
