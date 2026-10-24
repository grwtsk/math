import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-13 research-rule projection for signature-level carrier compactness. -/
theorem cf13_compactCarrier
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF13Claim M :=
  registry.cf13

end FCRS.ControlledPlane.Theorems
