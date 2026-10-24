-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftUnitorTensorHomPrimePrime.Variantc4c17b3ff89ed97e6e1ba5f0391e151d52533cea6fc89144fa0bf9edf77f8780","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c4c17b3ff89ed97e6e1ba5f0391e151d52533cea6fc89144fa0bf9edf77f8780","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LeftUnitorTensorHomPrimePrime.Variantc4c17b3ff89ed97e6e1ba5f0391e151d52533cea6fc89144fa0bf9edf77f8780","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c4c17b3ff89ed97e6e1ba5f0391e151d52533cea6fc89144fa0bf9edf77f8780","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/CoherenceLemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Michael Jendrusch. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Jendrusch, Kim Morrison, Bhavik Mehta, Jakob von Raumer
-/
module

public import Mathlib.Tactic.CategoryTheory.Monoidal.PureCoherence

/-!
# Lemmas which are consequences of monoidal coherence

These lemmas are all proved `by coherence`.

## Future work
Investigate whether these lemmas are really needed,
or if they can be replaced by use of the `coherence` tactic.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftUnitorTensorHomPrimePrime.Variantc4c17b3ff89ed97e6e1ba5f0391e151d52533cea6fc89144fa0bf9edf77f8780

public section


open CategoryTheory

namespace CategoryTheory.MonoidalCategory

variable {C : Type*} [Category* C] [MonoidalCategory C]

-- See Proposition 2.2.4 of <http://www-math.mit.edu/~etingof/egnobookfinal.pdf>
@[reassoc]
theorem leftUnitor_tensor_hom'' (X Y : C) :
    (α_ (𝟙_ C) X Y).hom ≫ (λ_ (X ⊗ Y)).hom = (λ_ X).hom ⊗ₘ 𝟙 Y := by
  simp

@[reassoc]
theorem leftUnitor_tensor_hom' (X Y : C) :
    (λ_ (X ⊗ Y)).hom = (α_ (𝟙_ C) X Y).inv ≫ ((λ_ X).hom ⊗ₘ 𝟙 Y) := by
  simp

@[reassoc]
theorem leftUnitor_tensor_inv' (X Y : C) :
    (λ_ (X ⊗ Y)).inv = ((λ_ X).inv ⊗ₘ 𝟙 Y) ≫ (α_ (𝟙_ C) X Y).hom := by simp

@[reassoc]
theorem id_tensor_rightUnitor_inv (X Y : C) : 𝟙 X ⊗ₘ (ρ_ Y).inv = (ρ_ _).inv ≫ (α_ _ _ _).hom := by
  simp

@[reassoc]
theorem leftUnitor_inv_tensor_id (X Y : C) : (λ_ X).inv ⊗ₘ 𝟙 Y = (λ_ _).inv ≫ (α_ _ _ _).inv := by
  simp

@[reassoc]
theorem pentagon_inv_inv_hom (W X Y Z : C) :
    (α_ W (X ⊗ Y) Z).inv ≫ ((α_ W X Y).inv ⊗ₘ 𝟙 Z) ≫ (α_ (W ⊗ X) Y Z).hom =
      (𝟙 W ⊗ₘ (α_ X Y Z).hom) ≫ (α_ W X (Y ⊗ Z)).inv := by
  simp

theorem unitors_equal : (λ_ (𝟙_ C)).hom = (ρ_ (𝟙_ C)).hom := by
  monoidal_coherence

theorem unitors_inv_equal : (λ_ (𝟙_ C)).inv = (ρ_ (𝟙_ C)).inv := by
  monoidal_coherence

@[reassoc]
theorem pentagon_hom_inv {W X Y Z : C} :
    (α_ W X (Y ⊗ Z)).hom ≫ (𝟙 W ⊗ₘ (α_ X Y Z).inv) =
      (α_ (W ⊗ X) Y Z).inv ≫ ((α_ W X Y).hom ⊗ₘ 𝟙 Z) ≫ (α_ W (X ⊗ Y) Z).hom := by
  simp

@[reassoc]
theorem pentagon_inv_hom (W X Y Z : C) :
    (α_ (W ⊗ X) Y Z).inv ≫ ((α_ W X Y).hom ⊗ₘ 𝟙 Z) =
      (α_ W X (Y ⊗ Z)).hom ≫ (𝟙 W ⊗ₘ (α_ X Y Z).inv) ≫ (α_ W (X ⊗ Y) Z).inv := by
  simp

end CategoryTheory.MonoidalCategory
