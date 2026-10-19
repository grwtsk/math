import Folder.CanonicalPath.GlobalIndexNonzero

/-!
# Folder.Theorem.CanonicalPath.GlobalIndexNonzero

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports canonical-path global index facts, not BinaryMatrix data.
Ontology: proof.canonical_path.global_index_nonzero
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem global_k_index_nonzero
    {M : Folder.DerivedSheaf.MellKTheory}
    (G : Folder.CanonicalPath.GlobalKIndexNonzero M)
    {x : G.Object}
    (h : G.relevant x) :
    (G.kIndexAt x).indexClass.Nonzero :=
  Folder.CanonicalPath.global_k_index_nonzero G h

theorem elliptic_family_global_index_nonzero
    {M : Folder.DerivedSheaf.MellKTheory}
    (E : Folder.CanonicalPath.CertifiedEllipticCurveFamily M)
    {x : E.Curve}
    (h : E.relevantForGRHBoundary x) :
    (E.kIndex x).indexClass.Nonzero :=
  Folder.CanonicalPath.elliptic_family_global_index_nonzero E h

end CanonicalPath
end Theorem
end Folder
