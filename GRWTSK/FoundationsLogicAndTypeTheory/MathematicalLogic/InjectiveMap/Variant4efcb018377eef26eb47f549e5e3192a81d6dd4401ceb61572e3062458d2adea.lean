import FCRS.ControlledSpherical.GraphRealization
import FCRS.ControlledSpherical.SphereCarriers

universe uA uB

namespace FCRS.ControlledSpherical

/--
A signature-level injective map between opaque point sorts.  This structure
has no topology, continuity, edge-path, or homeomorphism-on-image content.
-/
structure InjectiveMapWitness (A : Type uA) (B : Type uB) where
  map : A → B
  injective : Function.Injective map

end FCRS.ControlledSpherical
