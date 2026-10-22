/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib and local concrete geometric theorems retain attribution.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.Topology.AlgebraicTopology.ComplexDisk
import GRWTSK.Topology.AlgebraicTopology.CircleBoundaryAdapters

/-!
# Exact additive-circle parameterization of the Euclidean disk boundary

This module consumes the actual published concrete CircleCone/ComplexDisk
homeomorphisms and Mathlib's homeomorphism from UnitAddCircle to Circle.
The resulting boundary chart is not an arbitrary chosen equivalence.

It does NOT import the unpublished perimeter homeomorphism drafts. The
polygon attaching map will have to consume this precise boundary chart,
rather than assuming an unrelated boundary parameterization.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.AdditiveDiskBoundary

open GRWTSK.Topology.AlgebraicTopology.CircleCone
open GRWTSK.Topology.AlgebraicTopology.ComplexDisk
open GRWTSK.Topology.AlgebraicTopology.CircleBoundaryAdapters

/-- Canonical standard-additive-circle parameterization of the actual
Mathlib Euclidean two-disk boundary, using the pinned Mathlib map
and the published concrete complex-to-Euclidean coordinate isometry. -/
def additiveBoundaryHomeomorph :
    UnitAddCircle ≃ₜ TopCat.diskBoundary.{0} 2 :=
  unitAddCircleToComplexCircle.trans topCatBoundaryHomeomorph

@[simp] theorem additiveBoundaryHomeomorph_apply (x : UnitAddCircle) :
    additiveBoundaryHomeomorph x =
      topCatBoundaryHomeomorph (AddCircle.toCircle x) := by
  change topCatBoundaryHomeomorph (unitAddCircleToComplexCircle x) = _
  rw [unitAddCircleToComplexCircle_apply]

/-- The actual disk-point corresponding to an additive-circle
boundary angle. This point is on the genuine disk boundary. -/
def additiveBoundaryDiskPoint (x : UnitAddCircle) :
    TopCat.disk.{0} 2 :=
  (TopCat.diskBoundaryInclusion 2) (additiveBoundaryHomeomorph x)

/-- Boundary point computed through the published cone-to-disk
homeomorphism is *exactly* the standard disk boundary inclusion. -/
theorem cone_boundary_exact (x : UnitAddCircle) :
    coneHomeomorph (CircleCone.boundary (unitAddCircleToComplexCircle x)) =
      additiveBoundaryDiskPoint x := by
  rw [ComplexDisk.coneHomeomorph_boundary]
  rfl

/-- The boundary chart is genuinely bijective, in particular distinct
angular directions are never silently collapsed before attachment. -/
theorem additiveBoundaryHomeomorph_bijective :
    Function.Bijective additiveBoundaryHomeomorph :=
  additiveBoundaryHomeomorph.bijective

/-- The boundary chart is continuous, as a composition of the two
actual homeomorphisms rather than an unverified coordinate convention. -/
theorem additiveBoundaryHomeomorph_continuous :
    Continuous additiveBoundaryHomeomorph :=
  additiveBoundaryHomeomorph.continuous

/-- Transport any actual map defined on the standard additive circle
to the Euclidean disk boundary through the *fixed* canonical chart. -/
def transportBoundaryMap {Y : Type*}
    (f : UnitAddCircle → Y) :
    TopCat.diskBoundary.{0} 2 → Y :=
  f ∘ additiveBoundaryHomeomorph.symm

/-- Exact commuting equation; the boundary coordinate used to
transport is the same one consumed by the cone-to-disk theorem. -/
theorem transportBoundaryMap_apply {Y : Type*}
    (f : UnitAddCircle → Y) (x : UnitAddCircle) :
    transportBoundaryMap f (additiveBoundaryHomeomorph x) = f x := by
  simp [transportBoundaryMap]

/-- Transport does not alter the kernel of the original boundary map. -/
theorem transportBoundaryMap_kernel {Y : Type*}
    (f : UnitAddCircle → Y) (x y : UnitAddCircle) :
    transportBoundaryMap f (additiveBoundaryHomeomorph x) =
        transportBoundaryMap f (additiveBoundaryHomeomorph y) ↔
      f x = f y := by
  simp [transportBoundaryMap]

/-- Surjectivity of an actual attaching map is preserved by the
fixed boundary reparameterization. -/
theorem transportBoundaryMap_surjective {Y : Type*}
    (f : UnitAddCircle → Y) (hf : Function.Surjective f) :
    Function.Surjective (transportBoundaryMap f) := by
  intro y
  obtain ⟨x, hx⟩ := hf y
  exact ⟨additiveBoundaryHomeomorph x, by
    simpa [transportBoundaryMap] using hx⟩

end GRWTSK.Topology.AlgebraicTopology.AdditiveDiskBoundary
