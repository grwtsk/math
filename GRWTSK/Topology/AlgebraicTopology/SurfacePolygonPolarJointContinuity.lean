/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #997 exact head 255b3199772cd7eb1f2ec8339e2bc5665f9a065a.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarUnitCircleLift
import Mathlib.Topology.Constructions
import Mathlib.Topology.Compactness.Compact
import Mathlib.Tactic

/-!
# Joint polar continuity: genuine product quotient gate

The source real-angle/radius map is jointly continuous. To transport
that fact to UnitAddCircle × unitInterval, a genuine product quotient
supplier is required. The source explicitly separates this quotient
map property from continuity of individual angular slices.

The quotient supplier is targeted through compactness of a selected
fundamental interval and Hausdorffness of the target product; the
noncompact ℝ → UnitAddCircle product projection cannot be treated as
compact-source without first restricting to a compact covering domain.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarJointContinuity

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarUnitCircleLift

/-- Real-angle polar source on a genuine product of topological spaces. -/
def realPolarProduct :
    ℝ × unitInterval → ClosedComplexUnitDisk :=
  fun p => realAnglePolarDisk p.1 p.2

/-- Joint continuity at the real-angle source, before quotient descent. -/
theorem realPolarProduct_continuous :
    Continuous realPolarProduct := by
  apply Continuous.subtype_mk
  change Continuous (fun p : ℝ × unitInterval =>
    realAnglePolar p.1 p.2)
  unfold realAnglePolar
  fun_prop

/-- The actual product projection from real angles to circle angles,
retaining the same radius coordinate. -/
def polarProductProjection :
    ℝ × unitInterval → UnitAddCircle × unitInterval :=
  fun p => ((p.1 : UnitAddCircle), p.2)

/-- The product projection is continuous. This alone is not the
quotient-map property needed for joint descent. -/
theorem polarProductProjection_continuous :
    Continuous polarProductProjection := by
  unfold polarProductProjection
  fun_prop

/-- The product projection is surjective because every additive-circle
point has a real representative. -/
theorem polarProductProjection_surjective :
    Function.Surjective polarProductProjection := by
  rintro ⟨z, r⟩
  obtain ⟨θ, rfl⟩ := Quotient.exists_rep z
  exact ⟨(θ, r), rfl⟩

/-- The candidate joint map on the actual quotient-circle product. -/
def unitCircleJointPolar :
    UnitAddCircle × unitInterval → ClosedComplexUnitDisk :=
  fun p => unitCirclePolarDisk p.2 p.1

/-- The source square commutes exactly. -/
theorem unitCircleJointPolar_source (p : ℝ × unitInterval) :
    unitCircleJointPolar (polarProductProjection p) =
      realPolarProduct p := by
  rcases p with ⟨θ, r⟩
  rfl

/-- A CONDITIONAL joint-continuity theorem retaining the exact
product quotient hypothesis, rather than inferring it from slices. -/
theorem unitCircleJointPolar_continuous_of_quotient
    (hq : IsQuotientMap polarProductProjection) :
    Continuous unitCircleJointPolar := by
  apply hq.continuous_iff.mpr
  simpa only [← unitCircleJointPolar_source] using
    realPolarProduct_continuous

/-
OPEN: prove IsQuotientMap polarProductProjection using a correct
topological quotient-product supplier, e.g. a compact fundamental
interval source or openness of the additive-circle projection.
Do not infer this from continuous + surjective alone.
Then descend the jointly continuous map through StandardCircleCone.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarJointContinuity
