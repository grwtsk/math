# Complete source: GRWTSK.NumberTheory.LSeries.Checks.Negative.DyadicMissingCoverage

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48dee882feaca1318f8899afc8027ab5b57c9520` · SHA-256 `f9f98dfdbbac48fac2e3a696c65c7af0f1daefdc2d344fb6a5b7534d457b11c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intentional missing-coverage control. Apache-2.0. -/
import GRWTSK.NumberTheory.LSeries.Checks.Positive.GaussianDyadic
open GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus

-- Intended rejection: positivity does not supply the Nat-dyadic coverage bound.
example : HasSum (fun j : ℕ => dyadicAnnulus ((1/4:ℝ)/(2:ℝ)^j)) 1 :=
  dyadicAnnulus_partition (1/4) (by norm_num : (0:ℝ) < 1/4)
```
