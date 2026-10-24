# Complete source: GRWTSK.NumberTheory.Polynomial.Checks.Negative.IntegerTransfer

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0eb35e898649f81d959deb7b14f358d8bda5a821` · SHA-256 `50213fdfbf0ef92cb0aa7e4c4f920fe195fa77e7ce0a5c8424a91a8544038971`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Polynomial.DerivativeRadicalBound
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement

-- A field-polynomial degree bound cannot inhabit the all-epsilon integer target.
example : GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCConjecture := by
  exact @Polynomial.abc
```
