/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimeInventoryLogEndpoint
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilNormalizedPrimeCutoffPrecision

/-! # Cutoff separation at the first two normalized Weil stages -/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open Filter LowSchur

private theorem ne_natCast_of_strict_bracket {x : ℝ} {N : ℕ}
    (hl : (N : ℝ) < x) (hu : x < ((N + 1 : ℕ) : ℝ)) (m : ℕ) : x ≠ (m : ℝ) := by
  intro h
  rw [h] at hl hu
  have hlo : N < m := by exact_mod_cast hl
  have hhi : m < N + 1 := by exact_mod_cast hu
  omega

/-- Exact rational certificates discharge the separation premise at stages
zero and one, for every natural number. -/
theorem normalized_cutoff_ne_natCast_of_le_one {j : ℕ} (hj : j ≤ 1) (m : ℕ) :
    Real.exp (2 * ((j : ℝ) + 1)) ≠ (m : ℝ) := by
  interval_cases j
  · obtain ⟨hl, hu⟩ := exp_bracket_strict_of_rational_log_bracket 1 (N := 7)
      (by decide) 12 12 (by decide +kernel) (by decide +kernel)
    norm_num at hl hu ⊢
    exact ne_natCast_of_strict_bracket hl hu m
  · obtain ⟨hl, hu⟩ := exp_bracket_strict_of_rational_log_bracket 2 (N := 54)
      (by decide) 128 128 (by decide +kernel) (by decide +kernel)
    norm_num at hl hu ⊢
    exact ne_natCast_of_strict_bracket hl hu m

/-- At the first two normalized stages, increasing common cutoff precision
eventually succeeds for every code and positive denominator scale. -/
theorem eventually_findCheckedCoprimePrimeRadius_isSome_of_le_one
    (q j : ℕ) (hj : j ≤ 1) (cs : List ℚ) (kShift kWeight : ℕ → ℕ)
    {d : ℕ} (hd : 0 < d) :
    ∀ᶠ k : ℕ in atTop,
      (findCheckedCoprimePrimeRadius q j cs kShift kWeight d (8 ^ (j + 1) - 1) k k).isSome :=
  eventually_findCheckedCoprimePrimeRadius_isSome_of_noninteger q j cs kShift kWeight hd
    (normalized_cutoff_ne_natCast_of_le_one hj)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
