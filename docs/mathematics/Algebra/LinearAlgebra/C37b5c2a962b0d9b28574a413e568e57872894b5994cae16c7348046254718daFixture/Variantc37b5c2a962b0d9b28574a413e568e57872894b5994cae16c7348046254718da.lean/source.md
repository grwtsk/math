# Complete source: GRWTSK.Algebra.LinearAlgebra.C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture.Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b6ed244311f32520360b63f0795ded473b03cc1` · SHA-256 `c37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.NormNum

-- Compiler fixture only. Not a supplied ChatGPT candidate or a general recognition theorem.
set_option pp.proofs false
namespace CompilerProbe

def A : Matrix (Fin 2) (Fin 4) ℝ := !![1, 0, -1, -2; 0, 1, 1, 1]

-- Fin indices are zero-based; columns 0,1 correspond to the author's labels 1,2.
theorem six_ordered_minors :
    (A.submatrix id ![0, 1]).det = 1 ∧
    (A.submatrix id ![0, 2]).det = 1 ∧
    (A.submatrix id ![0, 3]).det = 1 ∧
    (A.submatrix id ![1, 2]).det = 1 ∧
    (A.submatrix id ![1, 3]).det = 2 ∧
    (A.submatrix id ![2, 3]).det = 1 := by
  norm_num [A, Matrix.det_fin_two, Matrix.submatrix, Matrix.cons_val_two, Matrix.cons_val_three]

-- Swapping the selected column order changes the sign.
example : (A.submatrix id ![1, 0]).det = -1 := by
  norm_num [A, Matrix.det_fin_two, Matrix.submatrix]

#print six_ordered_minors
#print axioms six_ordered_minors
#check Matrix.det_fin_two
#check Matrix.det_fin_two_of
#check Matrix.submatrix
#check Matrix.cons_val_two
#check Matrix.cons_val_three
#check Matrix.det_permute

end CompilerProbe
```
