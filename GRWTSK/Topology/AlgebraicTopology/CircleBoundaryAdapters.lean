/-
Copyright (c) 2026 grwtsk contributors. Released under MIT license.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
The independently checked CircleCone.lean is not imported because it has
not yet been published on this branch.
-/
import Mathlib.Analysis.SpecialFunctions.Complex.Circle
import Mathlib.Topology.Category.TopCat.Sphere

/-!
# Standard additive circle to complex circle: exact boundary adapter

Use the actual pinned Mathlib homeomorphism. No second circle
equivalence, radial map, or disk model is invented here.

The remaining complex-disk to TopCat.disk 2 adapter requires an
explicit Euclidean-coordinate isometry and boundary commutative
square. The staged CircleCone radial theorem remains a separate
unpublished verified input.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.CircleBoundaryAdapters

/-- Imported Mathlib homeomorphism, with period one. -/
def unitAddCircleToComplexCircle : UnitAddCircle ≃ₜ Circle :=
  AddCircle.homeomorphCircle (T := (1 : ℝ)) (by norm_num)

/-- The exact source coordinate agrees with Mathlib's canonical
exponential circle map, not merely some abstract homeomorphism. -/
theorem unitAddCircleToComplexCircle_apply (x : UnitAddCircle) :
    unitAddCircleToComplexCircle x = AddCircle.toCircle x := by
  exact AddCircle.homeomorphCircle_apply (T := (1 : ℝ))
    (by norm_num) x

theorem unitAddCircleToComplexCircle_bijective :
    Function.Bijective unitAddCircleToComplexCircle :=
  unitAddCircleToComplexCircle.bijective

/-- The codomain is the actual two-dimensional closed Euclidean disk
already defined by pinned Mathlib. -/
abbrev EuclideanClosedDisk := TopCat.disk 2

/-- Boundary source of the *same* Mathlib closed Euclidean disk. -/
abbrev EuclideanDiskBoundary := TopCat.diskBoundary 2

/-- Exact boundary compatibility is a separate, mathematical
diagrammatic obligation, not an assumed equality of different disks.
The homeomorphism below must map the genuine complex unit-circle
boundary to the genuine Euclidean disk boundary pointwise. -/
def BoundaryCompatible
    (complexBoundary : Circle → EuclideanDiskBoundary)
    (transport : UnitAddCircle → EuclideanDiskBoundary) : Prop :=
  ∀ z, transport z = complexBoundary (unitAddCircleToComplexCircle z)

/-- Uniqueness of the transported boundary parameterization. -/
theorem boundaryCompatible_iff
    (complexBoundary : Circle → EuclideanDiskBoundary)
    (transport : UnitAddCircle → EuclideanDiskBoundary) :
    BoundaryCompatible complexBoundary transport ↔
      transport = complexBoundary ∘ unitAddCircleToComplexCircle := by
  constructor
  · intro h
    funext z
    exact h z
  · intro h z
    simpa only [h, Function.comp_apply]

end GRWTSK.Topology.AlgebraicTopology.CircleBoundaryAdapters
