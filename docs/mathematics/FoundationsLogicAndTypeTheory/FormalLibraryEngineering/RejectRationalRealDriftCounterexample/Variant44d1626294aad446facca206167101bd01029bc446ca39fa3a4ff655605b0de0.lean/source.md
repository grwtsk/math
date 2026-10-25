# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectRationalRealDriftCounterexample.Variant44d1626294aad446facca206167101bd01029bc446ca39fa3a4ff655605b0de0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f898054c46178456966afad058889e59c00cdcb7` · SHA-256 `44d1626294aad446facca206167101bd01029bc446ca39fa3a4ff655605b0de0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
open GRWTSK.Geometry.Hodge.FiniteEdgeScalarExtension
-- A map with rational-to-real values that violates the scalar-extension laws
-- fails to preserve even the simplest harmonic constant vector.
def driftingMap (x : ℚ × ℚ) : ℝ × ℝ := ((x.1 : ℝ), (x.2 : ℝ) + 1)
example : edgeHodge.IsHarmonic0 (constantRepresentative 0) :=
  constantRepresentative_harmonic 0
example : ¬ realEdgeHodge.IsHarmonic0 (driftingMap (constantRepresentative 0)) := by
  rw [realEdgeHarmonic_iff]
  norm_num [driftingMap, constantRepresentative]
```
