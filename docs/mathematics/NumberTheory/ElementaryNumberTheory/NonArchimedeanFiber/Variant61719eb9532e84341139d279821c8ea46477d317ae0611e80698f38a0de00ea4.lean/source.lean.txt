import Folder.ResearchTopos.TMFFraming
import Folder.AdelicInfinityTopos.BadPrimeLocalization
import Folder.AdelicInfinityTopos.SpectrumObject

/-!
# Folder.AdelicInfinityTopos.NonArchimedeanFiber

Radiation role: research-boundary
BinaryMatrix spine: This module records finite-prime TMF/Morava placeholder fibers.
Ontology: adelic.nonarchimedean_fiber
Pivot role: arithmetic
Zero typology: none
Contract boundary: contract
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

structure MoravaLocalContract where
  p : Nat
  prime : Nat.Prime p
  height : Nat
  moravaK : SpectrumObject
  localization : Prop

structure NonArchimedeanTMFFiber where
  place : Place
  finitePrime : IsFinitePrimePlace place
  tmfLocalization? : Option BadPrimeTMFLocalization
  moravaLocal? : Option MoravaLocalContract
  spectrumObject : SpectrumObject
  localTorsionData : Prop
  localModularCompatibility : Prop
  localModularCompatibility_certified : localModularCompatibility

theorem nonarchimedean_fiber_is_finite
    (F : NonArchimedeanTMFFiber) :
    IsFinitePrimePlace F.place :=
  F.finitePrime

theorem nonarchimedean_local_modular_compatible
    (F : NonArchimedeanTMFFiber) :
    F.localModularCompatibility :=
  F.localModularCompatibility_certified

end AdelicInfinityTopos
end Folder
