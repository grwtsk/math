# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GLOB01GlobalProvenance.Varianta665118f489fd641e14a4ddfee7d920e22e74eb89816e53c7090d81eeee6c8ef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df30fd2716a334e04932fdab4fc2d6e3ac73cd03` · SHA-256 `a665118f489fd641e14a4ddfee7d920e22e74eb89816e53c7090d81eeee6c8ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- Place-wise Archimedean and non-Archimedean realizations share a global source. -/
theorem glob01_globalProvenance
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    GLOB01Claim S :=
  registry.glob01

end FCRS.Algebraization.Theorems
```
