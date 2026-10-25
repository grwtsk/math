import Folder.Archive.IndexSpinRef

/-!
# Folder.Theorem.Archive.IndexSpinRef

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes index-spin reference realization.
Ontology: proof.archive.index_spin_ref
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: carrier
-/

namespace Folder
namespace Theorem
namespace Archive

theorem realize_copy_id
    (D : Folder.Archive.MatrixAtomDictionary)
    (i : Nat)
    (M : Folder.Carrier.BinaryMatrix)
    (h : D.get? i = some M) :
    Folder.Archive.realizeIndexSpin? Folder.Archive.copyAction D
      { index := i, spin := () } = some M :=
  Folder.Archive.realize_copy_id D i M h

end Archive
end Theorem
end Folder
