import Folder.CanonicalPath.GlobalAlignmentComposition

/-!
# Folder.Theorem.CanonicalPath.GlobalAlignmentComposition

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports global alignment composition facts.
Ontology: proof.canonical_path.contract_composition
Pivot role: dual
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem canonical_path_global_alignment_if_supplied
    (C : Folder.CanonicalPath.CanonicalPathGlobalAlignmentContract) :
    C.allZerosOnCriticalLine :=
  Folder.CanonicalPath.canonical_path_global_alignment_if_supplied C

end CanonicalPath
end Theorem
end Folder
