# Complete source: GRWTSK.Algebra.LinearAlgebra.PosDef.Variant2ec9cbd5e99b294a6f0b9c534de2cfbe1830359f186b6e3f8f5df37dda81051f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5db5819466891dc2290faf078feddca2f32351b4` · SHA-256 `2ec9cbd5e99b294a6f0b9c534de2cfbe1830359f186b6e3f8f5df37dda81051f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.LinearAlgebra.Matrix.PosDef

open Matrix
open scoped ComplexOrder

variable {n 𝕜 : Type*} [Fintype n] [RCLike 𝕜] [DecidableEq n]
  {A : Matrix n n 𝕜} (hA : PosSemidef A)

-- test for custom elaborator
/--
info: (⋯ : A.PosSemidef).sqrt : Matrix n n 𝕜
-/
#guard_msgs in
#check (id hA).sqrt
```
