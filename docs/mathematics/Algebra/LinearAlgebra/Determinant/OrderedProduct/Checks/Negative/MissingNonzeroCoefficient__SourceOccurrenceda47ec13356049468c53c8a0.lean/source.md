# Complete source: GRWTSK.LinearAlgebra.Determinant.OrderedProduct.Checks.Negative.MissingNonzeroCoefficient

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a2146b9e5640212089a456631b506606858ef7e` · SHA-256 `aeb6b35823c26582e0929ff097feeb1fa09f92b9ce9b30ea5a0701e25fb2da67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.OrderedProductDeterminant
open GRWTSK.LinearAlgebra.OrderedProductDeterminant GRWTSK.Algebra GRWTSK.LinearAlgebra.JacobiTransfer

example : (orderedProduct (fun _ => weightedJacobiTransfer (0 : ℚ) 0 0) 0 1).det = 1 := by
  norm_num [orderedProduct, weightedJacobiTransfer, Matrix.det_fin_two]
```
