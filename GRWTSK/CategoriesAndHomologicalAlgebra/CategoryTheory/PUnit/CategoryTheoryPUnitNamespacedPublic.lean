-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Star.Variant3fdfc2dbcf0c3006ba3404b0f7dbdccbdeac14e5dc44aada0ae3709a4cb63d92","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3fdfc2dbcf0c3006ba3404b0f7dbdccbdeac14e5dc44aada0ae3709a4cb63d92","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Star.Variant3fdfc2dbcf0c3006ba3404b0f7dbdccbdeac14e5dc44aada0ae3709a4cb63d92","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"3fdfc2dbcf0c3006ba3404b0f7dbdccbdeac14e5dc44aada0ae3709a4cb63d92","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/PUnit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Bhavik Mehta
-/
module

public import Mathlib.CategoryTheory.Discrete.Basic

/-!
# The category `Discrete PUnit`

We define `star : C ⥤ Discrete PUnit` sending everything to `PUnit.star`,
show that any two functors to `Discrete PUnit` are naturally isomorphic,
and construct the equivalence `(Discrete PUnit ⥤ C) ≌ C`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Star.Variant3fdfc2dbcf0c3006ba3404b0f7dbdccbdeac14e5dc44aada0ae3709a4cb63d92

@[expose] public section

universe w v u

-- morphism levels before object levels. See note [category theory universes].
namespace CategoryTheory

variable (C : Type u) [Category.{v} C]

namespace Functor

/-- The constant functor sending everything to `PUnit.star`. -/
@[simps!]
def star : C ⥤ Discrete PUnit.{w + 1} :=
  (Functor.const _).obj ⟨⟨⟩⟩
variable {C}

/-- Any two functors to `Discrete PUnit` are isomorphic. -/
@[simps!]
def punitExt (F G : C ⥤ Discrete PUnit.{w + 1}) : F ≅ G :=
  NatIso.ofComponents fun X => eqToIso (by simp only [eq_iff_true_of_subsingleton])

/-- Any two functors to `Discrete PUnit` are *equal*.
You probably want to use `punitExt` instead of this. -/
theorem punit_ext' (F G : C ⥤ Discrete PUnit.{w + 1}) : F = G :=
  Functor.ext fun X => by simp only [eq_iff_true_of_subsingleton]

/-- The functor from `Discrete PUnit` sending everything to the given object. -/
abbrev fromPUnit (X : C) : Discrete PUnit.{w + 1} ⥤ C :=
  (Functor.const _).obj X

set_option backward.defeqAttrib.useBackward true in
/-- Functors from `Discrete PUnit` are equivalent to the category itself. -/
@[simps]
def equiv : Discrete PUnit.{w + 1} ⥤ C ≌ C where
  functor :=
    { obj := fun F => F.obj ⟨⟨⟩⟩
      map := fun θ => θ.app ⟨⟨⟩⟩ }
  inverse := Functor.const _
  unitIso := NatIso.ofComponents fun _ => Discrete.natIso fun _ => Iso.refl _
  counitIso := NatIso.ofComponents Iso.refl

end Functor

set_option backward.defeqAttrib.useBackward true in
/-- A category being equivalent to `PUnit` is equivalent to it having a unique morphism between
  any two objects. (In fact, such a category is also a groupoid;
  see `CategoryTheory.Groupoid.ofHomUnique`) -/
theorem equiv_punit_iff_unique :
    Nonempty (C ≌ Discrete PUnit.{w + 1}) ↔ Nonempty C ∧ ∀ x y : C, Nonempty <| Unique (x ⟶ y) := by
  constructor
  · rintro ⟨h⟩
    refine ⟨⟨h.inverse.obj ⟨⟨⟩⟩⟩, fun x y => Nonempty.intro ?_⟩
    let f : x ⟶ y := by
      have hx : x ⟶ h.inverse.obj ⟨⟨⟩⟩ := by convert! h.unit.app x
      have hy : h.inverse.obj ⟨⟨⟩⟩ ⟶ y := by convert! h.unitInv.app y
      exact hx ≫ hy
    suffices sub : Subsingleton (x ⟶ y) from uniqueOfSubsingleton f
    have : ∀ z, z = h.unit.app x ≫ (h.functor ⋙ h.inverse).map z ≫ h.unitInv.app y := by
      simp
    apply Subsingleton.intro
    intro a b
    rw [this a, this b]
    simp only [Functor.comp_map]
    congr 3
    simp [eq_iff_true_of_subsingleton]
  · rintro ⟨⟨p⟩, h⟩
    have := fun x y => (h x y).some
    refine
      Nonempty.intro
        (CategoryTheory.Equivalence.mk ((Functor.const _).obj ⟨⟨⟩⟩)
          ((@Functor.const <| Discrete PUnit).obj p) ?_ (by apply Functor.punitExt))
    exact
      NatIso.ofComponents fun _ =>
        { hom := default
          inv := default }

end CategoryTheory
