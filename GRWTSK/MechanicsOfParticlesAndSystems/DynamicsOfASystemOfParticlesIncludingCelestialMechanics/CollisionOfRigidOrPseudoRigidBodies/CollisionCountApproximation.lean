import GRWTSK.MechanicsOfParticlesAndSystems.DynamicsOfASystemOfParticlesIncludingCelestialMechanics.CollisionOfRigidOrPseudoRigidBodies.ElasticCollisionTrajectory
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Analysis.Real.Pi.Bounds

/-!
# Error bounds and exact demonstrated collision counts

Local attribution: grwtsk contributors.

Source: G. Galperin, Playing Pool with π (2003),
DOI 10.1070/RD2003v008n04ABEH000252, Lemma 3 and sections 8–10;
Grant Sanderson, the 2019 and 2025 colliding-blocks lessons.

The reciprocal-arctangent error is bounded before any integer rounding. Exact
floor agreement is supplied only under an explicit gap condition or in the
individual demonstrated cases. No all-exponents decimal theorem is asserted.

Verification deferred by the user. Compilation, fresh kernel/type checking
and transitive axiom auditing: NOT_RUN. Every proof body is a source candidate.
-/

namespace GRWTSK.Mechanics.Classical.CollisionAngleCount

theorem sin_two_arctan_eq (x : ℝ) :
    Real.sin (2 * Real.arctan x) = 2 * x / (1 + x ^ 2) := by
  rw [Real.sin_two_mul, Real.sin_arctan, Real.cos_arctan]
  have hp : 0 < 1 + x ^ 2 := by nlinarith [sq_nonneg x]
  have hr := ne_of_gt (Real.sqrt_pos.mpr hp)
  calc
    _ = 2 * x / (Real.sqrt (1 + x ^ 2) * Real.sqrt (1 + x ^ 2)) := by
      field_simp [hr]
      <;> ring
    _ = _ := by rw [← sq, Real.sq_sqrt hp.le]

/-- A direct sine comparison supplies a strict rational lower bound, without
truncating a formal Taylor series or assuming an unspecified error term. -/
theorem rational_lt_arctan (x : ℝ) (hx : 0 < x) :
    x / (1 + x ^ 2) < Real.arctan x := by
  have hs := Real.sin_lt (show 0 < 2 * Real.arctan x by
    linarith [Real.arctan_pos.mpr hx])
  rw [sin_two_arctan_eq] at hs
  have he : 2 * x / (1 + x ^ 2) = 2 * (x / (1 + x ^ 2)) := by ring
  rw [he] at hs
  linarith

/-- Galperin's reciprocal-arctangent estimate, for every positive x. -/
theorem reciprocal_arctan_error (x : ℝ) (hx : 0 < x) :
    0 < 1 / Real.arctan x - 1 / x ∧
      1 / Real.arctan x - 1 / x < x := by
  have ht := Real.arctan_pos.mpr hx
  have hp : 0 < 1 + x ^ 2 := by nlinarith [sq_nonneg x]
  have lower := one_div_lt_one_div_of_lt ht (Real.arctan_lt_self hx)
  have upper := one_div_lt_one_div_of_lt (div_pos hx hp) (rational_lt_arctan x hx)
  have inverse : 1 / (x / (1 + x ^ 2)) = 1 / x + x := by
    field_simp [ne_of_gt hx, ne_of_gt hp]
    <;> ring
  rw [inverse] at upper
  constructor <;> linarith

theorem pi_quotient_error (x : ℝ) (hx : 0 < x) :
    0 < Real.pi / Real.arctan x - Real.pi / x ∧
      Real.pi / Real.arctan x - Real.pi / x < Real.pi * x := by
  obtain ⟨hl, hu⟩ := reciprocal_arctan_error x hx
  have he : Real.pi / Real.arctan x - Real.pi / x =
      Real.pi * (1 / Real.arctan x - 1 / x) := by ring
  rw [he]
  exact ⟨mul_pos Real.pi_pos hl, mul_lt_mul_of_pos_left hu Real.pi_pos⟩

/-- The count normalized by x approximates pi unconditionally. This is a
quantitative real error statement; it does not determine a decimal floor. -/
theorem normalized_count_error (x : ℝ) (hx : 0 < x) :
    -x < x * (angularCount (Real.arctan x) : ℝ) - Real.pi ∧
      x * (angularCount (Real.arctan x) : ℝ) - Real.pi < Real.pi * x ^ 2 := by
  have ht := Real.arctan_pos.mpr hx
  obtain ⟨hl, hu⟩ := angularCount_bounds (Real.arctan x) ht
  obtain ⟨el, eu⟩ := pi_quotient_error x hx
  have nl : Real.pi / Real.arctan x ≤ (angularCount (Real.arctan x) : ℝ) + 1 :=
    (div_le_iff₀ ht).mpr hu
  have nu : (angularCount (Real.arctan x) : ℝ) < Real.pi / Real.arctan x :=
    (lt_div_iff₀ ht).mpr hl
  have lo := mul_lt_mul_of_pos_left
    (show Real.pi / x - 1 < (angularCount (Real.arctan x) : ℝ) by linarith) hx
  have hi := mul_lt_mul_of_pos_left
    (show (angularCount (Real.arctan x) : ℝ) < Real.pi / x + Real.pi * x by linarith) hx
  have cancel : x * (Real.pi / x) = Real.pi := by field_simp [ne_of_gt hx]
  constructor <;> nlinarith [lo, hi, cancel]

theorem normalized_count_abs_error (x : ℝ) (hx : 0 < x) (hsmall : Real.pi * x ≤ 1) :
    |x * (angularCount (Real.arctan x) : ℝ) - Real.pi| < x := by
  obtain ⟨hl, hu⟩ := normalized_count_error x hx
  have width := mul_le_mul_of_nonneg_right hsmall hx.le
  apply abs_lt.mpr
  exact ⟨hl, by nlinarith⟩

theorem floor_le_arctan_count (x : ℝ) (hx : 0 < x) :
    ⌊Real.pi / x⌋ ≤ angularCount (Real.arctan x) := by
  apply (le_angularCount_iff (Real.arctan x) (Real.arctan_pos.mpr hx) _).mpr
  apply (lt_div_iff₀ (Real.arctan_pos.mpr hx)).mp
  have hl := Int.floor_le (Real.pi / x)
  have he := (pi_quotient_error x hx).1
  linarith

/-- If the real reciprocal error is below one, rounding changes the integer
part by at most one. The remaining choice is not discarded. -/
theorem arctan_count_floor_or_succ (x : ℝ) (hx : 0 < x) (hsmall : Real.pi * x ≤ 1) :
    angularCount (Real.arctan x) = ⌊Real.pi / x⌋ ∨
      angularCount (Real.arctan x) = ⌊Real.pi / x⌋ + 1 := by
  have lower := floor_le_arctan_count x hx
  have err := (pi_quotient_error x hx).2
  have floorUpper := Int.lt_floor_add_one (Real.pi / x)
  have upper : Real.pi / Real.arctan x < ((⌊Real.pi / x⌋ : ℤ) : ℝ) + 2 := by linarith
  have ceilUpper : ⌈Real.pi / Real.arctan x⌉ ≤ ⌊Real.pi / x⌋ + 2 := by
    apply Int.ceil_le.mpr
    simpa only [Int.cast_add, Int.cast_ofNat] using upper.le
  unfold angularCount at lower ⊢
  omega

/-- Sufficient distance from the next integer gives exact agreement. The
margin is an explicit numerical inequality, not the desired floor equality. -/
theorem arctan_count_eq_floor_of_gap (x : ℝ) (hx : 0 < x)
    (margin : Real.pi / x + Real.pi * x ≤ ((⌊Real.pi / x⌋ : ℤ) : ℝ) + 1) :
    angularCount (Real.arctan x) = ⌊Real.pi / x⌋ := by
  have lower := floor_le_arctan_count x hx
  have err := (pi_quotient_error x hx).2
  have upper : Real.pi / Real.arctan x ≤ ((⌊Real.pi / x⌋ : ℤ) : ℝ) + 1 := by linarith
  have ceilUpper : ⌈Real.pi / Real.arctan x⌉ ≤ ⌊Real.pi / x⌋ + 1 := by
    apply Int.ceil_le.mpr
    simpa only [Int.cast_add, Int.cast_one] using upper
  unfold angularCount at lower ⊢
  omega

private theorem pi_inverse_le_one_of_four_le (D : ℝ) (hD : 4 ≤ D) :
    0 < 1 / D ∧ Real.pi * (1 / D) ≤ 1 := by
  have hpos : 0 < D := by linarith
  constructor
  · exact div_pos (by norm_num) hpos
  · have hp : Real.pi ≤ D := le_trans Real.pi_lt_four.le hD
    have hd : Real.pi / D ≤ 1 := (div_le_iff₀ hpos).mpr (by simpa using hp)
    simpa only [div_eq_mul_inv, one_div, one_mul] using hd

/-- Every real scale D>=4 gives an approximation with error below 1/D. This
applies to decimal scales without claiming equality of their integer floors. -/
theorem inverseScale_abs_error (D : ℝ) (hD : 4 ≤ D) :
    |(angularCount (Real.arctan (1 / D)) : ℝ) / D - Real.pi| < 1 / D := by
  obtain ⟨hx, hs⟩ := pi_inverse_le_one_of_four_le D hD
  have h := normalized_count_abs_error (1 / D) hx hs
  simpa only [div_eq_mul_inv, one_div, one_mul, mul_comm] using h

theorem inverseScale_floor_or_succ (D : ℝ) (hD : 4 ≤ D) :
    angularCount (Real.arctan (1 / D)) = ⌊Real.pi * D⌋ ∨
      angularCount (Real.arctan (1 / D)) = ⌊Real.pi * D⌋ + 1 := by
  obtain ⟨hx, hs⟩ := pi_inverse_le_one_of_four_le D hD
  have h := arctan_count_floor_or_succ (1 / D) hx hs
  have he : Real.pi / (1 / D) = Real.pi * D := by
    field_simp [show D ≠ 0 by linarith]
  simpa only [he] using h

/-- Rational angle bounds plus pi bounds certify a particular count. Both
estimates are supplied by proved inequalities, not floating-point output. -/
theorem arctan_count_of_rational_bracket (x : ℝ) (n : ℕ) (hx : 0 < x)
    (lower : (n : ℝ) * x ≤ Real.pi)
    (upper : Real.pi ≤ ((n : ℝ) + 1) * (x / (1 + x ^ 2))) (hn : 0 < n) :
    angularCount (Real.arctan x) = (n : ℤ) := by
  apply (angularCount_eq_iff (Real.arctan x) (Real.arctan_pos.mpr hx) n).mpr
  constructor
  · have nr : (0 : ℝ) < n := by exact_mod_cast hn
    have h := mul_lt_mul_of_pos_left (Real.arctan_lt_self hx) nr
    simpa only [Int.cast_natCast] using lt_of_lt_of_le h lower
  · have nr : (0 : ℝ) < (n : ℝ) + 1 := by
      have hn0 : (0 : ℝ) ≤ n := Nat.cast_nonneg n
      linarith
    have h := mul_lt_mul_of_pos_left (rational_lt_arctan x hx) nr
    simpa only [Int.cast_natCast] using le_trans upper h.le

theorem arctan_count_tenth : angularCount (Real.arctan (1 / 10)) = 31 := by
  apply arctan_count_of_rational_bracket (1 / 10) 31 (by norm_num) _ _ (by decide)
  · nlinarith [Real.pi_gt_d2]
  · norm_num
    linarith [Real.pi_lt_d2]

theorem arctan_count_hundredth : angularCount (Real.arctan (1 / 100)) = 314 := by
  apply arctan_count_of_rational_bracket (1 / 100) 314 (by norm_num) _ _ (by decide)
  · nlinarith [Real.pi_gt_d2]
  · norm_num
    linarith [Real.pi_lt_d4]

theorem arctan_count_thousandth : angularCount (Real.arctan (1 / 1000)) = 3141 := by
  apply arctan_count_of_rational_bracket (1 / 1000) 3141 (by norm_num) _ _ (by decide)
  · nlinarith [Real.pi_gt_d4]
  · norm_num
    linarith [Real.pi_lt_d4]

theorem arctan_count_ten_thousandth : angularCount (Real.arctan (1 / 10000)) = 31415 := by
  apply arctan_count_of_rational_bracket (1 / 10000) 31415 (by norm_num) _ _ (by decide)
  · nlinarith [Real.pi_gt_d4]
  · norm_num
    linarith [Real.pi_lt_d6]

theorem massAngle_square_ratio (D : ℝ) (hD : 0 < D) :
    massAngle 1 (D ^ 2) = Real.arctan (1 / D) := by
  unfold massAngle
  rw [Real.sqrt_div (by norm_num : (0 : ℝ) ≤ 1), Real.sqrt_one, Real.sqrt_sq hD.le]

end GRWTSK.Mechanics.Classical.CollisionAngleCount

namespace GRWTSK.Mechanics.Classical.ElasticCollision.Unfolding

/-- A concrete angle-count certificate specializes the actual physical trace
construction uniformly in initial separation and speed. -/
theorem physical_count_of_square_ratio (D : ℝ) (n : ℕ) (hD : 0 < D)
    (count : CollisionAngleCount.angularCount (Real.arctan (1 / D)) = (n : ℤ))
    (a b c : ℝ) (ha : 0 < a) (hab : a < b) (hc : 0 < c) :
    ∃ sn : State, Trace 1 (D ^ 2) n ⟨a, b, 0, -c⟩ sn ∧ Terminal 1 (D ^ 2) sn ∧
      (∀ {p : ℕ} {sp : State}, Trace 1 (D ^ 2) p ⟨a, b, 0, -c⟩ sp →
        Terminal 1 (D ^ 2) sp → p = n) := by
  have result := general_trajectory_count 1 (D ^ 2) a b c (by norm_num) (sq_pos_of_pos hD) ha hab hc
  rw [CollisionAngleCount.massAngle_square_ratio D hD, count] at result
  simpa only [Int.toNat_natCast] using result

theorem physical_count_mass_100 (a b c : ℝ) (ha : 0 < a) (hab : a < b) (hc : 0 < c) :
    ∃ sn : State, Trace 1 100 31 ⟨a, b, 0, -c⟩ sn ∧ Terminal 1 100 sn ∧
      (∀ {p : ℕ} {sp : State}, Trace 1 100 p ⟨a, b, 0, -c⟩ sp → Terminal 1 100 sp → p = 31) := by
  have h := physical_count_of_square_ratio 10 31 (by norm_num)
    CollisionAngleCount.arctan_count_tenth a b c ha hab hc
  norm_num at h
  exact h

theorem physical_count_mass_10000 (a b c : ℝ) (ha : 0 < a) (hab : a < b) (hc : 0 < c) :
    ∃ sn : State, Trace 1 10000 314 ⟨a, b, 0, -c⟩ sn ∧ Terminal 1 10000 sn ∧
      (∀ {p : ℕ} {sp : State}, Trace 1 10000 p ⟨a, b, 0, -c⟩ sp → Terminal 1 10000 sp → p = 314) := by
  have h := physical_count_of_square_ratio 100 314 (by norm_num)
    CollisionAngleCount.arctan_count_hundredth a b c ha hab hc
  norm_num at h
  exact h

theorem physical_count_mass_1000000 (a b c : ℝ) (ha : 0 < a) (hab : a < b) (hc : 0 < c) :
    ∃ sn : State, Trace 1 1000000 3141 ⟨a, b, 0, -c⟩ sn ∧ Terminal 1 1000000 sn ∧
      (∀ {p : ℕ} {sp : State}, Trace 1 1000000 p ⟨a, b, 0, -c⟩ sp →
        Terminal 1 1000000 sp → p = 3141) := by
  have h := physical_count_of_square_ratio 1000 3141 (by norm_num)
    CollisionAngleCount.arctan_count_thousandth a b c ha hab hc
  norm_num at h
  exact h

theorem physical_count_mass_100000000 (a b c : ℝ) (ha : 0 < a) (hab : a < b) (hc : 0 < c) :
    ∃ sn : State, Trace 1 100000000 31415 ⟨a, b, 0, -c⟩ sn ∧ Terminal 1 100000000 sn ∧
      (∀ {p : ℕ} {sp : State}, Trace 1 100000000 p ⟨a, b, 0, -c⟩ sp →
        Terminal 1 100000000 sp → p = 31415) := by
  have h := physical_count_of_square_ratio 10000 31415 (by norm_num)
    CollisionAngleCount.arctan_count_ten_thousandth a b c ha hab hc
  norm_num at h
  exact h

end GRWTSK.Mechanics.Classical.ElasticCollision.Unfolding
