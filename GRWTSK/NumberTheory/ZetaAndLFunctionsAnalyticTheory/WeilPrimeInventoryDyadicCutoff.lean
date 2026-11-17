/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.RealFunctions.RationalLogDyadicEnclosure
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimeInventoryLogCutoff

/-! # Native Weil cutoff certificates with dyadic log range reduction -/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur

open GRWTSK.RealFunctions

/-- Choose the dyadic scale for each natural endpoint using its binary logarithm. -/
def naturalDyadicLogEnclosure (n k : ℕ) : ℚ × ℚ :=
  rationalLogDyadicEnclosure (n : ℚ) n.log2 k

/-- A pair of dyadically reduced rational log guards certifies the native
strict-cutoff inventory, including indices with zero weight. -/
theorem activePrimePowers_eq_Icc_of_dyadic_log_bracket (T : ℚ) {N : ℕ}
    (hN : 1 ≤ N) (k l : ℕ)
    (hlo : (naturalDyadicLogEnclosure N k).1 + (naturalDyadicLogEnclosure N k).2 < 2 * T)
    (hhi : 2 * T ≤ (naturalDyadicLogEnclosure (N + 1) l).1) :
    activePrimePowers (T : ℝ) = Finset.Icc 2 N := by
  have hscale (n : ℕ) (hn : 0 < n) : (2 : ℚ) ^ n.log2 ≤ (n : ℚ) := by
    exact_mod_cast Nat.log2_self_le hn.ne'
  obtain ⟨_, _, hL⟩ := rationalLogDyadicEnclosure_correct (N : ℚ) N.log2 k
    (hscale N (by omega))
  obtain ⟨_, hU, _⟩ := rationalLogDyadicEnclosure_correct ((N + 1 : ℕ) : ℚ)
    (N + 1).log2 l (hscale (N + 1) (by omega))
  simp only [Rat.cast_natCast] at hL hU
  change Real.log (N : ℝ) - ((naturalDyadicLogEnclosure N k).1 : ℝ) ≤
    ((naturalDyadicLogEnclosure N k).2 : ℝ) at hL
  change ((naturalDyadicLogEnclosure (N + 1) l).1 : ℝ) ≤ Real.log ((N + 1 : ℕ) : ℝ) at hU
  have hpos : (0 : ℝ) < N := by exact_mod_cast (show 0 < N by omega)
  have hsucc : (0 : ℝ) < ((N + 1 : ℕ) : ℝ) := by positivity
  apply activePrimePowers_eq_Icc_of_exp_bracket
  · apply (Real.log_lt_iff_lt_exp hpos).mp
    have hc : ((naturalDyadicLogEnclosure N k).1 : ℝ) +
        ((naturalDyadicLogEnclosure N k).2 : ℝ) < 2 * (T : ℝ) := by exact_mod_cast hlo
    linarith
  · apply (Real.le_log_iff_exp_le hsucc).mp
    have hc : 2 * (T : ℝ) ≤ ((naturalDyadicLogEnclosure (N + 1) l).1 : ℝ) := by
      exact_mod_cast hhi
    exact hc.trans hU

end GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
