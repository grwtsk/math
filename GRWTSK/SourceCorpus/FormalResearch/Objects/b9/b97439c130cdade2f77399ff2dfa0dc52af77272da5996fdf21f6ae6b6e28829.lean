import Folder.Basic

/-!
# Folder.Core.ZeroTypology

Radiation role: core-architecture
BinaryMatrix spine: This module prevents downstream BinaryMatrix-adjacent layers from conflating typed zero notions.
Ontology: core.zero_typology
Pivot role: none
Zero typology: spectral
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Core

inductive ZeroKind where
  | spectralFieldZero
  | spectralModeZero
  | harmonicLaplacianZero
  | heatResidualZero
  | shellHolonomyZero
  | ellipticIdentityZero
  | neutralPhaseZero
  | lFunctionZero
  | deBruijnNewmanZero
deriving DecidableEq, Repr

structure TypedZero where
  carrier : Type
  kind : ZeroKind
  description : String

theorem spectralFieldZero_ne_ellipticIdentityZero :
    ZeroKind.spectralFieldZero ≠ ZeroKind.ellipticIdentityZero := by
  decide

theorem heatResidualZero_ne_lFunctionZero :
    ZeroKind.heatResidualZero ≠ ZeroKind.lFunctionZero := by
  decide

theorem shellHolonomyZero_ne_deBruijnNewmanZero :
    ZeroKind.shellHolonomyZero ≠ ZeroKind.deBruijnNewmanZero := by
  decide

theorem neutralPhaseZero_ne_spectralModeZero :
    ZeroKind.neutralPhaseZero ≠ ZeroKind.spectralModeZero := by
  decide

end Core
end Folder
