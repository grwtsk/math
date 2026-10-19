import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/--
CF-04 research-rule projection for one-way source-occurrence preservation and
edgewise weight preservation.  It makes no target-occurrence reflection or
bijection claim.
-/
theorem cf04_traversalPreservation
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF04Claim M := by
  exact {
    preserved := by
      intro c
      exact ⟨
        occurrencePreserved_of_sieveTransport (M.sieveTransport c),
        registry.cf04.weightPreserved c
      ⟩
    sourceWeightCorrect := registry.cf04.sourceWeightCorrect
    fixedWeightCorrect := registry.cf04.fixedWeightCorrect
  }

end FCRS.ControlledPlane.Theorems
