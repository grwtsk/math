# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.MissingDefectEquality

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59f18764f2cb973a8576ffde6ea55f6e3dcf3f03` · SHA-256 `35fdd185bacac671c991d6df6b145f5e1c8f3617e4bf46a0ecbc8088d51d00ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.MatrixCountComparison
open GRWTSK.Spectral.MatrixCountComparison
example {ι : Type*} [Fintype ι] [DecidableEq ι] {A B : Matrix ι ι ℝ}
    (hA : A.IsHermitian) (hB : B.IsHermitian)
    (K : EuclideanSpace ℝ ι →ₗ[ℝ] ℝ) (E : ℝ) :
    eigenvalueCount hB E ≤ eigenvalueCount hA E + Module.finrank ℝ ℝ := by
  exact eigenvalueCount_le_add_finrank_of_kernel hA hB K E
```
