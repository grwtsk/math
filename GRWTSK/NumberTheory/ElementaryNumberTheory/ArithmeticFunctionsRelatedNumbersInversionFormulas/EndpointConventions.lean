/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

/-! # Strict and half-jump Chebyshev observables

These are arithmetic endpoint conventions, not an unsmoothed explicit formula.
The strict sum retains precisely the positive natural indices below the real
endpoint. The half-jump convention averages it with Mathlib's inclusive psi.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.Chebyshev.EndpointConventions

noncomputable def psiStrict (x : ℝ) : ℝ :=
  ∑ n ∈ (Finset.Ioc 0 ⌊x⌋₊).filter (fun n : ℕ => (n : ℝ) < x),
    ArithmeticFunction.vonMangoldt n

noncomputable def psiHalf (x : ℝ) : ℝ :=
  (psiStrict x + _root_.Chebyshev.psi x) / 2

theorem psiStrict_nat (N : ℕ) :
    psiStrict (N : ℝ) =
      ∑ n ∈ Finset.range N, ArithmeticFunction.vonMangoldt n := by
  unfold psiStrict
  simp only [Nat.floor_natCast]
  apply Finset.sum_subset
  · intro n hn
    have h := (Finset.mem_filter.mp hn).2
    exact Finset.mem_range.mpr (by exact_mod_cast h)
  · intro n hn hnot
    have hlt := Finset.mem_range.mp hn
    have hz : n = 0 := by
      by_contra h
      apply hnot
      exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨by omega, by omega⟩,
        by exact_mod_cast hlt⟩
    simp [hz]

theorem psi_nat_eq_strict_add_jump (N : ℕ) :
    _root_.Chebyshev.psi (N : ℝ) =
      psiStrict (N : ℝ) + ArithmeticFunction.vonMangoldt N := by
  rw [psiStrict_nat, _root_.Chebyshev.psi_eq_sum_Icc]
  simp only [Nat.floor_natCast, ← Nat.range_succ_eq_Icc_zero, Finset.sum_range_succ]

theorem psiHalf_nat (N : ℕ) :
    psiHalf (N : ℝ) = _root_.Chebyshev.psi (N : ℝ) -
      ArithmeticFunction.vonMangoldt N / 2 := by
  unfold psiHalf
  linarith [psi_nat_eq_strict_add_jump N]

theorem psiStrict_eq_psi_of_not_integer {x : ℝ} (hx : 0 ≤ x)
    (hendpoint : (⌊x⌋₊ : ℝ) ≠ x) :
    psiStrict x = _root_.Chebyshev.psi x := by
  unfold psiStrict _root_.Chebyshev.psi
  congr 1
  apply Finset.filter_true_of_mem
  intro n hn
  have hnle : (n : ℝ) ≤ (⌊x⌋₊ : ℝ) := by
    exact_mod_cast (Finset.mem_Ioc.mp hn).2
  exact hnle.trans_lt (lt_of_le_of_ne (Nat.floor_le hx) hendpoint)

theorem psiHalf_eq_psi_of_not_integer {x : ℝ} (hx : 0 ≤ x)
    (hendpoint : (⌊x⌋₊ : ℝ) ≠ x) :
    psiHalf x = _root_.Chebyshev.psi x := by
  rw [psiHalf, psiStrict_eq_psi_of_not_integer hx hendpoint]
  ring

theorem psiStrict_eq_inclusive_sub_jump (x : ℝ) :
    psiStrict x = _root_.Chebyshev.psi x -
      (if (⌊x⌋₊ : ℝ) = x then ArithmeticFunction.vonMangoldt ⌊x⌋₊ else 0) := by
  by_cases h : (⌊x⌋₊ : ℝ) = x
  · rw [if_pos h]
    have hn := psi_nat_eq_strict_add_jump ⌊x⌋₊
    rw [h] at hn
    linarith
  · rw [if_neg h, sub_zero]
    by_cases hx : 0 ≤ x
    · exact psiStrict_eq_psi_of_not_integer hx h
    · have hf : ⌊x⌋₊ = 0 := Nat.floor_eq_zero.mpr (by linarith)
      simp [psiStrict, _root_.Chebyshev.psi, hf]

theorem psiHalf_eq_inclusive_sub_half_jump (x : ℝ) :
    psiHalf x = _root_.Chebyshev.psi x -
      (if (⌊x⌋₊ : ℝ) = x then ArithmeticFunction.vonMangoldt ⌊x⌋₊ else 0) / 2 := by
  unfold psiHalf
  linarith [psiStrict_eq_inclusive_sub_jump x]

theorem prime_power_jump {p k : ℕ} (hp : p.Prime) (hk : k ≠ 0) :
    _root_.Chebyshev.psi ((p ^ k : ℕ) : ℝ) - psiStrict ((p ^ k : ℕ) : ℝ) =
      Real.log p := by
  rw [psi_nat_eq_strict_add_jump, ArithmeticFunction.vonMangoldt_apply_pow hk,
    ArithmeticFunction.vonMangoldt_apply_prime hp]
  ring

theorem no_jump_of_not_prime_power {N : ℕ} (hN : ¬ IsPrimePow N) :
    psiStrict (N : ℝ) = _root_.Chebyshev.psi (N : ℝ) := by
  rw [psi_nat_eq_strict_add_jump,
    ArithmeticFunction.vonMangoldt_eq_zero_iff.mpr hN, add_zero]

theorem prime_power_half_jump {p k : ℕ} (hp : p.Prime) (hk : k ≠ 0) :
    _root_.Chebyshev.psi ((p ^ k : ℕ) : ℝ) - psiHalf ((p ^ k : ℕ) : ℝ) =
      Real.log p / 2 := by
  rw [psiHalf_nat, ArithmeticFunction.vonMangoldt_apply_pow hk,
    ArithmeticFunction.vonMangoldt_apply_prime hp]
  ring

/-- Omitting the half jump already changes the exact observable at 4. -/
theorem psiHalf_four_ne_inclusive : psiHalf 4 ≠ _root_.Chebyshev.psi 4 := by
  have h := prime_power_half_jump (p := 2) (k := 2) (by norm_num) (by norm_num)
  have hp : 0 < Real.log 2 := Real.log_pos (by norm_num)
  norm_num at h
  intro heq
  rw [heq, sub_self] at h
  linarith

theorem psiStrict_two : psiStrict 2 = 0 := by
  rw [show (2 : ℝ) = ((2 : ℕ) : ℝ) from rfl, psiStrict_nat]
  norm_num [Finset.sum_range_succ]

theorem psiHalf_two : psiHalf 2 = Real.log 2 / 2 := by
  unfold psiHalf
  rw [show (2 : ℝ) = ((2 : ℕ) : ℝ) from rfl,
    psi_nat_eq_strict_add_jump]
  norm_num only [Nat.cast_ofNat]
  rw [psiStrict_two,
    ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 2)]
  simp

/-- Exact prime-power expansion with endpoint averaging retained.
Here Nat.log counts positive exponents through the inclusive endpoint. -/
theorem psiHalf_nat_eq_prime_power_sum (N : ℕ) :
    psiHalf (N : ℝ) =
      (∑ p ∈ Nat.primesLE N, (Nat.log p N : ℝ) * Real.log p) -
        ArithmeticFunction.vonMangoldt N / 2 := by
  rw [psiHalf_nat, _root_.Chebyshev.psi_eq_sum_mul_log_prime]

theorem psiStrict_mono : Monotone psiStrict := by
  intro x y hxy
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro n hn
    obtain ⟨hn, hnx⟩ := Finset.mem_filter.mp hn
    exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr
      ⟨(Finset.mem_Ioc.mp hn).1,
        (Finset.mem_Ioc.mp hn).2.trans (Nat.floor_mono hxy)⟩,
      hnx.trans_le hxy⟩
  · intro n _ _
    exact ArithmeticFunction.vonMangoldt_nonneg

theorem psiHalf_mono : Monotone psiHalf := by
  intro x y hxy
  have hs := psiStrict_mono hxy
  have hi := _root_.Chebyshev.psi_mono hxy
  unfold psiHalf
  linarith

theorem strict_le_half_le_inclusive (x : ℝ) :
    psiStrict x ≤ psiHalf x ∧ psiHalf x ≤ _root_.Chebyshev.psi x := by
  have h : psiStrict x ≤ _root_.Chebyshev.psi x := by
    unfold psiStrict _root_.Chebyshev.psi
    apply Finset.sum_le_sum_of_subset_of_nonneg (Finset.filter_subset _ _)
    intro n _ _
    exact ArithmeticFunction.vonMangoldt_nonneg
  unfold psiHalf
  constructor <;> linarith

end GRWTSK.NumberTheory.Chebyshev.EndpointConventions
