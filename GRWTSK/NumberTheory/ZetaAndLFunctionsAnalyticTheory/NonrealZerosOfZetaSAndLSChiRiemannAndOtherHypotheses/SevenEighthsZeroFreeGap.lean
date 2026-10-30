/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported OpenAI source retains its Apache-2.0 license and upstream attribution. -/
import OAI.NumberTheory.DirichletL.Nonvanishing
import Mathlib.Tactic

/-!
# Explicit real-zero gap from the pinned upstream seven-eighths theorem

This file directly imports an upstream proof, not a new zero-free axiom.
It must be checked separately in openai/math/lean at
7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a (Lean 4.34.1).
No new upstream acceptance, zero-density estimate, Mobius estimate, or RH
conclusion is claimed. The theorem excludes the principal pole explicitly.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.DirichletL.OpenAISevenEighthsGap

/-- Contrapositive of the exact upstream zeta theorem. -/
theorem zeta_zero_re_le {s : ℂ} (hz : riemannZeta s = 0) :
    s.re ≤ (7 / 8 : ℝ) := by
  by_contra h
  exact (OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re (lt_of_not_ge h)) hz

/-- Keep the exact character, modulus, analytic function and pole condition. -/
theorem dirichlet_zero_re_le {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) {s : ℂ}
    (hpole : ¬ (χ = 1 ∧ s = 1)) (hz : DirichletCharacter.LFunction χ s = 0) :
    s.re ≤ (7 / 8 : ℝ) := by
  by_contra h
  exact (OAI.DirichletCharacter.LFunction_ne_zero_of_seven_eighths_lt_re
    χ (lt_of_not_ge h) hpole) hz

/-- The stronger half-plane theorem yields the explicit constant log(3)/8.
No primitive or real-valued-character premise is needed for this consequence;
the zero argument itself is real and the character is nonprincipal. -/
theorem explicit_real_zero_log_gap {q : ℕ} [NeZero q] (hq : 3 ≤ q)
    (χ : DirichletCharacter ℂ q) (hχ : χ ≠ 1) {β : ℝ}
    (hz : DirichletCharacter.LFunction χ (β : ℂ) = 0) :
    Real.log (3 : ℝ) / 8 ≤ (1 - β) * Real.log (q : ℝ) := by
  have hβ : β ≤ (7 / 8 : ℝ) := by
    simpa only [Complex.ofReal_re] using
      dirichlet_zero_re_le χ (fun h => hχ h.1) hz
  have hgap : (1 / 8 : ℝ) ≤ 1 - β := by linarith
  have hlog3 : 0 < Real.log (3 : ℝ) := Real.log_pos (by norm_num)
  have hlog : Real.log (3 : ℝ) ≤ Real.log (q : ℝ) :=
    Real.log_le_log (by norm_num) (by exact_mod_cast hq)
  calc
    Real.log (3 : ℝ) / 8 = (1 / 8 : ℝ) * Real.log (3 : ℝ) := by ring
    _ ≤ (1 / 8 : ℝ) * Real.log (q : ℝ) :=
      mul_le_mul_of_nonneg_left hlog (by norm_num)
    _ ≤ (1 - β) * Real.log (q : ℝ) :=
      mul_le_mul_of_nonneg_right hgap (hlog3.le.trans hlog)

end GRWTSK.NumberTheory.DirichletL.OpenAISevenEighthsGap
