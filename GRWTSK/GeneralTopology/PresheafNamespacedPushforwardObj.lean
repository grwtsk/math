-- corpus-organization-transform:v1
-- Mathematical subject: Topology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.Presheaf.Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Presheaf.Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"f6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/Sheaves/Presheaf.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison, Mario Carneiro, Reid Barton, Andrew Yang
-/
import Mathlib.CategoryTheory.Limits.KanExtension
import Mathlib.Topology.Category.TopCat.Opens
import Mathlib.CategoryTheory.Adjunction.Opposites
import Mathlib.Topology.Sheaves.Init


namespace GRWTSK.Topology.Presheaf.Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2

#align_import topology.sheaves.presheaf from "leanprover-community/mathlib"@"5dc6092d09e5e489106865241986f7f2ad28d4c8"

/-!
# Presheaves on a topological space

We define `TopCat.Presheaf C X` simply as `(TopologicalSpace.Opens X)ᵒᵖ ⥤ C`,
and inherit the category structure with natural transformations as morphisms.

We define
* `TopCat.Presheaf.pushforwardObj {X Y : Top.{w}} (f : X ⟶ Y) (ℱ : X.Presheaf C) : Y.Presheaf C`
with notation `f _* ℱ`
and for `ℱ : X.Presheaf C` provide the natural isomorphisms
* `TopCat.Presheaf.Pushforward.id : (𝟙 X) _* ℱ ≅ ℱ`
* `TopCat.Presheaf.Pushforward.comp : (f ≫ g) _* ℱ ≅ g _* (f _* ℱ)`
along with their `@[simp]` lemmas.

We also define the functors `pushforward` and `pullback` between the categories
`X.Presheaf C` and `Y.Presheaf C`, and provide their adjunction at
`TopCat.Presheaf.pushforwardPullbackAdjunction`.
-/

set_option autoImplicit true


universe w v u

open CategoryTheory TopologicalSpace Opposite

variable (C : Type u) [Category.{v} C]

namespace TopCat

/-- The category of `C`-valued presheaves on a (bundled) topological space `X`. -/
-- porting note: was @[nolint has_nonempty_instance]
def Presheaf (X : TopCat.{w}) : Type max u v w :=
  (Opens X)ᵒᵖ ⥤ C
set_option linter.uppercaseLean3 false in
#align Top.presheaf TopCat.Presheaf

instance (X : TopCat.{w}) : Category (Presheaf.{w, v, u} C X) :=
  inferInstanceAs (Category ((Opens X)ᵒᵖ ⥤ C : Type max u v w))

variable {C}

namespace Presheaf

-- Porting note: added an `ext` lemma,
-- since `NatTrans.ext` can not see through the definition of `Presheaf`.
-- See https://github.com/leanprover-community/mathlib4/issues/5229
@[ext]
lemma ext {P Q : Presheaf C X} {f g : P ⟶ Q} (w : ∀ U : Opens X, f.app (op U) = g.app (op U)) :
    f = g := by
  apply NatTrans.ext
  ext U
  induction U with | _ U => ?_
  apply w

attribute [local instance] CategoryTheory.ConcreteCategory.hasCoeToSort
  CategoryTheory.ConcreteCategory.funLike

/-- attribute `sheaf_restrict` to mark lemmas related to restricting sheaves -/
macro "sheaf_restrict" : attr =>
  `(attr|aesop safe apply (rule_sets [$(Lean.mkIdent `Restrict):ident]))

attribute [sheaf_restrict] bot_le le_top le_refl inf_le_left inf_le_right
  le_sup_left le_sup_right

/-- `restrict_tac` solves relations among subsets (copied from `aesop cat`) -/
macro (name := restrict_tac) "restrict_tac" c:Aesop.tactic_clause* : tactic =>
`(tactic|
  aesop $c* (options := { introsTransparency? := some .default, terminal := true })
  (rule_sets [$(Lean.mkIdent `Restrict):ident]))

/-- `restrict_tac?` passes along `Try this` from `aesop` -/
macro (name := restrict_tac?) "restrict_tac?" c:Aesop.tactic_clause* : tactic =>
`(tactic|
  aesop? $c* (options := { introsTransparency? := some .default, terminal := true })
  (rule_sets [$(Lean.mkIdent `Restrict):ident]))

example {X : TopCat} {v w x y z : Opens X} (h₀ : v ≤ x) (h₁ : x ≤ z ⊓ w) (h₂ : x ≤ y ⊓ z) : v ≤ y :=
  by restrict_tac


/-- The restriction of a section along an inclusion of open sets.
For `x : F.obj (op V)`, we provide the notation `x |_ₕ i` (`h` stands for `hom`) for `i : U ⟶ V`,
and the notation `x |_ₗ U ⟪i⟫` (`l` stands for `le`) for `i : U ≤ V`.
-/
def restrict {X : TopCat} {C : Type*} [Category C] [ConcreteCategory C] {F : X.Presheaf C}
    {V : Opens X} (x : F.obj (op V)) {U : Opens X} (h : U ⟶ V) : F.obj (op U) :=
  F.map h.op x
set_option linter.uppercaseLean3 false in
#align Top.presheaf.restrict TopCat.Presheaf.restrict

/-- restriction of a section along an inclusion -/
scoped[AlgebraicGeometry] infixl:80 " |_ₕ " => TopCat.Presheaf.restrict
/-- restriction of a section along a subset relation -/
scoped[AlgebraicGeometry] notation:80 x " |_ₗ " U " ⟪" e "⟫ " =>
  @TopCat.Presheaf.restrict _ _ _ _ _ _ x U (@homOfLE (Opens _) _ U _ e)

open AlgebraicGeometry

/-- The restriction of a section along an inclusion of open sets.
For `x : F.obj (op V)`, we provide the notation `x |_ U`, where the proof `U ≤ V` is inferred by
the tactic `Top.presheaf.restrict_tac'` -/
abbrev restrictOpen {X : TopCat} {C : Type*} [Category C] [ConcreteCategory C] {F : X.Presheaf C}
    {V : Opens X} (x : F.obj (op V)) (U : Opens X)
    (e : U ≤ V := by restrict_tac) :
    F.obj (op U) :=
  x |_ₗ U ⟪e⟫
set_option linter.uppercaseLean3 false in
#align Top.presheaf.restrict_open TopCat.Presheaf.restrictOpen

/-- restriction of a section to open subset -/
scoped[AlgebraicGeometry] infixl:80 " |_ " => TopCat.Presheaf.restrictOpen

-- Porting note : linter tells this lemma is no going to be picked up by the simplifier, hence
-- `@[simp]` is removed
theorem restrict_restrict {X : TopCat} {C : Type*} [Category C] [ConcreteCategory C]
    {F : X.Presheaf C} {U V W : Opens X} (e₁ : U ≤ V) (e₂ : V ≤ W) (x : F.obj (op W)) :
    x |_ V |_ U = x |_ U := by
  delta restrictOpen restrict
  rw [← comp_apply, ← Functor.map_comp]
  rfl
set_option linter.uppercaseLean3 false in
#align Top.presheaf.restrict_restrict TopCat.Presheaf.restrict_restrict

-- Porting note : linter tells this lemma is no going to be picked up by the simplifier, hence
-- `@[simp]` is removed
theorem map_restrict {X : TopCat} {C : Type*} [Category C] [ConcreteCategory C]
    {F G : X.Presheaf C} (e : F ⟶ G) {U V : Opens X} (h : U ≤ V) (x : F.obj (op V)) :
    e.app _ (x |_ U) = e.app _ x |_ U := by
  delta restrictOpen restrict
  rw [← comp_apply, NatTrans.naturality, comp_apply]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.map_restrict TopCat.Presheaf.map_restrict

/-- Pushforward a presheaf on `X` along a continuous map `f : X ⟶ Y`, obtaining a presheaf
on `Y`. -/
def pushforwardObj {X Y : TopCat.{w}} (f : X ⟶ Y) (ℱ : X.Presheaf C) : Y.Presheaf C :=
  (Opens.map f).op ⋙ ℱ
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward_obj TopCat.Presheaf.pushforwardObj

/-- push forward of a presheaf-/
infixl:80 " _* " => pushforwardObj

@[simp]
theorem pushforwardObj_obj {X Y : TopCat.{w}} (f : X ⟶ Y) (ℱ : X.Presheaf C) (U : (Opens Y)ᵒᵖ) :
    (f _* ℱ).obj U = ℱ.obj ((Opens.map f).op.obj U) :=
  rfl
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward_obj_obj TopCat.Presheaf.pushforwardObj_obj

@[simp]
theorem pushforwardObj_map {X Y : TopCat.{w}} (f : X ⟶ Y) (ℱ : X.Presheaf C) {U V : (Opens Y)ᵒᵖ}
    (i : U ⟶ V) : (f _* ℱ).map i = ℱ.map ((Opens.map f).op.map i) :=
  rfl
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward_obj_map TopCat.Presheaf.pushforwardObj_map

/--
An equality of continuous maps induces a natural isomorphism between the pushforwards of a presheaf
along those maps.
-/
def pushforwardEq {X Y : TopCat.{w}} {f g : X ⟶ Y} (h : f = g) (ℱ : X.Presheaf C) :
    f _* ℱ ≅ g _* ℱ :=
  isoWhiskerRight (NatIso.op (Opens.mapIso f g h).symm) ℱ
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward_eq TopCat.Presheaf.pushforwardEq

theorem pushforward_eq' {X Y : TopCat.{w}} {f g : X ⟶ Y} (h : f = g) (ℱ : X.Presheaf C) :
    f _* ℱ = g _* ℱ := by rw [h]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward_eq' TopCat.Presheaf.pushforward_eq'

@[simp]
theorem pushforwardEq_hom_app {X Y : TopCat.{w}} {f g : X ⟶ Y}
  (h : f = g) (ℱ : X.Presheaf C) (U) :
    (pushforwardEq h ℱ).hom.app U =
      ℱ.map (by dsimp [Functor.op]; apply Quiver.Hom.op; apply eqToHom; rw [h]) :=
  by simp [pushforwardEq]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward_eq_hom_app TopCat.Presheaf.pushforwardEq_hom_app

theorem pushforward_eq'_hom_app {X Y : TopCat.{w}} {f g : X ⟶ Y} (h : f = g) (ℱ : X.Presheaf C)
    (U) : NatTrans.app (eqToHom (pushforward_eq' h ℱ)) U = ℱ.map (eqToHom (by rw [h])) := by
  rw [eqToHom_app, eqToHom_map]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward_eq'_hom_app TopCat.Presheaf.pushforward_eq'_hom_app

-- Porting note : This lemma is promoted to a higher priority to short circuit the simplifier
@[simp (high)]
theorem pushforwardEq_rfl {X Y : TopCat.{w}} (f : X ⟶ Y) (ℱ : X.Presheaf C) (U) :
    (pushforwardEq (rfl : f = f) ℱ).hom.app (op U) = 𝟙 _ := by
  dsimp [pushforwardEq]
  simp
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward_eq_rfl TopCat.Presheaf.pushforwardEq_rfl

theorem pushforwardEq_eq {X Y : TopCat.{w}} {f g : X ⟶ Y} (h₁ h₂ : f = g) (ℱ : X.Presheaf C) :
    ℱ.pushforwardEq h₁ = ℱ.pushforwardEq h₂ :=
  rfl
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward_eq_eq TopCat.Presheaf.pushforwardEq_eq

namespace Pushforward

variable {X : TopCat.{w}} (ℱ : X.Presheaf C)

/-- The natural isomorphism between the pushforward of a presheaf along the identity continuous map
and the original presheaf. -/
def id : 𝟙 X _* ℱ ≅ ℱ :=
  isoWhiskerRight (NatIso.op (Opens.mapId X).symm) ℱ ≪≫ Functor.leftUnitor _
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward.id TopCat.Presheaf.Pushforward.id

theorem id_eq : 𝟙 X _* ℱ = ℱ := by
  unfold pushforwardObj
  rw [Opens.map_id_eq]
  erw [Functor.id_comp]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward.id_eq TopCat.Presheaf.Pushforward.id_eq

-- Porting note : This lemma is promoted to a higher priority to short circuit the simplifier
@[simp (high)]
theorem id_hom_app' (U) (p) : (id ℱ).hom.app (op ⟨U, p⟩) = ℱ.map (𝟙 (op ⟨U, p⟩)) := by
  dsimp [id]
  simp [CategoryStruct.comp]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward.id_hom_app' TopCat.Presheaf.Pushforward.id_hom_app'

-- Porting note:
-- the proof below could be `by aesop_cat` if
-- https://github.com/JLimperg/aesop/issues/59
-- can be resolved, and we add:
attribute [local aesop safe cases (rule_sets [CategoryTheory])] Opposite
attribute [local aesop safe cases (rule_sets [CategoryTheory])] Opens

@[simp]
theorem id_hom_app (U) : (id ℱ).hom.app U = ℱ.map (eqToHom (Opens.op_map_id_obj U)) := by
  -- was `tidy`, see porting note above.
  induction U
  apply id_hom_app'
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward.id_hom_app TopCat.Presheaf.Pushforward.id_hom_app

@[simp]
theorem id_inv_app' (U) (p) : (id ℱ).inv.app (op ⟨U, p⟩) = ℱ.map (𝟙 (op ⟨U, p⟩)) := by
  dsimp [id]
  simp [CategoryStruct.comp]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward.id_inv_app' TopCat.Presheaf.Pushforward.id_inv_app'

/-- The natural isomorphism between
the pushforward of a presheaf along the composition of two continuous maps and
the corresponding pushforward of a pushforward. -/
def comp {Y Z : TopCat.{w}} (f : X ⟶ Y) (g : Y ⟶ Z) : (f ≫ g) _* ℱ ≅ g _* (f _* ℱ) :=
  isoWhiskerRight (NatIso.op (Opens.mapComp f g).symm) ℱ
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward.comp TopCat.Presheaf.Pushforward.comp

theorem comp_eq {Y Z : TopCat.{w}} (f : X ⟶ Y) (g : Y ⟶ Z) : (f ≫ g) _* ℱ = g _* (f _* ℱ) :=
  rfl
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward.comp_eq TopCat.Presheaf.Pushforward.comp_eq

@[simp]
theorem comp_hom_app {Y Z : TopCat.{w}} (f : X ⟶ Y) (g : Y ⟶ Z) (U) :
    (comp ℱ f g).hom.app U = 𝟙 _ := by simp [comp]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward.comp_hom_app TopCat.Presheaf.Pushforward.comp_hom_app

@[simp]
theorem comp_inv_app {Y Z : TopCat.{w}} (f : X ⟶ Y) (g : Y ⟶ Z) (U) :
    (comp ℱ f g).inv.app U = 𝟙 _ := by simp [comp]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward.comp_inv_app TopCat.Presheaf.Pushforward.comp_inv_app

end Pushforward

/-- A morphism of presheaves gives rise to a morphisms of the pushforwards of those presheaves.
-/
@[simps]
def pushforwardMap {X Y : TopCat.{w}} (f : X ⟶ Y) {ℱ 𝒢 : X.Presheaf C} (α : ℱ ⟶ 𝒢) :
    f _* ℱ ⟶ f _* 𝒢 where
  app U := α.app _
  naturality _ _ i := by erw [α.naturality]; rfl
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward_map TopCat.Presheaf.pushforwardMap

open CategoryTheory.Limits

noncomputable section Pullback

variable [HasColimits C]

/-- Pullback a presheaf on `Y` along a continuous map `f : X ⟶ Y`, obtaining a presheaf on `X`.

This is defined in terms of left Kan extensions, which is just a fancy way of saying
"take the colimits over the open sets whose preimage contains U".
-/
@[simps!]
def pullbackObj {X Y : TopCat.{v}} (f : X ⟶ Y) (ℱ : Y.Presheaf C) : X.Presheaf C :=
  (lan (Opens.map f).op).obj ℱ
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pullback_obj TopCat.Presheaf.pullbackObj

/-- Pulling back along continuous maps is functorial. -/
def pullbackMap {X Y : TopCat.{v}} (f : X ⟶ Y) {ℱ 𝒢 : Y.Presheaf C} (α : ℱ ⟶ 𝒢) :
    pullbackObj f ℱ ⟶ pullbackObj f 𝒢 :=
  (lan (Opens.map f).op).map α
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pullback_map TopCat.Presheaf.pullbackMap

/-- If `f '' U` is open, then `f⁻¹ℱ U ≅ ℱ (f '' U)`.  -/
@[simps!]
def pullbackObjObjOfImageOpen {X Y : TopCat.{v}} (f : X ⟶ Y) (ℱ : Y.Presheaf C) (U : Opens X)
    (H : IsOpen (f '' SetLike.coe U)) : (pullbackObj f ℱ).obj (op U) ≅ ℱ.obj (op ⟨_, H⟩) := by
  let x : CostructuredArrow (Opens.map f).op (op U) := CostructuredArrow.mk
    (@homOfLE _ _ _ ((Opens.map f).obj ⟨_, H⟩) (Set.image_preimage.le_u_l _)).op
  have hx : IsTerminal x :=
    { lift := fun s ↦ by
        fapply CostructuredArrow.homMk
        change op (unop _) ⟶ op (⟨_, H⟩ : Opens _)
        · refine' (homOfLE _).op
          apply (Set.image_subset f s.pt.hom.unop.le).trans
          exact Set.image_preimage.l_u_le (SetLike.coe s.pt.left.unop)
        · simp
      -- porting note : add `fac`, `uniq` manually
      fac := fun _ _ => by ext; simp
      uniq := fun _ _ _ => by ext; simp }
  exact IsColimit.coconePointUniqueUpToIso (colimit.isColimit _) (colimitOfDiagramTerminal hx _)
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pullback_obj_obj_of_image_open TopCat.Presheaf.pullbackObjObjOfImageOpen

namespace Pullback

variable {X Y : TopCat.{v}} (ℱ : Y.Presheaf C)

/-- The pullback along the identity is isomorphic to the original presheaf. -/
def id : pullbackObj (𝟙 _) ℱ ≅ ℱ :=
  NatIso.ofComponents
    (fun U =>
      pullbackObjObjOfImageOpen (𝟙 _) ℱ (unop U) (by simpa using U.unop.2) ≪≫
        ℱ.mapIso (eqToIso (by simp)))
    fun {U V} i => by
      simp only [pullbackObj_obj]
      ext
      simp only [Functor.comp_obj, CostructuredArrow.proj_obj, pullbackObj_map,
        Iso.trans_hom, Functor.mapIso_hom, eqToIso.hom, Category.assoc]
      erw [colimit.pre_desc_assoc, colimit.ι_desc_assoc, colimit.ι_desc_assoc]
      dsimp
      simp only [← ℱ.map_comp]
      -- Porting note : `congr` does not work, but `congr 1` does
      congr 1
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pullback.id TopCat.Presheaf.Pullback.id

theorem id_inv_app (U : Opens Y) :
    (id ℱ).inv.app (op U) =
      colimit.ι (Lan.diagram (Opens.map (𝟙 Y)).op ℱ (op U))
        (@CostructuredArrow.mk _ _ _ _ _ (op U) _ (eqToHom (by simp))) := by
  rw [← Category.id_comp ((id ℱ).inv.app (op U)), ← NatIso.app_inv, Iso.comp_inv_eq]
  dsimp [id]
  erw [colimit.ι_desc_assoc]
  dsimp
  rw [← ℱ.map_comp, ← ℱ.map_id]; rfl
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pullback.id_inv_app TopCat.Presheaf.Pullback.id_inv_app

end Pullback

end Pullback

variable (C)

/-- The pushforward functor.
-/
def pushforward {X Y : TopCat.{w}} (f : X ⟶ Y) : X.Presheaf C ⥤ Y.Presheaf C where
  obj := pushforwardObj f
  map := @pushforwardMap _ _ X Y f
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward TopCat.Presheaf.pushforward

@[simp]
theorem pushforward_map_app' {X Y : TopCat.{w}} (f : X ⟶ Y) {ℱ 𝒢 : X.Presheaf C} (α : ℱ ⟶ 𝒢)
    {U : (Opens Y)ᵒᵖ} : ((pushforward C f).map α).app U = α.app (op <| (Opens.map f).obj U.unop) :=
  rfl
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward_map_app' TopCat.Presheaf.pushforward_map_app'

theorem id_pushforward {X : TopCat.{w}} : pushforward C (𝟙 X) = 𝟭 (X.Presheaf C) := by
  apply CategoryTheory.Functor.ext
  · intros a b f
    ext U
    · erw [NatTrans.congr f (Opens.op_map_id_obj (op U))]
      simp only [Functor.op_obj, eqToHom_refl, CategoryTheory.Functor.map_id,
        Category.comp_id, Category.id_comp, Functor.id_obj, Functor.id_map]
      apply Pushforward.id_eq
set_option linter.uppercaseLean3 false in
#align Top.presheaf.id_pushforward TopCat.Presheaf.id_pushforward

section Iso

/-- A homeomorphism of spaces gives an equivalence of categories of presheaves. -/
@[simps!]
def presheafEquivOfIso {X Y : TopCat} (H : X ≅ Y) : X.Presheaf C ≌ Y.Presheaf C :=
  Equivalence.congrLeft (Opens.mapMapIso H).symm.op
set_option linter.uppercaseLean3 false in
#align Top.presheaf.presheaf_equiv_of_iso TopCat.Presheaf.presheafEquivOfIso

variable {C}

/-- If `H : X ≅ Y` is a homeomorphism,
then given an `H _* ℱ ⟶ 𝒢`, we may obtain an `ℱ ⟶ H ⁻¹ _* 𝒢`.
-/
def toPushforwardOfIso {X Y : TopCat} (H : X ≅ Y) {ℱ : X.Presheaf C} {𝒢 : Y.Presheaf C}
    (α : H.hom _* ℱ ⟶ 𝒢) : ℱ ⟶ H.inv _* 𝒢 :=
  (presheafEquivOfIso _ H).toAdjunction.homEquiv ℱ 𝒢 α
set_option linter.uppercaseLean3 false in
#align Top.presheaf.to_pushforward_of_iso TopCat.Presheaf.toPushforwardOfIso

@[simp]
theorem toPushforwardOfIso_app {X Y : TopCat} (H₁ : X ≅ Y) {ℱ : X.Presheaf C} {𝒢 : Y.Presheaf C}
    (H₂ : H₁.hom _* ℱ ⟶ 𝒢) (U : (Opens X)ᵒᵖ) :
    (toPushforwardOfIso H₁ H₂).app U =
      ℱ.map (eqToHom (by simp [Opens.map, Set.preimage_preimage])) ≫
        H₂.app (op ((Opens.map H₁.inv).obj (unop U))) := by
  delta toPushforwardOfIso
  -- Porting note : originally is a single invocation of `simp`
  simp only [pushforwardObj_obj, Functor.op_obj, Equivalence.toAdjunction, Adjunction.homEquiv_unit,
    Functor.id_obj, Functor.comp_obj, Adjunction.mkOfUnitCounit_unit, unop_op, eqToHom_map]
  rw [NatTrans.comp_app, presheafEquivOfIso_inverse_map_app, Equivalence.Equivalence_mk'_unit]
  congr 1
  simp only [Equivalence.unit, Equivalence.op, CategoryTheory.Equivalence.symm, Opens.mapMapIso,
    Functor.id_obj, Functor.comp_obj, Iso.symm_hom, NatIso.op_inv, Iso.symm_inv, NatTrans.op_app,
    NatIso.ofComponents_hom_app, eqToIso.hom, eqToHom_op, Equivalence.Equivalence_mk'_unitInv,
    Equivalence.Equivalence_mk'_counitInv, NatIso.op_hom, unop_op, op_unop, eqToIso.inv,
    NatIso.ofComponents_inv_app, eqToHom_unop, ←ℱ.map_comp, eqToHom_trans, eqToHom_map,
    presheafEquivOfIso_unitIso_hom_app_app]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.to_pushforward_of_iso_app TopCat.Presheaf.toPushforwardOfIso_app

/-- If `H : X ≅ Y` is a homeomorphism,
then given an `H _* ℱ ⟶ 𝒢`, we may obtain an `ℱ ⟶ H ⁻¹ _* 𝒢`.
-/
def pushforwardToOfIso {X Y : TopCat} (H₁ : X ≅ Y) {ℱ : Y.Presheaf C} {𝒢 : X.Presheaf C}
    (H₂ : ℱ ⟶ H₁.hom _* 𝒢) : H₁.inv _* ℱ ⟶ 𝒢 :=
  ((presheafEquivOfIso _ H₁.symm).toAdjunction.homEquiv ℱ 𝒢).symm H₂
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward_to_of_iso TopCat.Presheaf.pushforwardToOfIso

@[simp]
theorem pushforwardToOfIso_app {X Y : TopCat} (H₁ : X ≅ Y) {ℱ : Y.Presheaf C} {𝒢 : X.Presheaf C}
    (H₂ : ℱ ⟶ H₁.hom _* 𝒢) (U : (Opens X)ᵒᵖ) :
    (pushforwardToOfIso H₁ H₂).app U =
      H₂.app (op ((Opens.map H₁.inv).obj (unop U))) ≫
        𝒢.map (eqToHom (by simp [Opens.map, Set.preimage_preimage])) := by
  simp [pushforwardToOfIso, Equivalence.toAdjunction, CategoryStruct.comp]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward_to_of_iso_app TopCat.Presheaf.pushforwardToOfIso_app

end Iso

variable [HasColimits C]

noncomputable section

/-- Pullback a presheaf on `Y` along a continuous map `f : X ⟶ Y`, obtaining a presheaf
on `X`. -/
@[simps! map_app]
def pullback {X Y : TopCat.{v}} (f : X ⟶ Y) : Y.Presheaf C ⥤ X.Presheaf C :=
  lan (Opens.map f).op
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pullback TopCat.Presheaf.pullback

@[simp]
theorem pullbackObj_eq_pullbackObj {C} [Category C] [HasColimits C] {X Y : TopCat.{w}} (f : X ⟶ Y)
    (ℱ : Y.Presheaf C) : (pullback C f).obj ℱ = pullbackObj f ℱ :=
  rfl
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pullback_obj_eq_pullback_obj TopCat.Presheaf.pullbackObj_eq_pullbackObj

/-- The pullback and pushforward along a continuous map are adjoint to each other. -/
@[simps! unit_app_app counit_app_app]
def pushforwardPullbackAdjunction {X Y : TopCat.{v}} (f : X ⟶ Y) :
  pullback C f ⊣ pushforward C f :=
  Lan.adjunction _ _
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward_pullback_adjunction TopCat.Presheaf.pushforwardPullbackAdjunction

/-- Pulling back along a homeomorphism is the same as pushing forward along its inverse. -/
def pullbackHomIsoPushforwardInv {X Y : TopCat.{v}} (H : X ≅ Y) :
    pullback C H.hom ≅ pushforward C H.inv :=
  Adjunction.leftAdjointUniq (pushforwardPullbackAdjunction C H.hom)
    (presheafEquivOfIso C H.symm).toAdjunction
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pullback_hom_iso_pushforward_inv TopCat.Presheaf.pullbackHomIsoPushforwardInv

/-- Pulling back along the inverse of a homeomorphism is the same as pushing forward along it. -/
def pullbackInvIsoPushforwardHom {X Y : TopCat.{v}} (H : X ≅ Y) :
    pullback C H.inv ≅ pushforward C H.hom :=
  Adjunction.leftAdjointUniq (pushforwardPullbackAdjunction C H.inv)
    (presheafEquivOfIso C H).toAdjunction
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pullback_inv_iso_pushforward_hom TopCat.Presheaf.pullbackInvIsoPushforwardHom

end

end Presheaf

end TopCat
