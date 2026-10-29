import GRWTSK.MechanicsOfParticlesAndSystems.DynamicsOfASystemOfParticlesIncludingCelestialMechanics.CollisionOfRigidOrPseudoRigidBodies.CollisionInscribedAngle

/-!
# The actual inscribed angle is the mass-ratio arctangent

Local attribution: grwtsk contributors.

Sources: Grant Sanderson, Why do colliding blocks compute pi? (2019),
https://www.3blue1brown.com/lessons/clacks-solution/ ; Why colliding blocks
compute pi (March 13, 2025), text adaptation by Josh Pullen,
https://www.3blue1brown.com/lessons/colliding-blocks-v2/ .
G. Galperin, Playing Pool with π (2003), DOI 10.1070/RD2003v008n04ABEH000252.
Imported circle geometry retains its upstream authorship and Apache 2.0 license.

For an actual wall impact followed by a block impact, the backwards wall
chord is a POSITIVE multiple of the downward vector; the forwards momentum
chord is a POSITIVE multiple of (sqrt(m),-sqrt(M)). Their angle is computed
from the actual Euclidean inner product and norms. Thus the inscribed angle
is theta=atan(sqrt(m/M)); 0<theta<pi/2 selects the central angle 2*theta,
rather than the supplementary unsigned branch. No desired angle is assumed.
These are source proof candidates. Compilation/kernel/type/axiom checks
NOT_RUN by user deferral. No every-scale decimal claim is added.
-/

namespace GRWTSK.Mechanics.Classical.ElasticCollision.VelocityPhase

open EuclideanGeometry
open scoped RealInnerProductSpace

local instance : Fact (Module.finrank ℝ Plane = 2) := ⟨by simp [Plane]⟩

noncomputable def downward : Plane := !₂[0, -1]
noncomputable def momentumDirection (m M : ℝ) : Plane := !₂[Real.sqrt m, -Real.sqrt M]

theorem downward_norm : ‖downward‖ = 1 := by
  simp [downward, EuclideanSpace.norm_eq, Fin.sum_univ_two]

theorem momentumDirection_norm (m M : ℝ) (hm : 0 ≤ m) (hM : 0 ≤ M) :
    ‖momentumDirection m M‖ = Real.sqrt (m + M) := by
  simp [momentumDirection, EuclideanSpace.norm_eq, Fin.sum_univ_two,
    Real.norm_eq_abs, Real.sq_sqrt hm, Real.sq_sqrt hM]

theorem downward_momentum_inner (m M : ℝ) :
    ⟪downward, momentumDirection m M⟫_ℝ = Real.sqrt M := by
  simp [downward, momentumDirection, EuclideanSpace.inner_eq_star_dotProduct,
    dotProduct, Fin.sum_univ_two]

/-- A literal angle computation, not an arctangent supplied as an interface. -/
theorem fixed_chord_angle (m M : ℝ) (hm : 0 < m) (hM : 0 < M) :
    InnerProductGeometry.angle downward (momentumDirection m M) =
      CollisionAngleCount.massAngle m M := by
  unfold InnerProductGeometry.angle
  rw [downward_momentum_inner, downward_norm, momentumDirection_norm m M hm.le hM.le, one_mul,
    ← Unfolding.massAngle_cos m M hm hM]
  apply Real.arccos_cos (CollisionAngleCount.massAngle_pos m M hm hM).le
  have upper := CollisionAngleCount.massAngle_lt_pi_div_two m M
  linarith [Real.pi_pos]

theorem wall_back_chord_scalar_pos (m M : ℝ) (hm : 0 < m)
    {s t : State} (wall : Step m M s .wall t) : 0 < -2 * Y m s := by
  have incoming : s.u < 0 := by cases wall; assumption
  have negative := mul_neg_of_pos_of_neg (Real.sqrt_pos.mpr hm) incoming
  dsimp [Y]
  nlinarith

theorem wall_back_chord_vector (m M : ℝ) {s t : State} (wall : Step m M s .wall t) :
    phasePoint m M s - phasePoint m M t = (-2 * Y m s) • downward := by
  obtain ⟨hx, hy⟩ := wall_reflection m M wall
  ext i
  fin_cases i <;> simp [phasePoint, downward, hx, hy] <;> ring

/-- The far body gains velocity in a genuine incoming block collision. -/
theorem second_velocity_gain (m M u v : ℝ) (hsum : m + M ≠ 0) :
    second m M u v - v = 2 * m * (u - v) / (m + M) := by
  unfold second
  field_simp [hsum]
  <;> ring

theorem block_forward_chord_scalar_pos (m M : ℝ) (hm : 0 < m) (hM : 0 < M)
    {s t : State} (blocks : Step m M s .blocks t) :
    0 < (X M t - X M s) / Real.sqrt m := by
  cases blocks with
  | blocks s r start time flight contact away incoming =>
    have gain : 0 < second m M s.u s.v - s.v := by
      rw [second_velocity_gain m M s.u s.v (ne_of_gt (add_pos hm hM))]
      exact div_pos (mul_pos (mul_pos (by norm_num) hm) (sub_pos.mpr incoming)) (add_pos hm hM)
    have weighted := mul_pos (Real.sqrt_pos.mpr hM) gain
    apply div_pos _ (Real.sqrt_pos.mpr hm)
    dsimp [X, State.advance]
    nlinarith [weighted]

/-- The chord directions and their signs identify the actual inscribed angle. -/
theorem actual_inscribed_eq_massAngle (m M : ℝ) (hm : 0 < m) (hM : 0 < M)
    {s t u : State} (wall : Step m M s .wall t) (blocks : Step m M t .blocks u) :
    EuclideanGeometry.angle (phasePoint m M s) (phasePoint m M t) (phasePoint m M u) =
      CollisionAngleCount.massAngle m M := by
  change InnerProductGeometry.angle (phasePoint m M s - phasePoint m M t)
    (phasePoint m M u - phasePoint m M t) = _
  rw [wall_back_chord_vector m M wall, block_chord_vector m M hm hM blocks]
  change InnerProductGeometry.angle ((-2 * Y m s) • downward)
    (((X M u - X M t) / Real.sqrt m) • momentumDirection m M) = _
  rw [InnerProductGeometry.angle_smul_left_of_pos _ _ (wall_back_chord_scalar_pos m M hm wall),
    InnerProductGeometry.angle_smul_right_of_pos _ _ (block_forward_chord_scalar_pos m M hm hM blocks)]
  exact fixed_chord_angle m M hm hM

/-- The pictured acute branch is now selected by proved physical signs and
positive masses; it is not a supplementary angle chosen from a diagram. -/
theorem actual_central_eq_twice_massAngle (m M : ℝ) (hm : 0 < m) (hM : 0 < M)
    {s t u : State} (wall : Step m M s .wall t) (blocks : Step m M t .blocks u) :
    EuclideanGeometry.angle (phasePoint m M s) (0 : Plane) (phasePoint m M u) =
      2 * CollisionAngleCount.massAngle m M := by
  have hs := phasePoint_on_own_circle m M s
  have ht := trace_on_phase_circle m M hm hM (Trace.cons wall (Trace.nil _))
  have hu := trace_on_phase_circle m M hm hM (Trace.cons wall (Trace.cons blocks (Trace.nil _)))
  have hts := impact_phasePoints_ne m M hm hM wall
  have htu := (impact_phasePoints_ne m M hm hM blocks).symm
  have branch : 2 * EuclideanGeometry.angle
      (phasePoint m M s) (phasePoint m M t) (phasePoint m M u) ≤ Real.pi := by
    rw [actual_inscribed_eq_massAngle m M hm hM wall blocks]
    linarith [CollisionAngleCount.massAngle_lt_pi_div_two m M]
  have angle := Sphere.angle_center_eq_two_mul_angle_of_two_mul_angle_le_pi hs ht hu hts htu branch
  simpa only [phaseCircle, actual_inscribed_eq_massAngle m M hm hM wall blocks] using angle

theorem actual_central_angle_strict_bounds (m M : ℝ) (hm : 0 < m) (hM : 0 < M)
    {s t u : State} (wall : Step m M s .wall t) (blocks : Step m M t .blocks u) :
    0 < EuclideanGeometry.angle (phasePoint m M s) (0 : Plane) (phasePoint m M u) ∧
      EuclideanGeometry.angle (phasePoint m M s) (0 : Plane) (phasePoint m M u) < Real.pi := by
  rw [actual_central_eq_twice_massAngle m M hm hM wall blocks]
  constructor <;> linarith [CollisionAngleCount.massAngle_pos m M hm hM,
    CollisionAngleCount.massAngle_lt_pi_div_two m M]

end GRWTSK.Mechanics.Classical.ElasticCollision.VelocityPhase
