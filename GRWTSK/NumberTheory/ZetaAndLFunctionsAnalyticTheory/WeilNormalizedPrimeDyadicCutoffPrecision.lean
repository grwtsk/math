/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilNormalizedPrimeCutoffLimit
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilNormalizedPrimeDyadicCutoffSearch

/-! # Eventual dyadic cutoff search success under strict separation -/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open Filter LowSchur GRWTSK.RealFunctions
open scoped Topology

private theorem dyadicScale_le (n : ℕ) (hn : 1 ≤ n) :
    (2 : ℚ) ^ n.log2 ≤ (n : ℚ) := by
  exact_mod_cast Nat.log2_self_le (show n ≠ 0 by omega)

private theorem naturalDyadicLogEnclosure_correct (n : ℕ) (hn : 1 ≤ n) (k : ℕ) :
    0 ≤ (naturalDyadicLogEnclosure n k).1 ∧
      ((naturalDyadicLogEnclosure n k).1 : ℝ) ≤ Real.log (n : ℝ) ∧
      Real.log (n : ℝ) - ((naturalDyadicLogEnclosure n k).1 : ℝ) ≤
        ((naturalDyadicLogEnclosure n k).2 : ℝ) := by
  simpa only [naturalDyadicLogEnclosure, Rat.cast_natCast] using
    rationalLogDyadicEnclosure_correct (n : ℚ) n.log2 k (dyadicScale_le n hn)

/-- At each fixed positive endpoint the dyadic tail tends to zero. -/
theorem tendsto_naturalDyadicLogEnclosure_error (n : ℕ) (hn : 1 ≤ n) :
    Tendsto (fun k : ℕ => ((naturalDyadicLogEnclosure n k).2 : ℝ)) atTop (𝓝 0) := by
  have hu : 1 ≤ (n : ℚ) / 2 ^ n.log2 :=
    (le_div_iff₀ (by positivity)).2 (by simpa using dyadicScale_le n hn)
  have hb := tendsto_rationalLogEnclosure_error 2 (by norm_num)
  have ht := tendsto_rationalLogEnclosure_error _ hu
  simpa only [naturalDyadicLogEnclosure, rationalLogDyadicEnclosure, Rat.cast_add,
    Rat.cast_mul, Rat.cast_natCast, mul_zero, add_zero] using
    ((tendsto_const_nhds (x := (n.log2 : ℝ))).mul hb).add ht

/-- When the normalized-stage exponential is strictly separated from the
integers, the proved stage limit suffices at all sufficiently large common
cutoff log truncations. This gives existence of precision. -/
theorem eventually_findCheckedDyadicCoprimePrimeRadius_isSome_of_noninteger
    (q j : ℕ) (cs : List ℚ) (kShift kWeight : ℕ → ℕ) {d : ℕ} (hd : 0 < d)
    (hsep : ∀ m : ℕ, Real.exp (2 * ((j : ℝ) + 1)) ≠ (m : ℝ)) :
    ∀ᶠ k : ℕ in atTop,
      (findCheckedDyadicCoprimePrimeRadius q j cs kShift kWeight d (8 ^ (j + 1) - 1) k k).isSome := by
  obtain ⟨N, hN, hlimit, hlo, hhi, _⟩ := exists_normalized_activePrimePowers_cutoff j
  have hN' : 1 ≤ N + 1 := by omega
  have hp : (0 : ℝ) < N := by exact_mod_cast (show 0 < N by omega)
  have hp' : (0 : ℝ) < ((N + 1 : ℕ) : ℝ) := by positivity
  have hl := (Real.log_lt_iff_lt_exp hp).mpr hlo
  have hu := (Real.exp_lt_exp.mp ((lt_of_le_of_ne hhi (hsep (N + 1))).trans_eq
    (Real.exp_log hp').symm))
  have h1 : ∀ᶠ k : ℕ in atTop, ((naturalDyadicLogEnclosure N k).2 : ℝ) <
      2 * ((j : ℝ) + 1) - Real.log (N : ℝ) :=
    (tendsto_order.1 (tendsto_naturalDyadicLogEnclosure_error N hN)).2 _ (sub_pos.mpr hl)
  have h2 : ∀ᶠ k : ℕ in atTop, ((naturalDyadicLogEnclosure (N + 1) k).2 : ℝ) <
      Real.log ((N + 1 : ℕ) : ℝ) - 2 * ((j : ℝ) + 1) :=
    (tendsto_order.1 (tendsto_naturalDyadicLogEnclosure_error (N + 1) hN')).2 _ (sub_pos.mpr hu)
  filter_upwards [h1, h2] with k hk hk'
  obtain ⟨_, hsample, _⟩ := naturalDyadicLogEnclosure_correct N hN k
  obtain ⟨_, _, herr⟩ := naturalDyadicLogEnclosure_correct (N + 1) hN' k
  have hL : (naturalDyadicLogEnclosure N k).1 + (naturalDyadicLogEnclosure N k).2 <
      2 * ((j : ℚ) + 1) := by exact_mod_cast (show
        ((naturalDyadicLogEnclosure N k).1 : ℝ) +
          ((naturalDyadicLogEnclosure N k).2 : ℝ) < 2 * ((j : ℝ) + 1) by linarith)
  have hU : 2 * ((j : ℚ) + 1) ≤ (naturalDyadicLogEnclosure (N + 1) k).1 := by
    exact_mod_cast (show 2 * ((j : ℝ) + 1) ≤
      ((naturalDyadicLogEnclosure (N + 1) k).1 : ℝ) by linarith)
  rw [Option.isSome_iff_ne_none]
  intro hn
  have hnone := (findCheckedDyadicCoprimePrimeRadius_eq_none_iff q j cs kShift kWeight
    d (8 ^ (j + 1) - 1) k k).mp hn N hN (by omega)
  simp only [checkedDyadicCoprimePrimeRadius, hd, hN, hL, hU, and_self, ite_true,
    Option.some_ne_none] at hnone

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
