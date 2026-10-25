import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/--
CF-02 research-rule projection for designated pullback-shaped-cone and
base-change compatibility.  No universal pullback property is represented.
-/
theorem cf02_designatedConeCompatibility
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF02Claim S M :=
  registry.cf02

end FCRS.ControlledPlane.Theorems
