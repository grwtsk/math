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
