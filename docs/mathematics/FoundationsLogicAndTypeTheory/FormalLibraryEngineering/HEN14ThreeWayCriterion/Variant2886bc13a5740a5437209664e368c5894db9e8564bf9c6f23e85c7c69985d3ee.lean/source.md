# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN14ThreeWayCriterion.Variant2886bc13a5740a5437209664e368c5894db9e8564bf9c6f23e85c7c69985d3ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89beec4b9d7fbde8f5ba65438d9c238182846b28` · SHA-256 `2886bc13a5740a5437209664e368c5894db9e8564bf9c6f23e85c7c69985d3ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Theorems.HEN05_HSGCriterion

namespace FCRS.Algebraization.Theorems

/--
The three formulations coincide: unrestricted essential surjectivity, every
target object satisfying the intrinsic generator predicate, and HSG.
-/
theorem hen14_threeWayCriterion
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi) :
    (EssentiallySurjective S.functors.HenPullback ↔
      ∀ Y : S.categories.CohHen.Obj,
        AlgebraicallyGenerated
          S.generators
          S.cohHenEpi
          Y) ∧
    ((∀ Y : S.categories.CohHen.Obj,
        AlgebraicallyGenerated
          S.generators
          S.cohHenEpi
          Y) ↔
      HenselianSerreGeneration
        S.generators
        S.cohHenEpi) := by
  have hCriterion :=
    hen05_hsgCriterion
      S registry hProfile hSource
  exact ⟨hCriterion, Iff.rfl⟩

end FCRS.Algebraization.Theorems
```
