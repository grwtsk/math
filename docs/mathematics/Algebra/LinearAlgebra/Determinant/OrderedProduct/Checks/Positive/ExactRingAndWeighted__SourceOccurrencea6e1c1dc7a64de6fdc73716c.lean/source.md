# Complete source: GRWTSK.LinearAlgebra.Determinant.OrderedProduct.Checks.Positive.ExactRingAndWeighted

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9e126610f5be2b9c9cd0f0ffbd8fb015b5e8d58` · SHA-256 `c28589d246b9b7bbf4538eb8b0fa6c0ff921445d5d70f4a8fe940e1d515f1be7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.OrderedProductDeterminant
open GRWTSK.LinearAlgebra.OrderedProductDeterminant GRWTSK.Algebra GRWTSK.LinearAlgebra.JacobiTransfer

example (A : ℕ → Matrix (Fin 2) (Fin 2) ℤ)
    (hdet : ∀ n, (A n).det = 1) (n k : ℕ) :
    (orderedProduct A n k).det = 1 := det_orderedProduct_eq_one A hdet n k
example {K : Type} [Field K] (E : K) (a b : ℕ → K)
    (ha : ∀ n, a n ≠ 0) (n k : ℕ) :
    (orderedProduct (fun i => weightedJacobiTransfer E (b i) (a i)) n k).det = 1 :=
  det_weightedJacobi_orderedProduct E a b ha n k
```
