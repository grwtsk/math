# Complete source: GRWTSK.Topology.GeneralTopology.CS12ControlledSphericalHierarchy.Variant37d2e9030c146c51ae835c231888f536689eab0c11049c82119a7ab58fce6278

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dabe7c7538fe4b819b3e5a4d6de2b6e0b2b98866` · SHA-256 `37d2e9030c146c51ae835c231888f536689eab0c11049c82119a7ab58fce6278`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.Assembly

namespace FCRS.ControlledSpherical.Theorems

open FCRS.ControlledPlane

/--
CS-12 scoped assembly.  The spherical registry supplies one coherent witness
package, and a decoder is extracted from the existing abstract coherent
controlled presentation.  The result retains selected-carrier compactness.
-/
theorem cs12_controlledSphericalHierarchy
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (planeRegistry : ControlledPlaneResearchRegistry S M)
    (planeResult : ControlledPlaneCompleteness S M)
    (sphericalRegistry : ControlledSphericalResearchRegistry S M SM)
    (hSignature :
      ControlledSignaturePreservation
        SM.provenanceSignature M.observation SM.observedSignature) :
    CS12Claim S M SM := by
  rcases sphericalRegistry.witnesses with ⟨sphericalWitnesses⟩
  rcases planeResult.controlledPresentationExists with ⟨presentation⟩
  exact ⟨FCRS.ControlledSpherical.controlled_spherical_scoped_hierarchy
    S M SM planeRegistry planeResult sphericalWitnesses
    presentation.decoder hSignature⟩

end FCRS.ControlledSpherical.Theorems
```
