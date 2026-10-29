import GRWTSK.MechanicsOfParticlesAndSystems.DynamicsOfASystemOfParticlesIncludingCelestialMechanics.CollisionOfRigidOrPseudoRigidBodies.CollisionConservationSelection
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Sphere
import Mathlib.Tactic.FinCases

/-!
# The inscribed-angle theorem for actual collision velocities

Local attribution: grwtsk contributors.

Sources: Grant Sanderson, Why do colliding blocks compute pi? (2019),
https://www.3blue1brown.com/lessons/clacks-solution/ ; Why colliding blocks
compute pi (March 13, 2025), text adaptation by Josh Pullen,
https://www.3blue1brown.com/lessons/colliding-blocks-v2/ .
G. Galperin, Playing Pool with π (2003), DOI 10.1070/RD2003v008n04ABEH000252.
Upstream circle theorem: Mathlib Geometry/Euclidean/Angle/Sphere.lean,
Sphere.oangle_center_eq_two_zsmul_oangle; original authorship/license retained
upstream. This file imports that theorem rather than reproving it.

Actual physical velocities are embedded in a real Euclidean plane. Actual
Steps supply common-circle membership and distinct adjacent points. The wall
chord is vertical; the block chord is perpendicular to weighted momentum.
The circle theorem is applied to these derived points, with orientation and
unsigned-angle branch retained. No circle membership, noncoincidence or
inscribed-angle conclusion is an assumed correspondence field.

The final identification of the inscribed angle with the chosen arctangent
branch is separate from the theorem below. The independently proved algebraic
rotation/count route does not depend on this remaining geometric identification.
Compilation/kernel/type/axiom checks NOT_RUN by user deferral.
-/

namespace GRWTSK.Mechanics.Classical.ElasticCollision.VelocityPhase

open EuclideanGeometry
open scoped RealInnerProductSpace

abbrev Plane := EuclideanSpace ℝ (Fin 2)

local instance : Fact (Module.finrank ℝ Plane = 2) := ⟨by simp [Plane]⟩

noncomputable def phasePoint (m M : ℝ) (s : State) : Plane := !₂[X M s, Y m s]

theorem phasePoint_zero (m M : ℝ) (s : State) : phasePoint m M s 0 = X M s := rfl

theorem phasePoint_one (m M : ℝ) (s : State) : phasePoint m M s 1 = Y m s := rfl

theorem phasePoint_norm_sq (m M : ℝ) (hm : 0 ≤ m) (hM : 0 ≤ M) (s : State) :
    ‖phasePoint m M s‖ ^ 2 = State.energy m M s := by
  calc
    _ = (X M s) ^ 2 + (Y m s) ^ 2 := by
      simp [EuclideanSpace.real_norm_sq_eq, phasePoint, Fin.sum_univ_two]
    _ = _ := phase_energy m M hm hM s

theorem phasePoint_eq_iff (m M : ℝ) (hm : 0 < m) (hM : 0 < M) (s t : State) :
    phasePoint m M s = phasePoint m M t ↔ s.u = t.u ∧ s.v = t.v := by
  constructor
  · intro h
    have hx := congrArg (fun p : Plane => p 0) h
    have hy := congrArg (fun p : Plane => p 1) h
    change Real.sqrt M * s.v = Real.sqrt M * t.v at hx
    change Real.sqrt m * s.u = Real.sqrt m * t.u at hy
    exact ⟨mul_left_cancel₀ (ne_of_gt (Real.sqrt_pos.mpr hm)) hy,
      mul_left_cancel₀ (ne_of_gt (Real.sqrt_pos.mpr hM)) hx⟩
  · rintro ⟨hu, hv⟩
    ext i
    fin_cases i <;> simp [phasePoint, X, Y, hu, hv]

noncomputable def phaseCircle (m M : ℝ) (s : State) : Sphere Plane :=
  ⟨0, ‖phasePoint m M s‖⟩

theorem phasePoint_on_own_circle (m M : ℝ) (s : State) :
    phasePoint m M s ∈ phaseCircle m M s := by
  simp [phaseCircle, EuclideanGeometry.mem_sphere]

theorem trace_on_phase_circle (m M : ℝ) (hm : 0 < m) (hM : 0 < M)
    {n : ℕ} {s t : State} (run : Trace m M n s t) :
    phasePoint m M t ∈ phaseCircle m M s := by
  rw [EuclideanGeometry.mem_sphere]
  change dist (phasePoint m M t) 0 = ‖phasePoint m M s‖
  rw [dist_zero_right]
  apply (sq_eq_sq₀ (norm_nonneg _) (norm_nonneg _)).mp
  rw [phasePoint_norm_sq m M hm.le hM.le, phasePoint_norm_sq m M hm.le hM.le]
  exact trace_energy m M (ne_of_gt (add_pos hm hM)) run

/-- Incoming tests rule out the coincident endpoint excluded by circle geometry. -/
theorem impact_phasePoints_ne (m M : ℝ) (hm : 0 < m) (hM : 0 < M)
    {s t : State} {e : Event} (impact : Step m M s e t) :
    phasePoint m M t ≠ phasePoint m M s := by
  intro same
  have velocities := (phasePoint_eq_iff m M hm hM t s).mp same
  cases impact with
  | wall s r start time flight contact other incoming =>
    change -s.u = s.u ∧ s.v = s.v at velocities
    linarith [velocities.1]
  | blocks s r start time flight contact away incoming =>
    change first m M s.u s.v = s.u ∧ second m M s.u s.v = s.v at velocities
    exact incoming_collision_changes_velocities m M s.u s.v hm hM incoming velocities

theorem block_step_momentum (m M : ℝ) (hsum : m + M ≠ 0)
    {s t : State} (impact : Step m M s .blocks t) :
    m * t.u + M * t.v = m * s.u + M * s.v := by
  cases impact
  exact momentum m M _ _ hsum

/-- The physical block chord lies in a constant-momentum line. -/
theorem block_chord_normal (m M : ℝ) (hm : 0 < m) (hM : 0 < M)
    {s t : State} (impact : Step m M s .blocks t) :
    Real.sqrt M * (X M t - X M s) + Real.sqrt m * (Y m t - Y m s) = 0 := by
  have hp := block_step_momentum m M (ne_of_gt (add_pos hm hM)) impact
  calc
    _ = M * t.v + m * t.u - (M * s.v + m * s.u) := by
      dsimp [X, Y]
      ring_nf
      simp only [Real.sq_sqrt hm.le, Real.sq_sqrt hM.le]
      <;> ring
    _ = 0 := by linarith

theorem wall_chord_vector (m M : ℝ) {s t : State} (impact : Step m M s .wall t) :
    phasePoint m M t - phasePoint m M s = !₂[0, -2 * Y m s] := by
  obtain ⟨hx, hy⟩ := wall_reflection m M impact
  ext i
  fin_cases i <;> simp [phasePoint, hx, hy] <;> ring

/-- Explicit direction supplier for the diagonal chord. The scalar is derived
from its first coordinate, rather than assumed as a geometric certificate. -/
theorem block_chord_vector (m M : ℝ) (hm : 0 < m) (hM : 0 < M)
    {s t : State} (impact : Step m M s .blocks t) :
    phasePoint m M t - phasePoint m M s =
      ((X M t - X M s) / Real.sqrt m) • !₂[Real.sqrt m, -Real.sqrt M] := by
  have normal := block_chord_normal m M hm hM impact
  have root := ne_of_gt (Real.sqrt_pos.mpr hm)
  ext i
  fin_cases i
  · change X M t - X M s = ((X M t - X M s) / Real.sqrt m) * Real.sqrt m
    field_simp [root]
  · change Y m t - Y m s = ((X M t - X M s) / Real.sqrt m) * (-Real.sqrt M)
    apply mul_right_cancel₀ root
    field_simp [root]
    nlinarith [normal]

theorem incoming_circle_radius (m M a b c : ℝ) (hm : 0 < m) (hM : 0 < M) (hc : 0 < c) :
    (phaseCircle m M ⟨a, b, 0, -c⟩).radius = Real.sqrt M * c := by
  change ‖phasePoint m M ⟨a, b, 0, -c⟩‖ = Real.sqrt M * c
  apply (sq_eq_sq₀ (norm_nonneg _) (mul_nonneg (Real.sqrt_nonneg _) hc.le)).mp
  rw [phasePoint_norm_sq m M hm.le hM.le, mul_pow, Real.sq_sqrt hM.le]
  simp [State.energy]

/-- Actual wall/block impacts provide every circle and noncoincidence
hypothesis of the imported oriented inscribed-angle theorem. -/
theorem actual_wall_block_inscribed [Module.Oriented ℝ Plane (Fin 2)]
    (m M : ℝ) (hm : 0 < m) (hM : 0 < M) {s t u : State}
    (wall : Step m M s .wall t) (blocks : Step m M t .blocks u) :
    EuclideanGeometry.oangle (phasePoint m M s) (0 : Plane) (phasePoint m M u) =
      (2 : ℤ) • EuclideanGeometry.oangle (phasePoint m M s) (phasePoint m M t) (phasePoint m M u) := by
  have hs := phasePoint_on_own_circle m M s
  have ht := trace_on_phase_circle m M hm hM (Trace.cons wall (Trace.nil _))
  have hu := trace_on_phase_circle m M hm hM (Trace.cons wall (Trace.cons blocks (Trace.nil _)))
  have hts := impact_phasePoints_ne m M hm hM wall
  have htu := (impact_phasePoints_ne m M hm hM blocks).symm
  simpa only [phaseCircle] using
    Sphere.oangle_center_eq_two_zsmul_oangle hs ht hu hts htu

/-- Unsigned angles require two possible branches. Neither is silently
identified with the desired arctangent or chosen by a picture. -/
theorem actual_wall_block_unsigned (m M : ℝ) (hm : 0 < m) (hM : 0 < M)
    {s t u : State} (wall : Step m M s .wall t) (blocks : Step m M t .blocks u) :
    EuclideanGeometry.angle (phasePoint m M s) (0 : Plane) (phasePoint m M u) =
        2 * EuclideanGeometry.angle (phasePoint m M s) (phasePoint m M t) (phasePoint m M u) ∨
      EuclideanGeometry.angle (phasePoint m M s) (0 : Plane) (phasePoint m M u) =
        2 * Real.pi - 2 * EuclideanGeometry.angle
          (phasePoint m M s) (phasePoint m M t) (phasePoint m M u) := by
  have hs := phasePoint_on_own_circle m M s
  have ht := trace_on_phase_circle m M hm hM (Trace.cons wall (Trace.nil _))
  have hu := trace_on_phase_circle m M hm hM (Trace.cons wall (Trace.cons blocks (Trace.nil _)))
  have hts := impact_phasePoints_ne m M hm hM wall
  have htu := (impact_phasePoints_ne m M hm hM blocks).symm
  by_cases branch : 2 * EuclideanGeometry.angle
      (phasePoint m M s) (phasePoint m M t) (phasePoint m M u) ≤ Real.pi
  · left
    simpa only [phaseCircle] using
      Sphere.angle_center_eq_two_mul_angle_of_two_mul_angle_le_pi hs ht hu hts htu branch
  · right
    simpa only [phaseCircle] using
      Sphere.angle_center_eq_two_pi_sub_two_mul_angle_of_pi_le_two_mul_angle
        hs ht hu hts htu (le_of_not_ge branch)

end GRWTSK.Mechanics.Classical.ElasticCollision.VelocityPhase
