# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DerivedObject.Variant2824204f1d6673a4fca203043bb6ecaabb43b49f9acd9cbf43130d789d1d4230

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `560e0a8019d3d581bd03af52d6b6a9ee97d676f0` · SHA-256 `2824204f1d6673a4fca203043bb6ecaabb43b49f9acd9cbf43130d789d1d4230`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.DerivedObject

/-!
# Folder.Theorem.DerivedSheaf.DerivedObject

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports derived-object boundary facts, not BinaryMatrix data.
Ontology: derived.derived_object
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem derived_object_localized
    (D : Folder.DerivedSheaf.DerivedObject) :
    D.localizationByQuasiIso :=
  Folder.DerivedSheaf.derived_object_localized D

theorem quasi_iso_induces_cohomology_iso
    {A B : Folder.DerivedSheaf.SectionComplex}
    (q : Folder.DerivedSheaf.QuasiIsomorphism A B) :
    q.inducesCohomologyIso :=
  Folder.DerivedSheaf.quasi_iso_induces_cohomology_iso q

end DerivedSheaf
end Theorem
end Folder
```
