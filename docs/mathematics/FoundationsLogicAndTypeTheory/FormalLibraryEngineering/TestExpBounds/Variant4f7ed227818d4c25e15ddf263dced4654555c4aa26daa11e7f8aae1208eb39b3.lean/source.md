# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestExpBounds.Variant4f7ed227818d4c25e15ddf263dced4654555c4aa26daa11e7f8aae1208eb39b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `040e9b0179a31d87f1ea69be8e14c9ad75dd2995` · SHA-256 `4f7ed227818d4c25e15ddf263dced4654555c4aa26daa11e7f8aae1208eb39b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert

-- e ≈ 2.718281828...

-- This should work (from earlier)
example : ∀ x ∈ Set.Icc 0 1, Real.exp x ≤ 2.718282 := by
  interval_bound

-- Tighter bound
example : ∀ x ∈ Set.Icc 0 1, Real.exp x ≤ 2.7182819 := by
  interval_bound

-- Even tighter
example : ∀ x ∈ Set.Icc 0 1, Real.exp x ≤ 2.71828183 := by
  interval_bound

-- Very tight (e ≈ 2.718281828...)
example : ∀ x ∈ Set.Icc 0 1, Real.exp x ≤ 2.718281829 := by
  interval_bound
```
