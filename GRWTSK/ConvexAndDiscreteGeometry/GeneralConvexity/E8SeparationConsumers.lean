/- Local attribution: grwtsk contributors.
Upstream E8 source authors Bhavik Mehta and Gareth Ma retain Apache-2.0 attribution. -/
import SpherePacking.Basic.E8

/-!
# E8 lattice separation as a geometric non-overlap consumer

The upstream nonzero-vector lower bound applies to differences of lattice
points. Hence open balls of radius sqrt(2)/2 at distinct E8 points are disjoint.
This uses the proved Basic.E8 endpoint, not the `sorry` placeholder in the
pinned SpherePacking.MainTheorem. Optimal packing density is not asserted.
SOURCE_PROOF_CANDIDATE: compilation, fresh kernel replay and axiom audit NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8SeparationConsumers

/-- Distinct lattice points have a difference of Euclidean norm at least sqrt(2). -/
theorem difference_norm_lower_bound (v w : Fin 8 → ℝ)
    (hv : v ∈ Submodule.E8 ℝ) (hw : w ∈ Submodule.E8 ℝ) (hvw : v ≠ w) :
    Real.sqrt 2 ≤ ‖WithLp.toLp 2 (v - w)‖ := by
  exact (_root_.E8_norm_lower_bound (v - w) ((Submodule.E8 ℝ).sub_mem hv hw)).resolve_left
    (sub_ne_zero.mpr hvw)

/-- The same bound in the actual Euclidean metric, not the sup norm on functions. -/
theorem centre_distance_lower_bound (v w : Fin 8 → ℝ)
    (hv : v ∈ Submodule.E8 ℝ) (hw : w ∈ Submodule.E8 ℝ) (hvw : v ≠ w) :
    Real.sqrt 2 ≤ dist (WithLp.toLp 2 v) (WithLp.toLp 2 w) := by
  simpa only [dist_eq_norm, WithLp.toLp_sub] using difference_norm_lower_bound v w hv hw hvw

/-- Open equal-radius balls at distinct E8 centres do not overlap. Closed balls
may meet at their boundaries, so no disjointness claim is made for closed balls. -/
theorem open_balls_disjoint (v w : Fin 8 → ℝ)
    (hv : v ∈ Submodule.E8 ℝ) (hw : w ∈ Submodule.E8 ℝ) (hvw : v ≠ w) :
    Disjoint (Metric.ball (WithLp.toLp 2 v) (Real.sqrt 2 / 2))
      (Metric.ball (WithLp.toLp 2 w) (Real.sqrt 2 / 2)) := by
  apply Set.disjoint_left.mpr
  intro z hzv hzw
  have hsep := centre_distance_lower_bound v w hv hw hvw
  have htri := dist_triangle (WithLp.toLp 2 v) z (WithLp.toLp 2 w)
  have hleft : dist (WithLp.toLp 2 v) z < Real.sqrt 2 / 2 := by
    simpa only [Metric.mem_ball, dist_comm] using hzv
  have hright : dist z (WithLp.toLp 2 w) < Real.sqrt 2 / 2 := hzw
  linarith

end GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8SeparationConsumers
