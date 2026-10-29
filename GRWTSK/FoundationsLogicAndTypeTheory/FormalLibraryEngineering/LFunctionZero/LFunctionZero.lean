import Folder.Research.LFunctionZero

/-!
# Folder.Theorem.Research.LFunctionZero

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports typed L-function zero boundary facts.
Ontology: proof.research.lfunction_zero
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: research
-/

namespace Folder
namespace Theorem
namespace Research
namespace LFunctionZero

theorem criticalLine_of_centered
    (z : Folder.Research.LFunctionZero.LFunctionZeroData)
    (h : Folder.Research.LFunctionZero.CenteredAtSpectralPivot z) :
    Folder.Research.LFunctionZero.LiesOnCriticalLine z :=
  Folder.Research.LFunctionZero.criticalLine_of_centered z h

theorem lFunctionZero_ne_spectralModeZero :
    Folder.Core.ZeroKind.lFunctionZero ≠
      Folder.Core.ZeroKind.spectralModeZero :=
  Folder.Research.LFunctionZero.lFunctionZero_ne_spectralModeZero

theorem lFunctionZero_ne_deBruijnNewmanZero :
    Folder.Core.ZeroKind.lFunctionZero ≠
      Folder.Core.ZeroKind.deBruijnNewmanZero :=
  Folder.Research.LFunctionZero.lFunctionZero_ne_deBruijnNewmanZero

end LFunctionZero
end Research
end Theorem
end Folder
