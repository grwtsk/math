import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-11 research-rule projection for refinement-coherent control. -/
theorem cf11_refinementCoherence
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF11Claim S M :=
  registry.cf11

end FCRS.ControlledPlane.Theorems
