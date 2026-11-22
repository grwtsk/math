/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimeInventoryLogCutoff

/-! # Strictness of the finite rational log cutoff test -/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur

open GRWTSK.RealFunctions

/-- At a rational argument strictly greater than one, the next retained
series term is positive. Hence every finite lower sample is strict. -/
theorem rationalLogEnclosure_lower_lt_log {z : ℚ} (hz : 1 < z) (k : ℕ) :
    ((rationalLogEnclosure z k).1 : ℝ) < Real.log (z : ℝ) := by
  have hstep : (rationalLogEnclosure z k).1 < (rationalLogEnclosure z (k + 1)).1 := by
    dsimp only [rationalLogEnclosure]
    rw [Finset.sum_range_succ]
    have ht : 0 < (z - 1) / (z + 1) :=
      div_pos (sub_pos.mpr hz) (by linarith)
    have hterm : 0 < ((z - 1) / (z + 1)) ^ (2 * k + 1) / (2 * (k : ℚ) + 1) :=
      div_pos (pow_pos ht _) (by positivity)
    linarith
  have hstepR : ((rationalLogEnclosure z k).1 : ℝ) <
      ((rationalLogEnclosure z (k + 1)).1 : ℝ) := by exact_mod_cast hstep
  exact hstepR.trans_le (rationalLogEnclosure_correct z hz.le (k + 1)).2.1

/-- The executable certificate requires a strictly nonintegral cutoff,
even though the source inventory identity itself admits equality at N+1. -/
theorem exp_bracket_strict_of_rational_log_bracket (T : ℚ) {N : ℕ}
    (hN : 1 ≤ N) (k l : ℕ)
    (hlo : (rationalLogEnclosure (N : ℚ) k).1 +
      (rationalLogEnclosure (N : ℚ) k).2 < 2 * T)
    (hhi : 2 * T ≤ (rationalLogEnclosure ((N + 1 : ℕ) : ℚ) l).1) :
    (N : ℝ) < Real.exp (2 * (T : ℝ)) ∧
      Real.exp (2 * (T : ℝ)) < ((N + 1 : ℕ) : ℝ) := by
  obtain ⟨_, _, he⟩ := rationalLogEnclosure_correct (N : ℚ) (by exact_mod_cast hN) k
  have hpos : (0 : ℝ) < N := by exact_mod_cast (show 0 < N by omega)
  have hpos' : (0 : ℝ) < ((N + 1 : ℕ) : ℝ) := by positivity
  have hN' : 1 < N + 1 := by omega
  have hstrict := rationalLogEnclosure_lower_lt_log
    (z := ((N + 1 : ℕ) : ℚ)) (by exact_mod_cast hN') l
  simp only [Rat.cast_natCast] at he hstrict
  constructor
  · apply (Real.log_lt_iff_lt_exp hpos).mp
    have hcast : ((rationalLogEnclosure (N : ℚ) k).1 : ℝ) +
        ((rationalLogEnclosure (N : ℚ) k).2 : ℝ) < 2 * (T : ℝ) := by exact_mod_cast hlo
    linarith
  · have hcast : 2 * (T : ℝ) ≤ ((rationalLogEnclosure ((N + 1 : ℕ) : ℚ) l).1 : ℝ) := by
      exact_mod_cast hhi
    exact (Real.exp_lt_exp.mpr (hcast.trans_lt hstrict)).trans_eq (Real.exp_log hpos')

end GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
