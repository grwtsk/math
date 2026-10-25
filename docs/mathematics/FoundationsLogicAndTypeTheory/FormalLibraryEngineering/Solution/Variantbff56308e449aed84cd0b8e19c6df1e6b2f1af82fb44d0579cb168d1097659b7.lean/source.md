# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Solution.Variantbff56308e449aed84cd0b8e19c6df1e6b2f1af82fb44d0579cb168d1097659b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1e8229bbf3bab584c3261210afc70a08ce6920d` · SHA-256 `bff56308e449aed84cd0b8e19c6df1e6b2f1af82fb44d0579cb168d1097659b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- Solution tries to satisfy the hole with an axiom rather than a def.
-- Should be rejected because the kind does not match.
axiom n : Nat

theorem foo : n + 17 = 34 := sorry
```
