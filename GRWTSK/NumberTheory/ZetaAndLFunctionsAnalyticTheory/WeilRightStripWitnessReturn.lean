/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletCompletedZeroReflection
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDirichletStageChain
import Mathlib.NumberTheory.LSeries.Nonvanishing

/-!
# Right-half witnesses for the primitive Weil stage return

At a zero in the left half of the open strip, the nonzero gamma factor
transports to the completed source. Its functional equation sends that zero
to `1 - s` for the inverse character, and the nonzero gamma factor there
returns to the ordinary L-function. The inverse has the same conductor
and is still primitive and nonprincipal. A right-half negative witness for
this inverse character contradicts the stage lower bounds for that same
character. The right-half case uses the original character directly.

The source reflection is `completed_zero_at_reflected_inverse`
(`29c9bd8fbe686c90dbffe945a44b9db738bfe45a`). The root-number argument
uses the functional equation at `-1` and ordinary L-function nonvanishing
at `2`.
The stage consumer is `primitive_nonneg_of_small_stages`
(`2ceec84246b42efec174f734eb31685d809746a5`).

For a complex non-real character the map `s ↦ 1 - s` changes the character.
The argument assumes stages across all primitive nonprincipal characters
and never transfers the sign of an arithmetic test from one character to
another. It leaves right-half witness construction, the stage bounds, and
the conductor-one RH input as hypotheses.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open GRWTSK.NumberTheory.Conditional
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletCompletedZeroReflection

private theorem rootNumber_ne_zero {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1) :
    DirichletCharacter.rootNumber χ ≠ 0 := by
  intro hz
  have hcomp : χ.completedLFunction 2 = 0 := by
    simpa only [show (1 - (-1) : ℂ) = 2 by norm_num, hz, mul_zero, zero_mul]
      using hp.completedLFunction_one_sub (-1 : ℂ)
  have hL : χ.LFunction 2 = 0 := by
    rw [χ.LFunction_eq_completed_div_gammaFactor 2 (.inl (by norm_num)), hcomp, zero_div]
  exact χ.LFunction_ne_zero_of_one_le_re (.inl hn) (by norm_num) hL

/-- The genuine negative arithmetic test is requested only for right-half zeros. -/
def PrimitiveRightStripNegativeWitness : Prop :=
  ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (s : ℂ),
    1 / 2 < s.re → s.re < 1 → χ.LFunction s = 0 →
      ∃ (T : ℝ) (f : ℝ → ℝ), Admissible χ T f ∧
        primitiveArithmeticValue χ hp hn T (liftReal f) < 0

/-- The functional equation reduces the nonprincipal witness domain in the
existing Weil return to the right half of the open critical strip. -/
theorem dirichletGRH_of_rh_and_rightStrip_witness
    (hRH : _root_.RiemannHypothesis)
    (hwitness : PrimitiveRightStripNegativeWitness)
    (hsmall : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
      (hp : χ.IsPrimitive) (hn : χ ≠ 1), SmallConductorStages χ hp hn) :
    DirichletGRH := by
  have noRight (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
      (hp : χ.IsPrimitive) (hn : χ ≠ 1) (s : ℂ)
      (hhalf : 1 / 2 < s.re) (hone : s.re < 1) : χ.LFunction s ≠ 0 := by
    intro hz
    obtain ⟨T, f, hf, hneg⟩ := hwitness q χ hp hn s hhalf hone hz
    exact (not_lt_of_ge (primitive_nonneg_of_small_stages χ hp hn (hsmall q χ hp hn) hf)) hneg
  apply PrimitiveDirichletReturn.dirichletGRH_of_rh_and_primitive_nonprincipal hRH
  intro q hq χ hp hn s hs0 hs1 hz
  apply le_antisymm
  · exact le_of_not_gt fun hs => noRight q χ hp hn s hs hs1 hz
  · apply le_of_not_gt
    intro hs
    have hre : (1 - s).re = 1 - s.re := by rw [Complex.sub_re, Complex.one_re]
    have hsne : s ≠ 0 := by
      intro h
      simp [h] at hs0
    have hwne : 1 - s ≠ (0 : ℂ) := by
      intro h
      rw [h, Complex.zero_re] at hre
      linarith
    have hpInv : (χ⁻¹).IsPrimitive := by
      simpa only [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv] using hp
    have hnInv : χ⁻¹ ≠ 1 := by simpa only [ne_eq, inv_eq_one] using hn
    have hpower : (q : ℂ) ^ ((1 - s) - 1 / 2) ≠ 0 :=
      Complex.cpow_ne_zero_iff.mpr (.inl (by exact_mod_cast (NeZero.ne q)))
    have hgamma : DirichletCharacter.gammaFactor χ s ≠ 0 := by
      classical
      unfold DirichletCharacter.gammaFactor
      split_ifs
      · exact Complex.Gammaℝ_ne_zero_of_re_pos hs0
      · exact Complex.Gammaℝ_ne_zero_of_re_pos (by simp only [Complex.add_re, Complex.one_re]; linarith)
    rw [χ.LFunction_eq_completed_div_gammaFactor s (.inl hsne)] at hz
    have hcomp := (div_eq_zero_iff.mp hz).resolve_right hgamma
    have hreflected := completed_zero_at_reflected_inverse χ hp s
      (mul_ne_zero hpower (rootNumber_ne_zero χ hp hn)) hcomp
    have hinv : (χ⁻¹).LFunction (1 - s) = 0 := by
      rw [(χ⁻¹).LFunction_eq_completed_div_gammaFactor (1 - s) (.inl hwne), hreflected, zero_div]
    exact noRight q χ⁻¹ hpInv hnInv (1 - s) (by linarith) (by linarith) hinv

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
