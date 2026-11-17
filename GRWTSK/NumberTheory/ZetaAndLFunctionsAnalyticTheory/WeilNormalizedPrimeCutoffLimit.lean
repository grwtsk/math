/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimeInventoryLogCutoff
import Mathlib.Analysis.Complex.ExponentialBounds

/-! # A stage-dependent bound for the native Weil prime cutoff search -/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur

/-- The last integer strictly below the exponential cutoff lies below
`8^(j+1)` at every normalized-code stage, including integral cutoffs.
This bounds the search range independently of the log truncation settings. -/
theorem exists_normalized_activePrimePowers_cutoff (j : ℕ) :
    ∃ N : ℕ, 1 ≤ N ∧ N < 8 ^ (j + 1) ∧
      (N : ℝ) < Real.exp (2 * ((j : ℝ) + 1)) ∧
      Real.exp (2 * ((j : ℝ) + 1)) ≤ ((N + 1 : ℕ) : ℝ) ∧
      activePrimePowers ((j : ℝ) + 1) = Finset.Icc 2 N := by
  let x := Real.exp (2 * ((j : ℝ) + 1))
  have hxlo : 2 < x :=
    Real.exp_one_gt_two.trans_le (Real.exp_le_exp.mpr (by linarith [(show (0 : ℝ) ≤ j by positivity)] : 1 ≤ 2 * ((j : ℝ) + 1)))
  have he2 : Real.exp 2 < 8 := by
    rw [show (2 : ℝ) = 1 + 1 by norm_num, Real.exp_add]
    nlinarith [Real.exp_one_lt_d9, Real.exp_pos 1]
  have hxhi : x < ((8 ^ (j + 1) : ℕ) : ℝ) := by
    dsimp only [x]
    rw [show 2 * ((j : ℝ) + 1) = ((j + 1 : ℕ) : ℝ) * 2 by push_cast; ring,
      Real.exp_nat_mul]
    push_cast
    exact pow_lt_pow_left₀ he2 (Real.exp_pos 2).le (by omega)
  let N := Nat.ceil x - 1
  have hc : 2 < Nat.ceil x := Nat.lt_ceil.mpr (by simpa using hxlo)
  have hnext : N + 1 = Nat.ceil x := by dsimp only [N]; omega
  have hl : (N : ℝ) < x := Nat.lt_ceil.mp (by dsimp only [N]; omega)
  have hu : x ≤ ((N + 1 : ℕ) : ℝ) := hnext ▸ Nat.le_ceil x
  have hN : N < 8 ^ (j + 1) := by exact_mod_cast hl.trans hxhi
  exact ⟨N, by dsimp only [N]; omega, hN, hl, hu, activePrimePowers_eq_Icc_of_exp_bracket hl hu⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
