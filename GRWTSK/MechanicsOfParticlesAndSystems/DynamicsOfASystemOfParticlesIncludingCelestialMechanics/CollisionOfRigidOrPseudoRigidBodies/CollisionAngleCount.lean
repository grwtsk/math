import Mathlib.Algebra.Order.Floor.Ring
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Arctan
import Mathlib.Tactic.FieldSimp

/-!
# Exact arithmetic for the angular collision-count reduction

Local attribution: grwtsk contributors.

The angular count is the largest integer n with n * θ < π. The strict inequality
matters: at θ = π/4 the answer is three, not four. Establishing that an actual
collision trace has this count is a separate, currently unproved bridge.

Sources: Grant Sanderson, colliding-blocks lessons (2019 and 2025);
G. Galperin, Playing Pool with π (2003), DOI 10.1070/RD2003v008n04ABEH000252.
Compilation/kernel/axiom checks: NOT_RUN. No all-exponents decimal claim.
-/

namespace GRWTSK.Mechanics.Classical.CollisionAngleCount

/-- Arithmetic target of the unfolding argument, including integral endpoints.
This definition does not assert the existence or count of physical impacts. -/
noncomputable def angularCount (θ : ℝ) : ℤ := ⌈Real.pi / θ⌉ - 1

/-- Membership below the angular count is exactly the strict angle inequality. -/
theorem le_angularCount_iff (θ : ℝ) (hθ : 0 < θ) (n : ℤ) :
    n ≤ angularCount θ ↔ (n : ℝ) * θ < Real.pi := by
  rw [angularCount, le_sub_one_iff, Int.lt_ceil, lt_div_iff₀ hθ]

theorem angularCount_bounds (θ : ℝ) (hθ : 0 < θ) :
    (angularCount θ : ℝ) * θ < Real.pi ∧
      Real.pi ≤ ((angularCount θ : ℝ) + 1) * θ := by
  constructor
  · exact (le_angularCount_iff θ hθ _).1 le_rfl
  · have hc := Int.le_ceil (Real.pi / θ)
    have he : ((angularCount θ : ℝ) + 1) = (⌈Real.pi / θ⌉ : ℤ) := by
      simp [angularCount]
    rw [he]
    exact (div_le_iff₀ hθ).1 hc

/-- A candidate integer is the count precisely when it brackets π by two
successive multiples, with the collision endpoint treated strictly. -/
theorem angularCount_eq_iff (θ : ℝ) (hθ : 0 < θ) (n : ℤ) :
    angularCount θ = n ↔
      (n : ℝ) * θ < Real.pi ∧ Real.pi ≤ ((n : ℝ) + 1) * θ := by
  constructor
  · intro hn
    simpa only [hn] using angularCount_bounds θ hθ
  · rintro ⟨hl, hu⟩
    have hl' : (n : ℝ) < Real.pi / θ := (lt_div_iff₀ hθ).2 hl
    have hu' : Real.pi / θ ≤ (n : ℝ) + 1 := (div_le_iff₀ hθ).2 hu
    have hc : ⌈Real.pi / θ⌉ = n + 1 := by
      apply Int.ceil_eq_iff.mpr
      constructor
      · simpa only [Int.cast_add, Int.cast_one, add_sub_cancel_right] using hl'
      · simpa only [Int.cast_add, Int.cast_one] using hu'
    rw [angularCount, hc]
    ring

theorem angularCount_nonnegative (θ : ℝ) (hθ : 0 < θ) :
    0 ≤ angularCount θ := by
  have hc : 0 < ⌈Real.pi / θ⌉ := Int.ceil_pos.mpr (div_pos Real.pi_pos hθ)
  unfold angularCount
  linarith

/-- Unconditional approximation for the angular model: its lower scaled count
misses π by a positive amount at most θ. This is not exact digit agreement. -/
theorem angularCount_error (θ : ℝ) (hθ : 0 < θ) :
    0 < Real.pi - (angularCount θ : ℝ) * θ ∧
      Real.pi - (angularCount θ : ℝ) * θ ≤ θ := by
  obtain ⟨hl, hu⟩ := angularCount_bounds θ hθ
  constructor <;> nlinarith

/-- The equal-mass boundary excludes the fourth, grazing event. -/
theorem angularCount_pi_div_four : angularCount (Real.pi / 4) = 3 := by
  have h : Real.pi / (Real.pi / 4) = 4 := by
    field_simp [Real.pi_ne_zero]
  norm_num [angularCount, h]

/-- Wedge angle for positive light and heavy masses, in that order. -/
noncomputable def massAngle (m M : ℝ) : ℝ := Real.arctan (Real.sqrt (m / M))

theorem massAngle_pos (m M : ℝ) (hm : 0 < m) (hM : 0 < M) :
    0 < massAngle m M := by
  exact Real.arctan_pos.mpr (Real.sqrt_pos.mpr (div_pos hm hM))

theorem massAngle_lt_pi_div_two (m M : ℝ) : massAngle m M < Real.pi / 2 :=
  Real.arctan_lt_pi_div_two _

end GRWTSK.Mechanics.Classical.CollisionAngleCount
