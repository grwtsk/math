# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.MissingBlockLength

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ad5a94312e5e8779a4fba11ba55016afb426607` · SHA-256 `64f4b5cf02e7fb73adf553b3f8d1aa815b1c63cdeed568cdb34d980f4a0cd5dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianBlockCounts
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeIDS
open GRWTSK.Spectral.SturmianBlockCounts GRWTSK.Spectral.SturmianFiniteVolume
open GRWTSK.Spectral.FreeIDS

example (N L : ℕ) (hN : 0 < N) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    |sturmianNormalizedCount N α V ξ origin E - blockCountSum (N/L) L α V ξ origin E/N| ≤
      2/(L:ℝ)+(L:ℝ)/N :=
  finite_block_approximation N L hN
```
