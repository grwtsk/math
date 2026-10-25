import FCRS.ControlledSpherical.Registry

namespace FCRS.ControlledSpherical.Theorems

open FCRS.ControlledPlane

/--
CS-10 reconstructs the one designated binary operation under its explicit
homomorphism witness.
-/
theorem cs10_operationReconstruction
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (D : LosslessDecoder M.observation)
    (hHom :
      OperationHomomorphic
        M.sourceOperation M.observedOperation M.observation) :
    CS10Claim D := by
  intro x y
  exact controlledSpherical_decode_operation
    M.sourceOperation M.observedOperation D hHom x y

end FCRS.ControlledSpherical.Theorems
