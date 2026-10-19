import FCRS.Theorems.FCRSConditionalCompleteness

namespace FCRS

/-- The formal-model consequence of the full conditional theorem. -/
theorem fcrs_model_complete
    (S : RealizationSystem)
    (registry : TheoremRegistry S)
    (h : FullHypotheses S) :
    S.P.separatedFormalModelsExist ∧
    S.P.specializationNatural ∧
    S.P.admissibleBlowupsGenericFiberInvariant := by
  have complete :=
    fcrs_full_conditional_completeness S registry h
  exact ⟨
    complete.separatedFormalModelsExist,
    ⟨
      complete.specializationNatural,
      complete.admissibleBlowupsGenericFiberInvariant
    ⟩
  ⟩

end FCRS
