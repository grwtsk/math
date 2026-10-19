import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-05 is derived from the decoder left-inverse law. -/
theorem cf05_controlledSeparation
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (D : LosslessDecoder M.observation) :
    CF05Claim M :=
  separating_of_leftInverseDecoder D

end FCRS.ControlledPlane.Theorems
