# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestExpBound.Variantcae374e7e377c44216daa3dd8ed2e5e4c9cfde57eaf5c460372b0884822ecb85

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eab0c2e9941434fb1fc4484f0662f238ed597d55` · SHA-256 `cae374e7e377c44216daa3dd8ed2e5e4c9cfde57eaf5c460372b0884822ecb85`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert

example : ∀ x ∈ Set.Icc 0 1, Real.exp x ≤ 2.718282 := by
  interval_bound
```
