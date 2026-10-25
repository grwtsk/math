# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Abs.Variant4a47ecc412a9c3bd42f2eac84ae865f416f16afe7e598f8c29c66210cc4f88c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74134a02ca778369a906db95d46bbba227fc7496` · SHA-256 `4a47ecc412a9c3bd42f2eac84ae865f416f16afe7e598f8c29c66210cc4f88c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module
import Mathlib.Basic.Real.Basic
import Mathlib.Tactic.NormNum

example : |(4 : ℤ)| = 4 := by norm_num1
example : |(4 : ℚ)| = 4 := by norm_num1
example : |(4 : ℝ)| = 4 := by norm_num1
example : |(-11 : ℤ)| = 11 := by norm_num1
example : |(3 : ℚ) / 7| = 3 / 7 := by norm_num1
example : |(1 : ℚ) / 5| < 1 / 3 := by norm_num1
example : |-(2 : ℚ) / 7| = 2 / 7 := by norm_num1
```
