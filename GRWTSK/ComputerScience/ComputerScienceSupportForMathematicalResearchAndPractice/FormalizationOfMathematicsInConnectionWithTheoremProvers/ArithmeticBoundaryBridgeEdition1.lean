import Folder.DerivedSheaf.ArithmeticBoundaryBridge

/-!
# Folder.Theorem.DerivedSheaf.ArithmeticBoundaryBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports arithmetic-to-K-index bridge facts, not BinaryMatrix data.
Ontology: derived.arithmetic_k_index_bridge
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem arithmetic_bridge_supports_k_index
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.ArithmeticKTheoryIndexBridge M) :
    B.arithmeticDataSupportsKIndex :=
  Folder.DerivedSheaf.arithmetic_bridge_supports_k_index B

theorem arithmetic_bridge_has_k_index
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.ArithmeticKTheoryIndexBridge M) :
    ∃ I : Folder.DerivedSheaf.KTheoryIndex M, I = B.index :=
  Folder.DerivedSheaf.arithmetic_bridge_has_k_index B

end DerivedSheaf
end Theorem
end Folder
