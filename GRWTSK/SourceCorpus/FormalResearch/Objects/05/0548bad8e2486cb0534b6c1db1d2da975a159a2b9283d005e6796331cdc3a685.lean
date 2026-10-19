import Folder.CanonicalPath.CrystallineRealizationComparison

/-!
# Folder.Theorem.CanonicalPath.CrystallineRealizationComparison

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports realization comparison facts.
Ontology: proof.canonical_path.realization_comparison
Pivot role: dual
Zero typology: trace
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem realization_comparison_maps_exist
    (R : Folder.CanonicalPath.RealizationComparisonPackage) :
    R.comparisonMapsExist :=
  Folder.CanonicalPath.realization_comparison_maps_exist R

theorem realization_trace_classes_agree
    (R : Folder.CanonicalPath.RealizationComparisonPackage) :
    R.traceClassesAgreeAfterComparison :=
  Folder.CanonicalPath.realization_trace_classes_agree R

end CanonicalPath
end Theorem
end Folder
