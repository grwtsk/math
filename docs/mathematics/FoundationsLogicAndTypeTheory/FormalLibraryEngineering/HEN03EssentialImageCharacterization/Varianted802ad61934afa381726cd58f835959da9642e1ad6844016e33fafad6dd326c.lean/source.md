# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN03EssentialImageCharacterization.Varianted802ad61934afa381726cd58f835959da9642e1ad6844016e33fafad6dd326c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4523ec2a528f354886e69580246d24a4c11652c` · SHA-256 `ed802ad61934afa381726cd58f835959da9642e1ad6844016e33fafad6dd326c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Theorems.HEN01_ExactFullyFaithful
import FCRS.Algebraization.Theorems.HEN02_SubquotientClosure

namespace FCRS.Algebraization.Theorems

/--
The independently defined algebraic-generation predicate equals membership
in the Henselian pullback essential image.
-/
theorem hen03_essentialImageCharacterization
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi) :
    ∀ Y : S.categories.CohHen.Obj,
      AlgebraicallyGenerated
        S.generators
        S.cohHenEpi
        Y ↔
      EssentialImage S.functors.HenPullback Y := by
  have hExact :=
    (hen01_exactFullyFaithful S registry) hProfile
  have hClosed :=
    (hen02_subquotientClosure S registry) hProfile
  exact generatedIffEssentialImage
    S.functors.HenPullback
    S.cohAlgEpi
    S.cohHenEpi
    S.generators
    hSource
    hExact.preservesEpis
    hClosed.quotientClosed

end FCRS.Algebraization.Theorems
```
