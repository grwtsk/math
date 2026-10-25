# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CT18ProperGAGA.Variantcf1bd4a0bf1fedc75ff761285f2d334ab61c5ca435abb4795060b1da9f6c011a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a197448ac64a3d796cd7e802090bf6cf68e02fe2` · SHA-256 `cf1bd4a0bf1fedc75ff761285f2d334ab61c5ca435abb4795060b1da9f6c011a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-18: proper non-Archimedean GAGA.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct18_properGAGA
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT18Claim S :=
  registry.ct18

end FCRS.Theorems
```
