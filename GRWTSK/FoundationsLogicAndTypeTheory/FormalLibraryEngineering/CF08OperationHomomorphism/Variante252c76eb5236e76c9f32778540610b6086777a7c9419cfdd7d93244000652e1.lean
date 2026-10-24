import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-08 derives decoder correctness from an explicit homomorphism contract. -/
theorem cf08_operationHomomorphism
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (D : LosslessDecoder M.observation)
    (hHom :
      OperationHomomorphic
        M.sourceOperation M.observedOperation M.observation) :
    CF08Claim M D := by
  exact {
    homomorphic := hHom
    decodedOperation := by
      intro x y
      exact decode_operation
        M.sourceOperation M.observedOperation hHom D x y
  }

end FCRS.ControlledPlane.Theorems
