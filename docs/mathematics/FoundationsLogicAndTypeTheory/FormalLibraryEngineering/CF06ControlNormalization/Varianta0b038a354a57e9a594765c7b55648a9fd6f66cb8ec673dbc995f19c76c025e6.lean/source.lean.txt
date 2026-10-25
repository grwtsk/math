import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-06 research-rule projection for the abstract control contract. -/
theorem cf06_controlNormalization
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF06Claim M :=
  registry.cf06

end FCRS.ControlledPlane.Theorems
