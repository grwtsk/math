# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Numeric.Variant01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `479115768e138c3aac55bd72eca70cd42fe86f7e` · SHA-256 `01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Real.Basic

/-!
# Numeric representation boundaries
-/

namespace BitMatrix.Runtime.Numeric

/-- Mathematical arbitrary-precision integers used to specify JavaScript `BigInt` values. -/
abbrev ArbitraryPrecisionInteger := ℤ

/-- Nonnegative absolute and relative tolerances. -/
structure Tolerance where
  absolute : ℝ
  relative : ℝ
  absoluteNonnegative : 0 ≤ absolute
  relativeNonnegative : 0 ≤ relative

/-- The symmetric mixed absolute/relative comparison contract. -/
def Tolerance.NearlyEqual (tolerance : Tolerance) (left right : ℝ) : Prop :=
  |left - right| ≤
    tolerance.absolute + tolerance.relative * max |left| |right|

/-- Checked conversion is a partial relation, never wrapping or saturating. -/
def CheckedNaturalConversion (integer : ArbitraryPrecisionInteger) (natural : Nat) : Prop :=
  integer = natural

end BitMatrix.Runtime.Numeric
```
