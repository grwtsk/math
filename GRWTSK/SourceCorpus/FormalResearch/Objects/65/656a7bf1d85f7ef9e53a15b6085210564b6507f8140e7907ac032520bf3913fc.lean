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
