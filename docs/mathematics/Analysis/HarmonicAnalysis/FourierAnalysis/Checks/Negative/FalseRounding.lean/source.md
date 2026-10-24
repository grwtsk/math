# Complete source: GRWTSK.Analysis.Fourier.Checks.Negative.FalseRounding

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b332951d5d0c2abdcb5fcbcecf556f3b82e76f71` · SHA-256 `097fbbb5b37c74b4aa4c33093addacbfbea106d35c4153c82bbf7dbb392deb7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.Schrodinger.Sampling
import GRWTSK.Analysis.NormedSpace.QuadraticError
import GRWTSK.Analysis.Fourier.WindowCertificates
import GRWTSK.Analysis.AsymptoticAnalysis.PolynomialClosure
import GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy
open GRWTSK.Analysis.Waveform
example : ⌊(1/2:ℝ)⌋₊ = 1 := by norm_num
```
