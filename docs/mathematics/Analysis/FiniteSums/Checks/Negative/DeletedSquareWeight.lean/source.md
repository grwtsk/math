# Complete source: GRWTSK.Analysis.FiniteSums.Checks.Negative.DeletedSquareWeight

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c68ba246f6a9cb63b4df609c3b29f0b176fb125c` · SHA-256 `d982996f99f905bcc3211d5d6bca3e9ec8083ab22fb859b777704c1246453f91`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.FiniteSums.WeightedDegreeComparison

open GRWTSK.Analysis.FiniteSums.WeightedDegreeComparison

-- Removing the square weights changes the exact evaluation.
example : weighted 2 0 1 = -(1 : ℝ) / 10 := by
  exact weighted_eq 2 (by decide) 0 1
```
