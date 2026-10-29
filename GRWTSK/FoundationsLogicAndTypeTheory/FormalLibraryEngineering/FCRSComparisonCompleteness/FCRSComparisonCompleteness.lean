import FCRS.Theorems.FCRSConditionalCompleteness

namespace FCRS

/-- The comparison-equivalence consequence of the full conditional theorem. -/
theorem fcrs_comparison_complete
    (S : RealizationSystem)
    (registry : TheoremRegistry S)
    (h : FullHypotheses S) :
    EquivalenceWitness S.carrier.functors.RB ∧
    EquivalenceWitness S.carrier.functors.BA ∧
    EquivalenceWitness S.carrier.functors.RigEta := by
  have complete :=
    fcrs_full_conditional_completeness S registry h
  exact ⟨
    complete.rigidBerkovichEquivalence,
    ⟨complete.berkovichAdicEquivalence, complete.raynaudEquivalence⟩
  ⟩

end FCRS
