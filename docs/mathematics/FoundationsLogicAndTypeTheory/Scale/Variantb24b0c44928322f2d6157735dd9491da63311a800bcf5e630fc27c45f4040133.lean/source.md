# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Scale.Variantb24b0c44928322f2d6157735dd9491da63311a800bcf5e630fc27c45f4040133

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `afb602844ea901bd60a3e30b2c1c468ecf53e4c9` · SHA-256 `b24b0c44928322f2d6157735dd9491da63311a800bcf5e630fc27c45f4040133`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Real.Basic

/-!
# Kakeya scale windows

A scale window records the transverse and axial scales of a tube as positive
real geometry.  It replaces integer labels by the quantities those labels are
intended to approximate.
-/

namespace Mathematics.Geometry.Kakeya

/-- Positive transverse and axial scales with the transverse scale no larger. -/
structure ScaleWindow where
  fine : ℝ
  coarse : ℝ
  finePositive : 0 < fine
  fine_le_coarse : fine ≤ coarse

theorem ScaleWindow.coarsePositive (scale : ScaleWindow) :
    0 < scale.coarse :=
  lt_of_lt_of_le scale.finePositive scale.fine_le_coarse

theorem ScaleWindow.fineNonnegative (scale : ScaleWindow) :
    0 ≤ scale.fine :=
  scale.finePositive.le

theorem ScaleWindow.coarseNonnegative (scale : ScaleWindow) :
    0 ≤ scale.coarse :=
  scale.coarsePositive.le

end Mathematics.Geometry.Kakeya
```
