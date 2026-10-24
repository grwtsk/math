# Complete source: GRWTSK.Algebra.LinearAlgebra.Relation.Variant60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b82244ad3e58cbbaaad6c07d3b43217344dbc7a8` · SHA-256 `60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Matrix.Ext
import Boolean.Matrix.Operations

namespace Boolean

namespace Matrix

/-- The identity Boolean relation on `Fin n`. -/
def identity (n : Nat) : Matrix n n :=
  fun i j => decide (i = j)

/-- Pointwise XOR of Boolean matrices. -/
def xor
    (A B : Matrix rows cols) :
    Matrix rows cols :=
  fun i j => Bool.xor (A i j) (B i j)

/-- A matrix marking the entries where two matrices differ. -/
def pointwiseDifference
    (A B : Matrix rows cols) :
    Matrix rows cols :=
  fun i j => decide (A i j ≠ B i j)

/-- Boolean relational composition. -/
def relComp
    (A : Matrix rows mid)
    (B : Matrix mid cols) :
    Matrix rows cols :=
  fun i k =>
    decide (∃ j : Fin mid, A i j = true ∧ B j k = true)

/-- Boolean matrix multiplication in the relation semiring. -/
def relMul
    (A : Matrix rows mid)
    (B : Matrix mid cols) :
    Matrix rows cols :=
  relComp A B

@[simp]
theorem entry_identity_same
    (i : Fin n) :
    Matrix.entry (identity n) i i = true := by
  simp [Matrix.entry, identity]

@[simp]
theorem entry_xor
    (A B : Matrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    Matrix.entry (xor A B) i j =
      Bool.xor (Matrix.entry A i j) (Matrix.entry B i j) :=
  rfl

@[simp]
theorem entry_pointwiseDifference
    (A B : Matrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    Matrix.entry (pointwiseDifference A B) i j =
      decide (Matrix.entry A i j ≠ Matrix.entry B i j) :=
  rfl

theorem transpose_transpose_checked
    (A : Matrix rows cols) :
    Matrix.transpose (Matrix.transpose A) = A :=
  Matrix.transpose_transpose A

theorem join_comm
    (A B : Matrix rows cols) :
    Matrix.join A B = Matrix.join B A := by
  apply ext
  intro i j
  cases hA : A i j <;> cases hB : B i j <;>
    simp [Matrix.join, hA, hB]

theorem meet_comm
    (A B : Matrix rows cols) :
    Matrix.meet A B = Matrix.meet B A := by
  apply ext
  intro i j
  cases hA : A i j <;> cases hB : B i j <;>
    simp [Matrix.meet, hA, hB]

theorem xor_comm
    (A B : Matrix rows cols) :
    xor A B = xor B A := by
  apply ext
  intro i j
  cases hA : A i j <;> cases hB : B i j <;>
    simp [xor, hA, hB]

end Matrix

end Boolean
```
