# Complete source: GRWTSK.NumberTheory.Moebius.FiniteEulerProduct.Checks.Negative.MissingDebt

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e09766ed11962506392cb714510b2e8fc0ac17ba` · SHA-256 `f557f6427e8e21b0d922d3fec460f4101ffd4dc2f82d98d1fe42b9d5ee3129b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.FiniteEulerProduct
open scoped BigOperators ArithmeticFunction.Moebius
open GRWTSK.NumberTheory.Moebius
example {R : Type*} [CommRing R] (f : ArithmeticFunction R)
    (hf : f.IsMultiplicative) (N : ℕ) :
    (∏ p ∈ Nat.primesLE N, (1-f p)) =
      ∑ n ∈ Finset.Icc 1 N, (μ n : R) * f n :=
  finite_euler_product_cutoff f hf N
```
