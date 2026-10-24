# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LiftingProperties.Varianta6ff1de2101841093110b4ad6f11fdb68d8f52b7af8bdae37e16673f0ef086eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7ebfd0c9a9b4b2946e667bc45b077da0244ffeb` · SHA-256 `d82824ad9ef9b466d6c603744041744a9970e7d5308e826f8d5bc02fe11e7053`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasLiftingPropertyOfIsZero.Variantc7faaa23be091bf0f1830c018a0fb7230a5fdd9d8339e6a211e34b2c5f7c8d07","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c7faaa23be091bf0f1830c018a0fb7230a5fdd9d8339e6a211e34b2c5f7c8d07","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasLiftingPropertyOfIsZero.Variantc7faaa23be091bf0f1830c018a0fb7230a5fdd9d8339e6a211e34b2c5f7c8d07","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c7faaa23be091bf0f1830c018a0fb7230a5fdd9d8339e6a211e34b2c5f7c8d07","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Preadditive/Injective/LiftingProperties.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Preadditive.Injective.Basic
import Mathlib.CategoryTheory.MorphismProperty.LiftingProperty

/-!
# Characterization of injective objects in terms of lifting properties

An object `I` is injective iff the morphism `I ⟶ 0` has the
right lifting property with respect to monomorphisms,
`injective_iff_rlp_monomorphisms_zero`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasLiftingPropertyOfIsZero.Variantc7faaa23be091bf0f1830c018a0fb7230a5fdd9d8339e6a211e34b2c5f7c8d07

universe v u

namespace CategoryTheory

open Limits ZeroObject

variable {C : Type u} [Category.{v} C]

namespace Injective

lemma hasLiftingProperty_of_isZero
    {A B I Z : C} (i : A ⟶ B) [Mono i] [Injective I] (p : I ⟶ Z) (hZ : IsZero Z) :
    HasLiftingProperty i p where
  sq_hasLift {f g} sq := ⟨⟨{
    l := Injective.factorThru f i
    fac_right := hZ.eq_of_tgt _ _ }⟩⟩

instance {A B I : C} (i : A ⟶ B) [Mono i] [Injective I] [HasZeroObject C] (p : I ⟶ 0) :
    HasLiftingProperty i (p : I ⟶ 0) :=
  Injective.hasLiftingProperty_of_isZero i p (isZero_zero C)

end Injective

lemma injective_iff_rlp_monomorphisms_of_isZero
    [HasZeroMorphisms C] {I Z : C} (p : I ⟶ Z) (hZ : IsZero Z) :
    Injective I ↔ (MorphismProperty.monomorphisms C).rlp p := by
  obtain rfl := hZ.eq_of_tgt p 0
  constructor
  · intro _ A B i (_ : Mono i)
    exact Injective.hasLiftingProperty_of_isZero i 0 hZ
  · intro h
    constructor
    intro A B f i hi
    have := h _ hi
    have sq : CommSq f i (0 : I ⟶ Z) 0 := ⟨by simp⟩
    exact ⟨sq.lift, by simp⟩

lemma injective_iff_rlp_monomorphisms_zero
    [HasZeroMorphisms C] [HasZeroObject C] (I : C) :
    Injective I ↔ (MorphismProperty.monomorphisms C).rlp (0 : I ⟶ 0) :=
  injective_iff_rlp_monomorphisms_of_isZero _ (isZero_zero C)

end CategoryTheory
```
