# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.Variantf499b3ef6fc4ef8fbbf39d78d2c253594da59259c85f0bbbd61e34132500d349

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd7d0ff4309dbffa4947708b4ab48d8737bca28e` · SHA-256 `a6bb099ff078405c5c481d1b77fd0f085cd81aa30c6726e6a180af84b2b9ba30`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PushforwardSheafOfSheaf.Variantbe34c9d144a1c9d5f9d5865e73cd5fb019ae36bd92563c6eeb97e16a32dff4da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be34c9d144a1c9d5f9d5865e73cd5fb019ae36bd92563c6eeb97e16a32dff4da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PushforwardSheafOfSheaf.Variantbe34c9d144a1c9d5f9d5865e73cd5fb019ae36bd92563c6eeb97e16a32dff4da","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"be34c9d144a1c9d5f9d5865e73cd5fb019ae36bd92563c6eeb97e16a32dff4da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Sheaves/Functors.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu, Andrew Yang
-/
module

public import Mathlib.Topology.Sheaves.SheafCondition.Sites
public import Mathlib.CategoryTheory.Sites.Pullback

/-!
# functors between categories of sheaves

Show that the pushforward of a sheaf is a sheaf, and define
the pushforward functor from the category of C-valued sheaves
on X to that of sheaves on Y, given a continuous map between
topological spaces X and Y.

## Main definitions
- `TopCat.Sheaf.pushforward`:
    The pushforward functor between sheaf categories over topological spaces.
- `TopCat.Sheaf.pullback`: The pullback functor between sheaf categories over topological spaces.
- `TopCat.Sheaf.pullbackPushforwardAdjunction`:
  The adjunction between pullback and pushforward for sheaves on topological spaces.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PushforwardSheafOfSheaf.Variantbe34c9d144a1c9d5f9d5865e73cd5fb019ae36bd92563c6eeb97e16a32dff4da

@[expose] public section


noncomputable section

universe w v u

open CategoryTheory

open CategoryTheory.Limits

open TopologicalSpace

open scoped AlgebraicGeometry

variable {C : Type u} [Category.{v} C]
variable {X Y : TopCat.{w}} (f : X ⟶ Y)
variable ⦃ι : Type w⦄ {U : ι → Opens Y}

namespace TopCat

namespace Sheaf

/-- The pushforward of a sheaf (by a continuous map) is a sheaf.
-/
theorem pushforward_sheaf_of_sheaf {F : X.Presheaf C} (h : F.IsSheaf) : (f _* F).IsSheaf :=
  (Opens.map f).op_comp_isSheaf _ _ ⟨_, h⟩

variable (C)

/-- The pushforward functor.
-/
def pushforward (f : X ⟶ Y) : X.Sheaf C ⥤ Y.Sheaf C :=
  (Opens.map f).sheafPushforwardContinuous _ _ _

lemma pushforward_forget (f : X ⟶ Y) :
    pushforward C f ⋙ forget C Y = forget C X ⋙ Presheaf.pushforward C f := rfl

/--
Pushforward of sheaves is isomorphic (actually definitionally equal) to pushforward of presheaves.
-/
def pushforwardForgetIso (f : X ⟶ Y) :
    pushforward C f ⋙ forget C Y ≅ forget C X ⋙ Presheaf.pushforward C f := Iso.refl _

variable {C}

@[simp] lemma pushforward_obj_val (f : X ⟶ Y) (F : X.Sheaf C) :
    ((pushforward C f).obj F).1 = f _* F.1 := rfl

@[simp] lemma pushforward_map (f : X ⟶ Y) {F F' : X.Sheaf C} (α : F ⟶ F') :
    ((pushforward C f).map α).1 = (Presheaf.pushforward C f).map α.1 := rfl

variable (A : Type*) [Category.{w} A] {FA : A → A → Type*} {CA : A → Type w}
variable [∀ X Y, FunLike (FA X Y) (CA X) (CA Y)] [ConcreteCategory.{w} A FA] [HasColimits A]
variable [HasLimits A] [PreservesLimits (CategoryTheory.forget A)]
variable [PreservesFilteredColimits (CategoryTheory.forget A)]
variable [(CategoryTheory.forget A).ReflectsIsomorphisms]

/--
The pullback functor.
-/
def pullback (f : X ⟶ Y) : Y.Sheaf A ⥤ X.Sheaf A :=
  (Opens.map f).sheafPullback _ _ _

/--
The pullback of a sheaf is isomorphic (actually definitionally equal) to the sheafification
of the pullback as a presheaf.
-/
def pullbackIso (f : X ⟶ Y) :
    pullback A f ≅ forget A Y ⋙ Presheaf.pullback A f ⋙ presheafToSheaf _ _ :=
  Functor.sheafPullbackConstruction.sheafPullbackIso _ _ _ _

/-- The adjunction between pullback and pushforward for sheaves on topological spaces. -/
def pullbackPushforwardAdjunction (f : X ⟶ Y) :
    pullback A f ⊣ pushforward A f :=
  (Opens.map f).sheafAdjunctionContinuous _ _ _

instance : (pullback A f).IsLeftAdjoint := (pullbackPushforwardAdjunction A f).isLeftAdjoint
instance : (pushforward A f).IsRightAdjoint := (pullbackPushforwardAdjunction A f).isRightAdjoint

end Sheaf

end TopCat

namespace Topology.IsOpenEmbedding

open TopCat

variable (A : Type*) [Category.{w} A]
variable {f : X ⟶ Y} (hf : IsOpenEmbedding f)

/--
The "naive" sheaf pullback by an open embedding `f`: on the underlying presheaf, this is just
composition by the functor `IsOpenMap.functor f` (sending an open `U` to `f '' U`).
-/
def sheafPullback : Y.Sheaf A ⥤ X.Sheaf A :=
  haveI := Topology.IsOpenEmbedding.functor_isContinuous hf
  hf.functor.sheafPushforwardContinuous _ _ _

variable {FA : A → A → Type*} {CA : A → Type w}
variable [∀ X Y, FunLike (FA X Y) (CA X) (CA Y)] [ConcreteCategory.{w} A FA] [HasColimits A]
variable [HasLimits A] [PreservesLimits (CategoryTheory.forget A)]
variable [PreservesFilteredColimits (CategoryTheory.forget A)]
variable [(CategoryTheory.forget A).ReflectsIsomorphisms]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/--
The pullback of a sheaf by an open embedding `f` is isomorphic to its naive pullback
`IsOpenEmbedding.sheafPullback`, i.e. to the composition by the functor `IsOpenMap.functor f`.
Also, this is an isomorphism of functors.
-/
def sheafPullbackIso : Sheaf.pullback A f ≅ hf.sheafPullback A := by
  refine Sheaf.pullbackIso A f ≪≫ NatIso.ofComponents (fun F ↦ ?_) (fun u ↦ ?_)
  · exact (presheafToSheaf (Opens.grothendieckTopology ↑X) A).mapIso
      (hf.isOpenMap.pullbackIso.app _) ≪≫
      (fullyFaithfulSheafToPresheaf (Opens.grothendieckTopology X) A).preimageIso
      (isoSheafify (Opens.grothendieckTopology X)
      (TopCat.Presheaf.isSheaf_of_isOpenEmbedding hf F.2)).symm
  · dsimp
    rw [← Functor.map_comp_assoc, hf.isOpenMap.pullbackIso.hom.naturality, Sheaf.hom_ext_iff]
    simp only [Functor.whiskeringLeft_obj_obj, Functor.whiskeringLeft_obj_map, Functor.map_comp,
      isoSheafify_inv, Category.assoc]
    rw [ObjectProperty.FullSubcategory.comp_hom, ObjectProperty.FullSubcategory.comp_hom,
      ObjectProperty.FullSubcategory.comp_hom, ObjectProperty.FullSubcategory.comp_hom]
    dsimp [sheafPullback, Functor.sheafPushforwardContinuous, Sheaf.forget]
    simp only [sheafifyMap_sheafifyLift, Category.comp_id, sheafifyMap_sheafifyLift_assoc]
    rw [CategoryTheory.sheafifyLift_comp]

end Topology.IsOpenEmbedding
```
