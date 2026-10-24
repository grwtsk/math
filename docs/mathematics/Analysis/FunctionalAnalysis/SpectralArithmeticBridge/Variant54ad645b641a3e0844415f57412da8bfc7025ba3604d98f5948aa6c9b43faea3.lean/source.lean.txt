import Folder.Research.SpectralArithmeticBridge

/-!
# Folder.Theorem.Research.SpectralArithmeticBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports the spectral-arithmetic bridge contract exposure.
Ontology: proof.research.spectral_arithmetic_bridge
Pivot role: dual
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: research
-/

namespace Folder
namespace Theorem
namespace Research
namespace SpectralArithmeticBridge

theorem centered_from_spectral_arithmetic_bridge
    (C : Folder.Research.SpectralArithmeticBridge.CriticalLineSpectralCriterion)
    (z : C.model.zeroBridge.LZero)
    (h : C.model.spectralZerosModelLZeros) :
    Folder.Research.LFunctionZero.CenteredAtSpectralPivot (C.lzeroToData z) :=
  Folder.Research.SpectralArithmeticBridge.centered_from_spectral_arithmetic_bridge C z h

end SpectralArithmeticBridge
end Research
end Theorem
end Folder
