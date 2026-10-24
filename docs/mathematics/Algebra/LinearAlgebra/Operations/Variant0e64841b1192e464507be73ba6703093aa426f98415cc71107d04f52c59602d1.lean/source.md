# Complete source: GRWTSK.Algebra.LinearAlgebra.Operations.Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbb2d641f5687c15820d3b2e2f3ca21859f921ce` · SHA-256 `0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Matrix

namespace Boolean

/-- The all-zero Boolean matrix. -/
def Matrix.zeros : Matrix rows cols :=
  fun _ _ => false

/-- The all-one Boolean matrix. -/
def Matrix.ones : Matrix rows cols :=
  fun _ _ => true

/-- Pointwise Boolean disjunction of matrices. -/
def Matrix.join
    (A B : Matrix rows cols) :
    Matrix rows cols :=
  fun i j => A i j || B i j

/-- Pointwise Boolean conjunction of matrices. -/
def Matrix.meet
    (A B : Matrix rows cols) :
    Matrix rows cols :=
  fun i j => A i j && B i j

/-- Pointwise Boolean complement of a matrix. -/
def Matrix.compl
    (A : Matrix rows cols) :
    Matrix rows cols :=
  fun i j => !(A i j)

/-- Transpose a Boolean matrix. -/
def Matrix.transpose
    (A : Matrix rows cols) :
    Matrix cols rows :=
  fun i j => A j i

/-- Change exactly one entry. -/
def Matrix.set
    (A : Matrix rows cols)
    (i : Fin rows)
    (j : Fin cols)
    (value : Bool) :
    Matrix rows cols :=
  fun i' j' =>
    if i' = i then
      if j' = j then value else A i' j'
    else
      A i' j'

@[simp] theorem Matrix.entry_zeros
    (i : Fin rows)
    (j : Fin cols) :
    Matrix.entry (Matrix.zeros : Matrix rows cols) i j = false :=
  rfl

@[simp] theorem Matrix.entry_ones
    (i : Fin rows)
    (j : Fin cols) :
    Matrix.entry (Matrix.ones : Matrix rows cols) i j = true :=
  rfl

@[simp] theorem Matrix.entry_join
    (A B : Matrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    Matrix.entry (Matrix.join A B) i j =
      (Matrix.entry A i j || Matrix.entry B i j) :=
  rfl

@[simp] theorem Matrix.entry_meet
    (A B : Matrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    Matrix.entry (Matrix.meet A B) i j =
      (Matrix.entry A i j && Matrix.entry B i j) :=
  rfl

@[simp] theorem Matrix.entry_compl
    (A : Matrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    Matrix.entry (Matrix.compl A) i j =
      !(Matrix.entry A i j) :=
  rfl

@[simp] theorem Matrix.entry_transpose
    (A : Matrix rows cols)
    (i : Fin cols)
    (j : Fin rows) :
    Matrix.entry (Matrix.transpose A) i j =
      Matrix.entry A j i :=
  rfl

@[simp] theorem Matrix.transpose_transpose
    (A : Matrix rows cols) :
    Matrix.transpose (Matrix.transpose A) = A := by
  funext i
  funext j
  rfl

@[simp] theorem Matrix.entry_set_same
    (A : Matrix rows cols)
    (i : Fin rows)
    (j : Fin cols)
    (value : Bool) :
    Matrix.entry (Matrix.set A i j value) i j = value := by
  simp [Matrix.entry, Matrix.set]

end Boolean
```
