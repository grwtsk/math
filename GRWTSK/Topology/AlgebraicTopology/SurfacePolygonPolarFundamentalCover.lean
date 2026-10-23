/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1004 head e45af26f2c8ea26c90e876f6e8b05cef90d7df53.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarCompactDescent
import Mathlib.Topology.Instances.AddCircle.Defs
import Mathlib.Topology.Instances.AddCircle.Real
import Mathlib.Tactic

/-!
# Unit interval covers the genuine unit additive circle

The target is the precise missing fundamental-domain premise:
every z : UnitAddCircle has a representative in the closed unit
interval. This is a compact covering statement, not an assertion
that the interval projection is injective at its two endpoints.

The pinned Mathlib AddCircle.coe_image_Icc_eq theorem is the intended
supplier. Its exact signature and proof script remain subject to
immutable-head elaboration.
-/

set_option autoImplicit false
open Topology
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarFundamentalCover

open _root_.Topology

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarCompactCover
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarCompactDescent
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarJointContinuity
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk

/-- Every genuine unit-circle point has a closed unit-interval
representative, with 0 and 1 legitimately identified. -/
theorem unitAddCircle_unitInterval_surjective :
    ∀ z : UnitAddCircle,
      ∃ θ : unitInterval, ((θ : ℝ) : UnitAddCircle) = z := by
  intro z
  have hz : z ∈ ((↑) : ℝ → UnitAddCircle) '' Set.Icc (0 : ℝ) 1 := by
    rw [show ((↑) : ℝ → UnitAddCircle) '' Set.Icc (0 : ℝ) 1 = Set.univ by
      simpa only [zero_add] using (AddCircle.coe_image_Icc_eq (1 : ℝ) 0)]
    trivial
  rcases hz with ⟨θ, hθ, heq⟩
  exact ⟨⟨θ, hθ⟩, heq⟩

/-- Unconditional source candidate for compact-cover quotient status,
consuming the precise closed fundamental-domain theorem. -/
theorem compactPolarProjection_isQuotientMap :
    IsQuotientMap compactPolarProjection := by
  let : T2Space (UnitAddCircle × unitInterval) := inferInstance
  exact compactPolarProjection_isQuotientMap_of_cover
    unitAddCircle_unitInterval_surjective

/-- The real-angle/radius product projection is a quotient map.
The exact closed fundamental-interval cover supplies the only
surjectivity input to the existing compact-to-Hausdorff comparison;
the real line itself is not asserted compact. -/
theorem polarProductProjection_isQuotientMap :
    IsQuotientMap
      GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarJointContinuity.polarProductProjection := by
  letI : T2Space (UnitAddCircle × unitInterval) := inferInstance
  exact polarProductProjection_isQuotientMap_of_cover
    unitAddCircle_unitInterval_surjective

/-- Unconditional joint polar continuity through the exact real-angle
product quotient map. The compact-cover route remains independently
available as unitCircleJointPolar_continuous_of_compact_quotient. -/
theorem unitCircleJointPolar_continuous :
    Continuous
      GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarJointContinuity.unitCircleJointPolar := by
  exact unitCircleJointPolar_continuous_of_quotient
    polarProductProjection_isQuotientMap

/-- The genuine joint polar map is the unique continuous descent of
the original real-angle polar formula through the real-angle/radius
quotient projection. Equality is required at EVERY real angle and
radius; no representative choice or radius-zero exception is fitted. -/
theorem unitCircleJointPolar_existsUnique_continuous_source :
    ∃! F : UnitAddCircle × unitInterval → ClosedComplexUnitDisk,
      Continuous F ∧
        F ∘ polarProductProjection = realPolarProduct := by
  refine ⟨unitCircleJointPolar, ⟨unitCircleJointPolar_continuous, ?_⟩, ?_⟩
  · funext p
    exact unitCircleJointPolar_source p
  · intro F hF
    funext q
    obtain ⟨p, hp⟩ := polarProductProjection_surjective q
    rw [← hp]
    exact (congrFun hF.2 p).trans (unitCircleJointPolar_source p).symm

/-
Next: run pinned Lean elaboration and trust-zero audits on the
AddCircle closed-interval cover and both joint-continuity proof routes,
then replay cone descent and polar fibers. The existing source-level
cone-to-disk homeomorphism is not accepted without those audits.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarFundamentalCover
