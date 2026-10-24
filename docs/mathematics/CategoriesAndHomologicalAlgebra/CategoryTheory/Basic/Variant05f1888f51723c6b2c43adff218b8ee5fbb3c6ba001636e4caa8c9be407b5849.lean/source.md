# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant05f1888f51723c6b2c43adff218b8ee5fbb3c6ba001636e4caa8c9be407b5849

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `974905ba98f81f323304eed08d48f84525a59533` · SHA-256 `2b0b79f559b5a5dda6ed35691a612c09559f0a1ee0f76f84afa9f7bce69fd2d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasLiftingProperty.Variant03c3e48ec5f6d9a4702ad5452c31ac0a64480a07c2cfd7444b26818982fdcb02","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03c3e48ec5f6d9a4702ad5452c31ac0a64480a07c2cfd7444b26818982fdcb02","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasLiftingProperty.Variant03c3e48ec5f6d9a4702ad5452c31ac0a64480a07c2cfd7444b26818982fdcb02","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"03c3e48ec5f6d9a4702ad5452c31ac0a64480a07c2cfd7444b26818982fdcb02","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/LiftingProperties/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Jakob Scholbach. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob Scholbach, Joël Riou
-/
module

public import Mathlib.CategoryTheory.CommSq
public import Mathlib.CategoryTheory.Retract

/-!
# Lifting properties

This file defines the lifting property of two morphisms in a category and
shows basic properties of this notion.

## Main results
- `HasLiftingProperty`: the definition of the lifting property

## Tags
lifting property

## TODO
1) direct/inverse images, adjunctions

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasLiftingProperty.Variant03c3e48ec5f6d9a4702ad5452c31ac0a64480a07c2cfd7444b26818982fdcb02

@[expose] public section

universe v

namespace CategoryTheory

open Category

variable {C : Type*} [Category* C] {A B B' X Y Y' : C} (i : A ⟶ B) (i' : B ⟶ B') (p : X ⟶ Y)
  (p' : Y ⟶ Y')

to_dual_name_hint Left Right, A Y, B X, I P

set_option linter.translate.warnInvalid false in
/-- `HasLiftingProperty i p` means that `i` has the left lifting
property with respect to `p`, or equivalently that `p` has
the right lifting property with respect to `i`. -/
@[to_dual self (reorder := A Y, B X, i p)]
class HasLiftingProperty : Prop where
  /-- Unique field expressing that any commutative square built from `f` and `g` has a lift -/
  sq_hasLift : ∀ {f : A ⟶ X} {g : B ⟶ Y} (sq : CommSq f i p g), sq.HasLift

attribute [to_dual self (reorder := A Y, B X, i p, sq_hasLift (f g))] HasLiftingProperty.mk

@[to_dual self]
instance (priority := 100) sq_hasLift_of_hasLiftingProperty {f : A ⟶ X} {g : B ⟶ Y}
    (sq : CommSq f i p g) [hip : HasLiftingProperty i p] : sq.HasLift := hip.sq_hasLift _

namespace HasLiftingProperty

variable {i p}

@[to_dual self]
theorem op (h : HasLiftingProperty i p) : HasLiftingProperty p.op i.op :=
  ⟨fun {f} {g} sq => by
    simp only [CommSq.HasLift.iff_unop, Quiver.Hom.unop_op]
    infer_instance⟩

@[to_dual self]
theorem unop {A B X Y : Cᵒᵖ} {i : A ⟶ B} {p : X ⟶ Y} (h : HasLiftingProperty i p) :
    HasLiftingProperty p.unop i.unop :=
  ⟨fun {f} {g} sq => by
    rw [CommSq.HasLift.iff_op]
    simp only [Quiver.Hom.op_unop]
    infer_instance⟩

@[to_dual self]
theorem iff_op : HasLiftingProperty i p ↔ HasLiftingProperty p.op i.op :=
  ⟨op, unop⟩

@[to_dual self]
theorem iff_unop {A B X Y : Cᵒᵖ} (i : A ⟶ B) (p : X ⟶ Y) :
    HasLiftingProperty i p ↔ HasLiftingProperty p.unop i.unop :=
  ⟨unop, op⟩

variable (i p)

@[to_dual]
instance (priority := 100) of_left_iso [IsIso i] : HasLiftingProperty i p :=
  ⟨fun {f} {g} sq =>
    CommSq.HasLift.mk'
      { l := inv i ≫ f
        fac_left := by simp only [IsIso.hom_inv_id_assoc]
        fac_right := by simp only [sq.w, assoc, IsIso.inv_hom_id_assoc] }⟩

@[to_dual]
instance of_comp_left [HasLiftingProperty i p] [HasLiftingProperty i' p] :
    HasLiftingProperty (i ≫ i') p :=
  ⟨fun {f} {g} sq => by
    have fac := sq.w
    rw [assoc] at fac
    exact
      CommSq.HasLift.mk'
        { l := (CommSq.mk (CommSq.mk fac).fac_right).lift
          fac_left := by simp only [assoc, CommSq.fac_left]
          fac_right := by simp only [CommSq.fac_right] }⟩

@[to_dual (reorder := i i' e p)]
theorem of_arrow_iso_left {A B A' B' X Y : C} {i : A ⟶ B} {i' : A' ⟶ B'}
    (e : Arrow.mk i ≅ Arrow.mk i') (p : X ⟶ Y) [hip : HasLiftingProperty i p] :
    HasLiftingProperty i' p := by
  rw [Arrow.iso_w' e]
  infer_instance

@[to_dual (reorder := i i' e p)]
theorem iff_of_arrow_iso_left {A B A' B' X Y : C} {i : A ⟶ B} {i' : A' ⟶ B'}
    (e : Arrow.mk i ≅ Arrow.mk i') (p : X ⟶ Y) :
    HasLiftingProperty i p ↔ HasLiftingProperty i' p := by
  constructor <;> intro
  exacts [of_arrow_iso_left e p, of_arrow_iso_left e.symm p]

end HasLiftingProperty

@[to_dual]
lemma RetractArrow.rightLiftingProperty
    {X Y Z W X' Y' : C} {f : X ⟶ Y} {f' : X' ⟶ Y'}
    (h : RetractArrow f' f) (g : Z ⟶ W) [HasLiftingProperty g f] : HasLiftingProperty g f' where
  sq_hasLift := fun {u v} sq ↦
    have sq' : CommSq (u ≫ h.i.left) g f (v ≫ h.i.right) :=
      ⟨by rw [← sq.w_assoc, Category.assoc, RetractArrow.i_w]⟩
    ⟨⟨{ l := sq'.lift ≫ h.r.left}⟩⟩

namespace Arrow

/-- Given a morphism `φ : f ⟶ g` in the category `Arrow C`, this is an
abbreviation for the `CommSq.LiftStruct` structure for
the square corresponding to `φ`. -/
@[to_dual self]
abbrev LiftStruct {f g : Arrow C} (φ : f ⟶ g) := (CommSq.mk φ.w).LiftStruct

@[to_dual self]
lemma hasLiftingProperty_iff {A B X Y : C} (i : A ⟶ B) (p : X ⟶ Y) :
    HasLiftingProperty i p ↔
      ∀ (φ : Arrow.mk i ⟶ Arrow.mk p), Nonempty (LiftStruct φ) := by
  constructor
  · intro _ φ
    have sq : CommSq φ.left i p φ.right := CommSq.mk φ.w
    exact ⟨{ l := sq.lift }⟩
  · intro h
    exact ⟨fun {f g} sq ↦ ⟨h (Arrow.homMk f g sq.w)⟩⟩

end Arrow

/-- Given morphisms `i : A ⟶ B`, `p : X ⟶ Y`, `t : A ⟶ X`,
this is the property that a lifting exists for all squares
with `i` on left, `p` on the right and `t` on the top. -/
@[to_dual (rename := t → b) (reorder := i p)
/-- Given morphisms `i : A ⟶ B`, `p : X ⟶ Y`, `b : B ⟶ Y`,
this is the property that a lifting exists for all squares
with `i` on left, `p` on the right and `b` on the bottom. -/]
def HasLiftingPropertyFixedTop (t : A ⟶ X) : Prop :=
  ∀ (b : B ⟶ Y) (sq : CommSq t i p b), sq.HasLift

end CategoryTheory
```
