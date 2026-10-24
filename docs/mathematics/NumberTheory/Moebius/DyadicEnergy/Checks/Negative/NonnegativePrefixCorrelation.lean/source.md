# Complete source: GRWTSK.NumberTheory.Moebius.DyadicEnergy.Checks.Negative.NonnegativePrefixCorrelation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1cd1bb919c35225daacc5c44cdb04ce727d8fda` · SHA-256 `ae2bbc554ab2b7e5a89bc3290784276860be118e0681088b6aaa8c312c1b7e17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.NegativePrimeCorrelation
open GRWTSK.RiemannHypothesis.CCC
example : 0 ≤ noteCorrelation (primeNoteCascade (primePrefix 11)) (Real.log 11) (Real.log 12) := by
  linarith [primePrefix_eleven_negative_correlation]
```
