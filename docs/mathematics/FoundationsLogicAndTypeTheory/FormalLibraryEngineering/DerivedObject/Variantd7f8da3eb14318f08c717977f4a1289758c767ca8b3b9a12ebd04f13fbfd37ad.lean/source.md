# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DerivedObject.Variantd7f8da3eb14318f08c717977f4a1289758c767ca8b3b9a12ebd04f13fbfd37ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ad7724a49a48542a95c1819ff221909fbbb4d46` · SHA-256 `d7f8da3eb14318f08c717977f4a1289758c767ca8b3b9a12ebd04f13fbfd37ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.SectionComplex

/-!
# Folder.DerivedSheaf.DerivedObject

Radiation role: research-boundary
BinaryMatrix spine: This module records derived-object contracts, not BinaryMatrix data.
Ontology: derived.derived_object
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure QuasiIsomorphism
    (A B : SectionComplex) where
  map : ∀ n : Degree, A.Section n → B.Section n
  inducesCohomologyIso : Prop
  inducesCohomologyIso_certified : inducesCohomologyIso

structure DerivedObject where
  representative : SectionComplex
  localizationByQuasiIso : Prop
  localizationByQuasiIso_certified : localizationByQuasiIso
  label : String

theorem derived_object_localized
    (D : DerivedObject) :
    D.localizationByQuasiIso :=
  D.localizationByQuasiIso_certified

theorem quasi_iso_induces_cohomology_iso
    {A B : SectionComplex}
    (q : QuasiIsomorphism A B) :
    q.inducesCohomologyIso :=
  q.inducesCohomologyIso_certified

end DerivedSheaf
end Folder
```
