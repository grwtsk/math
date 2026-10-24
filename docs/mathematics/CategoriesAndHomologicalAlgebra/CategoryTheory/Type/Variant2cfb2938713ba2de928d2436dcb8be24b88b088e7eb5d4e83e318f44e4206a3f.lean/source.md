# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Type.Variant2cfb2938713ba2de928d2436dcb8be24b88b088e7eb5d4e83e318f44e4206a3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67828c6ebe8e02fe0c128ce4ecc7b4345ac96517` · SHA-256 `f0b4fd46068d43e3e8764f375dd51388283df62bc25965a17632d0be3e09d59a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SectionsPrecomp.Variantb0b85eeb053754ad1d98d99dcafea86c58acbed9b1c4775fd0068a201a890155","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0b85eeb053754ad1d98d99dcafea86c58acbed9b1c4775fd0068a201a890155","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SectionsPrecomp.Variantb0b85eeb053754ad1d98d99dcafea86c58acbed9b1c4775fd0068a201a890155","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b0b85eeb053754ad1d98d99dcafea86c58acbed9b1c4775fd0068a201a890155","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Final/Type.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Limits.Final

/-!
# Action of an initial functor on sections

Given `F : C ⥤ D` and `P : D ⥤ Type w`, we define a map
`sectionsPrecomp F : P.sections → (F ⋙ P).sections` and
show that it is a bijection when `F` is initial.
As `Functor.sections` identify to limits of functors to types
(at least under suitable universe assumptions), this could
be deduced from general results about limits and
initial functors, but we provide a more down to earth proof.

We also obtain the dual result that if `F` is final,
then `F.colimitTypePrecomp : (F ⋙ P).ColimitType → P.ColimitType`
is a bijection.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SectionsPrecomp.Variantb0b85eeb053754ad1d98d99dcafea86c58acbed9b1c4775fd0068a201a890155

@[expose] public section

universe w v₁ v₂ u₁ u₂

namespace CategoryTheory

namespace Functor

variable {C : Type u₁} {D : Type u₂} [Category.{v₁} C] [Category.{v₂} D]

/-- When `F : C ⥤ D` and `P : D ⥤ Type _`, this is the obvious map
`P.sections → (F ⋙ P).sections`. -/
@[simps]
def sectionsPrecomp (F : C ⥤ D) {P : D ⥤ Type w} (x : P.sections) :
    (F ⋙ P).sections where
  val _ := x.val _
  property _ := x.property _

set_option backward.defeqAttrib.useBackward true in
lemma bijective_sectionsPrecomp (F : C ⥤ D) (P : D ⥤ Type w) [F.Initial] :
    Function.Bijective (F.sectionsPrecomp (P := P)) := by
  refine ⟨fun s₁ s₂ h ↦ ?_, fun t ↦ ?_⟩
  · ext Y
    let X : CostructuredArrow F Y := Classical.arbitrary _
    have := congr_fun (congr_arg Subtype.val h) X.left
    have h₁ := s₁.property X.hom
    have h₂ := s₂.property X.hom
    dsimp at this h₁ h₂
    rw [← h₁, this, h₂]
  · have h (Y : D) : ∃ (a : P.obj Y),
        ∀ (j : CostructuredArrow F Y), P.map j.hom (t.val j.left) = a := by
      apply constant_of_preserves_morphisms'
      intro Z₁ Z₂ φ
      dsimp
      rw [← t.property φ.left]
      dsimp
      rw [← comp_apply, ← Functor.map_comp, CostructuredArrow.w]
    choose val hval using h
    refine ⟨⟨val, fun {Y₁ Y₂} f ↦ ?_⟩, ?_⟩
    · let X : CostructuredArrow F Y₁ := Classical.arbitrary _
      simp [← hval Y₁ X, ← hval Y₂ ((CostructuredArrow.map f).obj X)]
    · ext X : 2
      simpa using (hval (F.obj X) (CostructuredArrow.mk (𝟙 _))).symm

/-- Given `P : D ⥤ Type w` and `F : C ⥤ D`, this is the obvious map
`(F ⋙ P).ColimitType → P.ColimitType`. -/
def colimitTypePrecomp (F : C ⥤ D) (P : D ⥤ Type w) :
    (F ⋙ P).ColimitType → P.ColimitType :=
  (F ⋙ P).descColimitType (P.coconeTypes.precomp F)

@[simp]
lemma colimitTypePrecomp_ιColimitType (F : C ⥤ D) {P : D ⥤ Type w}
    (i : C) (x : P.obj (F.obj i)) :
    colimitTypePrecomp F P ((F ⋙ P).ιColimitType i x) = P.ιColimitType (F.obj i) x :=
  rfl

set_option backward.defeqAttrib.useBackward true in
lemma bijective_colimitTypePrecomp (F : C ⥤ D) (P : D ⥤ Type w) [F.Final] :
    Function.Bijective (F.colimitTypePrecomp (P := P)) := by
  refine ⟨?_, fun x ↦ ?_⟩
  · have h (Y : D) : ∃ (a : P.obj Y → (F ⋙ P).ColimitType), ∀ (j : StructuredArrow Y F),
        (F ⋙ P).ιColimitType j.right ∘ P.map j.hom = a := by
      apply constant_of_preserves_morphisms'
      intro Z₁ Z₂ f
      ext x
      dsimp
      rw [← (F ⋙ P).ιColimitType_map f.right, comp_map]
      simp [← comp_apply, ← Functor.map_comp]
    choose φ hφ using h
    let c : P.CoconeTypes :=
      { pt := (F ⋙ P).ColimitType
        ι Y := φ Y
        ι_naturality {Y₁ Y₂} f := by
          ext
          have X : StructuredArrow Y₂ F := Classical.arbitrary _
          rw [← hφ Y₂ X, ← hφ Y₁ ((StructuredArrow.map f).obj X)]
          simp }
    refine Function.RightInverse.injective (g := (P.descColimitType c)) (fun x ↦ ?_)
    obtain ⟨X, x, rfl⟩ := (F ⋙ P).ιColimitType_jointly_surjective x
    simp [c, ← hφ (F.obj X) (StructuredArrow.mk (𝟙 _))]
  · obtain ⟨X, x, rfl⟩ := P.ιColimitType_jointly_surjective x
    let Y : StructuredArrow X F := Classical.arbitrary _
    exact ⟨(F ⋙ P).ιColimitType Y.right (P.map Y.hom x), by simp⟩

end Functor

end CategoryTheory
```
