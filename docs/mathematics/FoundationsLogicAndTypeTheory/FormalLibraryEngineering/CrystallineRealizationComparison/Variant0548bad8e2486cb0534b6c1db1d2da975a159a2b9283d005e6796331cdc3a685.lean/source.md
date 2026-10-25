# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineRealizationComparison.Variant0548bad8e2486cb0534b6c1db1d2da975a159a2b9283d005e6796331cdc3a685

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65166d65c98dd46290d60555f1a2993c7e888789` · SHA-256 `0548bad8e2486cb0534b6c1db1d2da975a159a2b9283d005e6796331cdc3a685`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
