# Complete source: GRWTSK.LinearAlgebra.SchrodingerTransfer.Checks.Negative.WrongDeterminantSign

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98182205ba7ef7a260ca7c12e62d6c7d11915983` · SHA-256 `23bb5c1fcba29f469eb03e1eefbaf0dbedb70c9c45d31355acd5a94e5928309a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.SchrodingerTransfer
open GRWTSK.LinearAlgebra.SchrodingerTransfer
example : (schrodingerTransfer (0 : ℚ) 0).det = -1 := by norm_num [schrodingerTransfer, Matrix.det_fin_two]
```
