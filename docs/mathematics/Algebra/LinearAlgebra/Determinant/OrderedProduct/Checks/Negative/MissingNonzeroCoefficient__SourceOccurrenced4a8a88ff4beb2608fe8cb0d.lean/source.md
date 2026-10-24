# Complete source: GRWTSK.Algebra.LinearAlgebra.Determinant.OrderedProduct.Checks.Negative.MissingNonzeroCoefficient

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67392f4c3e367dafcb20905474ba385e8e916aa1` · SHA-256 `128791d7ea14e3e6c0c02d6fdddb4cd684d93607a2a393792e3443fe10ace261`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.OrderedProductDeterminant
open GRWTSK.LinearAlgebra.OrderedProductDeterminant GRWTSK.Algebra GRWTSK.LinearAlgebra.JacobiTransfer

example : (orderedProduct (fun _ => weightedJacobiTransfer (0 : ℚ) 0 0) 0 1).det = 1 := by
  norm_num [orderedProduct, weightedJacobiTransfer, Matrix.det_fin_two]
```
