# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.WrongOffset

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `382420555ea5c50bbb8a3d36860a5e37ddbc9ecf` · SHA-256 `ab76dc39a0a697d8816013289d3e61bc1cd104b17a163ea46e27dea06365e726`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume
open GRWTSK.Spectral.SturmianFiniteVolume

-- Deliberately false contract: discard the upper shift for arbitrary signed V.
example (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    freeCount N E ≤ sturmianCount N α V ξ origin E := by
  exact (finite_count_comparison N α V ξ origin E).1
```
