import Folder.AdelicInfinityTopos.SpectrumObject

/-!
# Folder.AdelicInfinityTopos.GlobalZRoute

Radiation role: research-boundary
BinaryMatrix spine: This module documents the global-over-Z strategy as contract data.
Ontology: adelic.global_z_route
Pivot role: arithmetic
Zero typology: none
Contract boundary: strategy
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

structure GlobalZTMFRoute where
  globalTMF : SpectrumObject
  jInvariantCoordinate : Prop
  allPrimeComponentsTracked : Prop
  allPrimeComponentsTracked_certified : allPrimeComponentsTracked
  stringBordismBakedIn : Prop
  adamsNovikovComplexity : Prop

theorem global_route_tracks_all_primes
    (R : GlobalZTMFRoute) :
    R.allPrimeComponentsTracked :=
  R.allPrimeComponentsTracked_certified

end AdelicInfinityTopos
end Folder
