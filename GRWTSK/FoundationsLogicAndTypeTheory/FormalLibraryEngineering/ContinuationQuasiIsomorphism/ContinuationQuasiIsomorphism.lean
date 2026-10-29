import Folder.CanonicalPath.ContinuationQuasiIsomorphism

/-!
# Folder.Theorem.CanonicalPath.ContinuationQuasiIsomorphism

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports continuation quasi-isomorphism facts.
Ontology: proof.canonical_path.continuation_quasi_iso
Pivot role: spectral
Zero typology: transport-boundary
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem continuation_quasi_iso_induces_cohomology_iso
    {C : Folder.CanonicalPath.AnalyticContinuationMap}
    (Q : Folder.CanonicalPath.ContinuationQuasiIsomorphism C) :
    Q.quasiIso.inducesCohomologyIso :=
  Folder.CanonicalPath.continuation_quasi_iso_induces_cohomology_iso Q

end CanonicalPath
end Theorem
end Folder
