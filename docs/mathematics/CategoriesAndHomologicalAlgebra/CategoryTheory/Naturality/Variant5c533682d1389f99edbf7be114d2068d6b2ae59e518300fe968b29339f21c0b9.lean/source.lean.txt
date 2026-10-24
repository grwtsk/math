import DAF.Comparison.Construction
import Mathlib.CategoryTheory.NatTrans

/-!
# Natural comparisons

Functorial comparisons carry an actual natural transformation.  Naturality
and uniqueness are proof data; the word “canonical” alone supplies neither.
-/

namespace DAF.Comparison

open CategoryTheory

universe u v

/-- A categorical comparison represented by a natural transformation. -/
structure Natural
    {C : Type u} {D : Type v}
    [Category C] [Category D]
    (F G : Functor C D) where
  hom : NatTrans F G

namespace Natural

def id
    {C : Type u} {D : Type v}
    [Category C] [Category D]
    (F : Functor C D) : Natural F F :=
  ⟨NatTrans.id F⟩

def comp
    {C : Type u} {D : Type v}
    [Category C] [Category D]
    {F G H : Functor C D}
    (g : Natural G H) (f : Natural F G) : Natural F H :=
  ⟨f.hom.vcomp g.hom⟩

@[simp]
theorem id_hom
    {C : Type u} {D : Type v}
    [Category C] [Category D]
    (F : Functor C D) : (id F).hom = NatTrans.id F :=
  rfl

@[simp]
theorem comp_hom
    {C : Type u} {D : Type v}
    [Category C] [Category D]
    {F G H : Functor C D}
    (g : Natural G H) (f : Natural F G) :
    (g.comp f).hom = f.hom.vcomp g.hom :=
  rfl

end Natural

end DAF.Comparison
