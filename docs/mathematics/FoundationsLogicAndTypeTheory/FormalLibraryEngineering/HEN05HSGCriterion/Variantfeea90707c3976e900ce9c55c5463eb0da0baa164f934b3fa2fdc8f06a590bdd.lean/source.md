# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN05HSGCriterion.Variantfeea90707c3976e900ce9c55c5463eb0da0baa164f934b3fa2fdc8f06a590bdd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca36665696d184052ab14ba9470e3b9a7c1c2292` · SHA-256 `feea90707c3976e900ce9c55c5463eb0da0baa164f934b3fa2fdc8f06a590bdd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Theorems.HEN03_EssentialImageCharacterization

namespace FCRS.Algebraization.Theorems

/--
Unrestricted essential surjectivity is equivalent to Henselian Serre
generation, after the scoped essential-image characterization is available.
-/
theorem hen05_hsgCriterion
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi) :
    EssentiallySurjective S.functors.HenPullback ↔
    HenselianSerreGeneration S.generators S.cohHenEpi := by
  have hCharacterization :=
    hen03_essentialImageCharacterization
      S registry hProfile hSource
  constructor
  · intro hEssential Y
    exact (hCharacterization Y).mpr (hEssential Y)
  · intro hHSG Y
    exact (hCharacterization Y).mp (hHSG Y)

end FCRS.Algebraization.Theorems
```
