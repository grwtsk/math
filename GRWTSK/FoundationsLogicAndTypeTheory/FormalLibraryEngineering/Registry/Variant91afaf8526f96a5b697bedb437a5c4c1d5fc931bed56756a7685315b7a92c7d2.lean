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
