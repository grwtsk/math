/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.RealFunctions.RationalLogEnclosure
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilLowSchurEnclosure

/-! # Rational certificates for the native strict prime cutoff -/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur

open GRWTSK.RealFunctions

/-- Include the last integer strictly below the cutoff, and allow equality
at the first excluded integer. The source inventory also includes its
zero-weight indices. -/
theorem activePrimePowers_eq_Icc_of_exp_bracket {T : ℝ} {N : ℕ}
    (hlo : (N : ℝ) < Real.exp (2 * T))
    (hhi : Real.exp (2 * T) ≤ ((N + 1 : ℕ) : ℝ)) :
    activePrimePowers T = Finset.Icc 2 N := by
  ext n
  simp only [activePrimePowers, Finset.mem_filter, Finset.mem_range, Nat.lt_ceil, Finset.mem_Icc]
  constructor
  · rintro ⟨hn, h₂, _⟩
    have hlt : n < N + 1 := by exact_mod_cast hn.trans_le hhi
    exact ⟨h₂, by omega⟩
  · rintro ⟨h₂, hn⟩
    have hcast : (n : ℝ) ≤ (N : ℝ) := by exact_mod_cast hn
    exact ⟨hcast.trans_lt hlo, h₂, hcast.trans_lt hlo⟩

/-- A rational upper log bound at the last included integer and a rational
lower log bound at its successor certify the complete finite inventory. -/
theorem activePrimePowers_eq_Icc_of_rational_log_bracket (T : ℚ) {N : ℕ}
    (hN : 1 ≤ N) (k l : ℕ)
    (hlo : (rationalLogEnclosure (N : ℚ) k).1 +
      (rationalLogEnclosure (N : ℚ) k).2 < 2 * T)
    (hhi : 2 * T ≤ (rationalLogEnclosure ((N + 1 : ℕ) : ℚ) l).1) :
    activePrimePowers (T : ℝ) = Finset.Icc 2 N := by
  have hN' : 1 ≤ N + 1 := by omega
  obtain ⟨_, _, hlogUpper⟩ := rationalLogEnclosure_correct (N : ℚ)
    (by exact_mod_cast hN) k
  obtain ⟨_, hlogLower, _⟩ := rationalLogEnclosure_correct ((N + 1 : ℕ) : ℚ)
    (by exact_mod_cast hN') l
  have hNpos : (0 : ℝ) < N := by exact_mod_cast (show 0 < N by omega)
  have hNpos' : (0 : ℝ) < ((N + 1 : ℕ) : ℝ) := by positivity
  apply activePrimePowers_eq_Icc_of_exp_bracket
  · apply (Real.log_lt_iff_lt_exp hNpos).mp
    have hc : (((rationalLogEnclosure (N : ℚ) k).1 : ℚ) : ℝ) +
        ((rationalLogEnclosure (N : ℚ) k).2 : ℝ) < 2 * (T : ℝ) := by exact_mod_cast hlo
    simp only [Rat.cast_natCast] at hlogUpper
    linarith
  · apply (Real.le_log_iff_exp_le hNpos').mp
    have hc : 2 * (T : ℝ) ≤ ((rationalLogEnclosure ((N + 1 : ℕ) : ℚ) l).1 : ℝ) := by
      exact_mod_cast hhi
    simpa only [Rat.cast_natCast] using hc.trans hlogLower

end GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
