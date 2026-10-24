# Complete source: GRWTSK.NumberTheory.Moebius.PrimitiveIdentification.Checks.Negative.OnlyOneCrossOrder

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76d4854e3493610bc54dba6f09a24b1e99b2ac2c` · SHA-256 `20a793b0a93c879973c659df4ad5d791207fecc718ef5b03e7e15f2754b8d2f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.PrimitiveIdentification
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.ProofHorizon.CorkscrewChamberCap

example : (∑ m ∈ ({1, 2} : Finset ℕ), ∑ n ∈ ({1, 2} : Finset ℕ),
    if m ≠ n then moebiusReal m * moebiusReal n else 0) = (-1 : ℝ) := by
  norm_num [moebiusReal, ArithmeticFunction.moebius_apply_prime Nat.prime_two]
```
