# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Registry.Variant91afaf8526f96a5b697bedb437a5c4c1d5fc931bed56756a7685315b7a92c7d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d19b39af73eb3db1c2406fab1cfabf91c5b1ae3` · SHA-256 `91afaf8526f96a5b697bedb437a5c4c1d5fc931bed56756a7685315b7a92c7d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.Claims

universe uObj uHom vObj vHom uData

namespace FCRS.ControlledSpherical

open FCRS
open FCRS.ControlledPlane

/--
The controlled-spherical research trust boundary contains one coherent witness
package.  In particular, CS-03--CS-08 cannot select unrelated vertex or
spherical-realization witnesses.  Decoder, kernel, operation, and signature
reconstruction remain derived Lean results.
-/
structure ControlledSphericalResearchRegistry
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S)
    (SM : ControlledSphericalModel S M) : Prop where
  witnesses : Nonempty (ControlledSphericalWitnessPackage S M SM)

end FCRS.ControlledSpherical
```
