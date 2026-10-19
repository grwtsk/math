import Folder.Archive.PresentationRule

/-!
# Folder.Theorem.Archive.PresentationRule

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes copy presentation fixed-point facts.
Ontology: proof.archive.presentation_rule
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace Archive

theorem copyRule_fixed
    (M : Folder.Carrier.BinaryMatrix) :
    Folder.Archive.IsFixedBy Folder.Archive.copyRule M :=
  Folder.Archive.copyRule_fixed M

end Archive
end Theorem
end Folder
