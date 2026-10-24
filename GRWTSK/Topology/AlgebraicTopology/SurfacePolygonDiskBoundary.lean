/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI Codex.
Imported Mathlib and source-specific perimeter results retain their credits. -/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonUnitCircleAttachment
import GRWTSK.Topology.AlgebraicTopology.AdditiveDiskBoundary
import GRWTSK.Topology.AlgebraicTopology.AddCircleConeDisk

/-!
# The source polygon attachment on the actual Euclidean disk boundary

The authentic directed perimeter is parameterized by its proved additive-circle
homeomorphism, then by the fixed complex-to-Euclidean boundary coordinates.
The transported attaching map agrees with the original paired-boundary
projection at every original directed-side point. Opposite sides retain their
reversed interval parameters and the map remains noninjective.

The cone of the unpaired perimeter is also identified with the actual Euclidean
disk, with its boundary, apex and radius preserved. These are statements about
the source disk and its boundary map. No attached surface, CW structure, or
manifold conclusion is asserted.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskBoundary

open GRWTSK.Algebra.GroupTheory.Words.HigherGenusHeisenbergWitness
open SurfacePolygonCornerGluing SurfacePolygonBoundaryTopology
open SurfacePolygonPerimeterAttachment SurfacePolygonPerimeterCircleEquivalence
open SurfacePolygonUnitCircleAttachment
open SurfacePolygonPerimeterCircleAddress

/-- The original directed-side identifiers retain their prescribed discrete topology. -/
local instance cornerDiscreteTopology (k : ℕ) :
    TopologicalSpace (PolygonCorner k) := ⊥

/-- The source perimeter uses the fixed, concrete Euclidean disk-boundary chart. -/
def perimeterDiskBoundaryHomeomorph (k : ℕ) :
    UnpairedPerimeter k ≃ₜ TopCat.diskBoundary.{0} 2 :=
  (perimeterUnitCircleHomeomorph k).trans
    AdditiveDiskBoundary.additiveBoundaryHomeomorph

/-- The actual unit-circle attachment in the fixed Euclidean boundary coordinates. -/
def diskBoundaryAttachingMap (k : ℕ) :
    TopCat.diskBoundary.{0} 2 → PolygonBoundaryOneSkeleton k :=
  unitCircleAttachingMap k ∘ AdditiveDiskBoundary.additiveBoundaryHomeomorph.symm

theorem diskBoundaryAttachingMap_continuous (k : ℕ) :
    Continuous (diskBoundaryAttachingMap k) :=
  (unitCircleAttachingMap_continuous k).comp
    AdditiveDiskBoundary.additiveBoundaryHomeomorph.symm.continuous

@[simp] theorem diskBoundaryAttachingMap_chart (k : ℕ) (x : UnitAddCircle) :
    diskBoundaryAttachingMap k (AdditiveDiskBoundary.additiveBoundaryHomeomorph x) =
      unitCircleAttachingMap k x := by
  change unitCircleAttachingMap k
    (AdditiveDiskBoundary.additiveBoundaryHomeomorph.symm
      (AdditiveDiskBoundary.additiveBoundaryHomeomorph x)) = _
  rw [Homeomorph.symm_apply_apply]

/-- Exact commutation at each original directed-side identifier and parameter. -/
@[simp] theorem diskBoundaryAttachingMap_source (k : ℕ) (p : BoundaryPoint k) :
    diskBoundaryAttachingMap k
      (AdditiveDiskBoundary.additiveBoundaryHomeomorph
        ((perimeterUnitCircleHomeomorph k) (perimeterProjection k p))) =
      boundaryProjection k p :=
  (diskBoundaryAttachingMap_chart k _).trans (unitCircleAttachingMap_source k p)

@[simp] theorem diskBoundaryAttachingMap_factorization (k : ℕ)
    (x : UnpairedPerimeter k) :
    diskBoundaryAttachingMap k (perimeterDiskBoundaryHomeomorph k x) =
      perimeterAttach k x :=
  (diskBoundaryAttachingMap_chart k _).trans (unitCircleAttachingMap_factorization k x)

theorem diskBoundaryAttachingMap_surjective (k : ℕ) :
    Function.Surjective (diskBoundaryAttachingMap k) := by
  intro y
  obtain ⟨x, hx⟩ := unitCircleAttachingMap_surjective k y
  exact ⟨AdditiveDiskBoundary.additiveBoundaryHomeomorph x,
    (diskBoundaryAttachingMap_chart k x).trans hx⟩

theorem diskBoundaryAttachingMap_pairs_a (k : ℕ) (h : Handle k) (t : unitInterval) :
    diskBoundaryAttachingMap k
      (perimeterDiskBoundaryHomeomorph k (perimeterProjection k ((h, 0), t))) =
    diskBoundaryAttachingMap k
      (perimeterDiskBoundaryHomeomorph k
        (perimeterProjection k ((h, 2), unitInterval.symm t))) := by
  simp only [diskBoundaryAttachingMap_factorization]
  exact attachingMap_pairs_a k h t

theorem diskBoundaryAttachingMap_pairs_b (k : ℕ) (h : Handle k) (t : unitInterval) :
    diskBoundaryAttachingMap k
      (perimeterDiskBoundaryHomeomorph k (perimeterProjection k ((h, 1), t))) =
    diskBoundaryAttachingMap k
      (perimeterDiskBoundaryHomeomorph k
        (perimeterProjection k ((h, 3), unitInterval.symm t))) := by
  simp only [diskBoundaryAttachingMap_factorization]
  exact attachingMap_pairs_b k h t

theorem diskBoundaryAttachingMap_not_injective (k : ℕ) :
    ¬ Function.Injective (diskBoundaryAttachingMap k) := by
  intro hinj
  apply unitCircleAttachingMap_not_injective k
  intro x y hxy
  apply AdditiveDiskBoundary.additiveBoundaryHomeomorph.injective
  apply hinj
  simpa only [diskBoundaryAttachingMap_chart] using hxy

theorem diskBoundaryAttachingMap_kernel (k : ℕ) (x y : UnpairedPerimeter k) :
    diskBoundaryAttachingMap k (perimeterDiskBoundaryHomeomorph k x) =
        diskBoundaryAttachingMap k (perimeterDiskBoundaryHomeomorph k y) ↔
      perimeterAttach k x = perimeterAttach k y := by
  simp only [diskBoundaryAttachingMap_factorization]

/-- The genuine unit-circle coordinate uses the original directed ordinal,
scaled by the original directed period `4 * (k + 2)`. -/
@[simp] theorem perimeterUnitCircleHomeomorph_source (k : ℕ) (p : BoundaryPoint k) :
    perimeterUnitCircleHomeomorph k (perimeterProjection k p) =
      ((sourceRealAngularAddress k p / angularPeriod k : ℝ) : UnitAddCircle) := by
  simp only [perimeterUnitCircleHomeomorph_apply, perimeterUnitAngle, Function.comp_apply,
    perimeterAngle_projection, sourceAngularAddress, sourceRealAngularAddress,
    periodCircleHomeomorph, AddCircle.homeomorphAddCircle_apply_mk, mul_one, div_eq_mul_inv]

/-- Concrete first Euclidean boundary coordinate of each original directed side point. -/
@[simp] theorem perimeterDiskBoundaryHomeomorph_source_zero (k : ℕ) (p : BoundaryPoint k) :
    ((perimeterDiskBoundaryHomeomorph k (perimeterProjection k p)).down :
      ComplexDisk.EuclideanPlane) 0 =
      Real.cos (2 * Real.pi * (sourceRealAngularAddress k p / angularPeriod k)) := by
  change ((AddCircleConeDisk.boundaryHomeomorph
    (perimeterUnitCircleHomeomorph k (perimeterProjection k p))).down :
      ComplexDisk.EuclideanPlane) 0 = _
  rw [perimeterUnitCircleHomeomorph_source, AddCircleConeDisk.boundaryHomeomorph_coe_zero]

/-- Concrete second Euclidean boundary coordinate, with the same source orientation. -/
@[simp] theorem perimeterDiskBoundaryHomeomorph_source_one (k : ℕ) (p : BoundaryPoint k) :
    ((perimeterDiskBoundaryHomeomorph k (perimeterProjection k p)).down :
      ComplexDisk.EuclideanPlane) 1 =
      Real.sin (2 * Real.pi * (sourceRealAngularAddress k p / angularPeriod k)) := by
  change ((AddCircleConeDisk.boundaryHomeomorph
    (perimeterUnitCircleHomeomorph k (perimeterProjection k p))).down :
      ComplexDisk.EuclideanPlane) 1 = _
  rw [perimeterUnitCircleHomeomorph_source, AddCircleConeDisk.boundaryHomeomorph_coe_one]

/-- The actual source-perimeter cone has the standard Euclidean disk as target. -/
def perimeterConeDiskHomeomorph (k : ℕ) :
    CircleCone.Cone (UnpairedPerimeter k) ≃ₜ TopCat.disk.{0} 2 :=
  (ConeCongruence.homeomorph (perimeterUnitCircleHomeomorph k)).trans
    AddCircleConeDisk.homeomorph

@[simp] theorem perimeterConeDiskHomeomorph_boundary (k : ℕ)
    (x : UnpairedPerimeter k) :
    perimeterConeDiskHomeomorph k (ConeCongruence.boundary x) =
      (TopCat.diskBoundaryInclusion 2) (perimeterDiskBoundaryHomeomorph k x) := by
  change AddCircleConeDisk.homeomorph
    (ConeCongruence.boundary ((perimeterUnitCircleHomeomorph k) x)) = _
  exact AddCircleConeDisk.homeomorph_boundary _

@[simp] theorem perimeterConeDiskHomeomorph_apex (k : ℕ)
    (x : UnpairedPerimeter k) :
    ((perimeterConeDiskHomeomorph k (ConeCongruence.apex x)).down :
      ComplexDisk.EuclideanPlane) = 0 := by
  change ((AddCircleConeDisk.homeomorph
    (ConeCongruence.apex ((perimeterUnitCircleHomeomorph k) x))).down :
      ComplexDisk.EuclideanPlane) = 0
  exact AddCircleConeDisk.homeomorph_apex _

@[simp] theorem norm_perimeterConeDiskHomeomorph (k : ℕ)
    (p : CircleCone.Cone (UnpairedPerimeter k)) :
    ‖((perimeterConeDiskHomeomorph k p).down : ComplexDisk.EuclideanPlane)‖ =
      (ConeCongruence.radius p : ℝ) := by
  change ‖((AddCircleConeDisk.homeomorph
    (ConeCongruence.homeomorph (perimeterUnitCircleHomeomorph k) p)).down :
      ComplexDisk.EuclideanPlane)‖ = _
  rw [AddCircleConeDisk.norm_homeomorph, ConeCongruence.radius_homeomorph]

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskBoundary
