/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PrimeGramQuarticExtraction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.Checks.PrimeGramQuarticExtractionControls

open GRWTSK.RiemannHypothesis

theorem finite_gram_cannot_be_negative
    (stage : FinitePrimePowerGramStage) :
    ¬ stage.value < 0 :=
  not_lt_of_ge stage.nonnegative

theorem negative_one_not_square_sum
    (index : Finset ℕ) (amplitude : ℕ → ℝ) :
    ¬ ((-1 : ℝ) = ∑ k ∈ index, (amplitude k) ^ 2) := by
  intro h
  have hnonneg : 0 ≤ ∑ k ∈ index, (amplitude k) ^ 2 := by
    exact Finset.sum_nonneg fun k _ => Finset.sum_nonneg fun _ _ => sq_nonneg _
  linarith

def explicit_gram_forgets_to_quartic
    {s : ℂ} (data : PrimeGramExtractionAtZero s) :
    QuarticExtractionAtZero s :=
  data.toQuarticExtraction

theorem explicit_gram_closure_is_conditional
    (accepted : PrimeGramExtractionAccepted) :
    _root_.RiemannHypothesis :=
  accepted.toRiemannHypothesis

end GRWTSK.RiemannHypothesis.Checks.PrimeGramQuarticExtractionControls
