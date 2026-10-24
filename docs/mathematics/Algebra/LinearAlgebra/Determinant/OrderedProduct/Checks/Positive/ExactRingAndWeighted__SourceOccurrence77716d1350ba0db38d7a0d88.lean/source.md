# Complete source: GRWTSK.Algebra.LinearAlgebra.Determinant.OrderedProduct.Checks.Positive.ExactRingAndWeighted

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d047b5fa57c50adbb893423d62f330b0ace02bca` · SHA-256 `0178aafdb22905478cfa2434fc9eb1145ce80cb463d573eb880f5d91aae2fb9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.OrderedProductDeterminant
open GRWTSK.LinearAlgebra.OrderedProductDeterminant GRWTSK.Algebra GRWTSK.LinearAlgebra.JacobiTransfer

example (A : ℕ → Matrix (Fin 2) (Fin 2) ℤ)
    (hdet : ∀ n, (A n).det = 1) (n k : ℕ) :
    (orderedProduct A n k).det = 1 := det_orderedProduct_eq_one A hdet n k
example {K : Type} [Field K] (E : K) (a b : ℕ → K)
    (ha : ∀ n, a n ≠ 0) (n k : ℕ) :
    (orderedProduct (fun i => weightedJacobiTransfer E (b i) (a i)) n k).det = 1 :=
  det_weightedJacobi_orderedProduct E a b ha n k
```
