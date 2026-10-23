/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect
import GRWTSK.NumberTheory.Zeta.Riemann.WeilPositiveLimitCore
import Mathlib.Tactic

set_option autoImplicit false

/-!
# An exact canonical positivity criterion for the critical-line defect

This module provides a fully local criterion whose target is definitionally Mathlib's
`RiemannHypothesis`: the negative critical-line defect is nonnegative on every
nontrivial zeta zero exactly when every such defect vanishes.

The construction is an exact hostile-control fixture and endpoint adapter.  It is not
the classical Weil test-function form and must not be cited as a proof of the missing
analytic Weil criterion or of a source-faithful arithmetic approximation.
-/

namespace GRWTSK.RiemannHypothesis

/-- Nontrivial zeta zeros with all exclusions retained in the subtype. -/
def CriticalLineTest := {s : ℂ // NontrivialZetaZero s}

/-- A symmetric real-valued form whose diagonal is the negative critical-line defect. -/
noncomputable def criticalLineDefectForm (z w : CriticalLineTest) : ℝ :=
  -(rhDefect z.1 + rhDefect w.1) / 2

/-- The diagonal of the form is exactly the negative defect. -/
theorem criticalLineDefectForm_diagonal (z : CriticalLineTest) :
    criticalLineDefectForm z z = -rhDefect z.1 := by
  unfold criticalLineDefectForm
  ring

/-- Exact equivalence between positivity of the negative-defect diagonal and the
canonical Riemann Hypothesis proposition. -/
theorem criticalLineDefectPositivity_iff_rh :
    (∀ z : CriticalLineTest, 0 ≤ criticalLineDefectForm z z) ↔
      _root_.RiemannHypothesis := by
  rw [riemann_hypothesis_iff_defect_zero]
  constructor
  · intro hpositive s hs
    have hnegativeDefect := hpositive ⟨s, hs⟩
    have hdiagonal := criticalLineDefectForm_diagonal ⟨s, hs⟩
    rw [hdiagonal] at hnegativeDefect
    have hnonnegativeDefect := rh_defect_nonneg s
    linarith
  · intro hzero z
    rw [criticalLineDefectForm_diagonal, hzero z.1 z.2]
    norm_num

/-- The exact criterion packaged for the generic positive-limit endpoint. -/
theorem criticalLineDefectCriterion :
    ExactPositivityCriterion CriticalLineTest criticalLineDefectForm where
  positivity_iff_rh := criticalLineDefectPositivity_iff_rh

/-- Any positive approximation converging to the negative-defect form proves the
canonical RH target.  This theorem makes the strength of such an approximation
supplier explicit rather than hiding it in a convergence record. -/
theorem riemannHypothesis_of_criticalLineDefectPositiveLimit
    (approximation :
      PolarizedPositiveApproximation CriticalLineTest criticalLineDefectForm) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_positiveApproximation approximation criticalLineDefectCriterion

end GRWTSK.RiemannHypothesis
