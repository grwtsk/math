import Folder.CanonicalPath.Literature.Paper

/-!
# Folder.Theorem.CanonicalPath.Literature.Paper

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports literature paper facts.
Ontology: proof.canonical_path.literature
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath
namespace Literature

theorem paper_has_title
    (P : Folder.CanonicalPath.Literature.PaperReference) :
    ∃ t, P.title = t :=
  Folder.CanonicalPath.Literature.paper_has_title P

theorem paper_has_remaining_gap
    (P : Folder.CanonicalPath.Literature.PaperReference) :
    ∃ g, P.remainingGap = g :=
  Folder.CanonicalPath.Literature.paper_has_remaining_gap P

end Literature
end CanonicalPath
end Theorem
end Folder
