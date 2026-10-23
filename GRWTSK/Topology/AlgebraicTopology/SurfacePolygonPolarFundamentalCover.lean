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

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarCompactCover
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarCompactDescent

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

/-- Unconditional source candidate for JOINT polar continuity.
The proof uses the compact quotient, not separately continuous slices. -/
theorem unitCircleJointPolar_continuous :
    Continuous
      GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarJointContinuity.unitCircleJointPolar := by
  exact unitCircleJointPolar_continuous_of_compact_quotient
    compactPolarProjection_isQuotientMap

/-
Next: validate the pinned AddCircle.coe_image_Icc_eq statement and
topology instances, then descend the joint polar map through the
actual StandardCircleCone apex relation. No disk homeomorphism yet.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarFundamentalCover
