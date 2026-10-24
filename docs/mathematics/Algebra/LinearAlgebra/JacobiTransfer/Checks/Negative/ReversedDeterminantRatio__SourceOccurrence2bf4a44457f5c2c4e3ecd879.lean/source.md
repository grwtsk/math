# Complete source: GRWTSK.LinearAlgebra.JacobiTransfer.Checks.Negative.ReversedDeterminantRatio

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48813da55c9f4964e9e2a5b0b53c5a15dcab3597` · SHA-256 `74389f8c972664cd2afb3881a63516b0402a574edae2bef6d2dca01dc8ad0bc2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.JacobiTransfer
open GRWTSK.LinearAlgebra.JacobiTransfer
example {K : Type*} [Field K] (E b a p : K) : (rawJacobiTransfer E b a p).det = a / p := det_rawJacobiTransfer E b a p
```
