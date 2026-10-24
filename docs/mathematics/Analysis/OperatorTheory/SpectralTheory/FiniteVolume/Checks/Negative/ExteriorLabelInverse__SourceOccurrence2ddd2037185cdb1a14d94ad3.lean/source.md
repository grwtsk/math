# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.ExteriorLabelInverse

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83bfba32f739e9ea041358b068b811ea43af161e` · SHA-256 `7f80b14ffd1f21031da11b369342d228f1e8b93a5311e348400d7dba386fc71a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeIDS
open GRWTSK.Spectral.FreeIDS

-- The right inverse cut is false at exterior label zero: N0(-3)=0 but -2>-3.
example : freeEnergy 0 ≤ (-3:ℝ) := by
  norm_num [freeEnergy]
```
