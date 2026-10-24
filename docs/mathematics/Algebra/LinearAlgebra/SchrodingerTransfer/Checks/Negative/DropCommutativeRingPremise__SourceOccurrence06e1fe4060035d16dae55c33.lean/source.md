# Complete source: GRWTSK.LinearAlgebra.SchrodingerTransfer.Checks.Negative.DropCommutativeRingPremise

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `494e011a06cfd81e64a3aa9ce234615727b17ad5` · SHA-256 `a4cbb7c66467d082ef71804ad20c82dcb44cf397537ba74b2a9f90c2fb8dbc4b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.SchrodingerTransfer
open GRWTSK.LinearAlgebra.SchrodingerTransfer
example {R : Type*} [Ring R] (E V : R) : (schrodingerTransfer E V).det = 1 := det_schrodingerTransfer E V
```
