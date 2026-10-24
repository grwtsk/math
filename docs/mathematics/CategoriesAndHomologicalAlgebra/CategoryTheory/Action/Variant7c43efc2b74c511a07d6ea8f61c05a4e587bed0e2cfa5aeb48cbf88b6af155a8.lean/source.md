# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Action.Variant7c43efc2b74c511a07d6ea8f61c05a4e587bed0e2cfa5aeb48cbf88b6af155a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c588cb89a58adbb28b98df8b5f3372cecc1203a` · SHA-256 `90514681eb0c537955fcc008ef84c86755172caeb320bc0a2c308792cfb4ce9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ActionAsFunctor.Variantb0632c17353cdc5b33e484039a170dd4cb1f50afeaed0d783bc3df7a24b994cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0632c17353cdc5b33e484039a170dd4cb1f50afeaed0d783bc3df7a24b994cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ActionAsFunctor.Variantb0632c17353cdc5b33e484039a170dd4cb1f50afeaed0d783bc3df7a24b994cd","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b0632c17353cdc5b33e484039a170dd4cb1f50afeaed0d783bc3df7a24b994cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Action.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 David Wärn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Wärn
-/
module

public import Mathlib.CategoryTheory.Elements
public import Mathlib.CategoryTheory.IsConnected
public import Mathlib.CategoryTheory.SingleObj
public import Mathlib.GroupTheory.GroupAction.Quotient
public import Mathlib.GroupTheory.SemidirectProduct

/-!
# Actions as functors and as categories

From a multiplicative action M ↻ X, we can construct a functor from M to the category of
types, mapping the single object of M to X and an element `m : M` to the map `X → X` given by
multiplication by `m`.
  This functor induces a category structure on X -- a special case of the category of elements.
A morphism `x ⟶ y` in this category is simply a scalar `m : M` such that `m • x = y`. In the case
where M is a group, this category is a groupoid -- the *action groupoid*.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ActionAsFunctor.Variantb0632c17353cdc5b33e484039a170dd4cb1f50afeaed0d783bc3df7a24b994cd

@[expose] public section


open MulAction SemidirectProduct

namespace CategoryTheory

universe u

variable (M : Type*) [Monoid M] (X : Type u) [MulAction M X]

/-- A multiplicative action M ↻ X viewed as a functor mapping the single object of M to X
  and an element `m : M` to the map `X → X` given by multiplication by `m`. -/
@[simps obj map]
def actionAsFunctor : SingleObj M ⥤ Type u where
  obj _ := X
  map f := ↾(f • ·)
  map_id _ := by ext; exact MulAction.one_smul _
  map_comp f g := by ext x; exact (smul_smul g f x).symm

/-- A multiplicative action M ↻ X induces a category structure on X, where a morphism
from x to y is a scalar taking x to y. Due to implementation details, the object type
of this category is not equal to X, but is in bijection with X. -/
def ActionCategory :=
  (actionAsFunctor M X).Elements
deriving Category

namespace ActionCategory

/-- The projection from the action category to the monoid, mapping a morphism to its
  label. -/
def π : ActionCategory M X ⥤ SingleObj M :=
  Functor.Elements.π _

@[simp]
theorem π_map (p q : ActionCategory M X) (f : p ⟶ q) : (π M X).map f = f.hom :=
  rfl

@[simp]
theorem π_obj (p : ActionCategory M X) : (π M X).obj p = SingleObj.star M :=
  Unit.ext _ _

variable {M X}

/-- The canonical map `ActionCategory M X → X`. It is given by `fun x => x.snd`, but
  has a more explicit type. -/
protected def back : ActionCategory M X → X := fun x => x.val

instance : CoeTC X (ActionCategory M X) :=
  ⟨fun x => (actionAsFunctor M X).elementsMk () x⟩

@[simp]
theorem coe_back (x : X) : ActionCategory.back (x : ActionCategory M X) = x :=
  rfl

@[simp]
theorem back_coe (x : ActionCategory M X) : ↑x.back = x := by cases x; rfl

variable (M X)

/-- An object of the action category given by M ↻ X corresponds to an element of X. -/
def objEquiv : X ≃ ActionCategory M X where
  toFun x := x
  invFun x := x.back
  left_inv := coe_back
  right_inv := back_coe

instance [Inhabited X] : Inhabited (ActionCategory M X) :=
  ⟨show X from default⟩

instance [Nonempty X] : Nonempty (ActionCategory M X) :=
  Nonempty.map (objEquiv M X) inferInstance

variable {X} (x : X)

set_option backward.isDefEq.respectTransparency.types false in
/-- The stabilizer of a point is isomorphic to the endomorphism monoid at the
  corresponding point. In fact they are definitionally equivalent. -/
def stabilizerIsoEnd : stabilizerSubmonoid M x ≃* @End (ActionCategory M X) _ x where
  toFun f := Functor.Elements.homMk f
  invFun f := ⟨f.hom, f.map_val⟩
  map_mul' _ _ := rfl

@[simp]
theorem stabilizerIsoEnd_apply (f : stabilizerSubmonoid M x) :
    ((stabilizerIsoEnd M x) f).hom = f :=
  rfl

set_option backward.isDefEq.respectTransparency.types false in
@[simp 1100]
theorem stabilizerIsoEnd_symm_apply (f : End _) :
    (stabilizerIsoEnd M x).symm f = ⟨f.hom, f.map_val⟩ :=
  rfl

variable {M}

@[simp]
protected theorem id_hom (x : ActionCategory M X) : Functor.Elements.Hom.hom (𝟙 x) = 1 :=
  rfl

@[simp]
protected theorem comp_hom {x y z : ActionCategory M X} (f : x ⟶ y) (g : y ⟶ z) :
    (f ≫ g).hom = g.hom * f.hom :=
  rfl

@[deprecated (since := "2026-08-30")] alias id_val := ActionCategory.id_hom
@[deprecated (since := "2026-08-30")] alias comp_val := ActionCategory.comp_hom

instance [IsPretransitive M X] [Nonempty X] : IsConnected (ActionCategory M X) :=
  zigzag_isConnected fun x y =>
    Relation.ReflTransGen.single <|
      Or.inl (by
        obtain ⟨m, hm⟩ := exists_smul_eq M x.back y.back
        exact ⟨Functor.Elements.homMk m hm⟩)

section Group

variable {G : Type*} [Group G] [MulAction G X]

instance : Groupoid (ActionCategory G X) :=
  Functor.Elements.groupoid _

set_option backward.isDefEq.respectTransparency.types false in
/-- Any subgroup of `G` is a vertex group in its action groupoid. -/
def endMulEquivSubgroup (H : Subgroup G) : End (objEquiv G (G ⧸ H) ↑(1 : G)) ≃* H :=
  MulEquiv.trans (stabilizerIsoEnd G ((1 : G) : G ⧸ H)).symm
    (MulEquiv.subgroupCongr <| stabilizer_quotient H)

/-- A target vertex `t` and a scalar `g` determine a morphism in the action groupoid. -/
def homOfPair (t : X) (g : G) :
    Quiver.Hom (V := ActionCategory G X) (g⁻¹ • t :) t :=
  Functor.Elements.homMk g (smul_inv_smul g t)

@[simp]
theorem homOfPair_hom (t : X) (g : G) : (homOfPair t g).hom = g :=
  rfl

@[deprecated (since := "2026-08-30")] alias homOfPair.val := homOfPair_hom

/-- Any morphism in the action groupoid is given by some pair. -/
protected def cases {P : ∀ ⦃a b : ActionCategory G X⦄, (a ⟶ b) → Sort*}
    (hyp : ∀ t g, P (homOfPair t g)) ⦃a b⦄ (f : a ⟶ b) : P f := by
  refine cast ?_ (hyp b.back f.hom)
  induction a with | mk a
  induction b with | mk b
  induction f with | mk f hf
  change X at a b
  change G at f
  cases (inv_smul_eq_iff (α := X)).mpr (show b = f • a from hf.symm)
  rfl

variable {H : Type*} [Group H]

set_option backward.defeqAttrib.useBackward true in
/-- Given `G` acting on `X`, a functor from the corresponding action groupoid to a group `H`
can be curried to a group homomorphism `G →* (X → H) ⋊ G`. -/
@[simps]
def curry (F : ActionCategory G X ⥤ SingleObj H) : G →* (X → H) ⋊[mulAutArrow] G :=
  have F_map_eq : ∀ {a b} {f : a ⟶ b}, F.map f = (F.map (homOfPair b.back f.hom) : H) := by
    apply ActionCategory.cases
    simp
  { toFun := fun g => ⟨fun b => F.map (homOfPair b g), g⟩
    map_one' := by
      ext1
      · ext b
        exact F_map_eq.symm.trans (F.map_id b)
      rfl
    map_mul' := by
      intro g h
      ext b
      · exact F_map_eq.symm.trans (F.map_comp (homOfPair (g⁻¹ • b) h) (homOfPair b g))
      rfl }

set_option backward.isDefEq.respectTransparency.types false in
/-- Given `G` acting on `X`, a group homomorphism `φ : G →* (X → H) ⋊ G` can be uncurried to
a functor from the action groupoid to `H`, provided that `φ g = (_, g)` for all `g`. -/
@[simps]
def uncurry (F : G →* (X → H) ⋊[mulAutArrow] G) (sane : ∀ g, (F g).right = g) :
    ActionCategory G X ⥤ SingleObj H where
  obj _ := ()
  map {_ b} f := (F f.hom).left b.back
  map_id x := by
    dsimp
    rw [F.map_one]
    rfl
  map_comp f g := by
    cases g using ActionCategory.cases
    simp [SingleObj.comp_as_mul, sane]
    rfl

end Group

end ActionCategory

end CategoryTheory
```
