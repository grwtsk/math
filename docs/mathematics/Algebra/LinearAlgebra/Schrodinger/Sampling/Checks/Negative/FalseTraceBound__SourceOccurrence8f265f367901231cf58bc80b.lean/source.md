# Complete source: GRWTSK.LinearAlgebra.Schrodinger.Sampling.Checks.Negative.FalseTraceBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4164d8875a73d7314c6714976ff355c6a0ee410` · SHA-256 `b9248b2613f73ae2b663dcb46445d26214e8dd0183f4598d6e8b434a720f73af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.Schrodinger.Sampling
import GRWTSK.Analysis.NormedSpace.QuadraticError
import GRWTSK.Analysis.Fourier.WindowCertificates
import GRWTSK.Analysis.AsymptoticAnalysis.PolynomialClosure
import GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy
open GRWTSK.Analysis.Waveform
example : Matrix.trace (transfer 2 0) ≤ 1 := by norm_num [transfer_trace]
```
