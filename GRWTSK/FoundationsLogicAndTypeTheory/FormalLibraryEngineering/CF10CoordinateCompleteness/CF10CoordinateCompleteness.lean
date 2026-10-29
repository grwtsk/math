import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-10 research-rule projection for complete persistent coverage. -/
theorem cf10_coordinateCompleteness
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF10Claim M :=
  registry.cf10

end FCRS.ControlledPlane.Theorems
