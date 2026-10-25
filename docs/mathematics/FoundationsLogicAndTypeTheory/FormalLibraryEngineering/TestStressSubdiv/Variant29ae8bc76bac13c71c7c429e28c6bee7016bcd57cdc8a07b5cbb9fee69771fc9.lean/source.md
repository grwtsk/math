# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestStressSubdiv.Variant29ae8bc76bac13c71c7c429e28c6bee7016bcd57cdc8a07b5cbb9fee69771fc9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e69d8804a53db64105b38f45a53cad10f5272e00` · SHA-256 `29ae8bc76bac13c71c7c429e28c6bee7016bcd57cdc8a07b5cbb9fee69771fc9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert.Tactic.IntervalAuto

open Set

-- Subdivision-heavy stress tests.
example : ∀ x ∈ Icc (0 : ℝ) 1, Real.sin x ≤ 1 := by
  interval_bound_subdiv 20 4

example : ∀ x ∈ Icc (0 : ℝ) 1, Real.exp x ≤ 3 := by
  interval_bound_subdiv 20 4

example : ∀ x ∈ Icc (-1 : ℝ) 1, (-1 : ℝ) ≤ Real.cos x := by
  interval_bound_subdiv 20 4

example : ∀ x ∈ Icc (0 : ℝ) 1, Real.exp (x - x ^ 2) ≤ 3 := by
  interval_bound_subdiv 20 4
```
