# Complete source: GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace.Checks.Negative.FalseMultiplier

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b3bd97dd46e13c2b4e7ad995acb28f6acdf29a1` · SHA-256 `eee6b3dd6d462f2206bfdd8d614c8724f46e80c85f5f45d5c326ef0de7138263`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace
open GRWTSK.RiemannHypothesis.CCC
example (h : noteWindowLaplace (primeNoteCascade {2}) 1 (Real.log 2) =
    (1-primeLaplaceWeight 2 1)*noteWindowLaplace baseNote 1 (Real.log 2)) : False := by
  exact first_prime_window_not_multiplier h

example : noteWindowLaplace (primeNoteCascade {2}) 1 (Real.log 2) =
    (1-primeLaplaceWeight 2 1)*noteWindowLaplace baseNote 1 (Real.log 2) := by
  exact first_prime_window_not_multiplier
```
