# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Solution.Variantc90008c42c1b34c03dc17c4f8207e51fe40d21b30ccb13f2e8d928cf027fcf4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbb254e4029ebb6ba63f65d9691722a4f21e359d` · SHA-256 `c90008c42c1b34c03dc17c4f8207e51fe40d21b30ccb13f2e8d928cf027fcf4c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- Solution's hole has a different type; should be rejected even though the
-- theorem body is `sorry`.
def n : Int := 17

theorem foo : 17 + 17 = 34 := sorry
```
