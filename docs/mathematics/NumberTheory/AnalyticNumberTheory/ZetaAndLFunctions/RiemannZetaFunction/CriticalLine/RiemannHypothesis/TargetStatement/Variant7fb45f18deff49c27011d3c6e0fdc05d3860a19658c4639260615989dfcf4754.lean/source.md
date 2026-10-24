# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TargetStatement.Variant7fb45f18deff49c27011d3c6e0fdc05d3860a19658c4639260615989dfcf4754

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5126051078c849ccd9a8b123c7fa628693c472cb` · SHA-256 `7fb45f18deff49c27011d3c6e0fdc05d3860a19658c4639260615989dfcf4754`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.NumberTheory.LSeries.RiemannZeta

/-!
# Independent statement comparator

This small statement repeats the pinned Mathlib target without importing any
project proof. Definitional comparison must succeed before the reformulation is
accepted. This is a proposition, never a declaration of a proof of RH.
-/

namespace FormalResearch.RiemannHypothesis.Target

/-- Exact quantifiers, trivial-zero exclusions, and pole exclusion of the fixed target. -/
def Statement : Prop :=
  ∀ s : ℂ, riemannZeta s = 0 → (¬ ∃ n : ℕ, s = -2 * (n + 1)) →
    s ≠ 1 → s.re = 1 / 2

/-- A stricter target or an omitted hypothesis cannot pass this definitional comparison. -/
theorem statement_eq_mathlib : Statement = _root_.RiemannHypothesis := rfl

end FormalResearch.RiemannHypothesis.Target
```
