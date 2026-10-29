import Folder.AdelicInfinityTopos.HomotopyCoherence

/-!
# Folder.Theorem.AdelicInfinityTopos.HomotopyCoherence

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports homotopy-coherence contract exposures.
Ontology: proof.adelic.homotopy_coherence
Pivot role: dual
Zero typology: mixed
Contract boundary: theorem-wrapper
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace Theorem
namespace AdelicInfinityTopos
namespace HomotopyCoherence

theorem homotopy_restrictions_identity_coherent
    {S : Folder.AdelicInfinityTopos.AdelicSpectralSheaf}
    (H : Folder.AdelicInfinityTopos.HomotopyCoherentRestrictions S) :
    H.identityCoherent :=
  Folder.AdelicInfinityTopos.homotopy_restrictions_identity_coherent H

theorem homotopy_restrictions_composition_coherent
    {S : Folder.AdelicInfinityTopos.AdelicSpectralSheaf}
    (H : Folder.AdelicInfinityTopos.HomotopyCoherentRestrictions S) :
    H.compositionCoherent :=
  Folder.AdelicInfinityTopos.homotopy_restrictions_composition_coherent H

theorem homotopy_restrictions_higher_coherent
    {S : Folder.AdelicInfinityTopos.AdelicSpectralSheaf}
    (H : Folder.AdelicInfinityTopos.HomotopyCoherentRestrictions S) :
    H.higherCoherence :=
  Folder.AdelicInfinityTopos.homotopy_restrictions_higher_coherent H

end HomotopyCoherence
end AdelicInfinityTopos
end Theorem
end Folder
