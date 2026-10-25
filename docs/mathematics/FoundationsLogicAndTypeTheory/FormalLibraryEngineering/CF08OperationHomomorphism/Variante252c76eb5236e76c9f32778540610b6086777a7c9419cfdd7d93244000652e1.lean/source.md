# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF08OperationHomomorphism.Variante252c76eb5236e76c9f32778540610b6086777a7c9419cfdd7d93244000652e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61d1eff6c932ede88df6fa8de182525a3baeb9a3` · SHA-256 `e252c76eb5236e76c9f32778540610b6086777a7c9419cfdd7d93244000652e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
