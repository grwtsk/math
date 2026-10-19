import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-09 research-rule projection for closed-coordinate separation. -/
theorem cf09_closedCoordinateSeparation
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF09Claim S M :=
  registry.cf09

end FCRS.ControlledPlane.Theorems
