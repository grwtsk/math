/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicCharacterUniformBudget
import Mathlib.NumberTheory.DirichletCharacter.Bounds
import Mathlib.Algebra.Ring.GeomSum
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Well-conditioned powers of genuine finite-level character values

Finite power-orbit averaging replaces the unformalized angle argument.
For a nonreal unit-modulus value of period m, the geometric sum of its
squared powers vanishes, so the mean squared imaginary part is exactly 1/2.
Selection preserves the same character and uses a natural power of an
actual unit representative as label multiplier.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No L-function identity, analytic zero supplier or GRH theorem is supplied.
-/
namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicCharacterMultiplierSelection

theorem imaginary_power_average (z : ℂ) (hz : ‖z‖ = 1) (m : ℕ)
    (hperiod : z ^ m = 1) (him : z.im ≠ 0) :
    2 * (∑ r ∈ Finset.range m, (z ^ r).im ^ 2) = (m : ℝ) := by
  have hsq : z ^ 2 ≠ 1 := by
    intro h
    rcases sq_eq_one_iff.mp h with h | h
    · simp [h] at him
    · simp [h] at him
  have hcomm (r : ℕ) : (z ^ 2) ^ r = (z ^ r) ^ 2 := by
    rw [← pow_mul, ← pow_mul, Nat.mul_comm]
  have hperiod2 : (z ^ 2) ^ m = 1 := by
    rw [hcomm, hperiod, one_pow]
  have hgeom : (∑ r ∈ Finset.range m, (z ^ 2) ^ r) = 0 := by
    have h := geom_sum_mul (z ^ 2) m
    rw [hperiod2, sub_self] at h
    exact (mul_eq_zero.mp h).resolve_right (sub_ne_zero.mpr hsq)
  have hid (r : ℕ) : ((z ^ 2) ^ r).re = 1 - 2 * (z ^ r).im ^ 2 := by
    have hn : ‖z ^ r‖ = 1 := by rw [norm_pow, hz, one_pow]
    have hs := Complex.sq_norm_sub_sq_re (z ^ r)
    rw [hn] at hs
    rw [hcomm, pow_two, Complex.mul_re]
    nlinarith
  have hr := congrArg Complex.re hgeom
  simp only [Complex.re_sum, Complex.zero_re] at hr
  simp_rw [hid] at hr
  simp only [Finset.sum_sub_distrib, ← Finset.mul_sum, Finset.sum_const,
    Finset.card_range, nsmul_eq_mul, mul_one] at hr
  linarith

theorem conditioned_power_exists (z : ℂ) (hz : ‖z‖ = 1) (m : ℕ)
    (hm : 0 < m) (hperiod : z ^ m = 1) (him : z.im ≠ 0) :
    ∃ r : ℕ, 0 < r ∧ r < m ∧ |(z ^ r).re| ≤ 1 ∧ 1 / 2 ≤ |(z ^ r).im| := by
  have havg := imaginary_power_average z hz m hperiod him
  have hex : ∃ r ∈ Finset.range m, (1 / 2 : ℝ) ≤ (z ^ r).im ^ 2 := by
    by_contra h
    push_neg at h
    have hlt : (∑ r ∈ Finset.range m, (z ^ r).im ^ 2) <
        ∑ _r ∈ Finset.range m, (1 / 2 : ℝ) :=
      Finset.sum_lt_sum_of_nonempty ⟨0, Finset.mem_range.mpr hm⟩ h
    simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul] at hlt
    linarith
  obtain ⟨r, hr, hs⟩ := hex
  have hrpos : 0 < r := by
    by_contra h
    have hrzero : r = 0 := Nat.eq_zero_of_not_pos h
    simp [hrzero] at hs
  have hn : ‖z ^ r‖ = 1 := by rw [norm_pow, hz, one_pow]
  refine ⟨r, hrpos, Finset.mem_range.mp hr, ?_, ?_⟩
  · simpa only [hn] using Complex.abs_re_le_norm (z ^ r)
  · have ha := abs_nonneg (z ^ r).im
    have he := sq_abs (z ^ r).im
    nlinarith

/-- The selected natural multiplier is a power of the same actual unit residue. -/
theorem genuine_character_multiplier (level : ℕ) [NeZero level]
    (χ : DirichletCharacter ℂ level) (a : (ZMod level)ˣ)
    (ha : (χ (a : ZMod level)).im ≠ 0) :
    ∃ (r : ℕ), 0 < r ∧ r < Fintype.card (ZMod level)ˣ ∧
      |(χ (((a : ZMod level).val ^ r : ℕ) : ZMod level)).re| ≤ 1 ∧
      1 / 2 ≤ |(χ (((a : ZMod level).val ^ r : ℕ) : ZMod level)).im| := by
  have hp : (χ (a : ZMod level)) ^ Fintype.card (ZMod level)ˣ = 1 := by
    rw [← map_pow, ← Units.val_pow_eq_pow_val, pow_card_eq_one, Units.val_one, map_one]
  have h := conditioned_power_exists (χ (a : ZMod level)) (χ.unit_norm_eq_one a)
    (Fintype.card (ZMod level)ˣ) Fintype.card_pos hp ha
  simpa only [Nat.cast_pow, ZMod.natCast_zmod_val, map_pow] using h

/-- Selection precedes the observed labels and both observation errors. -/
theorem selected_multiplier_uniform_budget (level : ℕ) [NeZero level]
    (χ : DirichletCharacter ℂ level) (a : (ZMod level)ˣ)
    (ha : (χ (a : ZMod level)).im ≠ 0) :
    ∃ k : ℕ, |(χ (k : ZMod level)).re| ≤ 1 ∧
      1 / 2 ≤ |(χ (k : ZMod level)).im| ∧
      ∀ (N : ℕ) [NeZero N] (m : ZMod N → ℕ) (i : ZMod N)
        (r₀ rₖ ε₀ εₖ : ℝ), 0 ≤ ε₀ → 0 ≤ εₖ →
        |ArithmeticCyclicCharacterPhase.characterPotential N level χ m i - r₀| ≤ ε₀ →
        |ArithmeticCyclicCharacterPhase.characterPotential N level χ
          (fun j => k * m j) i - rₖ| ≤ εₖ →
        ‖χ (m i : ZMod level) -
          ArithmeticCyclicCharacterPhaseBudget.reconstructedSample level χ k r₀ rₖ‖ ≤
          3 * ε₀ + 2 * εₖ := by
  obtain ⟨r, _, _, hre, him⟩ := genuine_character_multiplier level χ a ha
  refine ⟨(a : ZMod level).val ^ r, hre, him, ?_⟩
  intro N hN m i r₀ rₖ ε₀ εₖ hε₀ hεₖ h₀ hₖ
  exact ArithmeticCyclicCharacterUniformBudget.uniform_complex_error
    N level χ m _ hre him i r₀ rₖ ε₀ εₖ hε₀ hεₖ h₀ hₖ

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicCharacterMultiplierSelection
