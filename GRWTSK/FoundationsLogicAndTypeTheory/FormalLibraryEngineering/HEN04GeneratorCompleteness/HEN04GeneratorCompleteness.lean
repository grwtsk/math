import FCRS.Algebraization.Theorems.HEN03_EssentialImageCharacterization

namespace FCRS.Algebraization.Theorems

/--
Henselian generator completeness: pullback is an equivalence onto the full
subcategory selected by the finite ample-generator quotient predicate.
-/
theorem hen04_generatorCompleteness
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi) :
    ∃ hObj :
        ∀ X : S.categories.CohAlg.Obj,
          AlgebraicallyGenerated
            S.generators
            S.cohHenEpi
            (S.functors.HenPullback.obj X),
      EquivalenceWitness
        (restrictCodomain
          S.functors.HenPullback
          (AlgebraicallyGenerated
            S.generators
            S.cohHenEpi)
          hObj) := by
  have hExact :=
    (registry.hen01) hProfile
  have hClosed :=
    (registry.hen02) hProfile
  let hObj :=
    imageObjectsGenerated
      S.functors.HenPullback
      S.cohAlgEpi
      S.cohHenEpi
      S.generators
      hSource
      hExact.preservesEpis
  refine ⟨hObj, ?_⟩
  exact equivalenceRestrictCodomain
    S.functors.HenPullback
    (AlgebraicallyGenerated S.generators S.cohHenEpi)
    hObj
    hExact.full
    hExact.faithful
    (generatedIsEssentialImage
      S.functors.HenPullback
      S.cohHenEpi
      S.generators
      hClosed.quotientClosed)

end FCRS.Algebraization.Theorems
