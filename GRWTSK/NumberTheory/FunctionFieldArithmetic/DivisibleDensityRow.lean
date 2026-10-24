/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityMoebius
import Mathlib.Data.Nat.Prime.Infinite

/-!
# Touching-cutoff divisible density rows and prime sharpness

Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI Codex.
These row facts do not refute any completed pickup or energy budget.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions

/-- At the closed cutoff d, the complete divisible row is its touching atom. -/
theorem divisible_density_row_at_cutoff (d : ℕ) (hd : 0 < d) :
    (∑ n ∈ Finset.Icc 1 d, if d ∣ n then densityMobiusCoefficient n / (n : ℝ) else 0) =
      densityMobiusCoefficient d / (d : ℝ) := by
  classical
  rw [Finset.sum_eq_single d]
  · simp
  · intro n hn hnd
    have hnpos : 0 < n := (Finset.mem_Icc.mp hn).1
    have hnot : ¬d ∣ n := by
      intro hdiv
      have hdn := Nat.le_of_dvd hnpos hdiv
      exact hnd (le_antisymm (Finset.mem_Icc.mp hn).2 hdn)
    simp only [hnot, if_false]
  · intro hnot
    exact False.elim (hnot (Finset.mem_Icc.mpr ⟨hd, le_rfl⟩))

theorem prime_divisible_density_row_at_cutoff {p : ℕ} (hp : p.Prime) :
    (∑ n ∈ Finset.Icc 1 p, if p ∣ n then densityMobiusCoefficient n / (n : ℝ) else 0) =
      -(1 / ((p : ℝ) + 1)) := by
  rw [divisible_density_row_at_cutoff p hp.pos, density_mobius_coefficient_prime hp]
  have hp0 : (p : ℝ) ≠ 0 := by exact_mod_cast hp.ne_zero
  field_simp

/-- Even on the actual source, an inverse-square bound cannot hold uniformly
for these rows: prime touching atoms violate every proposed constant. -/
theorem prime_divisible_row_exceeds_inverse_square (C : ℝ) (hC : 0 ≤ C) (B : ℕ) :
    ∃ p : ℕ, B ≤ p ∧ p.Prime ∧
      C / (p : ℝ)^2 <
        |∑ n ∈ Finset.Icc 1 p, if p ∣ n then densityMobiusCoefficient n / (n : ℝ) else 0| := by
  obtain ⟨N, hN⟩ := exists_nat_gt (2 * C + 1)
  obtain ⟨p, hNp, hp⟩ := Nat.exists_infinite_primes (max N B)
  have hlarge : 2 * C + 1 < (p : ℝ) := hN.trans_le (by exact_mod_cast (le_max_left N B).trans hNp)
  have hp0 : (0 : ℝ) < p := by exact_mod_cast hp.pos
  have hp2 : (2 : ℝ) ≤ p := by exact_mod_cast hp.two_le
  have hden : 0 < (p : ℝ) + 1 := by positivity
  have hCsmall : C ≤ (p : ℝ) / 2 := by linarith
  have hprod := mul_le_mul_of_nonneg_right hCsmall hden.le
  have hstrict : (p : ℝ) / 2 * ((p : ℝ) + 1) < (p : ℝ)^2 := by nlinarith
  refine ⟨p, (le_max_right N B).trans hNp, hp, ?_⟩
  rw [prime_divisible_density_row_at_cutoff hp, abs_neg, abs_of_pos (one_div_pos.mpr hden)]
  apply (div_lt_div_iff₀ (sq_pos_of_pos hp0) hden).mpr
  simpa only [one_mul] using hprod.trans_lt hstrict

end GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
