import GRWTSK.MechanicsOfParticlesAndSystems.DynamicsOfASystemOfParticlesIncludingCelestialMechanics.CollisionOfRigidOrPseudoRigidBodies.CollisionNextImpact

/-!
# The two conservation-law solutions and the physical collision choice

Local attribution: grwtsk contributors.

Sources: Grant Sanderson, Why do colliding blocks compute pi? (2019),
https://www.3blue1brown.com/lessons/clacks-solution/ ; Why colliding blocks
compute pi (March 13, 2025), text adaptation by Josh Pullen,
https://www.3blue1brown.com/lessons/colliding-blocks-v2/ ;
The most unexpected answer to a counting puzzle (2019), text adaptation by
Josh Pullen, https://www.3blue1brown.com/lessons/clacks/ .
G. Galperin, Playing Pool with π (2003), DOI 10.1070/RD2003v008n04ABEH000252.

The line and energy circle generally intersect at the unchanged state and
one other state. Conservation alone does not select between them. Either a
nontrivial change or incoming-to-separating direction selects the actual
collision law; the reversal of relative velocity need not be assumed.
The equal-mass count consumer includes arbitrary positive common mass,
0<a<b and incoming speed c>0, retaining the grazing integral boundary.
Compilation/kernel/type/axiom checks NOT_RUN by user deferral.
-/

namespace GRWTSK.Mechanics.Classical.ElasticCollision

theorem energy_momentum_identity (m M u v : ℝ) :
    (m + M) * (m * u ^ 2 + M * v ^ 2) - (m * u + M * v) ^ 2 =
      m * M * (u - v) ^ 2 := by ring

theorem relative_speed_sq_of_conservation (m M u v U V : ℝ)
    (hm : 0 < m) (hM : 0 < M)
    (hp : m * U + M * V = m * u + M * v)
    (he : m * U ^ 2 + M * V ^ 2 = m * u ^ 2 + M * v ^ 2) :
    (U - V) ^ 2 = (u - v) ^ 2 := by
  have weighted : m * M * (U - V) ^ 2 = m * M * (u - v) ^ 2 := by
    rw [← energy_momentum_identity m M U V, hp, he, energy_momentum_identity]
  exact mul_left_cancel₀ (ne_of_gt (mul_pos hm hM)) weighted

/-- Coincident branches at u=v are permitted. For an incoming collision they
are distinct; neither solution is silently discarded by conservation alone. -/
theorem conservation_dichotomy (m M u v U V : ℝ) (hm : 0 < m) (hM : 0 < M)
    (hp : m * U + M * V = m * u + M * v)
    (he : m * U ^ 2 + M * V ^ 2 = m * u ^ 2 + M * v ^ 2) :
    (U = u ∧ V = v) ∨ (U = first m M u v ∧ V = second m M u v) := by
  have squared := relative_speed_sq_of_conservation m M u v U V hm hM hp he
  have factor : (U - V - (u - v)) * (U - V + (u - v)) = 0 := by
    nlinarith [squared]
  have sum : m + M ≠ 0 := ne_of_gt (add_pos hm hM)
  rcases mul_eq_zero.mp factor with same | opposite
  · left
    have hr : U - V = u - v := by linarith
    have scaled := congrArg (fun z : ℝ => M * z) hr
    have product : (m + M) * (U - u) = 0 := by nlinarith [scaled]
    have Ueq : U = u := sub_eq_zero.mp ((mul_eq_zero.mp product).resolve_left sum)
    exact ⟨Ueq, by linarith⟩
  · right
    exact collision_law_unique m M u v U V sum hp (by linarith)

theorem conservation_iff_two_branches (m M u v U V : ℝ) (hm : 0 < m) (hM : 0 < M) :
    (m * U + M * V = m * u + M * v ∧
      m * U ^ 2 + M * V ^ 2 = m * u ^ 2 + M * v ^ 2) ↔
    ((U = u ∧ V = v) ∨ (U = first m M u v ∧ V = second m M u v)) := by
  constructor
  · rintro ⟨hp, he⟩
    exact conservation_dichotomy m M u v U V hm hM hp he
  · rintro (⟨rfl, rfl⟩ | ⟨rfl, rfl⟩)
    · exact ⟨rfl, rfl⟩
    · exact ⟨momentum m M u v (ne_of_gt (add_pos hm hM)),
        twice_energy m M u v (ne_of_gt (add_pos hm hM))⟩

theorem collision_of_conservation_nontrivial (m M u v U V : ℝ)
    (hm : 0 < m) (hM : 0 < M)
    (hp : m * U + M * V = m * u + M * v)
    (he : m * U ^ 2 + M * V ^ 2 = m * u ^ 2 + M * v ^ 2)
    (changed : ¬ (U = u ∧ V = v)) :
    U = first m M u v ∧ V = second m M u v := by
  exact (conservation_dichotomy m M u v U V hm hM hp he).resolve_left changed

/-- Incoming and separating directions select the other intersection. -/
theorem collision_of_conservation_separating (m M u v U V : ℝ)
    (hm : 0 < m) (hM : 0 < M) (incoming : v < u) (separating : U ≤ V)
    (hp : m * U + M * V = m * u + M * v)
    (he : m * U ^ 2 + M * V ^ 2 = m * u ^ 2 + M * v ^ 2) :
    U = first m M u v ∧ V = second m M u v := by
  apply collision_of_conservation_nontrivial m M u v U V hm hM hp he
  rintro ⟨hU, hV⟩
  linarith

theorem incoming_collision_changes_velocities (m M u v : ℝ)
    (hm : 0 < m) (hM : 0 < M) (incoming : v < u) :
    ¬ (first m M u v = u ∧ second m M u v = v) := by
  rintro ⟨hU, hV⟩
  have reversal := relative_velocity m M u v (ne_of_gt (add_pos hm hM))
  rw [hU, hV] at reversal
  linarith

end GRWTSK.Mechanics.Classical.ElasticCollision

namespace GRWTSK.Mechanics.Classical.CollisionAngleCount

theorem equal_mass_angle (m : ℝ) (hm : 0 < m) : massAngle m m = Real.pi / 4 := by
  unfold massAngle
  rw [div_self (ne_of_gt hm), Real.sqrt_one, Real.arctan_one]

end GRWTSK.Mechanics.Classical.CollisionAngleCount

namespace GRWTSK.Mechanics.Classical.ElasticCollision.VelocityPhase

/-- Three impacts for arbitrary positive equal masses, separation and speed;
the strict angular ceiling excludes the next grazing boundary. -/
theorem equal_mass_general_three_impact_run (m a b c : ℝ)
    (hm : 0 < m) (ha : 0 < a) (hab : a < b) (hc : 0 < c) :
    ∃ sn : State, Trace m m 3 ⟨a, b, 0, -c⟩ sn ∧ Terminal m m sn ∧
      (∀ {n : ℕ} {s : State}, Trace m m n ⟨a, b, 0, -c⟩ s → Terminal m m s → n = 3) := by
  have run := circle_general_trajectory_count m m a b c hm hm ha hab hc
  rw [CollisionAngleCount.equal_mass_angle m hm,
    CollisionAngleCount.angularCount_pi_div_four] at run
  norm_num at run
  exact run

end GRWTSK.Mechanics.Classical.ElasticCollision.VelocityPhase
