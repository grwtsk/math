import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-01 research-rule projection for closed-coordinate fixation. -/
theorem cf01_closedCoordinateFixation
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF01Claim S M :=
  registry.cf01

end FCRS.ControlledPlane.Theorems
