import Folder.CrystallineIndex.CrystallineDirac
import Folder.Spectral.Tensor

/-!
# Folder.CrystallineIndex.SpectralDiracBridge

Radiation role: research-boundary
BinaryMatrix spine: This module bridges crystalline Dirac contracts to spectral objects, not BinaryMatrix data.
Ontology: crystalline_index.crystalline_dirac_to_spectral
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

structure CrystallineDiracToSpectralObject
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    (D : CrystallineDiracOperator nabla) where
  spectralObject : Spectral.DiracSpectrumObject
  spectrumRepresentsDirac : Prop
  spectrumRepresentsDirac_certified : spectrumRepresentsDirac

theorem crystalline_dirac_has_spectral_object
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    (B : CrystallineDiracToSpectralObject D) :
    B.spectrumRepresentsDirac :=
  B.spectrumRepresentsDirac_certified

end CrystallineIndex
end Folder
