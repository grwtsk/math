# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.MissingIDS2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4dc10d9ddd68adcd213fd83d013ff97829a1ced` · SHA-256 `09d760b12d4f4e0893ccf68317d815430f2bc1dcc94b17c46969f77eb0ed523c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.GapTransport
open GRWTSK.Spectral.GapTransport

-- A monotone plateau alone does not supply local constancy iff outside spectrum.
example : OpenLabelGap Set.univ (fun _ : ℝ => 0) 0 (-1) 1 := by
  exact monotone_plateau_alone_is_not_a_gap.1
```
