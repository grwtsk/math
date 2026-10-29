import Folder.Research.ArithmeticBoundary
import Folder.DerivedSheaf.KTheoryIndex

/-!
# Folder.DerivedSheaf.ArithmeticBoundaryBridge

Radiation role: research-boundary
BinaryMatrix spine: This module relates arithmetic contracts to K-theory indices, not BinaryMatrix data.
Ontology: derived.arithmetic_k_index_bridge
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

open Research.ArithmeticBoundary

/--
Arithmetic data may support a supplied K-theory index.

This is not an index computation inside `Research.ArithmeticBoundary`.
-/
structure ArithmeticKTheoryIndexBridge
    (M : MellKTheory) where
  arithmeticSource : Type _
  hasseWeil? : Option HasseWeilContract
  modularity? : Option ModularityContract
  bsd? : Option BSDContract
  index : KTheoryIndex M
  arithmeticDataSupportsKIndex : Prop
  arithmeticDataSupportsKIndex_certified : arithmeticDataSupportsKIndex
  sourceLabel : String

theorem arithmetic_bridge_supports_k_index
    {M : MellKTheory}
    (B : ArithmeticKTheoryIndexBridge M) :
    B.arithmeticDataSupportsKIndex :=
  B.arithmeticDataSupportsKIndex_certified

theorem arithmetic_bridge_has_k_index
    {M : MellKTheory}
    (B : ArithmeticKTheoryIndexBridge M) :
    ∃ I : KTheoryIndex M, I = B.index :=
  ⟨B.index, rfl⟩

end DerivedSheaf
end Folder
