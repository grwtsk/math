/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilNormalizedPrimeCutoffLimit
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilNormalizedPrimeCutoffSearch

/-! # Eventual cutoff search success under strict separation -/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open Filter LowSchur GRWTSK.RealFunctions
open scoped Topology

/-- When the normalized-stage exponential is strictly separated from the
integers, the proved stage limit suffices at all sufficiently large common
cutoff log truncations. This gives existence of precision. -/
theorem eventually_findCheckedCoprimePrimeRadius_isSome_of_noninteger
    (q j : ℕ) (cs : List ℚ) (kShift kWeight : ℕ → ℕ) {d : ℕ} (hd : 0 < d)
    (hsep : ∀ m : ℕ, Real.exp (2 * ((j : ℝ) + 1)) ≠ (m : ℝ)) :
    ∀ᶠ k : ℕ in atTop,
      (findCheckedCoprimePrimeRadius q j cs kShift kWeight d (8 ^ (j + 1) - 1) k k).isSome := by
  obtain ⟨N, hN, hlimit, hlo, hhi, _⟩ := exists_normalized_activePrimePowers_cutoff j
  have hN' : 1 ≤ N + 1 := by omega
  have hp : (0 : ℝ) < N := by exact_mod_cast (show 0 < N by omega)
  have hp' : (0 : ℝ) < ((N + 1 : ℕ) : ℝ) := by positivity
  have hl := (Real.log_lt_iff_lt_exp hp).mpr hlo
  have hu := (Real.exp_lt_exp.mp ((lt_of_le_of_ne hhi (hsep (N + 1))).trans_eq
    (Real.exp_log hp').symm))
  have h1 : ∀ᶠ k : ℕ in atTop, ((rationalLogEnclosure (N : ℚ) k).2 : ℝ) <
      2 * ((j : ℝ) + 1) - Real.log (N : ℝ) :=
    (tendsto_order.1 (tendsto_rationalLogEnclosure_error _
      (by exact_mod_cast hN))).2 _ (sub_pos.mpr hl)
  have h2 : ∀ᶠ k : ℕ in atTop, ((rationalLogEnclosure ((N + 1 : ℕ) : ℚ) k).2 : ℝ) <
      Real.log ((N + 1 : ℕ) : ℝ) - 2 * ((j : ℝ) + 1) :=
    (tendsto_order.1 (tendsto_rationalLogEnclosure_error _
      (by exact_mod_cast hN'))).2 _ (sub_pos.mpr hu)
  filter_upwards [h1, h2] with k hk hk'
  obtain ⟨_, hsample, _⟩ := rationalLogEnclosure_correct (N : ℚ) (by exact_mod_cast hN) k
  obtain ⟨_, _, herr⟩ := rationalLogEnclosure_correct ((N + 1 : ℕ) : ℚ)
    (by exact_mod_cast hN') k
  simp only [Rat.cast_natCast] at hsample herr
  have hL : (rationalLogEnclosure (N : ℚ) k).1 + (rationalLogEnclosure (N : ℚ) k).2 <
      2 * ((j : ℚ) + 1) := by exact_mod_cast (show
        ((rationalLogEnclosure (N : ℚ) k).1 : ℝ) +
          ((rationalLogEnclosure (N : ℚ) k).2 : ℝ) < 2 * ((j : ℝ) + 1) by linarith)
  have hU : 2 * ((j : ℚ) + 1) ≤ (rationalLogEnclosure ((N + 1 : ℕ) : ℚ) k).1 := by
    exact_mod_cast (show 2 * ((j : ℝ) + 1) ≤
      ((rationalLogEnclosure ((N + 1 : ℕ) : ℚ) k).1 : ℝ) by linarith)
  rw [Option.isSome_iff_ne_none]
  intro hn
  have hnone := (findCheckedCoprimePrimeRadius_eq_none_iff q j cs kShift kWeight
    d (8 ^ (j + 1) - 1) k k).mp hn N hN (by omega)
  simp only [checkedCoprimePrimeRadius, hd, hN, hL, hU, and_self, ite_true,
    Option.some_ne_none] at hnone

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
