/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorFrontier
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDenseCertificateReduction
import Mathlib.Tactic

/-!
# Finite-cutoff sign decisions at the unchanged arithmetic source

MSC2020: 11M26 (primary), 65G20, 47A10.

Groskin, *A finite Guinand--Weil dictionary and archimedean tail order*
(arXiv:2607.02828v3, Theorem 3.2 and Corollary 3.3), obtains a two-sided
spectral-tail comparison for a particular zeta Galerkin model, subject to
its cutoff and band hypotheses. Rump, *Verification methods: Rigorous
results using floating-point arithmetic* (Acta Numerica 2010, Sections
4--5 and 10), explains why a rigorous enclosure rather than an
unbudgeted floating-point sign is needed.

Only the ORDER-THEORETIC DECISION following a supplied exact enclosure is
proved here. In particular, there is no claim to have formalized Groskin's
Cauchy--Stieltjes matrix identity or its numerical budget, or to have
transported that zeta estimate to Dirichlet characters.

The source-specific consumer is the existing primitiveArithmeticValue,
with the SAME primitive complex character, conductor, gamma parity, signed
prime correlation and support cutoff. It is defined only for the primitive
nonprincipal case. The conductor-one zeta source requires its separate,
pole-inclusive Weil formula, not the formula used in this module.

Even a certified negative value only contradicts primitive Dirichlet GRH
when the original source's nonnegativity UNDER GRH is supplied separately.
The all-window source-to-zero theorem, actual cutoff enclosure, numerical
error evaluation and universal coverage are NOT supplied here. No new axiom,
sorry, admit or RH/GRH assertion is used. Source proof candidate only:
Lean elaboration, fresh kernel replay, transitive axiom audit and independent
analytical review NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.CutoffSourceDecision

open GRWTSK.NumberTheory.WeilDenseCertificateReduction

/-- An exact source value bracketed by a cutoff approximation and its complete
nonnegative error budget. This theorem is about values, not eigenvalues of an
unidentified auxiliary operator. -/
theorem scalar_signs_of_enclosure (cutoff exact budget : ℝ)
    (_hbudget : 0 ≤ budget) (hlower : cutoff ≤ exact)
    (hupper : exact ≤ cutoff + budget) :
    (0 ≤ cutoff → 0 ≤ exact) ∧ (cutoff + budget < 0 → exact < 0) := by
  constructor
  · intro hcutoff
    exact hcutoff.trans hlower
  · intro hgap
    exact lt_of_le_of_lt hupper hgap

/-- A negative cutoff value whose error interval still reaches zero is
undecidable by this interval alone: it admits both negative and nonnegative
exact values. No hidden numerical accuracy assumption resolves this case. -/
theorem negative_band_ambiguous (cutoff budget : ℝ)
    (hnegative : cutoff < 0) (hbudget : 0 ≤ budget)
    (hoverlap : 0 ≤ cutoff + budget) :
    (∃ x : ℝ, cutoff ≤ x ∧ x ≤ cutoff + budget ∧ x < 0) ∧
      (∃ y : ℝ, cutoff ≤ y ∧ y ≤ cutoff + budget ∧ 0 ≤ y) := by
  constructor
  · refine ⟨cutoff, le_refl _, ?_, hnegative⟩
    linarith
  · exact ⟨0, le_of_lt hnegative, hoverlap, le_refl _⟩

/-- A finite cutoff bracket is allowed to speak about the ORIGINAL primitive
nonprincipal Weil arithmetic value only when both inequalities have been
established for that very value. Its complex character phases are not erased.
In particular, this does not supply the bracket from a spectral experiment. -/
theorem primitive_arithmetic_signs_of_enclosure
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    (T : ℝ) (f : ℝ → ℂ) (cutoff budget : ℝ)
    (hbudget : 0 ≤ budget)
    (hlower : cutoff ≤ primitiveArithmeticValue χ hprimitive hnonprincipal T f)
    (hupper : primitiveArithmeticValue χ hprimitive hnonprincipal T f ≤ cutoff + budget) :
    (0 ≤ cutoff → 0 ≤ primitiveArithmeticValue χ hprimitive hnonprincipal T f) ∧
      (cutoff + budget < 0 →
        primitiveArithmeticValue χ hprimitive hnonprincipal T f < 0) := by
  exact scalar_signs_of_enclosure cutoff _ budget hbudget hlower hupper

/-- The negative-certificate consumer retains the exact existing primitive
GRH target (including modulus one) AND the missing arithmetic implication
primitive GRH -> nonnegative original nonprincipal Weil value as an input.
Neither the implication nor the numerical enclosure is assumed unconditionally. -/
theorem not_primitiveGRH_of_source_cutoff
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    (T : ℝ) (f : ℝ → ℂ) (cutoff budget : ℝ)
    (hbudget : 0 ≤ budget)
    (hlower : cutoff ≤ primitiveArithmeticValue χ hprimitive hnonprincipal T f)
    (hupper : primitiveArithmeticValue χ hprimitive hnonprincipal T f ≤ cutoff + budget)
    (hgap : cutoff + budget < 0)
    (hsource : PrimitiveDirichletGRH →
      0 ≤ primitiveArithmeticValue χ hprimitive hnonprincipal T f) :
    ¬ PrimitiveDirichletGRH := by
  intro hGRH
  have hneg := (primitive_arithmetic_signs_of_enclosure χ hprimitive hnonprincipal
    T f cutoff budget hbudget hlower hupper).2 hgap
  exact (not_le_of_gt hneg) (hsource hGRH)

end GRWTSK.NumberTheory.WeilQuadraticForm.CutoffSourceDecision
