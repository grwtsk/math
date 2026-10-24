# Complete source: GRWTSK.Algebra.LinearAlgebra.JacobiTransfer.Checks.Negative.ReversedDeterminantRatio

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e21679bf6e9a8ff7d4d412411a5d05b27ac7da5c` · SHA-256 `2564614c798abb3c846959ef03d2c521620befcb2f9760a84a568c1fd897586c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.JacobiTransfer
open GRWTSK.LinearAlgebra.JacobiTransfer
example {K : Type*} [Field K] (E b a p : K) : (rawJacobiTransfer E b a p).det = a / p := det_rawJacobiTransfer E b a p
```
