# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittComplex.Variantcf18297f62de43b7600569eefc39d2881c7e90466fe742ea2ae4d65acfa98e09

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d87e76aa708c9e38fbfbaa9ca29f837894d436a` · SHA-256 `cf18297f62de43b7600569eefc39d2881c7e90466fe742ea2ae4d65acfa98e09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.WittComplex

/-!
# Folder.Theorem.CrystallineIndex.WittComplex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Witt-complex contract exposure facts.
Ontology: proof.crystalline_index.witt_complex
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace WittComplex

theorem witt_complex_is_complex
    (W : Folder.CrystallineIndex.WittComplex) :
    W.isComplex :=
  Folder.CrystallineIndex.witt_complex_is_complex W

theorem witt_element_has_degree
    {W : Folder.CrystallineIndex.WittComplex}
    (x : Folder.CrystallineIndex.WittElement W) :
    ∃ d : W.Degree, x.degree = d :=
  Folder.CrystallineIndex.witt_element_has_degree x

end WittComplex
end CrystallineIndex
end Theorem
end Folder
```
