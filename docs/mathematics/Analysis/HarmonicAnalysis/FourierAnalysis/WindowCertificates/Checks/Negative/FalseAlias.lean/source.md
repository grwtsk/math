# Complete source: GRWTSK.Analysis.Fourier.WindowCertificates.Checks.Negative.FalseAlias

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2f179bd53c8b1364bc4d000b6d644c17f9c82af` · SHA-256 `2081230fe195ada3b1d5486214e5da793f369d5f727b8d167908383e6799cf3d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.Schrodinger.Sampling
import GRWTSK.Analysis.NormedSpace.QuadraticError
import GRWTSK.Analysis.Fourier.WindowCertificates
import GRWTSK.Analysis.AsymptoticAnalysis.PolynomialClosure
import GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy
open GRWTSK.Analysis.Waveform
example : (fun x : ℝ => Real.sin x+Real.sin (2*x)) = (fun _ => (0:ℝ)) := by
  exact False.elim (sampled_alias.2 rfl)
```
