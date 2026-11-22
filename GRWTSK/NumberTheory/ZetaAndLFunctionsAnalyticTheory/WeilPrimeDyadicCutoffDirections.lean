/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimeInventoryDyadicCutoff

/-! # Certified search directions for the native Weil prime cutoff -/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur

open GRWTSK.RealFunctions

/-- A resolved dyadic log comparison at a positive index `n` determines
which side of `n` can contain the native cutoff witness. An unresolved
comparison supplies neither implication's premise. -/
theorem dyadicLogCutoff_directions (T : ℚ) {N n : ℕ}
    (hN : (N : ℝ) < Real.exp (2 * (T : ℝ)))
    (hNext : Real.exp (2 * (T : ℝ)) ≤ ((N + 1 : ℕ) : ℝ))
    (hn : 1 ≤ n) (k : ℕ) :
    let B := naturalDyadicLogEnclosure n k
    (B.1 + B.2 < 2 * T → n ≤ N) ∧ (2 * T ≤ B.1 → N < n) := by
  intro B
  have hscale : (2 : ℚ) ^ n.log2 ≤ (n : ℚ) := by
    exact_mod_cast Nat.log2_self_le (show n ≠ 0 by omega)
  obtain ⟨_, hLo, hErr⟩ := rationalLogDyadicEnclosure_correct (n : ℚ) n.log2 k hscale
  simp only [Rat.cast_natCast] at hLo hErr
  change ((B.1 : ℚ) : ℝ) ≤ Real.log (n : ℝ) at hLo
  change Real.log (n : ℝ) - ((B.1 : ℚ) : ℝ) ≤ (B.2 : ℝ) at hErr
  have hp : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  constructor
  · intro h
    have hR : (B.1 : ℝ) + (B.2 : ℝ) < 2 * (T : ℝ) := by exact_mod_cast h
    have ht : Real.log (n : ℝ) < 2 * (T : ℝ) := by linarith
    have hlt : n < N + 1 := by
      exact_mod_cast ((Real.log_lt_iff_lt_exp hp).mp ht).trans_le hNext
    omega
  · intro h
    have hR : 2 * (T : ℝ) ≤ (B.1 : ℝ) := by exact_mod_cast h
    have ht := (Real.le_log_iff_exp_le hp).mp (hR.trans hLo)
    exact_mod_cast hN.trans_le ht

end GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
