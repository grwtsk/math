# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallyDiscrete.Variante68a202254c87d998468a143acc96c9c4a44ab3e6bad5851355ee34c1637b802

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `147bae96ecc21a6734cd3fabe1e18a07e5d344b8` · SHA-256 `3f76c7f388505d6d825067880fde174b9eb38ccfb313e1727d1282304114660e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PseudofunctorOfIsLocallyDiscrete.Variant742cda3413d22a28ca3e064c3ad8b2a887d62f3f37fa76911fd2fae8826af5f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"742cda3413d22a28ca3e064c3ad8b2a887d62f3f37fa76911fd2fae8826af5f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PseudofunctorOfIsLocallyDiscrete.Variant742cda3413d22a28ca3e064c3ad8b2a887d62f3f37fa76911fd2fae8826af5f5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"742cda3413d22a28ca3e064c3ad8b2a887d62f3f37fa76911fd2fae8826af5f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Bicategory/Functor/LocallyDiscrete.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Bicategory.Functor.Pseudofunctor
import Mathlib.CategoryTheory.Bicategory.LocallyDiscrete

/-!
# Pseudofunctors from locally discrete bicategories

This file provides various ways of constructing pseudofunctors from locally discrete
bicategories.

Firstly, we define the constructors `pseudofunctorOfIsLocallyDiscrete` and
`oplaxFunctorOfIsLocallyDiscrete` for defining pseudofunctors and oplax functors
from a locally discrete bicategories. In this situation, we do not need to care about
the field `map₂`, because all the `2`-morphisms in `B` are identities.

We also define a specialized constructor `LocallyDiscrete.mkPseudofunctor` when
the source bicategory is of the form `B := LocallyDiscrete B₀` for a category `B₀`.

We also prove that a functor `F : I ⥤ B` with `B` a strict bicategory can be promoted
to a pseudofunctor (or oplax functor) (`Functor.toPseudofunctor`) with domain
`LocallyDiscrete I`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PseudofunctorOfIsLocallyDiscrete.Variant742cda3413d22a28ca3e064c3ad8b2a887d62f3f37fa76911fd2fae8826af5f5

namespace CategoryTheory

open Bicategory

/-- Constructor for pseudofunctors from a locally discrete bicategory. In that
case, we do not need to provide the `map₂` field of pseudofunctors. -/
@[simps obj map mapId mapComp]
def pseudofunctorOfIsLocallyDiscrete
    {B C : Type*} [Bicategory B] [IsLocallyDiscrete B] [Bicategory C]
    (obj : B → C)
    (map : ∀ {b b' : B}, (b ⟶ b') → (obj b ⟶ obj b'))
    (mapId : ∀ (b : B), map (𝟙 b) ≅ 𝟙 _)
    (mapComp : ∀ {b₀ b₁ b₂ : B} (f : b₀ ⟶ b₁) (g : b₁ ⟶ b₂), map (f ≫ g) ≅ map f ≫ map g)
    (map₂_associator : ∀ {b₀ b₁ b₂ b₃ : B} (f : b₀ ⟶ b₁) (g : b₁ ⟶ b₂) (h : b₂ ⟶ b₃),
      (mapComp (f ≫ g) h).hom ≫
        (mapComp f g).hom ▷ map h ≫ (α_ (map f) (map g) (map h)).hom ≫
          map f ◁ (mapComp g h).inv ≫ (mapComp f (g ≫ h)).inv = eqToHom (by simp) := by aesop_cat)
    (map₂_left_unitor : ∀ {b₀ b₁ : B} (f : b₀ ⟶ b₁),
      (mapComp (𝟙 b₀) f).hom ≫ (mapId b₀).hom ▷ map f ≫ (λ_ (map f)).hom = eqToHom (by simp) := by
        aesop_cat)
    (map₂_right_unitor : ∀ {b₀ b₁ : B} (f : b₀ ⟶ b₁),
      (mapComp f (𝟙 b₁)).hom ≫ map f ◁ (mapId b₁).hom ≫ (ρ_ (map f)).hom = eqToHom (by simp) := by
        aesop_cat) :
    Pseudofunctor B C where
  obj := obj
  map := map
  map₂ φ := eqToHom (by
    obtain rfl := obj_ext_of_isDiscrete φ
    dsimp)
  mapId := mapId
  mapComp := mapComp
  map₂_whisker_left _ _ _ η := by
    obtain rfl := obj_ext_of_isDiscrete η
    simp
  map₂_whisker_right η _ := by
    obtain rfl := obj_ext_of_isDiscrete η
    simp

/-- Constructor for oplax functors from a locally discrete bicategory. In that
case, we do not need to provide the `map₂` field of oplax functors. -/
@[simps obj map mapId mapComp]
def oplaxFunctorOfIsLocallyDiscrete
    {B C : Type*} [Bicategory B] [IsLocallyDiscrete B] [Bicategory C]
    (obj : B → C)
    (map : ∀ {b b' : B}, (b ⟶ b') → (obj b ⟶ obj b'))
    (mapId : ∀ (b : B), map (𝟙 b) ⟶ 𝟙 _)
    (mapComp : ∀ {b₀ b₁ b₂ : B} (f : b₀ ⟶ b₁) (g : b₁ ⟶ b₂), map (f ≫ g) ⟶ map f ≫ map g)
    (map₂_associator : ∀ {b₀ b₁ b₂ b₃ : B} (f : b₀ ⟶ b₁) (g : b₁ ⟶ b₂) (h : b₂ ⟶ b₃),
      eqToHom (by simp) ≫ mapComp f (g ≫ h) ≫ map f ◁ mapComp g h =
        mapComp (f ≫ g) h ≫ mapComp f g ▷ map h ≫ (α_ (map f) (map g) (map h)).hom := by
          aesop_cat)
    (map₂_left_unitor : ∀ {b₀ b₁ : B} (f : b₀ ⟶ b₁),
      mapComp (𝟙 b₀) f ≫ mapId b₀ ▷ map f ≫ (λ_ (map f)).hom = eqToHom (by simp) := by
        aesop_cat)
    (map₂_right_unitor : ∀ {b₀ b₁ : B} (f : b₀ ⟶ b₁),
      mapComp f (𝟙 b₁) ≫ map f ◁ mapId b₁ ≫ (ρ_ (map f)).hom = eqToHom (by simp) := by
        aesop_cat) :
    OplaxFunctor B C where
  obj := obj
  map := map
  map₂ φ := eqToHom (by
    obtain rfl := obj_ext_of_isDiscrete φ
    dsimp)
  mapId := mapId
  mapComp := mapComp
  mapComp_naturality_left η := by
    obtain rfl := obj_ext_of_isDiscrete η
    simp
  mapComp_naturality_right _ _ _ η := by
    obtain rfl := obj_ext_of_isDiscrete η
    simp

section

variable {I B : Type*} [Category I] [Bicategory B] [Strict B] (F : I ⥤ B)

attribute [local simp]
  Strict.leftUnitor_eqToIso Strict.rightUnitor_eqToIso Strict.associator_eqToIso

/--
If `B` is a strict bicategory and `I` is a (1-)category, any functor (of 1-categories) `I ⥤ B` can
be promoted to a pseudofunctor from `LocallyDiscrete I` to `B`.
-/
@[simps! obj map mapId mapComp]
def Functor.toPseudoFunctor : Pseudofunctor (LocallyDiscrete I) B :=
  pseudofunctorOfIsLocallyDiscrete
    (fun ⟨X⟩ ↦ F.obj X) (fun ⟨f⟩ ↦ F.map f)
    (fun ⟨X⟩ ↦ eqToIso (by simp)) (fun f g ↦ eqToIso (by simp))

/--
If `B` is a strict bicategory and `I` is a (1-)category, any functor (of 1-categories) `I ⥤ B` can
be promoted to an oplax functor from `LocallyDiscrete I` to `B`.
-/
@[simps! obj map mapId mapComp]
def Functor.toOplaxFunctor : OplaxFunctor (LocallyDiscrete I) B :=
  oplaxFunctorOfIsLocallyDiscrete
    (fun ⟨X⟩ ↦ F.obj X) (fun ⟨f⟩ ↦ F.map f)
    (fun ⟨X⟩ ↦ eqToHom (by simp)) (fun f g ↦ eqToHom (by simp))

end

namespace LocallyDiscrete

/-- Constructor for pseudofunctors from a locally discrete bicategory. In that
case, we do not need to provide the `map₂` field of pseudofunctors. -/
@[simps! obj map mapId mapComp]
def mkPseudofunctor {B₀ C : Type*} [Category B₀] [Bicategory C]
    (obj : B₀ → C)
    (map : ∀ {b b' : B₀}, (b ⟶ b') → (obj b ⟶ obj b'))
    (mapId : ∀ (b : B₀), map (𝟙 b) ≅ 𝟙 _)
    (mapComp : ∀ {b₀ b₁ b₂ : B₀} (f : b₀ ⟶ b₁) (g : b₁ ⟶ b₂), map (f ≫ g) ≅ map f ≫ map g)
    (map₂_associator : ∀ {b₀ b₁ b₂ b₃ : B₀} (f : b₀ ⟶ b₁) (g : b₁ ⟶ b₂) (h : b₂ ⟶ b₃),
      (mapComp (f ≫ g) h).hom ≫
        (mapComp f g).hom ▷ map h ≫ (α_ (map f) (map g) (map h)).hom ≫
          map f ◁ (mapComp g h).inv ≫ (mapComp f (g ≫ h)).inv = eqToHom (by simp) := by aesop_cat)
    (map₂_left_unitor : ∀ {b₀ b₁ : B₀} (f : b₀ ⟶ b₁),
      (mapComp (𝟙 b₀) f).hom ≫ (mapId b₀).hom ▷ map f ≫ (λ_ (map f)).hom = eqToHom (by simp) := by
        aesop_cat)
    (map₂_right_unitor : ∀ {b₀ b₁ : B₀} (f : b₀ ⟶ b₁),
      (mapComp f (𝟙 b₁)).hom ≫ map f ◁ (mapId b₁).hom ≫ (ρ_ (map f)).hom = eqToHom (by simp) := by
        aesop_cat) :
    Pseudofunctor (LocallyDiscrete B₀) C :=
  pseudofunctorOfIsLocallyDiscrete (fun b ↦ obj b.as) (fun f ↦ map f.as)
    (fun _ ↦ mapId _) (fun _ _ ↦ mapComp _ _) (fun _ _ _ ↦ map₂_associator _ _ _)
    (fun _ ↦ map₂_left_unitor _) (fun _ ↦ map₂_right_unitor _)

end LocallyDiscrete

end CategoryTheory
```
