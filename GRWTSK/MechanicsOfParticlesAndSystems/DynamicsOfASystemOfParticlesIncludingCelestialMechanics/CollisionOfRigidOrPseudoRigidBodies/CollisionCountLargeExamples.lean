import GRWTSK.MechanicsOfParticlesAndSystems.DynamicsOfASystemOfParticlesIncludingCelestialMechanics.CollisionOfRigidOrPseudoRigidBodies.CollisionCountDigits

/-!
# The trillion-to-one example and a cubic arctangent bound

Local attribution: grwtsk contributors.

Source: Grant Sanderson, Why colliding blocks compute pi (March 13, 2025),
text adaptation by Josh Pullen,
https://www.3blue1brown.com/lessons/colliding-blocks-v2/ .
G. Galperin, Playing Pool with π (2003),
DOI 10.1070/RD2003v008n04ABEH000252, sections 8–10.

The lesson's explicit mass ratio 10^12 has 3141592 impacts. The arithmetic
certificate here uses exact rational inequalities and imported bounds on pi;
the physical consumer uses the constructed terminal trajectory and uniqueness.
The common mass is arbitrary positive, as are the separation and incoming speed.
The cubic angle error is bounded separately, before integer rounding.
These particular floor equalities imply no all-exponents decimal theorem.
Compilation, fresh kernel/type checking and transitive axiom audit: NOT_RUN,
by user deferral. All new proof bodies are source candidates.
-/

namespace GRWTSK.Mechanics.Classical.CollisionAngleCount

/-- A strict cubic error estimate for every positive x, obtained without
assuming a Taylor remainder or a decimal rounding conclusion. -/
theorem arctan_cubic_error (x : ℝ) (hx : 0 < x) :
    0 < x - Real.arctan x ∧
      x - Real.arctan x < x ^ 3 / (1 + x ^ 2) := by
  have lower := rational_lt_arctan x hx
  have identity : x - x / (1 + x ^ 2) = x ^ 3 / (1 + x ^ 2) := by
    have hp : 1 + x ^ 2 ≠ 0 := ne_of_gt (by nlinarith [sq_nonneg x] : 0 < 1 + x ^ 2)
    field_simp [hp]
    <;> ring
  constructor
  · linarith [Real.arctan_lt_self hx]
  · rw [← identity]
    linarith

theorem arctan_count_hundred_thousandth :
    angularCount (Real.arctan (1 / 100000)) = 314159 := by
  apply arctan_count_of_rational_bracket (1 / 100000) 314159
    (by norm_num) _ _ (by decide)
  · nlinarith [Real.pi_gt_d6]
  · norm_num
    linarith [Real.pi_lt_d6]

/-- The coarse upper bound 3.141593 is insufficient at this scale; the
imported twenty-decimal rational upper bound leaves a positive margin. -/
theorem arctan_count_millionth :
    angularCount (Real.arctan (1 / 1000000)) = 3141592 := by
  apply arctan_count_of_rational_bracket (1 / 1000000) 3141592
    (by norm_num) _ _ (by decide)
  · nlinarith [Real.pi_gt_d6]
  · norm_num
    linarith [Real.pi_lt_d20]

/-- The decimal floor is established independently of the arctangent count. -/
theorem floor_pi_million : ⌊Real.pi * 1000000⌋ = 3141592 := by
  apply Int.floor_eq_iff.mpr
  constructor
  · norm_num
    linarith [Real.pi_gt_d6]
  · norm_num
    linarith [Real.pi_lt_d20]

theorem millionth_count_eq_decimal_floor :
    angularCount (Real.arctan (1 / 1000000)) = ⌊Real.pi * 1000000⌋ := by
  rw [arctan_count_millionth, floor_pi_million]

end GRWTSK.Mechanics.Classical.CollisionAngleCount

namespace GRWTSK.Mechanics.Classical.ElasticCollision.Unfolding

/-- The intermediate 10^10 ratio, uniformly under positive common mass scale. -/
theorem physical_count_ratio_ten_billion (m a b c : ℝ)
    (hm : 0 < m) (ha : 0 < a) (hab : a < b) (hc : 0 < c) :
    ∃ sn : State, Trace m (m * 10000000000) 314159 ⟨a, b, 0, -c⟩ sn ∧
      Terminal m (m * 10000000000) sn ∧
      (∀ {r : ℕ} {sp : State}, Trace m (m * 10000000000) r ⟨a, b, 0, -c⟩ sp →
        Terminal m (m * 10000000000) sp → r = 314159) := by
  have h := physical_count_common_square_ratio m 100000 314159 hm (by norm_num)
    CollisionAngleCount.arctan_count_hundred_thousandth a b c ha hab hc
  norm_num at h
  exact h

/-- The explicitly demonstrated trillion-to-one example is a physical run,
not only a real-angle certificate. Complete terminal traces have unique length. -/
theorem physical_count_ratio_trillion (m a b c : ℝ)
    (hm : 0 < m) (ha : 0 < a) (hab : a < b) (hc : 0 < c) :
    ∃ sn : State, Trace m (m * 1000000000000) 3141592 ⟨a, b, 0, -c⟩ sn ∧
      Terminal m (m * 1000000000000) sn ∧
      (∀ {r : ℕ} {sp : State}, Trace m (m * 1000000000000) r ⟨a, b, 0, -c⟩ sp →
        Terminal m (m * 1000000000000) sp → r = 3141592) := by
  have h := physical_count_common_square_ratio m 1000000 3141592 hm (by norm_num)
    CollisionAngleCount.arctan_count_millionth a b c ha hab hc
  norm_num at h
  exact h

end GRWTSK.Mechanics.Classical.ElasticCollision.Unfolding
