# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CT07StableUniformSheafiness.Variantd6d0a8f5d4cee507a88e4dfa561a4e1db1464b84823b4d328b4e12e44d9278ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1cd4937eb7d9f2ee4c220e2092ee7155aab4ede` · SHA-256 `d6d0a8f5d4cee507a88e4dfa561a4e1db1464b84823b4d328b4e12e44d9278ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-07: stably uniform sheafiness.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct07_stableUniformSheafiness
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT07Claim S :=
  registry.ct07

end FCRS.Theorems
```
