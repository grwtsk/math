/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1000 head 53befb09d0cf8c182f9b1f71a7b23d7df256652a.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarJointContinuity
import Mathlib.Topology.Instances.AddCircle.Defs
import Mathlib.Topology.Compactness.Compact
import Mathlib.Tactic

/-!
# Compact fundamental interval supplier for the polar product quotient

The real line itself is not compact. Instead restrict the angular
source to the closed unit interval. Its endpoint duplication is
legitimate, since 0 and 1 represent the same UnitAddCircle point.
The compact product [0,1] × unitInterval maps continuously and
surjectively to UnitAddCircle × unitInterval. The target is Hausdorff.
This gives the quotient property, and the original real-line product
projection factors through the compact cover.

All proof scripts remain source candidates pending exact Lean replay.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarCompactCover

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarJointContinuity

/-- Compact source for the unit-circle angular fundamental interval. -/
abbrev PolarCompactSource := unitInterval × unitInterval

/-- The angular unit interval and radial unit interval map to the
genuine additive-circle/radius product. -/
def compactPolarProjection :
    PolarCompactSource → UnitAddCircle × unitInterval :=
  fun p => (((p.1 : ℝ) : UnitAddCircle), p.2)

/-- The compact-cover map is the restriction of the inherited
real-angle/radius product projection. -/
theorem compactPolarProjection_factor (p : PolarCompactSource) :
    compactPolarProjection p =
      polarProductProjection ((p.1 : ℝ), p.2) := rfl

theorem compactPolarProjection_continuous :
    Continuous compactPolarProjection := by
  unfold compactPolarProjection
  fun_prop

/-- Compactness uses the actual product of two closed unit intervals,
not an unjustified compactness instance on the entire real line. -/
theorem compactPolarSource_compact :
    CompactSpace PolarCompactSource := inferInstance

/-- Surjectivity of the fundamental interval map is an explicit
supplier. It requires Mathlib's AddCircle unit-period fundamental
domain theorem; no arbitrary representative choice is assumed. -/
theorem compactPolarProjection_surjective_of_circle_cover
    (hcover : ∀ z : UnitAddCircle,
      ∃ θ : unitInterval, ((θ : ℝ) : UnitAddCircle) = z) :
    Function.Surjective compactPolarProjection := by
  rintro ⟨z, r⟩
  obtain ⟨θ, hθ⟩ := hcover z
  exact ⟨(θ, r), by simpa [compactPolarProjection] using
    congrArg (fun z : UnitAddCircle => (z, r)) hθ⟩

/-- The quotient-map theorem is conditional only on the precise
unit-interval angular covering theorem and target Hausdorffness.
Both premises remain explicit until imported at the pinned revision. -/
theorem compactPolarProjection_isQuotientMap_of_cover
    (hcover : ∀ z : UnitAddCircle,
      ∃ θ : unitInterval, ((θ : ℝ) : UnitAddCircle) = z)
    [T2Space (UnitAddCircle × unitInterval)] :
    IsQuotientMap compactPolarProjection := by
  letI : CompactSpace PolarCompactSource := compactPolarSource_compact
  exact IsQuotientMap.of_surjective_continuous
    (compactPolarProjection_surjective_of_circle_cover hcover)
    compactPolarProjection_continuous

/-- The real-line projection becomes a quotient map once the compact
cover is surjective: the compact cover factors through it, while the
real-line projection is already continuous and surjective. -/
theorem polarProductProjection_isQuotientMap_of_cover
    (hcover : ∀ z : UnitAddCircle,
      ∃ θ : unitInterval, ((θ : ℝ) : UnitAddCircle) = z)
    [T2Space (UnitAddCircle × unitInterval)] :
    IsQuotientMap polarProductProjection := by
  have hcompact :=
    compactPolarProjection_isQuotientMap_of_cover hcover
  have hcont := polarProductProjection_continuous
  have hsurj := polarProductProjection_surjective
  -- The remaining composition/quotient descent is a source proof
  -- candidate; use the exact IsQuotientMap factorization API.
  exact hcompact.of_comp_surjective
    hcont hsurj compactPolarProjection_factor

/-- Conditional source candidate for joint continuity with a precise
compact fundamental-domain supplier rather than a generic quotient
assumption. -/
theorem unitCircleJointPolar_continuous_of_cover
    (hcover : ∀ z : UnitAddCircle,
      ∃ θ : unitInterval, ((θ : ℝ) : UnitAddCircle) = z)
    [T2Space (UnitAddCircle × unitInterval)] :
    Continuous unitCircleJointPolar :=
  unitCircleJointPolar_continuous_of_quotient
    (polarProductProjection_isQuotientMap_of_cover hcover)

/-
OPEN: discharge hcover using pinned AddCircle.coe_image_Icc_eq or
equivIco, verify factorization quotient API, and then state an
unconditional joint continuity theorem. No cone disk homeomorphism.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarCompactCover
