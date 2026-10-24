# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Extensions.Variant9c1101655460a430198e3cd052283fa60d018e44ea82facf5224a58384c902fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6336d844b01f085078ceefb08895ff97027da8a1` · SHA-256 `0008bc2fbb665b70b5cf38c89c31d05fa1b308d48bfca8c0a604a3abd0ba1a2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsClosedUnderExtensions.Variant9ca7daf87e38208faf1d0c38944831d27e2d374250500b42cc389a0dbbba1752","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ca7daf87e38208faf1d0c38944831d27e2d374250500b42cc389a0dbbba1752","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsClosedUnderExtensions.Variant9ca7daf87e38208faf1d0c38944831d27e2d374250500b42cc389a0dbbba1752","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"9ca7daf87e38208faf1d0c38944831d27e2d374250500b42cc389a0dbbba1752","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/ObjectProperty/Extensions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.ShortComplex.ShortExact
import Mathlib.CategoryTheory.ObjectProperty.Basic

/-!
# Properties of objects that are closed under extensions

Given a category `C` and `P : ObjectProperty C`, we define a type
class `P.IsClosedUnderExtensions` expressing that the property
is closed under extensions.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsClosedUnderExtensions.Variant9ca7daf87e38208faf1d0c38944831d27e2d374250500b42cc389a0dbbba1752

universe v v' u u'

namespace CategoryTheory

open Limits

variable {C : Type u} [Category.{v} C] {D : Type u'} [Category.{v'} D]

namespace ObjectProperty

variable (P : ObjectProperty C)

section

variable [HasZeroMorphisms C]

/-- Given `P : ObjectProperty C`, we say that `P` is closed under extensions
if whenever `0 ⟶ X₁ ⟶ X₂ ⟶ X₃ ⟶ 0` is a short exact short complex,
then `P X₁` and `P X₃` implies `P X₂`. -/
class IsClosedUnderExtensions : Prop where
  prop_X₂_of_shortExact {S : ShortComplex C} (hS : S.ShortExact)
      (h₁ : P S.X₁) (h₃ : P S.X₃) : P S.X₂

lemma prop_X₂_of_shortExact [P.IsClosedUnderExtensions]
    {S : ShortComplex C} (hS : S.ShortExact)
    (h₁ : P S.X₁) (h₃ : P S.X₃) : P S.X₂ :=
  IsClosedUnderExtensions.prop_X₂_of_shortExact hS h₁ h₃

instance : (⊤ : ObjectProperty C).IsClosedUnderExtensions where
  prop_X₂_of_shortExact := by simp

instance : IsClosedUnderExtensions (IsZero (C := C)) where
  prop_X₂_of_shortExact hS h₁ h₃ :=
    hS.exact.isZero_of_both_zeros (h₁.eq_of_src _ _) (h₃.eq_of_tgt _ _)

instance [P.IsClosedUnderExtensions] (F : D ⥤ C)
    [HasZeroMorphisms D] [F.PreservesZeroMorphisms]
    [PreservesFiniteLimits F] [PreservesFiniteColimits F] :
    (P.inverseImage F).IsClosedUnderExtensions where
  prop_X₂_of_shortExact hS h₁ h₃ := by
    have := hS.mono_f
    have := hS.epi_g
    exact P.prop_X₂_of_shortExact (hS.map F) h₁ h₃

end

lemma prop_biprod {X₁ X₂ : C} (h₁ : P X₁) (h₂ : P X₂) [Preadditive C] [HasZeroObject C]
    [P.IsClosedUnderExtensions] [HasBinaryBiproduct X₁ X₂] :
    P (X₁ ⊞ X₂) :=
  P.prop_X₂_of_shortExact
    (ShortComplex.Splitting.ofHasBinaryBiproduct X₁ X₂).shortExact h₁ h₂

end ObjectProperty

end CategoryTheory
```
