# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Symmetry.Variant798f9077ece450f16f240a03e41d323caf870f315180a72f2c8a4eb46398edb4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34b2b546a1b034b46d28fc7be70f2d4affcb81b8` · SHA-256 `c05af8c09c3653c881c37712296050c44b3ee97ad6fc1c3cfa40ecec574b15e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SymmEquivFunctor.Variantc03cffbd3c02d8f676e878bb165ebbcffc4d6b59cddbb3ad31cd55931472e2dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c03cffbd3c02d8f676e878bb165ebbcffc4d6b59cddbb3ad31cd55931472e2dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SymmEquivFunctor.Variantc03cffbd3c02d8f676e878bb165ebbcffc4d6b59cddbb3ad31cd55931472e2dc","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c03cffbd3c02d8f676e878bb165ebbcffc4d6b59cddbb3ad31cd55931472e2dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Equivalence/Symmetry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Robin Carlier. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robin Carlier
-/
import Mathlib.CategoryTheory.Equivalence
import Mathlib.CategoryTheory.Adjunction.Mates

/-!
# Functoriality of the symmetry of equivalences

Using the calculus of mates in `CategoryTheory.Adjunction.Mates`, we prove that passing
to the symmetric equivalence defines an equivalence between `C ≌ D` and `(D ≌ C)ᵒᵖ`,
and provides the definition of the functor that takes an equivalence to its inverse.

## Main definitions
- `Equivalence.symmEquiv C D`: the equivalence `(C ≌ D) ≌ (D ≌ C)ᵒᵖ` obtained by
  taking `Equivalence.symm` on objects, and `conjugateEquiv` on maps.
- `Equivalence.inverseFunctor C D`: The functor `(C ≌ D) ⥤ (D ⥤ C)ᵒᵖ` sending an equivalence
  `e` to the functor `e.inverse`.
- `congrLeftFunctor C D E`: the functor (C ≌ D) ⥤ ((C ⥤ E) ≌ (D ⥤ E))ᵒᵖ that applies
  `Equivalence.congrLeft` on objects, and whiskers left by `conjugateEquiv` on maps.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SymmEquivFunctor.Variantc03cffbd3c02d8f676e878bb165ebbcffc4d6b59cddbb3ad31cd55931472e2dc

namespace CategoryTheory

open CategoryTheory.Functor NatIso Category

namespace Equivalence

variable (C : Type*) [Category C] (D : Type*) [Category D]

/-- The forward functor of the equivalence `(C ≌ D) ≌ (D ≌ C)ᵒᵖ`. -/
@[simps]
def symmEquivFunctor : (C ≌ D) ⥤ (D ≌ C)ᵒᵖ where
  obj e := Opposite.op e.symm
  map {e f} α := (mkHom <| conjugateEquiv f.toAdjunction e.toAdjunction <| asNatTrans α).op
  map_comp _ _ := Quiver.Hom.unop_inj (by aesop_cat)

/-- The inverse functor of the equivalence `(C ≌ D) ≌ (D ≌ C)ᵒᵖ`. -/
@[simps!]
def symmEquivInverse : (D ≌ C)ᵒᵖ ⥤ (C ≌ D) :=
  Functor.leftOp
    { obj e := Opposite.op e.symm
      map {e f} α := Quiver.Hom.op <| mkHom <|
        conjugateEquiv e.symm.toAdjunction f.symm.toAdjunction |>.invFun <| asNatTrans α
      map_comp _ _ := Quiver.Hom.unop_inj (by aesop_cat) }

/-- Taking the symmetric of an equivalence induces an equivalence of categories
`(C ≌ D) ≌ (D ≌ C)ᵒᵖ`. -/
@[simps]
def symmEquiv : (C ≌ D) ≌ (D ≌ C)ᵒᵖ where
  functor := symmEquivFunctor _ _
  inverse := symmEquivInverse _ _
  counitIso :=
    NatIso.ofComponents (fun e ↦ Iso.op <| Iso.refl _) <| fun _ ↦
      (by simp [symm, symmEquivInverse])
  unitIso :=
    NatIso.ofComponents (fun e ↦ Iso.refl _) <| fun _ ↦ by
      ext c
      simp [symm, symmEquivInverse]
  functor_unitIso_comp X := by
    simp [symm, symmEquivInverse]

/-- The `inverse` functor that sends a functor to its inverse. -/
@[simps!]
def inverseFunctor : (C ≌ D) ⥤ (D ⥤ C)ᵒᵖ :=
  (symmEquiv C D).functor ⋙ (Functor.op <| functorFunctor D C)

variable {C D}

/-- The `inverse` functor sends an equivalence to its inverse. -/
@[simps!]
def inverseFunctorObjIso (e : C ≌ D) :
    (inverseFunctor C D).obj e ≅ Opposite.op e.inverse := Iso.refl _

/-- We can compare the way we obtain a natural isomorphism `e.inverse ≅ f.inverse` from
an isomorphism `e ≌ f` via `inverseFunctor` with the way we get one through
`Iso.isoInverseOfIsoFunctor`. -/
lemma inverseFunctorMapIso_symm_eq_isoInverseOfIsoFunctor {e f: C ≌ D} (α : e ≅ f) :
    Iso.unop ((inverseFunctor C D).mapIso α.symm) =
    Iso.isoInverseOfIsoFunctor ((functorFunctor _ _).mapIso α) := by
  aesop_cat

/-- An "unopped" version of the equivalence `inverseFunctorObj'. -/
@[simps!]
def inverseFunctorObj' (e : C ≌ D) :
    Opposite.unop ((inverseFunctor C D).obj e) ≅ e.inverse :=
  Iso.refl _

variable (C D) in
/-- Promoting `Equivalence.congrLeft` to a functor. -/
@[simps!]
def congrLeftFunctor (E : Type*) [Category E] : (C ≌ D) ⥤ ((C ⥤ E) ≌ (D ⥤ E))ᵒᵖ :=
  Functor.rightOp
    { obj f := f.unop.congrLeft
      map {e f} α := mkHom <| (whiskeringLeft _ _ _).map <|
        conjugateEquiv e.unop.toAdjunction f.unop.toAdjunction <| asNatTrans <|
          Quiver.Hom.unop α
      map_comp _ _ := by
        ext
        simp [← map_comp] }

end Equivalence

end CategoryTheory
```
