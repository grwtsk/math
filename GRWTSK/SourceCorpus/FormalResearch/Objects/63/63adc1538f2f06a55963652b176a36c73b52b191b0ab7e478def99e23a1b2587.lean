import Folder.CrystallineIndex.SpectralDiracBridge

/-!
# Folder.Theorem.CrystallineIndex.SpectralDiracBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports crystalline Dirac spectral bridge facts, not BinaryMatrix data.
Ontology: crystalline_index.crystalline_dirac_to_spectral
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex

theorem crystalline_dirac_has_spectral_object
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    (B : Folder.CrystallineIndex.CrystallineDiracToSpectralObject D) :
    B.spectrumRepresentsDirac :=
  Folder.CrystallineIndex.crystalline_dirac_has_spectral_object B

end CrystallineIndex
end Theorem
end Folder
