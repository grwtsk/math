# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.QuotaDiscrepancy.Checks.Negative.FalseRounding

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc48ef92aabd84c5938897e9fe48040492251c5e` · SHA-256 `eabe39a67fe20f0c0f55074b740295afd494f40b23f581d9a7523343e2f6a3c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.Schrodinger.Sampling
import GRWTSK.Analysis.NormedSpace.QuadraticError
import GRWTSK.Analysis.Fourier.WindowCertificates
import GRWTSK.Analysis.AsymptoticAnalysis.PolynomialClosure
import GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.QuotaDiscrepancy
open GRWTSK.Analysis.Waveform
example : ⌊(1/2:ℝ)⌋₊ = 1 := by norm_num
```
