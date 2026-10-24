# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HandleComplex.Variant656a7bf1d85f7ef9e53a15b6085210564b6507f8140e7907ac032520bf3913fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c089658b026dc7f70e747330a3abbb9ed1f21fd2` · SHA-256 `656a7bf1d85f7ef9e53a15b6085210564b6507f8140e7907ac032520bf3913fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Sheaf.Handle
import Folder.DerivedSheaf.SectionComplex

/-!
# Folder.DerivedSheaf.HandleComplex

Radiation role: research-boundary
BinaryMatrix spine: This module connects sheaf handles to section complexes, not BinaryMatrix carriers.
Ontology: derived.handle_complex
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

open CategoryTheory

universe u v w

structure HandleComplex
    (C : Type u)
    [Category.{v} C] where
  handle : Degree → Sheaf.Handle.{u, v, w} C
  sectionComplex : SectionComplex
  sectionOfHandle :
    ∀ n : Degree, sectionComplex.Section n → Type w
  compatibleWithHandleIdentity : Prop
  compatibleWithHandleIdentity_certified : compatibleWithHandleIdentity

theorem handle_complex_has_section_complex
    {C : Type u}
    [Category.{v} C]
    (H : HandleComplex C) :
    ∃ S : SectionComplex, S = H.sectionComplex :=
  ⟨H.sectionComplex, rfl⟩

theorem handle_complex_identity_compatible
    {C : Type u}
    [Category.{v} C]
    (H : HandleComplex C) :
    H.compatibleWithHandleIdentity :=
  H.compatibleWithHandleIdentity_certified

end DerivedSheaf
end Folder
```
