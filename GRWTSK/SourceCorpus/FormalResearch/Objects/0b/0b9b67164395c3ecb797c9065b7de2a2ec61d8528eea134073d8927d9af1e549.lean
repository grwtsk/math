import Folder.AdelicInfinityTopos.Place

/-!
# Folder.AdelicInfinityTopos.SpectrumObject

Radiation role: research-boundary
BinaryMatrix spine: This module stores contract-level spectrum objects for adelic fibers.
Ontology: adelic.spectrum_object
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

structure SpectrumObject where
  Carrier : Type _
  suspension : Carrier → Carrier
  homotopyGroup : ℤ → Type _
  stable : Prop
  stable_certified : stable
  label : String

structure SpectrumMorphism
    (X Y : SpectrumObject) where
  map : X.Carrier → Y.Carrier
  preservesStableStructure : Prop
  preservesStableStructure_certified : preservesStableStructure
  label : String

theorem spectrum_object_stable
    (X : SpectrumObject) :
    X.stable :=
  X.stable_certified

theorem spectrum_morphism_preserves_stability
    {X Y : SpectrumObject}
    (f : SpectrumMorphism X Y) :
    f.preservesStableStructure :=
  f.preservesStableStructure_certified

end AdelicInfinityTopos
end Folder
