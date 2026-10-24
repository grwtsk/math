# Complete source: GRWTSK.NumberTheory.Polynomial.Checks.Positive.DerivativeRadicalBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29cb5c298056118e0db4ba4779bcbd21cf3facaa` · SHA-256 `d6cd9261534e006b9937af416016d61716f262fa54834f8ad139c0a818fa8e87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Polynomial.DerivativeRadicalBound

open Polynomial

example {k : Type*} [Field k] [DecidableEq k] {a b c : k[X]}
    (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0)
    (hab : IsCoprime a b) (hsum : a + b + c = 0)
    (hderivative : derivative a ≠ 0) :
    c.natDegree + 1 ≤ (UniqueFactorizationMonoid.radical (a * b * c)).natDegree :=
  (GRWTSK.NumberTheory.Polynomial.degree_bounds_of_derivative_ne_zero
    ha hb hc hab hsum hderivative).2.2
```
