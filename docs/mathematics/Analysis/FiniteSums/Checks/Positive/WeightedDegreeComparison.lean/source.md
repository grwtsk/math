# Complete source: GRWTSK.Analysis.FiniteSums.Checks.Positive.WeightedDegreeComparison

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c263860e4a0aaa36ec7ffce7a868d86287efaf33` · SHA-256 `074866f76830bb617096cf46d00b73809dd69fd1830ff381cf807fd28ad080cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.FiniteSums.WeightedDegreeComparison

open GRWTSK.Analysis.FiniteSums.WeightedDegreeComparison

example : weighted 2 0 1 = -(1 : ℝ) / 4 := by
  rw [weighted_eq 2 (by decide)]
  norm_num

example : unweighted 2 0 1 = -(1 : ℝ) / 10 := by
  rw [unweighted_eq 2 (by decide)]
  norm_num

example (B : ℝ) : ∃ Q : ℝ, B < Q ∧ -Q / 10 ≤ unweighted 2 0 Q := by
  convert unweighted_no_upper_bound 2 (by decide) B using 1
  norm_num

example (n : ℕ) (hn : 1 < n) (D Q E : ℝ)
    (h : -Q / (2 * (2 * (n : ℝ) + 1)) ≤ weighted n D Q + E) :
    Q ≤ (((n : ℝ) + 1) / 2 * D + E) /
      (((n : ℝ) + 1) / 12 - 1 / (2 * (2 * (n : ℝ) + 1))) :=
  weighted_upper_bound n hn D Q E h
```
