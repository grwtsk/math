import Folder.CanonicalPath.DeterminantLinePropagation

/-!
# Folder.Theorem.CanonicalPath.DeterminantLinePropagation

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports determinant-line propagation facts.
Ontology: proof.canonical_path.determinant_line
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem determinant_line_propagates_if_supplied
    {F : Folder.CanonicalPath.PerfectSectionComplexFamily}
    (D : Folder.CanonicalPath.DeterminantLineFamily F) :
    D.propagatesOnConnectedComponent :=
  Folder.CanonicalPath.determinant_line_propagates_if_supplied D

theorem determinant_line_has_nonzero_anchor
    {F : Folder.CanonicalPath.PerfectSectionComplexFamily}
    (D : Folder.CanonicalPath.DeterminantLineFamily F) :
    D.nonzeroAnchor :=
  Folder.CanonicalPath.determinant_line_has_nonzero_anchor D

end CanonicalPath
end Theorem
end Folder
