import FCRS.ControlledSpherical.Registry

namespace FCRS.ControlledSpherical.Theorems

/-- CS-07 projects fixation coherence for the package's exact selected branch. -/
theorem cs07_fixationRealizationCoherence
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    ∃ W : ControlledSphericalWitnessPackage S M SM, CS07Claim W := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨W, W.cs07Claim⟩

end FCRS.ControlledSpherical.Theorems
