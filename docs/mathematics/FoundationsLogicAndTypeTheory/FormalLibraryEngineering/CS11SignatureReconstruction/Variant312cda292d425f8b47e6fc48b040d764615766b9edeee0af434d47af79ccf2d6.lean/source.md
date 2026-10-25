# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CS11SignatureReconstruction.Variant312cda292d425f8b47e6fc48b040d764615766b9edeee0af434d47af79ccf2d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6346c9db683d30506ca6c2b5e7491679fc3273d4` · SHA-256 `312cda292d425f8b47e6fc48b040d764615766b9edeee0af434d47af79ccf2d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.Registry

namespace FCRS.ControlledSpherical.Theorems

open FCRS.ControlledPlane

/--
CS-11 derives the observation-image signature isomorphism only from an
explicit full-signature preservation contract, including its one designated
binary operation, together with the decoder.
-/
theorem cs11_signatureReconstruction
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (D : LosslessDecoder M.observation)
    (hPreserves :
      ControlledSignaturePreservation
        SM.provenanceSignature M.observation SM.observedSignature) :
    CS11Claim SM D :=
  ⟨controlledSignatureIso_of_decoder
    SM.provenanceSignature SM.observedSignature D hPreserves⟩

end FCRS.ControlledSpherical.Theorems
```
