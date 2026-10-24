# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Quotient.Variant30856a08fd7ab30520541cb9101b0157a5d975b949bc793b37cacb22871d77cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c15a09428338e7e8105ad5b46cca0845daed330` · SHA-256 `8fd4cb81297f4d74015c05f0ad665b349a48ec93fedcacce3a66a018ec2e3eb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Congruence.Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Congruence.Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Quotient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 David Wärn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Wärn
-/
import Mathlib.CategoryTheory.NatIso
import Mathlib.CategoryTheory.EqToHom


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Congruence.Variant8050ea041232cfa13926cdcf1f8a00132a9ed9dd9ac03cdd5430e2a708085a97

#align_import category_theory.quotient from "leanprover-community/mathlib"@"740acc0e6f9adf4423f92a485d0456fc271482da"

/-!
# Quotient category

Constructs the quotient of a category by an arbitrary family of relations on its hom-sets,
by introducing a type synonym for the objects, and identifying homs as necessary.

This is analogous to 'the quotient of a group by the normal closure of a subset', rather
than 'the quotient of a group by a normal subgroup'. When taking the quotient by a congruence
relation, `functor_map_eq_iff` says that no unnecessary identifications have been made.
-/


/-- A `HomRel` on `C` consists of a relation on every hom-set. -/
def HomRel (C) [Quiver C] :=
  ∀ ⦃X Y : C⦄, (X ⟶ Y) → (X ⟶ Y) → Prop
#align hom_rel HomRel

-- Porting Note: `deriving Inhabited` was not able to deduce this typeclass
instance (C) [Quiver C] : Inhabited (HomRel C) where
  default := fun _ _ _ _ ↦ PUnit

namespace CategoryTheory

variable {C : Type _} [Category C] (r : HomRel C)

/-- A `HomRel` is a congruence when it's an equivalence on every hom-set, and it can be composed
from left and right. -/
class Congruence : Prop where
  /-- `r` is an equivalence on every hom-set. -/
  isEquiv : ∀ {X Y}, IsEquiv _ (@r X Y)
  /-- Precomposition with an arrow respects `r`. -/
  compLeft : ∀ {X Y Z} (f : X ⟶ Y) {g g' : Y ⟶ Z}, r g g' → r (f ≫ g) (f ≫ g')
  /-- Postcomposition with an arrow respects `r`. -/
  compRight : ∀ {X Y Z} {f f' : X ⟶ Y} (g : Y ⟶ Z), r f f' → r (f ≫ g) (f' ≫ g)
#align category_theory.congruence CategoryTheory.Congruence

attribute [instance] Congruence.isEquiv

/-- A type synonym for `C`, thought of as the objects of the quotient category. -/
@[ext]
structure Quotient (r : HomRel C) where
  /-- The object of `C`. -/
  as : C
#align category_theory.quotient CategoryTheory.Quotient

instance [Inhabited C] : Inhabited (Quotient r) :=
  ⟨{ as := default }⟩

namespace Quotient

/-- Generates the closure of a family of relations w.r.t. composition from left and right. -/
inductive CompClosure (r : HomRel C) ⦃s t : C⦄ : (s ⟶ t) → (s ⟶ t) → Prop
  | intro {a b : C} (f : s ⟶ a) (m₁ m₂ : a ⟶ b) (g : b ⟶ t) (h : r m₁ m₂) :
    CompClosure r (f ≫ m₁ ≫ g) (f ≫ m₂ ≫ g)
#align category_theory.quotient.comp_closure CategoryTheory.Quotient.CompClosure

theorem CompClosure.of {a b : C} (m₁ m₂ : a ⟶ b) (h : r m₁ m₂) : CompClosure r m₁ m₂ := by
  simpa using CompClosure.intro (𝟙 _) m₁ m₂ (𝟙 _) h
#align category_theory.quotient.comp_closure.of CategoryTheory.Quotient.CompClosure.of

theorem comp_left {a b c : C} (f : a ⟶ b) :
    ∀ (g₁ g₂ : b ⟶ c) (_ : CompClosure r g₁ g₂), CompClosure r (f ≫ g₁) (f ≫ g₂)
  | _, _, ⟨x, m₁, m₂, y, h⟩ => by simpa using CompClosure.intro (f ≫ x) m₁ m₂ y h
#align category_theory.quotient.comp_left CategoryTheory.Quotient.comp_left

theorem comp_right {a b c : C} (g : b ⟶ c) :
    ∀ (f₁ f₂ : a ⟶ b) (_ : CompClosure r f₁ f₂), CompClosure r (f₁ ≫ g) (f₂ ≫ g)
  | _, _, ⟨x, m₁, m₂, y, h⟩ => by simpa using CompClosure.intro x m₁ m₂ (y ≫ g) h
#align category_theory.quotient.comp_right CategoryTheory.Quotient.comp_right

/-- Hom-sets of the quotient category. -/
def Hom (s t : Quotient r) :=
  Quot <| @CompClosure C _ r s.as t.as
#align category_theory.quotient.hom CategoryTheory.Quotient.Hom

instance (a : Quotient r) : Inhabited (Hom r a a) :=
  ⟨Quot.mk _ (𝟙 a.as)⟩

/-- Composition in the quotient category. -/
def comp ⦃a b c : Quotient r⦄ : Hom r a b → Hom r b c → Hom r a c := fun hf hg ↦
  Quot.liftOn hf
    (fun f ↦
      Quot.liftOn hg (fun g ↦ Quot.mk _ (f ≫ g)) fun g₁ g₂ h ↦
        Quot.sound <| comp_left r f g₁ g₂ h)
    fun f₁ f₂ h ↦ Quot.inductionOn hg fun g ↦ Quot.sound <| comp_right r g f₁ f₂ h
#align category_theory.quotient.comp CategoryTheory.Quotient.comp

@[simp]
theorem comp_mk {a b c : Quotient r} (f : a.as ⟶ b.as) (g : b.as ⟶ c.as) :
    comp r (Quot.mk _ f) (Quot.mk _ g) = Quot.mk _ (f ≫ g) :=
  rfl
#align category_theory.quotient.comp_mk CategoryTheory.Quotient.comp_mk

-- porting note: Had to manually add the proofs of `comp_id` `id_comp` and `assoc`
instance category : Category (Quotient r) where
  Hom := Hom r
  id a := Quot.mk _ (𝟙 a.as)
  comp := @comp _ _ r
  comp_id f := Quot.inductionOn f $ by simp
  id_comp f := Quot.inductionOn f $ by simp
  assoc f g h := Quot.inductionOn f $ Quot.inductionOn g $ Quot.inductionOn h $ by simp
#align category_theory.quotient.category CategoryTheory.Quotient.category

/-- The functor from a category to its quotient. -/
@[simps]
def functor : C ⥤ Quotient r where
  obj a := { as := a }
  map := @fun _ _ f ↦ Quot.mk _ f
#align category_theory.quotient.functor CategoryTheory.Quotient.functor

noncomputable instance fullFunctor : Full (functor r) where preimage := @fun X Y f ↦ Quot.out f

instance : EssSurj (functor r)
    where mem_essImage Y :=
    ⟨Y.as, ⟨eqToIso (by
            ext
            rfl)⟩⟩

protected theorem induction {P : ∀ {a b : Quotient r}, (a ⟶ b) → Prop}
    (h : ∀ {x y : C} (f : x ⟶ y), P ((functor r).map f)) :
    ∀ {a b : Quotient r} (f : a ⟶ b), P f := by
  rintro ⟨x⟩ ⟨y⟩ ⟨f⟩
  exact h f
#align category_theory.quotient.induction CategoryTheory.Quotient.induction

protected theorem sound {a b : C} {f₁ f₂ : a ⟶ b} (h : r f₁ f₂) :
    (functor r).map f₁ = (functor r).map f₂ := by
  simpa using Quot.sound (CompClosure.intro (𝟙 a) f₁ f₂ (𝟙 b) h)
#align category_theory.quotient.sound CategoryTheory.Quotient.sound

theorem functor_map_eq_iff [h : Congruence r] {X Y : C} (f f' : X ⟶ Y) :
    (functor r).map f = (functor r).map f' ↔ r f f' := by
  constructor
  · erw [Quot.eq]
    intro h
    induction' h with m m' hm
    · cases hm
      apply Congruence.compLeft
      apply Congruence.compRight
      assumption
    · haveI := (h.isEquiv : IsEquiv _ (@r X Y))
      -- porting note: had to add this line for `refl` (and name the `Congruence` argument)
      apply refl
    · apply symm
      assumption
    · apply _root_.trans <;> assumption
  · apply Quotient.sound
#align category_theory.quotient.functor_map_eq_iff CategoryTheory.Quotient.functor_map_eq_iff

variable {D : Type _} [Category D] (F : C ⥤ D)
  (H : ∀ (x y : C) (f₁ f₂ : x ⟶ y), r f₁ f₂ → F.map f₁ = F.map f₂)

/-- The induced functor on the quotient category. -/
@[simps]
def lift : Quotient r ⥤ D where
  obj a := F.obj a.as
  map := @fun a b hf ↦
    Quot.liftOn hf (fun f ↦ F.map f)
      (by
        rintro _ _ ⟨_, _, _, _, h⟩
        simp [H _ _ _ _ h])
  map_id a := F.map_id a.as
  map_comp := by
    rintro a b c ⟨f⟩ ⟨g⟩
    exact F.map_comp f g
#align category_theory.quotient.lift CategoryTheory.Quotient.lift

theorem lift_spec : functor r ⋙ lift r F H = F := by
  apply Functor.ext; rotate_left
  · rintro X
    rfl
  · rintro X Y f
    simp
#align category_theory.quotient.lift_spec CategoryTheory.Quotient.lift_spec

theorem lift_unique (Φ : Quotient r ⥤ D) (hΦ : functor r ⋙ Φ = F) : Φ = lift r F H := by
  subst_vars
  fapply Functor.hext
  · rintro X
    dsimp [lift, Functor]
    congr
  · rintro _ _ f
    dsimp [lift, Functor]
    refine Quot.inductionOn f (fun _ ↦ ?_) -- porting note: this line was originally an `apply`
    simp only [Quot.liftOn_mk, Functor.comp_map]
    congr
#align category_theory.quotient.lift_unique CategoryTheory.Quotient.lift_unique

/-- The original functor factors through the induced functor. -/
def lift.isLift : functor r ⋙ lift r F H ≅ F :=
  NatIso.ofComponents fun X ↦ Iso.refl _
#align category_theory.quotient.lift.is_lift CategoryTheory.Quotient.lift.isLift

@[simp]
theorem lift.isLift_hom (X : C) : (lift.isLift r F H).hom.app X = 𝟙 (F.obj X) :=
  rfl
#align category_theory.quotient.lift.is_lift_hom CategoryTheory.Quotient.lift.isLift_hom

@[simp]
theorem lift.isLift_inv (X : C) : (lift.isLift r F H).inv.app X = 𝟙 (F.obj X) :=
  rfl
#align category_theory.quotient.lift.is_lift_inv CategoryTheory.Quotient.lift.isLift_inv

theorem lift_map_functor_map {X Y : C} (f : X ⟶ Y) :
    (lift r F H).map ((functor r).map f) = F.map f := by
  rw [← NatIso.naturality_1 (lift.isLift r F H)]
  dsimp
  simp
#align category_theory.quotient.lift_map_functor_map CategoryTheory.Quotient.lift_map_functor_map

end Quotient

end CategoryTheory
```
