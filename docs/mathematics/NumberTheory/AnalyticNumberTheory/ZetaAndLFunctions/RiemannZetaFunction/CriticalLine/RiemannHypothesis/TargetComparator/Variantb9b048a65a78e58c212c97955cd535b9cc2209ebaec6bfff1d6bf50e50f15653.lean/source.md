# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TargetComparator.Variantb9b048a65a78e58c212c97955cd535b9cc2209ebaec6bfff1d6bf50e50f15653

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ac3321dee986de54a17433203701de9ac5be360` · SHA-256 `b9b048a65a78e58c212c97955cd535b9cc2209ebaec6bfff1d6bf50e50f15653`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.TargetStatement
import FormalResearch.RiemannHypothesis.Defect

/-!
# Comparison of the proved reformulation with the independent exact statement

This composes an equivalence only; neither side of the equivalence is proved.
-/

namespace FormalResearch.RiemannHypothesis.Target

/-- The defect theorem terminates in the independently fixed Mathlib proposition. -/
theorem statement_iff_defect_zero :
    Statement ↔ ∀ s, NontrivialZetaZero s → rhDefect s = 0 := by
  rw [statement_eq_mathlib]
  exact riemann_hypothesis_iff_defect_zero

end FormalResearch.RiemannHypothesis.Target
```
