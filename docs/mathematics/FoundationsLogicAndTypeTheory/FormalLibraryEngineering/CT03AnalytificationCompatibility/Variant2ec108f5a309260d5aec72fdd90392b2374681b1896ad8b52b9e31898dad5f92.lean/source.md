# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CT03AnalytificationCompatibility.Variant2ec108f5a309260d5aec72fdd90392b2374681b1896ad8b52b9e31898dad5f92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b1b71b3cfd25d4ff8d47160d96d05103983b052` · SHA-256 `2ec108f5a309260d5aec72fdd90392b2374681b1896ad8b52b9e31898dad5f92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-03: separation, fiber-product, and base-change compatibility.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct03_analytificationCompatibility
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT03Claim S :=
  registry.ct03

end FCRS.Theorems
```
