# Complete source: GRWTSK.Algebra.LinearAlgebra.Basic.Variantce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2eb08f03606139793ea03c6820de7cdba3f2759` · SHA-256 `ce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Declarative Boolean-matrix element

The semantic carrier is a total finite function.  Storage and foreign codecs
are refinements and cannot alter this definition.
-/

abbrev BitMatrix (m n : Nat) := Fin m → Fin n → Bool

namespace BitMatrix

@[ext] theorem ext
    {left right : BitMatrix m n}
    (pointwise : ∀ i j, left i j = right i j) :
    left = right := by
  funext i j
  exact pointwise i j

def transpose (matrix : BitMatrix m n) : BitMatrix n m :=
  fun i j ↦ matrix j i

def diagonal (value : Fin n → Bool) : BitMatrix n n :=
  fun i j ↦ if i = j then value i else false

@[simp] theorem transpose_apply
    (matrix : BitMatrix m n)
    (i : Fin n)
    (j : Fin m) :
    matrix.transpose i j = matrix j i :=
  rfl

@[simp] theorem transpose_transpose
    (matrix : BitMatrix m n) :
    matrix.transpose.transpose = matrix := by
  ext i j
  rfl

@[simp] theorem diagonal_on
    (value : Fin n → Bool)
    (i : Fin n) :
    diagonal value i i = value i := by
  simp [diagonal]

theorem diagonal_off
    (value : Fin n → Bool)
    {i j : Fin n}
    (different : i ≠ j) :
    diagonal value i j = false := by
  simp [diagonal, different]

end BitMatrix
```
