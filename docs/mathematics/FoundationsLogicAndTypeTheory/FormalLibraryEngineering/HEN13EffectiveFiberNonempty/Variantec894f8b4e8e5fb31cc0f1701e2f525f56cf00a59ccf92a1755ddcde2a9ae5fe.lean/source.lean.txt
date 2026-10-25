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
