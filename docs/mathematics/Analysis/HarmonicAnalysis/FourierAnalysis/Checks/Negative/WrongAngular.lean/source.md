# Complete source: GRWTSK.Analysis.Fourier.Checks.Negative.WrongAngular

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e534646a292fb70b6018f66ab97aa2880113959` · SHA-256 `9f04810a3381d479fbb375787f1bc06b260b25076bb310997c9229d13e38f225`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.Schrodinger.Sampling
import GRWTSK.Analysis.NormedSpace.QuadraticError
import GRWTSK.Analysis.Fourier.WindowCertificates
import GRWTSK.Analysis.AsymptoticAnalysis.PolynomialClosure
import GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy
open GRWTSK.Analysis.Waveform
example (T : ℝ) (f : ℝ → ℂ) (F : MeasureTheory.Lp (α := ℝ) ℂ 2) :
    AngularWindowCertificate T f F := by exact l2_parseval F
```
