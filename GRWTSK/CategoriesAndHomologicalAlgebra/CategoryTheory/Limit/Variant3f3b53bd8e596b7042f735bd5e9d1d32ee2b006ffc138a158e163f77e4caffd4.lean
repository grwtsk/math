-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomDiagram.Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HomDiagram.Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Category/Cat/Limit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Category.Cat
import Mathlib.CategoryTheory.Limits.Types.Limits
import Mathlib.CategoryTheory.Limits.Preserves.Basic

/-!
# The category of small categories has all small limits.

An object in the limit consists of a family of objects,
which are carried to one another by the functors in the diagram.
A morphism between two such objects is a family of morphisms between the corresponding objects,
which are carried to one another by the action on morphisms of the functors in the diagram.

## Future work
Can the indexing category live in a lower universe?
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomDiagram.Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512

noncomputable section

universe v u

open CategoryTheory.Limits

namespace CategoryTheory

variable {J : Type v} [SmallCategory J]

namespace Cat

namespace HasLimits

instance categoryObjects {F : J ⥤ Cat.{u, u}} {j} :
    SmallCategory ((F ⋙ Cat.objects.{u, u}).obj j) :=
  (F.obj j).str

/-- Auxiliary definition:
the diagram whose limit gives the morphism space between two objects of the limit category. -/
@[simps]
def homDiagram {F : J ⥤ Cat.{v, v}} (X Y : limit (F ⋙ Cat.objects.{v, v})) : J ⥤ Type v where
  obj j := limit.π (F ⋙ Cat.objects) j X ⟶ limit.π (F ⋙ Cat.objects) j Y
  map f g := by
    refine eqToHom ?_ ≫ (F.map f).map g ≫ eqToHom ?_
    · exact (congr_fun (limit.w (F ⋙ Cat.objects) f) X).symm
    · exact congr_fun (limit.w (F ⋙ Cat.objects) f) Y
  map_id X := by
    funext f
    letI : Category (objects.obj (F.obj X)) := (inferInstance : Category (F.obj X))
    simp [Functor.congr_hom (F.map_id X) f]
  map_comp {_ _ Z} f g := by
    funext h
    letI : Category (objects.obj (F.obj Z)) := (inferInstance : Category (F.obj Z))
    simp [Functor.congr_hom (F.map_comp f g) h, eqToHom_map]

@[simps]
instance (F : J ⥤ Cat.{v, v}) : Category (limit (F ⋙ Cat.objects)) where
  Hom X Y := limit (homDiagram X Y)
  id X := Types.Limit.mk.{v, v} (homDiagram X X) (fun _ => 𝟙 _) fun j j' f => by simp
  comp {X Y Z} f g :=
    Types.Limit.mk.{v, v} (homDiagram X Z)
      (fun j => limit.π (homDiagram X Y) j f ≫ limit.π (homDiagram Y Z) j g) fun j j' h => by
      simp [← congr_fun (limit.w (homDiagram X Y) h) f,
        ← congr_fun (limit.w (homDiagram Y Z) h) g]
  id_comp _ := by
    apply Types.limit_ext.{v, v}
    simp
  comp_id _ := by
    apply Types.limit_ext.{v, v}
    simp

/-- Auxiliary definition: the limit category. -/
@[simps]
def limitConeX (F : J ⥤ Cat.{v, v}) : Cat.{v, v} where α := limit (F ⋙ Cat.objects)

/-- Auxiliary definition: the cone over the limit category. -/
@[simps]
def limitCone (F : J ⥤ Cat.{v, v}) : Cone F where
  pt := limitConeX F
  π :=
    { app := fun j =>
        { obj := limit.π (F ⋙ Cat.objects) j
          map := fun f => limit.π (homDiagram _ _) j f }
      naturality := fun _ _ f =>
        CategoryTheory.Functor.ext (fun X => (congr_fun (limit.w (F ⋙ Cat.objects) f) X).symm)
          fun X Y h => (congr_fun (limit.w (homDiagram X Y) f) h).symm }

/-- Auxiliary definition: the universal morphism to the proposed limit cone. -/
@[simps]
def limitConeLift (F : J ⥤ Cat.{v, v}) (s : Cone F) : s.pt ⟶ limitConeX F where
  obj :=
    limit.lift (F ⋙ Cat.objects)
      { pt := s.pt
        π :=
          { app := fun j => (s.π.app j).obj
            naturality := fun _ _ f => objects.congr_map (s.π.naturality f) } }
  map f := by
    fapply Types.Limit.mk.{v, v}
    · intro j
      refine eqToHom ?_ ≫ (s.π.app j).map f ≫ eqToHom ?_ <;> simp
    · intro j j' h
      dsimp
      simp only [Category.assoc, Functor.map_comp, eqToHom_map, eqToHom_trans,
        eqToHom_trans_assoc, ← Functor.comp_map]
      have := (s.π.naturality h).symm
      dsimp at this
      rw [Category.id_comp] at this
      erw [Functor.congr_hom this f]
      simp

@[simp]
theorem limit_π_homDiagram_eqToHom {F : J ⥤ Cat.{v, v}} (X Y : limit (F ⋙ Cat.objects.{v, v}))
    (j : J) (h : X = Y) :
    limit.π (homDiagram X Y) j (eqToHom h) =
      eqToHom (congr_arg (limit.π (F ⋙ Cat.objects.{v, v}) j) h) := by
  subst h
  simp

/-- Auxiliary definition: the proposed cone is a limit cone. -/
def limitConeIsLimit (F : J ⥤ Cat.{v, v}) : IsLimit (limitCone F) where
  lift := limitConeLift F
  fac s j := CategoryTheory.Functor.ext (by simp) fun X Y f => by
    dsimp [limitConeLift]
    exact Types.Limit.π_mk.{v, v} _ _ _ _
  uniq s m w := by
    symm
    refine CategoryTheory.Functor.ext ?_ ?_
    · intro X
      apply Types.limit_ext.{v, v}
      intro j
      simp [Types.Limit.lift_π_apply', ← w j]
    · intro X Y f
      dsimp
      simp [fun j => Functor.congr_hom (w j).symm f]

end HasLimits

/-- The category of small categories has all small limits. -/
instance : HasLimits Cat.{v, v} where
  has_limits_of_shape _ :=
    { has_limit := fun F => ⟨⟨⟨HasLimits.limitCone F, HasLimits.limitConeIsLimit F⟩⟩⟩ }

instance : PreservesLimits Cat.objects.{v, v} where
  preservesLimitsOfShape :=
    { preservesLimit := fun {F} =>
        preservesLimit_of_preserves_limit_cone (HasLimits.limitConeIsLimit F)
          (Limits.IsLimit.ofIsoLimit (limit.isLimit (F ⋙ Cat.objects))
            (Cones.ext (by rfl) (by aesop_cat))) }

end Cat

end CategoryTheory
