import Folder.CanonicalPath.AnalyticContinuationMap
import Folder.DerivedSheaf.DerivedObject

/-!
# Folder.CanonicalPath.ContinuationQuasiIsomorphism

Radiation role: research-boundary
BinaryMatrix spine: This module records continuation quasi-isomorphism targets.
Ontology: canonical.continuation_quasi_iso
Pivot role: spectral
Zero typology: transport-boundary
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

structure ContinuationQuasiIsomorphism
    (C : AnalyticContinuationMap) where
  quasiIso :
    DerivedSheaf.QuasiIsomorphism C.sourceComplex C.targetComplex
  continuationInducesCohomologyIso :
    quasiIso.inducesCohomologyIso
  sourceLabel : String

theorem continuation_quasi_iso_induces_cohomology_iso
    {C : AnalyticContinuationMap}
    (Q : ContinuationQuasiIsomorphism C) :
    Q.quasiIso.inducesCohomologyIso :=
  Q.continuationInducesCohomologyIso

end CanonicalPath
end Folder
