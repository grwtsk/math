# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayBacked.Variantda426359e4b88f9634afde71a69b834e9e7ff142cc0d3dc243f41f87ffb54c03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55a8bc6bbadefad0815eebe69170d270f2b4872f` · SHA-256 `da426359e4b88f9634afde71a69b834e9e7ff142cc0d3dc243f41f87ffb54c03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrixElements.Core.Basic

/-! # Array-backed executable refinement. -/

structure BitMatrix.ArrayBacked (m n : Nat) where
  data : Array Bool
  size_eq : data.size = m * n

namespace BitMatrix.ArrayBacked

def flatIndex (i : Fin m) (j : Fin n) : Nat :=
  i.val * n + j.val

def get (matrix : BitMatrix.ArrayBacked m n) (i : Fin m) (j : Fin n) : Bool :=
  matrix.data.getD (flatIndex i j) false

def abstract (matrix : BitMatrix.ArrayBacked m n) : BitMatrix m n :=
  matrix.get

@[simp] theorem abstract_apply
    (matrix : BitMatrix.ArrayBacked m n)
    (i : Fin m)
    (j : Fin n) :
    matrix.abstract i j = matrix.get i j :=
  rfl

end BitMatrix.ArrayBacked
```
