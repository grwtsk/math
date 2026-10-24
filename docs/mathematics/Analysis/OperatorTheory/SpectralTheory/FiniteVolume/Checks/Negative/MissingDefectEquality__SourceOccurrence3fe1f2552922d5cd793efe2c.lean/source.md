# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.MissingDefectEquality

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `936da56531996239c06fd617d5338836d1e582eb` · SHA-256 `9f70239ceb95c0d5dc47ac83803a880083fec9744abd649f71674d31de1c3998`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.MatrixCountComparison
open GRWTSK.Spectral.MatrixCountComparison
example {ι : Type*} [Fintype ι] [DecidableEq ι] {A B : Matrix ι ι ℝ}
    (hA : A.IsHermitian) (hB : B.IsHermitian)
    (K : EuclideanSpace ℝ ι →ₗ[ℝ] ℝ) (E : ℝ) :
    eigenvalueCount hB E ≤ eigenvalueCount hA E + Module.finrank ℝ ℝ := by
  exact eigenvalueCount_le_add_finrank_of_kernel hA hB K E
```
