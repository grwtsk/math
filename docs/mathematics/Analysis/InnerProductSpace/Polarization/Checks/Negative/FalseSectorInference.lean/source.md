# Complete source: GRWTSK.Analysis.InnerProductSpace.Polarization.Checks.Negative.FalseSectorInference

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57d02836ec5704e35a7e514fe7bfb6a46bab0069` · SHA-256 `0e1aaae50878834f28a8ba7a065b66f878f94d6c3a9db526a333f884a0c9da2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Polarization
open GRWTSK.Analysis.Polarization
open scoped InnerProductSpace
example (x y : ℝ) : 0 ≤ (‖x + y‖ ^ 2 - ‖x - y‖ ^ 2) / 4 := by
  have h₁ : 0 ≤ ‖x + y‖ ^ 2 := sq_nonneg _
  have h₂ : 0 ≤ ‖x - y‖ ^ 2 := sq_nonneg _
  exact add_nonneg h₁ h₂
```
