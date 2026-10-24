# Complete source: GRWTSK.NumberTheory.Moebius.FiniteEulerProduct.Checks.Negative.OpenCutoff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `485755d3165a3e292120f4bec34d2bc0a53bdeea` · SHA-256 `7bf45809e88e44aacf618e99f968db8a34e7863f6f8bd05b08d42eea697a16d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.FiniteEulerProduct
open scoped BigOperators ArithmeticFunction.Moebius
open GRWTSK.NumberTheory.Moebius
example {R : Type*} [CommRing R] (f : ArithmeticFunction R)
    (hf : f.IsMultiplicative) (N : ℕ) :
    (∏ p ∈ Nat.primesLE N, (1-f p)) =
      (∑ n ∈ Finset.Icc 1 N, (μ n : R) * f n) +
      ∑ S ∈ (Nat.primesLE N).powerset.filter (fun S => N ≤ ∏ p ∈ S, p),
        (μ (∏ p ∈ S, p) : R) * f (∏ p ∈ S, p) :=
  finite_euler_product_cutoff f hf N
```
