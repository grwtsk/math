import Folder.AdelicInfinityTopos.SpectrumObject

/-!
# Folder.Theorem.AdelicInfinityTopos.SpectrumObject

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports spectrum-object contract exposures.
Ontology: proof.adelic.spectrum_object
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace Theorem
namespace AdelicInfinityTopos
namespace SpectrumObject

theorem spectrum_object_stable
    (X : Folder.AdelicInfinityTopos.SpectrumObject) :
    X.stable :=
  Folder.AdelicInfinityTopos.spectrum_object_stable X

theorem spectrum_morphism_preserves_stability
    {X Y : Folder.AdelicInfinityTopos.SpectrumObject}
    (f : Folder.AdelicInfinityTopos.SpectrumMorphism X Y) :
    f.preservesStableStructure :=
  Folder.AdelicInfinityTopos.spectrum_morphism_preserves_stability f

end SpectrumObject
end AdelicInfinityTopos
end Theorem
end Folder
