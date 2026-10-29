import Folder.Archive.FactorTreeIndex

/-!
# Folder.Theorem.Archive.FactorTreeIndex

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes factor-tree logical layer index decoding.
Ontology: proof.archive.factor_tree_index
Pivot role: arithmetic
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: arithmetic
-/

namespace Folder
namespace Theorem
namespace Archive

theorem factorTreeLayerIndex_decodes
    (i : Folder.Archive.FactorTreeLayerIndex) :
    Folder.NumberTheory.factorProduct i.factorMap = i.logicalLayer :=
  Folder.Archive.factorTreeLayerIndex_decodes i

end Archive
end Theorem
end Folder
