# Complete source: GRWTSK.Algebra.LinearAlgebra.Warshall.Variant02638ddc564966b11bd343610aa2e8b042664b92d09760fd1dc1e67a627d1e6c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1e9ab4bf98c5e7d6b0e944117188fbc728b1652` · SHA-256 `02638ddc564966b11bd343610aa2e8b042664b92d09760fd1dc1e67a627d1e6c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Matrix

namespace Boolean

/--
One Warshall update at intermediate vertex `k`.

The new entry `(i, j)` is true precisely when it was already true, or when
there is an `i → k` connection and a `k → j` connection.
-/
def Matrix.warshallStep
    {n : Nat}
    (k : Fin n)
    (A : Matrix n n) :
    Matrix n n :=
  fun i j => A i j || (A i k && A k j)

@[simp] theorem Matrix.entry_warshallStep
    {n : Nat}
    (k : Fin n)
    (A : Matrix n n)
    (i j : Fin n) :
    Matrix.entry (Matrix.warshallStep k A) i j =
      (Matrix.entry A i j ||
        (Matrix.entry A i k && Matrix.entry A k j)) :=
  rfl

/--
`warshallAux limit h A` performs Warshall updates for all intermediate
vertices with indices `< limit`.

The proof `h : limit ≤ n` ensures that each intermediate index is a valid
`Fin n`.
-/
def Matrix.warshallAux {n : Nat} :
    (limit : Nat) → limit ≤ n → Matrix n n → Matrix n n
  | 0, _, A => A
  | k + 1, hk, A =>
      Matrix.warshallStep
        ⟨k, hk⟩
        (Matrix.warshallAux
          k
          (Nat.le_trans (Nat.le_succ k) hk)
          A)

/--
Warshall's algorithm on a square Boolean matrix.

For a relation matrix, this repeatedly applies the Boolean update

`A[i,j] := A[i,j] || (A[i,k] && A[k,j])`

for every intermediate index `k`.
-/
def Matrix.warshall
    {n : Nat}
    (A : Matrix n n) :
    Matrix n n :=
  Matrix.warshallAux n (Nat.le_refl n) A

@[simp] theorem Matrix.warshallAux_zero
    {n : Nat}
    (h : 0 ≤ n)
    (A : Matrix n n) :
    Matrix.warshallAux 0 h A = A :=
  rfl

end Boolean
```
