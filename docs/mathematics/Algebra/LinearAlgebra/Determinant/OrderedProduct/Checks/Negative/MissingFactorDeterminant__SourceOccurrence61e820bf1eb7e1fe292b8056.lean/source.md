# Complete source: GRWTSK.Algebra.LinearAlgebra.Determinant.OrderedProduct.Checks.Negative.MissingFactorDeterminant

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `668a978939289e0cb6d90b1fb246f127b7210337` · SHA-256 `be0bda4431e62b6ce8067dba98389cc2140bee70ef3b1e3d14c9987569d6c630`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.OrderedProductDeterminant
open GRWTSK.LinearAlgebra.OrderedProductDeterminant GRWTSK.Algebra GRWTSK.LinearAlgebra.JacobiTransfer

example : (orderedProduct (fun _ => !![(2 : ℚ), 0; 0, 1]) 0 1).det = 1 := by
  norm_num [orderedProduct, Matrix.det_fin_two]
```
