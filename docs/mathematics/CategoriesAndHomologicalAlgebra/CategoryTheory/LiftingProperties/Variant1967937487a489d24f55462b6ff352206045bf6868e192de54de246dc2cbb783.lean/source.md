# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LiftingProperties.Variant1967937487a489d24f55462b6ff352206045bf6868e192de54de246dc2cbb783

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1cb02be50870925a3abf671358b593077dd8676` · SHA-256 `14a8fa5cc5a5cbdeb3bafc2bdfca2b83446514675cd4500d902cb780e267ce9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasLiftingPropertyOfIsZero.Variant39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasLiftingPropertyOfIsZero.Variant39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Preadditive/Projective/LiftingProperties.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Preadditive.Projective.Basic
import Mathlib.CategoryTheory.MorphismProperty.LiftingProperty

/-!
# Characterization of projective objects in terms of lifting properties

An object `P` is projective iff the morphism `0 ⟶ P` has the
left lifting property with respect to epimorphisms,
`projective_iff_llp_epimorphisms_zero`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasLiftingPropertyOfIsZero.Variant39700195d05938532484001bd4bf6b3011b2d194e2c54b6dfe8caada8b144a93

universe v u

namespace CategoryTheory

open Limits ZeroObject

variable {C : Type u} [Category.{v} C]

namespace Projective

lemma hasLiftingProperty_of_isZero
    {Z P X Y : C} (i : Z ⟶ P) (p : X ⟶ Y) [Epi p] [Projective P] (hZ : IsZero Z) :
    HasLiftingProperty i p where
  sq_hasLift {f g} sq := ⟨⟨{
    l := Projective.factorThru g p
    fac_left := hZ.eq_of_src _ _ }⟩⟩

instance {X Y P : C} (p : X ⟶ Y) [Epi p] [Projective P] [HasZeroObject C] (i : 0 ⟶ P) :
    HasLiftingProperty (i : 0 ⟶ P) p :=
  Projective.hasLiftingProperty_of_isZero i p (isZero_zero C)

end Projective

lemma projective_iff_llp_epimorphisms_of_isZero
    [HasZeroMorphisms C] {P Z : C} (i : Z ⟶ P) (hZ : IsZero Z) :
    Projective P ↔ (MorphismProperty.epimorphisms C).llp i := by
  obtain rfl := hZ.eq_of_src i 0
  constructor
  · intro _ X Y p (_ : Epi p)
    exact Projective.hasLiftingProperty_of_isZero 0 p hZ
  · intro h
    constructor
    intro X Y f p hp
    have := h _ hp
    have sq : CommSq 0 (0 : Z ⟶ P) p f := ⟨by simp⟩
    exact ⟨sq.lift, by simp⟩

lemma projective_iff_llp_epimorphisms_zero
    [HasZeroMorphisms C] [HasZeroObject C] (P : C) :
    Projective P ↔ (MorphismProperty.epimorphisms C).llp (0 : 0 ⟶ P) :=
  projective_iff_llp_epimorphisms_of_isZero _ (isZero_zero C)

end CategoryTheory
```
