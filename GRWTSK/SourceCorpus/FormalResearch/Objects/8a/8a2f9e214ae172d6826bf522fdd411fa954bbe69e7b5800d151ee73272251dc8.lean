import Folder.AdelicInfinityTopos.Place

/-!
# Folder.AdelicInfinityTopos.AdelicBase

Radiation role: research-boundary
BinaryMatrix spine: This module defines the place-indexing base for adelic spectral fibers.
Ontology: adelic.base
Pivot role: dual
Zero typology: mixed
Contract boundary: definition
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

structure AdelicBase where
  archimedean : Place
  finitePlaces : List Place
  includesArchimedean : archimedean = Place.archimedean
  finitePlaceSound : ∀ v ∈ finitePlaces, ∃ p, v = Place.finite p

def defaultAdelicBase : AdelicBase where
  archimedean := Place.archimedean
  finitePlaces := []
  includesArchimedean := rfl
  finitePlaceSound := by
    intro v hv
    cases hv

end AdelicInfinityTopos
end Folder
