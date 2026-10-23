/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1002 head 8c5c80a6142641106f4561fac6abee438faf53c5.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarCompactCover
import Mathlib.Topology.Constructions
import Mathlib.Tactic

/-!
# Direct compact-cover descent of joint polar continuity

The inherited PR #1002 attempted to transfer IsQuotientMap from the
compact cover to the full real-angle product projection. That transfer
is unnecessary for the consumer: a quotient map from the compact
fundamental square already proves joint continuity of the same target
map by the universal property of the quotient topology.

This module avoids the unverified IsQuotientMap factorization API
altogether. The fundamental interval coverage remains an explicit
premise until the pinned AddCircle theorem is instantiated.
-/

set_option autoImplicit false
open Topology
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarCompactDescent

open _root_.Topology

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarJointContinuity
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarCompactCover

/-- The genuine compact-source square commutes with the candidate
joint polar map, using exactly the inherited real-angle formula. -/
theorem compactPolar_joint_source (p : PolarCompactSource) :
    unitCircleJointPolar (compactPolarProjection p) =
      realPolarProduct ((p.1 : ℝ), p.2) := by
  rw [compactPolarProjection_factor]
  exact unitCircleJointPolar_source ((p.1 : ℝ), p.2)

/-- Direct joint continuity from a quotient compact cover. This
does not need the stronger real-line product quotient theorem. -/
theorem unitCircleJointPolar_continuous_of_compact_quotient
    (hq : IsQuotientMap compactPolarProjection) :
    Continuous unitCircleJointPolar := by
  apply hq.continuous_iff.mpr
  have hsource :
      Continuous (fun p : PolarCompactSource =>
        realPolarProduct ((p.1 : ℝ), p.2)) := by
    exact realPolarProduct_continuous.comp
      ((continuous_subtype_val.comp continuous_fst).prodMk
        continuous_snd)
  have heq : unitCircleJointPolar ∘ compactPolarProjection =
      (fun p : PolarCompactSource => realPolarProduct ((p.1 : ℝ), p.2)) := by
    funext p
    exact compactPolar_joint_source p
  rw [heq]
  exact hsource

/-- The compact-to-Hausdorff quotient criterion is sufficient to
discharge joint continuity, with the exact fundamental interval
coverage assumption still exposed. -/
theorem unitCircleJointPolar_continuous_of_fundamental_cover
    (hcover : ∀ z : UnitAddCircle,
      ∃ θ : unitInterval, ((θ : ℝ) : UnitAddCircle) = z)
    [T2Space (UnitAddCircle × unitInterval)] :
    Continuous unitCircleJointPolar := by
  exact unitCircleJointPolar_continuous_of_compact_quotient
    (compactPolarProjection_isQuotientMap_of_cover hcover)

/-
Next:
* instantiate hcover from pinned AddCircle fundamental-domain API;
* audit and repair all ancestor source candidates before trust promotion;
* use joint continuity for StandardCircleCone descent;
* prove exact cone fibers, polar surjectivity, homeomorphism.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarCompactDescent
