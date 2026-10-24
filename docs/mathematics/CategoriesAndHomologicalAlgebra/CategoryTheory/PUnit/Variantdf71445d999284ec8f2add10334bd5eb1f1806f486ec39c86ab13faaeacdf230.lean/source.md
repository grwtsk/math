# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PUnit.Variantdf71445d999284ec8f2add10334bd5eb1f1806f486ec39c86ab13faaeacdf230

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f43784fbb25e953c6a1660ea7247e3bf1d50111` · SHA-256 `4c3fa01f15753c177637c288d2271a297380bc3e280fea821d69a4113425cfb4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Star.Variantf2117ced7efe48b2fb7a23816c892d14c0edc344bfb37a89933f2d7136dda2fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2117ced7efe48b2fb7a23816c892d14c0edc344bfb37a89933f2d7136dda2fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Star.Variantf2117ced7efe48b2fb7a23816c892d14c0edc344bfb37a89933f2d7136dda2fa","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f2117ced7efe48b2fb7a23816c892d14c0edc344bfb37a89933f2d7136dda2fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/PUnit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison, Bhavik Mehta
-/
import Mathlib.CategoryTheory.Functor.Const
import Mathlib.CategoryTheory.DiscreteCategory


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Star.Variantf2117ced7efe48b2fb7a23816c892d14c0edc344bfb37a89933f2d7136dda2fa

#align_import category_theory.punit from "leanprover-community/mathlib"@"2738d2ca56cbc63be80c3bd48e9ed90ad94e947d"

/-!
# The category `Discrete PUnit`

We define `star : C ⥤ Discrete PUnit` sending everything to `PUnit.star`,
show that any two functors to `Discrete PUnit` are naturally isomorphic,
and construct the equivalence `(Discrete PUnit ⥤ C) ≌ C`.
-/


universe w v u

-- morphism levels before object levels. See note [CategoryTheory universes].
namespace CategoryTheory

variable (C : Type u) [Category.{v} C]

namespace Functor

/-- The constant functor sending everything to `PUnit.star`. -/
@[simps!]
def star : C ⥤ Discrete PUnit.{w + 1} :=
  (Functor.const _).obj ⟨⟨⟩⟩
#align category_theory.functor.star CategoryTheory.Functor.star
-- Porting note: simp can simplify this
attribute [nolint simpNF] star_map_down_down
variable {C}

/-- Any two functors to `Discrete PUnit` are isomorphic. -/
@[simps!]
def punitExt (F G : C ⥤ Discrete PUnit.{w + 1}) : F ≅ G :=
  NatIso.ofComponents fun X => eqToIso (by simp only [eq_iff_true_of_subsingleton])
#align category_theory.functor.punit_ext CategoryTheory.Functor.punitExt
-- Porting note: simp does indeed fire for these despite the linter warning
attribute [nolint simpNF] punitExt_hom_app_down_down punitExt_inv_app_down_down

/-- Any two functors to `Discrete PUnit` are *equal*.
You probably want to use `punitExt` instead of this. -/
theorem punit_ext' (F G : C ⥤ Discrete PUnit.{w + 1}) : F = G :=
  Functor.ext fun X => by simp only [eq_iff_true_of_subsingleton]
#align category_theory.functor.punit_ext' CategoryTheory.Functor.punit_ext'

/-- The functor from `Discrete PUnit` sending everything to the given object. -/
abbrev fromPUnit (X : C) : Discrete PUnit.{w + 1} ⥤ C :=
  (Functor.const _).obj X
#align category_theory.functor.from_punit CategoryTheory.Functor.fromPUnit

/-- Functors from `Discrete PUnit` are equivalent to the category itself. -/
@[simps]
def equiv : Discrete PUnit.{w + 1} ⥤ C ≌ C where
  functor :=
    { obj := fun F => F.obj ⟨⟨⟩⟩
      map := fun θ => θ.app ⟨⟨⟩⟩ }
  inverse := Functor.const _
  unitIso := NatIso.ofComponents fun X => Discrete.natIso fun i => Iso.refl _
  counitIso := NatIso.ofComponents Iso.refl
#align category_theory.functor.equiv CategoryTheory.Functor.equiv

end Functor

/-- A category being equivalent to `PUnit` is equivalent to it having a unique morphism between
  any two objects. (In fact, such a category is also a groupoid;
  see `CategoryTheory.Groupoid.ofHomUnique`) -/
theorem equiv_punit_iff_unique :
    Nonempty (C ≌ Discrete PUnit.{w + 1}) ↔ Nonempty C ∧ ∀ x y : C, Nonempty <| Unique (x ⟶ y) := by
  constructor
  · rintro ⟨h⟩
    refine' ⟨⟨h.inverse.obj ⟨⟨⟩⟩⟩, fun x y => Nonempty.intro _⟩
    let f : x ⟶ y := by
      have hx : x ⟶ h.inverse.obj ⟨⟨⟩⟩ := by convert h.unit.app x
      have hy : h.inverse.obj ⟨⟨⟩⟩ ⟶ y := by convert h.unitInv.app y
      exact hx ≫ hy
    suffices sub : Subsingleton (x ⟶ y) from uniqueOfSubsingleton f
    have : ∀ z, z = h.unit.app x ≫ (h.functor ⋙ h.inverse).map z ≫ h.unitInv.app y := by
      intro z
      simp [congrArg (· ≫ h.unitInv.app y) (h.unit.naturality z)]
    apply Subsingleton.intro
    intro a b
    rw [this a, this b]
    simp only [Functor.comp_map]
    congr 3
    apply ULift.ext
    simp
  · rintro ⟨⟨p⟩, h⟩
    haveI := fun x y => (h x y).some
    refine'
      Nonempty.intro
        (CategoryTheory.Equivalence.mk ((Functor.const _).obj ⟨⟨⟩⟩)
          ((@Functor.const <| Discrete PUnit).obj p) ?_ (by apply Functor.punitExt))
    exact
      NatIso.ofComponents fun _ =>
        { hom := default
          inv := default }
#align category_theory.equiv_punit_iff_unique CategoryTheory.equiv_punit_iff_unique

end CategoryTheory
```
