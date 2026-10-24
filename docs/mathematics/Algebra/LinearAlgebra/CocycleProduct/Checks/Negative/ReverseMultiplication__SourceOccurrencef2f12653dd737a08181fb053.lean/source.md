# Complete source: GRWTSK.LinearAlgebra.CocycleProduct.Checks.Negative.ReverseMultiplication

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa26f5b21615ff543f260f39c28c217ea4db3269` · SHA-256 `25fded69d7fd67be09c16200ed75d8a4d74aac12adf08c02fba3a1f7131a52c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.CocycleProduct
open GRWTSK.LinearAlgebra.CocycleProduct GRWTSK.Algebra GRWTSK.LinearAlgebra.SchrodingerTransfer
example : cocycleProduct Nat.succ (fun i => schrodingerTransfer (i : ℚ) 0) 2 0 =
    schrodingerTransfer (0 : ℚ) 0 * schrodingerTransfer (1 : ℚ) 0 := by
  apply Matrix.ext
  intro i j
  fin_cases i <;> fin_cases j <;>
    norm_num [cocycleProduct, Function.iterate_succ_apply', schrodingerTransfer,
      Matrix.mul_apply, Fin.sum_univ_two]
```
