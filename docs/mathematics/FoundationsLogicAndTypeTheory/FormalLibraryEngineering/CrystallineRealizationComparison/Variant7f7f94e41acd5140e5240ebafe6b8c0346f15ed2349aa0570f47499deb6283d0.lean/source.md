# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineRealizationComparison.Variant7f7f94e41acd5140e5240ebafe6b8c0346f15ed2349aa0570f47499deb6283d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `864f7f6fbb9626d260532730828fdc0f5442381f` · SHA-256 `7f7f94e41acd5140e5240ebafe6b8c0346f15ed2349aa0570f47499deb6283d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
