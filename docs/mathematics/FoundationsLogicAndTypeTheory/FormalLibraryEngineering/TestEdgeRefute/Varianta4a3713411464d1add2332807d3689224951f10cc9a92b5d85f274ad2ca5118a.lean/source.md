# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestEdgeRefute.Varianta4a3713411464d1add2332807d3689224951f10cc9a92b5d85f274ad2ca5118a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87d5446976ebc2c61fc245e394be1262480352d5` · SHA-256 `a4a3713411464d1add2332807d3689224951f10cc9a92b5d85f274ad2ca5118a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert.Tactic.Refute
import LeanCert.Tactic.IntervalAuto

open LeanCert.Core

/-- IntervalRat domain to exercise interval_refute on non-Set.Icc intervals. -/
def I01 : IntervalRat := ⟨0, 1, by norm_num⟩

theorem edge_refute_intervalrat : ∀ x ∈ I01, x * x ≤ (1 : ℚ) := by
  interval_refute
  interval_bound

theorem edge_refute_strict_intervalrat : ∀ x ∈ I01, x * x < (2 : ℚ) := by
  interval_refute
  interval_bound
```
