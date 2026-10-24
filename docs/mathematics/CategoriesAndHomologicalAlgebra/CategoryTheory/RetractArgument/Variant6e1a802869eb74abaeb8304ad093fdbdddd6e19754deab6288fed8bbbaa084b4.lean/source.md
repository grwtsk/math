# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RetractArgument.Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `544842d561a5e5827f8c21e9b80ae1c182cfcf1e` · SHA-256 `299fdb6b4b7ae23efe73f80368b28b3d1ed80f75e8b574764f3d5dddb3c42c8c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RetractArrowOfLeftLiftingProperty.Variant3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.RetractArrowOfLeftLiftingProperty.Variant3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/MorphismProperty/RetractArgument.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.MorphismProperty.Factorization
import Mathlib.CategoryTheory.MorphismProperty.LiftingProperty

/-!
# The retract argument

Let `W₁` and `W₂` be classes of morphisms in a category `C` such that
any morphism can be factored as a morphism in `W₁` followed by
a morphism in `W₂` (this is `HasFactorization W₁ W₂`).
If `W₁` has the left lifting property with respect to `W₂`
(i.e. `W₁ ≤ W₂.llp`, or equivalently `W₂ ≤ W₁.rlp`),
then `W₂.llp = W₁` if `W₁` is stable under retracts,
and `W₁.rlp = W₂` if `W₂` is.

## Reference
- https://ncatlab.org/nlab/show/weak+factorization+system#retract_argument

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RetractArrowOfLeftLiftingProperty.Variant3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8

namespace CategoryTheory

variable {C : Type*} [Category C]

/-- If `i ≫ p = f`, and `f` has the left lifting property with respect to `p`,
then `f` is a retract of `i`. -/
noncomputable def RetractArrow.ofLeftLiftingProperty
    {X Y Z : C} {f : X ⟶ Z} {i : X ⟶ Y} {p : Y ⟶ Z} (h : i ≫ p = f)
    [HasLiftingProperty f p] : RetractArrow f i :=
  have sq : CommSq i f p (𝟙 _) := ⟨by simp [h]⟩
  { i := Arrow.homMk (𝟙 X) sq.lift
    r := Arrow.homMk (𝟙 X) p }

/-- If `i ≫ p = f`, and `f` has the right lifting property with respect to `i`,
then `f` is a retract of `p`. -/
noncomputable def RetractArrow.ofRightLiftingProperty
    {X Y Z : C} {f : X ⟶ Z} {i : X ⟶ Y} {p : Y ⟶ Z} (h : i ≫ p = f)
    [HasLiftingProperty i f] : RetractArrow f p :=
  have sq : CommSq (𝟙 _) i f p := ⟨by simp [h]⟩
  { i := Arrow.homMk i (𝟙 _)
    r := Arrow.homMk sq.lift (𝟙 _) }

namespace MorphismProperty

variable {W₁ W₂ : MorphismProperty C}

lemma llp_eq_of_le_llp_of_hasFactorization_of_isStableUnderRetracts
    [HasFactorization W₁ W₂] [W₁.IsStableUnderRetracts] (h₁ : W₁ ≤ W₂.llp) :
    W₂.llp = W₁ :=
  le_antisymm (fun A B i hi ↦ by
    have h := factorizationData W₁ W₂ i
    have := hi _ h.hp
    simpa using of_retract (RetractArrow.ofLeftLiftingProperty h.fac) h.hi) h₁

lemma rlp_eq_of_le_rlp_of_hasFactorization_of_isStableUnderRetracts
    [HasFactorization W₁ W₂] [W₂.IsStableUnderRetracts] (h₂ : W₂ ≤ W₁.rlp) :
    W₁.rlp = W₂ :=
  le_antisymm (fun X Y p hp ↦ by
    have h := factorizationData W₁ W₂ p
    have := hp _ h.hi
    simpa using of_retract (RetractArrow.ofRightLiftingProperty h.fac) h.hp) h₂

end MorphismProperty

end CategoryTheory
```
