# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN13EffectiveFiberNonempty.Variantec894f8b4e8e5fb31cc0f1701e2f525f56cf00a59ccf92a1755ddcde2a9ae5fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dcf551bff40fc6e9c9bdbb20b5e39b7f560fe287` · SHA-256 `ec894f8b4e8e5fb31cc0f1701e2f525f56cf00a59ccf92a1755ddcde2a9ae5fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Theorems.HEN03_EssentialImageCharacterization

namespace FCRS.Algebraization.Theorems

/-- Every algebraically generated target object has a nonempty algebraization fiber. -/
theorem hen13_effectiveFiberNonempty
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi)
    {Y : S.categories.CohHen.Obj}
    (hGenerated :
      AlgebraicallyGenerated
        S.generators
        S.cohHenEpi
        Y) :
    Nonempty
      (AlgebraizationFiber
        S.functors.HenPullback
        Y) := by
  have hImage :=
    (hen03_essentialImageCharacterization
      S registry hProfile hSource Y).mp hGenerated
  rcases hImage with ⟨X, hIso⟩
  rcases hIso with ⟨e⟩
  exact ⟨{
    source := X
    comparison := e
  }⟩

end FCRS.Algebraization.Theorems
```
