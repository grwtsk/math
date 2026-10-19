import Folder.AdelicInfinityTopos.GlobalZRoute
import Folder.AdelicInfinityTopos.BadPrimeLocalization
import Folder.AdelicInfinityTopos.ArchimedeanFiber
import Folder.AdelicInfinityTopos.NonArchimedeanFiber
import Folder.AdelicInfinityTopos.AdelicSpectralSheaf

/-!
# Folder.Theorem.AdelicInfinityTopos.AdelicSpectralSheaf

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports adelic sheaf and route/fiber contract exposures.
Ontology: proof.adelic.spectral_sheaf
Pivot role: dual
Zero typology: mixed
Contract boundary: theorem-wrapper
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace Theorem
namespace AdelicInfinityTopos
namespace AdelicSpectralSheaf

theorem global_route_tracks_all_primes
    (R : Folder.AdelicInfinityTopos.GlobalZTMFRoute) :
    R.allPrimeComponentsTracked :=
  Folder.AdelicInfinityTopos.global_route_tracks_all_primes R

theorem bad_prime_localization_is_bad
    (L : Folder.AdelicInfinityTopos.BadPrimeTMFLocalization) :
    L.p = 2 ∨ L.p = 3 :=
  Folder.AdelicInfinityTopos.bad_prime_localization_is_bad L

theorem archimedean_fiber_place
    (F : Folder.AdelicInfinityTopos.ArchimedeanRodgersTaoFiber) :
    F.place = Folder.AdelicInfinityTopos.Place.archimedean :=
  Folder.AdelicInfinityTopos.archimedean_fiber_place F

theorem archimedean_fiber_local_equilibrium
    (F : Folder.AdelicInfinityTopos.ArchimedeanRodgersTaoFiber) :
    F.zeroDynamics.localEquilibriumConclusion :=
  Folder.AdelicInfinityTopos.archimedean_fiber_local_equilibrium F

theorem nonarchimedean_fiber_is_finite
    (F : Folder.AdelicInfinityTopos.NonArchimedeanTMFFiber) :
    Folder.AdelicInfinityTopos.IsFinitePrimePlace F.place :=
  Folder.AdelicInfinityTopos.nonarchimedean_fiber_is_finite F

theorem nonarchimedean_local_modular_compatible
    (F : Folder.AdelicInfinityTopos.NonArchimedeanTMFFiber) :
    F.localModularCompatibility :=
  Folder.AdelicInfinityTopos.nonarchimedean_local_modular_compatible F

theorem adelic_sheaf_has_hyperdescent
    (S : Folder.AdelicInfinityTopos.AdelicSpectralSheaf) :
    S.sheaf.hyperdescent :=
  Folder.AdelicInfinityTopos.adelic_sheaf_has_hyperdescent S

theorem adelic_sheaf_has_local_factor_compatibility
    (S : Folder.AdelicInfinityTopos.AdelicSpectralSheaf) :
    S.localFactorCompatibility :=
  Folder.AdelicInfinityTopos.adelic_sheaf_has_local_factor_compatibility S

theorem adelic_sheaf_has_product_formula_compatibility
    (S : Folder.AdelicInfinityTopos.AdelicSpectralSheaf) :
    S.productFormulaCompatibility :=
  Folder.AdelicInfinityTopos.adelic_sheaf_has_product_formula_compatibility S

end AdelicSpectralSheaf
end AdelicInfinityTopos
end Theorem
end Folder
