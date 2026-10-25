# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN08FiberCanonicity.Variant1c44b381c97e37d44eb750de928032606cb5a6741046452d8220074f53a2a66d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `728fceffb65c9c10be152d0c8a3c9e097467fd75` · SHA-256 `1c44b381c97e37d44eb750de928032606cb5a6741046452d8220074f53a2a66d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Theorems.HEN01_ExactFullyFaithful

namespace FCRS.Algebraization.Theorems

/--
Algebraization fibers are nonempty when effectivity holds and, by this
the result says that any two algebraizations are uniquely compatibly isomorphic.
-/
theorem hen08_fiberCanonicity
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile) :
    FibersUniquelyIsomorphic S.functors.HenPullback := by
  have hExact :=
    (hen01_exactFullyFaithful S registry) hProfile
  exact registry.hen08 hExact.full hExact.faithful

end FCRS.Algebraization.Theorems
```
