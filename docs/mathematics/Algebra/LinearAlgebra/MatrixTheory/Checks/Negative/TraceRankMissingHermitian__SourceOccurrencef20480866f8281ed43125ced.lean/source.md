# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.Checks.Negative.TraceRankMissingHermitian

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87fb033cb4ba9b85cde2a6e21625e41be02d8e08` · SHA-256 `5dd9f52b16d42938a6be18e057ace6b6745afc6ba4cd35750328f9117e7789a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intentionally rejected: without Hermitian symmetry, even the second
spectral moment can be negative. The intended false inequality is 0 ≤ -1. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.TraceRank
import Mathlib.Tactic.NormNum

example : 0 ≤ (((Matrix.diagonal (fun _ : Unit => Complex.I)) ^ 2).trace).re := by
  have hv : (((Matrix.diagonal (fun _ : Unit => Complex.I)) ^ 2).trace).re = -1 := by
    norm_num [Matrix.diagonal_pow, Function.comp_def, Matrix.trace]
  rw [hv]
  exact (show (0 : ℝ) ≤ 1 by norm_num)
```
