# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseLFunction.Variant62f5117e682ee18e2ae75108e53f7e0b09112e8bbe24e0bf6caae53ed9860576

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14b4d952082da16c0e0dc20d03511eae956f6f64` · SHA-256 `62f5117e682ee18e2ae75108e53f7e0b09112e8bbe24e0bf6caae53ed9860576`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.BaseCaseLFunction

/-!
# Folder.Theorem.DerivedSheaf.BaseCaseLFunction

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports base-case L-function facts, not BinaryMatrix data.
Ontology: base.lfunction_data
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem base_lfunction_center_is_spectral_pivot
    (L : Folder.DerivedSheaf.BaseCaseLFunctionData) :
    L.normalizedCriticalCenter = Folder.Core.spectralPivot :=
  Folder.DerivedSheaf.base_lfunction_center_is_spectral_pivot L

theorem base_lfunction_central_value_nonzero
    (L : Folder.DerivedSheaf.BaseCaseLFunctionData) :
    L.centralValueNonzero :=
  Folder.DerivedSheaf.base_lfunction_central_value_nonzero L

end DerivedSheaf
end Theorem
end Folder
```
