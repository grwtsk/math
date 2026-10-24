# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.MissingIDS2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c5c13ebbaf401ed87c81c89cfe224617c5ea3de` · SHA-256 `ca0bf886fb15f6547a881ccb073843cfbc2d8bc2f62e25d2b1d3091c81639024`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.GapTransport
open GRWTSK.Spectral.GapTransport

-- A monotone plateau alone does not supply local constancy iff outside spectrum.
example : OpenLabelGap Set.univ (fun _ : ℝ => 0) 0 (-1) 1 := by
  exact monotone_plateau_alone_is_not_a_gap.1
```
