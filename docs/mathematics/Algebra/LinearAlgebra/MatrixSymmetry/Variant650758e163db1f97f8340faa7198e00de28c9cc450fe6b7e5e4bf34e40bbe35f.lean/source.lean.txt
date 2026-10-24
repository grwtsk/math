import Folder.Archive.MatrixSymmetry

/-!
# Folder.Theorem.Archive.MatrixSymmetry

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes copy-action matrix symmetry facts.
Ontology: proof.archive.matrix_symmetry
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: carrier
-/

namespace Folder
namespace Theorem
namespace Archive

theorem copyAction_id_act
    (M : Folder.Carrier.BinaryMatrix) :
    Folder.Archive.copyAction.act Folder.Archive.copyAction.id M = M :=
  Folder.Archive.copyAction_id_act M

end Archive
end Theorem
end Folder
