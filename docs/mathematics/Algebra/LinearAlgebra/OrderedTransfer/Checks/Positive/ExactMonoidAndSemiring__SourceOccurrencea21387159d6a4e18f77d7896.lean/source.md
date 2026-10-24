# Complete source: GRWTSK.Algebra.LinearAlgebra.OrderedTransfer.Checks.Positive.ExactMonoidAndSemiring

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0bdc5996cdb5a432e40ff78ab4e7d6e120b5d82` · SHA-256 `8e1e773c5def4369ff8fedc3d806a12f034cb08cf89cc6f2c7fe5786c1b6c280`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.OrderedTransfer
open GRWTSK.LinearAlgebra.OrderedTransfer GRWTSK.Algebra

example {G : Type} [Monoid G] (A : ℕ → G) (m n : ℕ) :
    orderedTransfer A m n = orderedProduct A n (m - n) := rfl
example (A : ℕ → Matrix (Fin 2) (Fin 2) ℕ) (X : ℕ → Fin 2 → ℕ)
    (hstep : ∀ n, X (n+1) = (A n).mulVec (X n)) (n k : ℕ) :
    X (n+k) = (orderedProduct A n k).mulVec (X n) :=
  state_eq_orderedProduct_mulVec A X hstep n k
example (A : ℕ → Matrix (Fin 2) (Fin 2) ℕ) (X : ℕ → Fin 2 → ℕ)
    (hstep : ∀ n, X (n+1) = (A n).mulVec (X n)) (m n : ℕ) (hnm : n ≤ m) :
    X m = (orderedTransfer A m n).mulVec (X n) :=
  state_eq_orderedTransfer_mulVec A X hstep m n hnm
```
