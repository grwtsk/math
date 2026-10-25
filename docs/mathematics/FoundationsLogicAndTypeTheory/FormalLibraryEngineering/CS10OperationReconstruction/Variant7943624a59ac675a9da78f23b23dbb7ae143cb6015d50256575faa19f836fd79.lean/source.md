# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CS10OperationReconstruction.Variant7943624a59ac675a9da78f23b23dbb7ae143cb6015d50256575faa19f836fd79

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4ec6672058918275db42cb65d786d1fbc5ca388` · SHA-256 `7943624a59ac675a9da78f23b23dbb7ae143cb6015d50256575faa19f836fd79`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
