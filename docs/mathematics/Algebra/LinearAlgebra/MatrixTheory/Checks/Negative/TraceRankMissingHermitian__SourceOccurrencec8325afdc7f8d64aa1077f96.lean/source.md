# Complete source: GRWTSK.LinearAlgebra.Matrix.Checks.Negative.TraceRankMissingHermitian

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a2dfa9eae1166e4f6de49f011b91fe0671071e2` · SHA-256 `cdf692545dd4cc4270770ee802bb31c4d3c90271c85a9754d7e1d7d942220a5f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intentionally rejected: without Hermitian symmetry, even the second
spectral moment can be negative. The intended false inequality is 0 ≤ -1. -/
import GRWTSK.LinearAlgebra.Matrix.TraceRank
import Mathlib.Tactic.NormNum

example : 0 ≤ (((Matrix.diagonal (fun _ : Unit => Complex.I)) ^ 2).trace).re := by
  have hv : (((Matrix.diagonal (fun _ : Unit => Complex.I)) ^ 2).trace).re = -1 := by
    norm_num [Matrix.diagonal_pow, Function.comp_def, Matrix.trace]
  rw [hv]
  exact (show (0 : ℝ) ≤ 1 by norm_num)
```
