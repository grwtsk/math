import Folder.Core.ZeroTypology

/-!
# Folder.Theorem.Core.ZeroTypology

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes typed-zero separation facts for downstream finite carriers.
Ontology: proof.core.zero_typology
Pivot role: none
Zero typology: spectral
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace Core

theorem spectralFieldZero_ne_ellipticIdentityZero :
    Folder.Core.ZeroKind.spectralFieldZero ≠
      Folder.Core.ZeroKind.ellipticIdentityZero :=
  Folder.Core.spectralFieldZero_ne_ellipticIdentityZero

theorem heatResidualZero_ne_lFunctionZero :
    Folder.Core.ZeroKind.heatResidualZero ≠
      Folder.Core.ZeroKind.lFunctionZero :=
  Folder.Core.heatResidualZero_ne_lFunctionZero

theorem shellHolonomyZero_ne_deBruijnNewmanZero :
    Folder.Core.ZeroKind.shellHolonomyZero ≠
      Folder.Core.ZeroKind.deBruijnNewmanZero :=
  Folder.Core.shellHolonomyZero_ne_deBruijnNewmanZero

theorem neutralPhaseZero_ne_spectralModeZero :
    Folder.Core.ZeroKind.neutralPhaseZero ≠
      Folder.Core.ZeroKind.spectralModeZero :=
  Folder.Core.neutralPhaseZero_ne_spectralModeZero

end Core
end Theorem
end Folder
