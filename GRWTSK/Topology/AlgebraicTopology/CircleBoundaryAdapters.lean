/-
Copyright (c) 2026 R.A. Jacob Martone. Released under MIT license.
Formalization assistance: OpenAI ChatGPT.
The period-one homeomorphism is the concrete pinned Mathlib construction.
-/
import Mathlib.Analysis.SpecialFunctions.Complex.Circle
import Mathlib.Topology.Category.TopCat.Sphere

/-!
# Standard additive circle to complex circle: exact boundary adapter

Use the actual pinned Mathlib homeomorphism. No second circle
equivalence, radial map, or disk model is invented here.

The companion `ComplexDisk` module identifies the complex disk with
`TopCat.disk 2` through the explicit Euclidean-coordinate isometry and
proves its boundary square. This module records the circle parameterization.
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
    simp only [h, Function.comp_apply]

end GRWTSK.Topology.AlgebraicTopology.CircleBoundaryAdapters
