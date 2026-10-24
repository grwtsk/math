# Complete source: GRWTSK.LinearAlgebra.Determinant.OrderedProduct.Checks.Negative.MissingFactorDeterminant

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16175c5f65b45597221981c9e9bac9dd5ae3dea8` · SHA-256 `037227c29572b504d32eecfcf6177f136825e3acddf911d61763fcf066e348b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.OrderedProductDeterminant
open GRWTSK.LinearAlgebra.OrderedProductDeterminant GRWTSK.Algebra GRWTSK.LinearAlgebra.JacobiTransfer

example : (orderedProduct (fun _ => !![(2 : ℚ), 0; 0, 1]) 0 1).det = 1 := by
  norm_num [orderedProduct, Matrix.det_fin_two]
```
