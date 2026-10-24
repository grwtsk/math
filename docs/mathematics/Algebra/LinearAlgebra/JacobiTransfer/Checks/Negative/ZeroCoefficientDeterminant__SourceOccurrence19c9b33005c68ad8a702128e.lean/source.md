# Complete source: GRWTSK.Algebra.LinearAlgebra.JacobiTransfer.Checks.Negative.ZeroCoefficientDeterminant

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05aa3e6ff976c43d6a03e2767c97b561f49eb0c8` · SHA-256 `06fbd95c484ccffbd408938e0a858595c36a1c67e53ea0f4b5f1517aed6dd007`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.JacobiTransfer
open GRWTSK.LinearAlgebra.JacobiTransfer
example : (weightedJacobiTransfer (0 : ℚ) 0 0).det = 1 := by norm_num [weightedJacobiTransfer, Matrix.det_fin_two]
```
