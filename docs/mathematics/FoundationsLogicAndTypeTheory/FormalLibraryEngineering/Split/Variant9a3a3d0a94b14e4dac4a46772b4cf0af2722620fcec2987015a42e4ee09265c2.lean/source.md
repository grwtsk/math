# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Split.Variant9a3a3d0a94b14e4dac4a46772b4cf0af2722620fcec2987015a42e4ee09265c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b48b0d7d01fcfe89252e88097a3108ba5241cef` · SHA-256 `9a3a3d0a94b14e4dac4a46772b4cf0af2722620fcec2987015a42e4ee09265c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Basic

example : (α : Type) × List α := by
  constructor
  · exact [0,1]

-- example : (α : Type) × List α := by
--   fsplit
--   - exact ℕ
--   - exact [0,1]
```
