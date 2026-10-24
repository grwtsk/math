import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-14 packages controlled losslessness without adding a planar injection. -/
theorem cf14_noEmbeddingObligation
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (D : LosslessDecoder M.observation) :
    CF14Claim M :=
  ⟨⟨D⟩⟩

end FCRS.ControlledPlane.Theorems
