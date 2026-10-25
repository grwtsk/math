# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestEdgeDecideFast.Variant1675160eaf2126e21eee4a8d1a45c06df2fef31fa2e32ef068d881db4034b6cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b6b818f5be71ca61760d1334344cf4098e345c3` · SHA-256 `1675160eaf2126e21eee4a8d1a45c06df2fef31fa2e32ef068d881db4034b6cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert.Tactic.IntervalAuto
import LeanCert.Tactic.DyadicAuto

theorem edge_decide_exp : Real.exp (1:ℝ) ≤ (3 : ℚ) := by
  interval_decide 15

theorem edge_decide_sqrt : Real.sqrt (2:ℝ) ≤ (2 : ℚ) := by
  interval_decide

theorem edge_decide_pi : Real.pi < (4 : ℚ) := by
  interval_decide

theorem edge_decide_sin : Real.sin (1:ℝ) < (1 : ℚ) := by
  interval_decide

theorem edge_fast_bound : ∀ x ∈ Set.Icc (0:ℝ) 1, x * x ≤ (1 : ℚ) := by
  fast_bound

theorem edge_fast_bound_precise : ∀ x ∈ Set.Icc (0:ℝ) 1, Real.sin x ≤ (1 : ℚ) := by
  fast_bound_precise

theorem edge_fast_bound_quick : ∀ x ∈ Set.Icc (0:ℝ) 1, Real.exp x ≤ (3 : ℚ) := by
  fast_bound_quick
```
