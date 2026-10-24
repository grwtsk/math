# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PrimeGramQuarticExtractionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0de874c7d54dcd44cedb9666b724111a483858c5` · SHA-256 `37d1a305b2feea927a1d368aa37fc3ff9a0496a37feb10a7e92602868f8bd828`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
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
```
