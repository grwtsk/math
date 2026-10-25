# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ZeroTypology.Variantb97439c130cdade2f77399ff2dfa0dc52af77272da5996fdf21f6ae6b6e28829

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d594e5382bafc6ac6d768fce4bcc4ea02db33814` · SHA-256 `b97439c130cdade2f77399ff2dfa0dc52af77272da5996fdf21f6ae6b6e28829`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
