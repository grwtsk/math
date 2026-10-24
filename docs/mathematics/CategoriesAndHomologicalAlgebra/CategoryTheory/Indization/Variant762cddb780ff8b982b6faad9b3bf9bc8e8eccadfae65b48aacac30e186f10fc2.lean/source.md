# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Indization.Variant762cddb780ff8b982b6faad9b3bf9bc8e8eccadfae65b48aacac30e186f10fc2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ed6badcda6969177897ec04f2af30f08b3e3082` · SHA-256 `4d603e15666f1d0799d41996e0ee98c2ffdeeb82889a9d5491a0a482a6a6516f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant51fea66f122b19963e708ee952202962d66dd874ed1129079b8b0bc089cbd7a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"51fea66f122b19963e708ee952202962d66dd874ed1129079b8b0bc089cbd7a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorCategory.Variant51fea66f122b19963e708ee952202962d66dd874ed1129079b8b0bc089cbd7a6","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"51fea66f122b19963e708ee952202962d66dd874ed1129079b8b0bc089cbd7a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Abelian/GrothendieckAxioms/Indization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.FunctorCategory
import Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Types
import Mathlib.CategoryTheory.Abelian.Indization
import Mathlib.CategoryTheory.Limits.Indization.Category
import Mathlib.CategoryTheory.Generator.Indization
import Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Basic

/-!
# AB axioms in the category of ind-objects

We show that `Ind C` satisfies Grothendieck's axiom AB5 if `C` has finite limits and deduce that
`Ind C` is Grothendieck abelian if `C` is small and abelian.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant51fea66f122b19963e708ee952202962d66dd874ed1129079b8b0bc089cbd7a6

universe v u

namespace CategoryTheory.Limits

section

variable {C : Type u} [Category.{v} C]

instance {J : Type v} [SmallCategory J] [IsFiltered J] [HasFiniteLimits C] :
    HasExactColimitsOfShape J (Ind C) :=
  HasExactColimitsOfShape.domain_of_functor J (Ind.inclusion C)

instance [HasFiniteLimits C] : AB5 (Ind C) where
  ofShape _ _ _ := inferInstance

end

section

variable {C : Type u} [SmallCategory C] [Abelian C]

instance isGrothendieckAbelian_ind : IsGrothendieckAbelian.{u} (Ind C) where
  hasSeparator := ⟨⟨_, Ind.isSeparator_range_yoneda⟩⟩

end

end CategoryTheory.Limits
```
