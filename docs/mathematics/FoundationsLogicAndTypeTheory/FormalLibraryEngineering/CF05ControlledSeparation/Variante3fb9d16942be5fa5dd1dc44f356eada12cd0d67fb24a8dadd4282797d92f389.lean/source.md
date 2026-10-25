# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF05ControlledSeparation.Variante3fb9d16942be5fa5dd1dc44f356eada12cd0d67fb24a8dadd4282797d92f389

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f91d4473befb1401168aea7539e6e9813c3ba427` · SHA-256 `e3fb9d16942be5fa5dd1dc44f356eada12cd0d67fb24a8dadd4282797d92f389`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
