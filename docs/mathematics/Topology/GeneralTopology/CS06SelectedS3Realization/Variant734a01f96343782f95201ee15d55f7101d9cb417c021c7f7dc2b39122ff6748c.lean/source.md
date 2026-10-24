# Complete source: GRWTSK.Topology.GeneralTopology.CS06SelectedS3Realization.Variant734a01f96343782f95201ee15d55f7101d9cb417c021c7f7dc2b39122ff6748c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34ecdb7a3d2841a7d20938a8d9f555d7305c1b63` · SHA-256 `734a01f96343782f95201ee15d55f7101d9cb417c021c7f7dc2b39122ff6748c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.Registry

namespace FCRS.ControlledSpherical.Theorems

/--
CS-06 projects the branch-relative `S³` claim.  When `S³` is selected this
is its compactness assertion; an `S²` selection creates no `S³` witness.
-/
theorem cs06_selectedS3Realization
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    ∃ W : ControlledSphericalWitnessPackage S M SM, CS06Claim W := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨W, W.cs06Claim⟩

end FCRS.ControlledSpherical.Theorems
```
