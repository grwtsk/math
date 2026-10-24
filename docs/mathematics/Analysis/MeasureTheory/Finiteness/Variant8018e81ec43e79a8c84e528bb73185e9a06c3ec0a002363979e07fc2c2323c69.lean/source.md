# Complete source: GRWTSK.Analysis.MeasureTheory.Finiteness.Variant8018e81ec43e79a8c84e528bb73185e9a06c3ec0a002363979e07fc2c2323c69

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19d2eadb962a735f932a1688753f85b64ae0cc0f` · SHA-256 `8018e81ec43e79a8c84e528bb73185e9a06c3ec0a002363979e07fc2c2323c69`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.ENNReal.Real
import Mathlib.MeasureTheory.Measure.Typeclasses.Finite
import Mathlib.Tactic.Finiteness

open MeasureTheory
open scoped ENNReal

example : (1 : ℝ≥0∞) < ∞ := by finiteness
example : (3 : ℝ≥0∞) ≠ ∞ := by finiteness

example (a : ℝ) (b : ℕ) : ENNReal.ofReal a + b < ∞ := by finiteness

example {a : ℝ≥0∞} (ha : a ≠ ∞) : a + 3 < ∞ := by finiteness
example {a : ℝ≥0∞} (ha : a < ∞) : a + 3 < ∞ := by finiteness
/--
Test that `finiteness_nonterminal` makes progress but does not fail on not
closing the goal.
-/
example {a : ℝ≥0∞} (ha : a = 0) : a + 3 < ∞ := by finiteness_nonterminal; simp [ha]

example (a : ℝ) : (ENNReal.ofReal (1 + a ^ 2))⁻¹ < ∞ := by finiteness

example {α : Type*} (f : α → ℕ) : ∀ i, (f i : ℝ≥0∞) ≠ ∞ := by finiteness

example {_ : MeasurableSpace α} (μ : Measure α) [IsFiniteMeasure μ] (s : Set α) : μ s ≠ ∞ := by
  finiteness
```
