# Complete source: GRWTSK.Algebra.LinearAlgebra.CocycleProduct.Checks.Negative.MissingOrbitShift

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4d1ae0d9646c19acab728b8de7825c32263af64` · SHA-256 `7e358e3f2b5e321482deef07f0436eb27ef2a54e1c79797f290509457ef161eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.CocycleProduct
open GRWTSK.LinearAlgebra.CocycleProduct GRWTSK.Algebra GRWTSK.LinearAlgebra.SchrodingerTransfer
example : cocycleProduct Nat.succ (fun i => i + 2) 2 0 =
    cocycleProduct Nat.succ (fun i => i + 2) 1 0 * cocycleProduct Nat.succ (fun i => i + 2) 1 0 := by
  norm_num [cocycleProduct, Function.iterate_succ_apply']
```
