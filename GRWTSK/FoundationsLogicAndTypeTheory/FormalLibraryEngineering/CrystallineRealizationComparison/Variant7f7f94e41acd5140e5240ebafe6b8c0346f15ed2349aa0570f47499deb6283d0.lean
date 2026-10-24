import Folder.DerivedSheaf.WittRealization
import Folder.CrystallineIndex.WittComplex

/-!
# Folder.CanonicalPath.CrystallineRealizationComparison

Radiation role: research-boundary
BinaryMatrix spine: This module records crystalline/Witt/prismatic realization comparison.
Ontology: canonical.trace_realization
Pivot role: dual
Zero typology: trace
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

structure RealizationComparisonPackage where
  KTheorySide : Type
  ComplexAnalyticSide : Type
  CrystallineSide : Type
  WittOrPrismaticSide : Type
  comparisonMapsExist : Prop
  comparisonMapsExist_certified : comparisonMapsExist
  traceClassesAgreeAfterComparison : Prop
  traceClassesAgreeAfterComparison_certified : traceClassesAgreeAfterComparison
  sourceLabel : String

theorem realization_comparison_maps_exist
    (R : RealizationComparisonPackage) :
    R.comparisonMapsExist :=
  R.comparisonMapsExist_certified

theorem realization_trace_classes_agree
    (R : RealizationComparisonPackage) :
    R.traceClassesAgreeAfterComparison :=
  R.traceClassesAgreeAfterComparison_certified

end CanonicalPath
end Folder
