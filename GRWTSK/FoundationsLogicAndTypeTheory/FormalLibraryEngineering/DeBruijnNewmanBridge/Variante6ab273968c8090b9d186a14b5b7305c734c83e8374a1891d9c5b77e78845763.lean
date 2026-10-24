import Folder.Research.DeBruijnNewmanBridge

/-!
# Folder.Theorem.Research.DeBruijnNewmanBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports de Bruijn-Newman boundary separation facts.
Ontology: proof.research.debruijn_newman_bridge
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: theorem-wrapper
Composite stack role: research
-/

namespace Folder
namespace Theorem
namespace Research
namespace DeBruijnNewmanBridge

theorem debruijn_newman_not_lfunction_zero_kind :
    Folder.Core.ZeroKind.deBruijnNewmanZero ≠
      Folder.Core.ZeroKind.lFunctionZero :=
  Folder.Research.DeBruijnNewmanBridge.debruijn_newman_not_lfunction_zero_kind

end DeBruijnNewmanBridge
end Research
end Theorem
end Folder
