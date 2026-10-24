# Complete source: GRWTSK.Analysis.SpecialFunctions.Checks.Positive.PowerIntervalDrop

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b23fa9920ab2a9f88aa1f4618c2c8c2802acc398` · SHA-256 `f6a3cc90616c09164ecd2ac37d41d4939b02cf48543398b8696b779dbd9d15a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.SpecialFunctions.PowerIntervalDrop

open GRWTSK.Analysis.SpecialFunctions.PowerIntervalDrop

example {x a : ℝ} (hx : 0 < x) (ha : 0 ≤ a) :
    x ^ (-a) - (x + 1) ^ (-a) ≤ a * x ^ (-a - 1) :=
  rpow_sub_rpow_add_one_le hx ha

#print axioms GRWTSK.Analysis.SpecialFunctions.PowerIntervalDrop.rpow_sub_rpow_add_one_le
```
