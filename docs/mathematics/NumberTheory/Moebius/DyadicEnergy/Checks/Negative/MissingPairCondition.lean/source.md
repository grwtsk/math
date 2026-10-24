# Complete source: GRWTSK.NumberTheory.Moebius.DyadicEnergy.Checks.Negative.MissingPairCondition

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04d7f3b257280d935c5a7ce387f4305a6976afcd` · SHA-256 `8b98522a4486cdb5a05c4e1231b9d3139dddfc0f80cd7fc3643357fdb32e874a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.PrimeBlockEnergy
open GRWTSK.RiemannHypothesis.CCC
example {P B : Finset ℕ} (hP : ∀ p ∈ P, p.Prime) (hB : ∀ p ∈ B, p.Prime)
    (hd : Disjoint P B) {T u : ℝ} (huT : u ≤ T) :
    primeNoteCascade (P ∪ B) u = primeNoteCascade P u-primeBlockEcho P B u := by
  exact cascade_union_eq_sub_echo hP hB hd huT
```
