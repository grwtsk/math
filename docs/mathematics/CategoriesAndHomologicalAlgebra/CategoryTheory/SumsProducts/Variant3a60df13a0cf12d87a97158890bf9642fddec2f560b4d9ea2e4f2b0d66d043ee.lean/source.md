# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SumsProducts.Variant3a60df13a0cf12d87a97158890bf9642fddec2f560b4d9ea2e4f2b0d66d043ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c04acdb6ff3d5910f609db175dd6a8485dc4c307` · SHA-256 `d6933e83b78ca4d554446b7a35a63412a4f6c91067bb4630e374fde61f907058`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProductEquiv.Variant69782b1504007d5460211094bd0bb33af1e543c3813655628b82892e7b791f96","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"69782b1504007d5460211094bd0bb33af1e543c3813655628b82892e7b791f96","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ProductEquiv.Variant69782b1504007d5460211094bd0bb33af1e543c3813655628b82892e7b791f96","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"69782b1504007d5460211094bd0bb33af1e543c3813655628b82892e7b791f96","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Discrete/SumsProducts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Robin Carlier. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robin Carlier
-/
import Mathlib.CategoryTheory.Discrete.Basic
import Mathlib.CategoryTheory.Sums.Basic
import Mathlib.CategoryTheory.Products.Basic

/-! # Sums and products of discrete categories.

This file shows that binary products and binary sums of discrete categories
are also discrete, both in the form of explicit equivalences and through the
`IsDiscrete` typeclass.

## Main declarations

* `Discrete.productEquiv`: The equivalence of categories between `Discrete (J × K)`
  and `Discrete J × Discrete K`
* `Discrete.sumEquiv`: The equivalence of categories between `Discrete (J ⊕ K)`
  and `Discrete J ⊕ Discrete K`.
* `IsDiscrete.prod`: an `IsDiscrete` instance on the product of two discrete categories.
* `IsDiscrete.sum`: an `IsDiscrete` instance on the sum of two discrete categories.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProductEquiv.Variant69782b1504007d5460211094bd0bb33af1e543c3813655628b82892e7b791f96

namespace CategoryTheory

namespace Discrete

/-- The discrete category on a product is equivalent to the product of the
discrete categories. -/
@[simps!]
def productEquiv {J K : Type*} : Discrete (J × K) ≌ Discrete J × Discrete K where
  functor := Discrete.functor <| fun ⟨j, k⟩ ↦ ⟨.mk j, .mk k⟩
  inverse := {
    obj := fun ⟨x, y⟩ ↦ .mk (⟨x.as, y.as⟩)
    map := fun ⟨f₁, f₂⟩ ↦ eqToHom (by discrete_cases; dsimp; rw [f₁, f₂]) }
  unitIso := NatIso.ofComponents (fun _ ↦ Iso.refl _)
  counitIso := NatIso.ofComponents (fun _ ↦ Iso.refl _)

/-- The discrete category on a sum is equivalent to the sum of the
discrete categories. -/
@[simps!]
def sumEquiv {J K : Type*} : Discrete (J ⊕ K) ≌ Discrete J ⊕ Discrete K where
  functor := Discrete.functor <| fun t ↦
    match t with
    | .inl j => Sum.inl (Discrete.mk j)
    | .inr k => Sum.inr (Discrete.mk k)
  inverse := (Discrete.functor <| fun t ↦ Discrete.mk (Sum.inl t)).sum'
    (Discrete.functor <| fun t ↦ Discrete.mk (Sum.inr t))
  unitIso := NatIso.ofComponents (fun ⟨x⟩ ↦
    match x with
    | .inl x => Iso.refl _
    | .inr x => Iso.refl _)
  counitIso := Functor.sumIsoExt
    (Discrete.natIso <| fun _ ↦ Iso.refl _)
    (Discrete.natIso <| fun _ ↦ Iso.refl _)

end Discrete

namespace IsDiscrete

variable (C C' : Type*) [Category C] [Category C'] (D : Type*) [Category D]
  [IsDiscrete C] [IsDiscrete C'] [IsDiscrete D]

/-- A product of discrete categories is discrete. -/
instance prod : IsDiscrete (C × D) where
  subsingleton x y := inferInstanceAs (Subsingleton ((x.1 ⟶ y.1) × (x.2 ⟶ y.2)))
  eq_of_hom f := Prod.ext (IsDiscrete.eq_of_hom f.1) (IsDiscrete.eq_of_hom f.2)

/-- A product of discrete categories is discrete. -/
instance sum : IsDiscrete (C ⊕ C') where
  subsingleton x y :=
    { allEq f g := by
        cases f <;> cases g
        · case inl x y f g => rw [((by assumption : IsDiscrete C).subsingleton x y).allEq f g]
        · case inr x y f g => rw [((by assumption : IsDiscrete C').subsingleton x y).allEq f g] }
  eq_of_hom {x y} f := by
    cases f with
    | inl x y f => rw [(by assumption : IsDiscrete C).eq_of_hom f]
    | inr x y f => rw [(by assumption : IsDiscrete C').eq_of_hom f]

end CategoryTheory.IsDiscrete
```
