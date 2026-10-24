# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cartesian.Variantf60abf71bcb7281555814d8f6857e63560c7cc68fc0fa3ad013f0013da5891bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d543855320bfb0536cb9124486cc48945d737bb` · SHA-256 `a3f59a9e882256cdc333216c57a501d4d97088ea122e14a0cb1300f4d6840056`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsCartesianDistributive.Variantc1c517354d2803fd8ff88d2bab961f41d09fcb6693adfb50b76af017765300c8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c1c517354d2803fd8ff88d2bab961f41d09fcb6693adfb50b76af017765300c8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsCartesianDistributive.Variantc1c517354d2803fd8ff88d2bab961f41d09fcb6693adfb50b76af017765300c8","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c1c517354d2803fd8ff88d2bab961f41d09fcb6693adfb50b76af017765300c8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Distributive/Cartesian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Sina Hazratpour. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sina Hazratpour
-/
module

public import Mathlib.CategoryTheory.Distributive.Monoidal
public import Mathlib.CategoryTheory.Limits.MonoCoprod
public import Mathlib.CategoryTheory.Monoidal.Cartesian.Basic

/-!

# Distributive categories

## Main definitions

A category `C` with finite products and binary coproducts is called distributive if the
canonical distributivity morphism `(X ⨯ Y) ⨿ (X ⨯ Z) ⟶ X ⨯ (Y ⨿ Z)` is an isomorphism
for all objects `X`, `Y`, and `Z` in `C`.

## Implementation Details

A Cartesian distributive category is defined as a Cartesian monoidal category which is
monoidal distributive.

## Main results

- The coproduct coprojections are monic in a Cartesian distributive category.


## TODO

- Every Cartesian distributive category is finitary distributive, meaning that
  the left tensor product functor `X ⊗ -` preserves all finite coproducts.

- Show that any extensive distributive category can be embedded into a topos.

## References

- [J.R.B.Cockett, Introduction to distributive categories, 1993][cockett1993]
- [Carboni et al, Introduction to extensive and distributive categories][CARBONI1993145]
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsCartesianDistributive.Variantc1c517354d2803fd8ff88d2bab961f41d09fcb6693adfb50b76af017765300c8

public section

universe v v₂ u u₂

noncomputable section

namespace CategoryTheory

open Category Limits MonoidalCategory Distributive CartesianMonoidalCategory

variable (C : Type u) [Category.{v} C] [CartesianMonoidalCategory C] [HasBinaryCoproducts C]

/-- A category `C` with finite products is Cartesian distributive if it is monoidal distributive
with respect to the Cartesian monoidal structure. -/
abbrev IsCartesianDistributive :=
  IsMonoidalDistrib C

namespace IsCartesianDistributive

/-- To show a category is Cartesian distributive it is enough to show it is left distributive.
The right distributivity is inferred from symmetry of the Cartesian monoidal structure. -/
lemma of_isMonoidalLeftDistrib [IsMonoidalLeftDistrib C] : IsCartesianDistributive C :=
  letI : BraidedCategory C := Nonempty.some inferInstance
  SymmetricCategory.isMonoidalDistrib_of_isMonoidalLeftDistrib

/-- The coproduct coprojections are monic in a Cartesian distributive category. -/
instance monoCoprod [IsCartesianDistributive C] : MonoCoprod C :=
  MonoCoprod.mk' fun A B =>
    ⟨_, coprodIsCoprod A B, ⟨fun {Z} f g he ↦ by
      let ι := coprod.inl (X := A) (Y := B)
      have : Mono (Z ◁ ι) := SplitMono.mono
        { retraction := (∂L Z A B).inv ≫ coprod.desc (𝟙 _) (fst Z B ≫ lift (𝟙 Z) f) }
      have : lift (𝟙 Z) f = lift (𝟙 Z) g := by rw [← cancel_mono (Z ◁ ι)]; aesop
      simpa only [lift_snd] using this =≫ snd _ _⟩⟩

end IsCartesianDistributive

end CategoryTheory
```
