# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant37214fce804c396269d203f3c9522311429fc93dfb16ef437a246a15ef90f5eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c165fd6efee64995659bc84caa38af98ff23099` · SHA-256 `5a79c71b2c69f122eee4463813ab4db4b8b27b6b26461517633f6dec55a72fa2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteLimits.Variant4d9652999f607d9a6f2e1559f1bed7661b4cb216a1a0e7f9e9fecb210c6be67b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d9652999f607d9a6f2e1559f1bed7661b4cb216a1a0e7f9e9fecb210c6be67b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FiniteLimits.Variant4d9652999f607d9a6f2e1559f1bed7661b4cb216a1a0e7f9e9fecb210c6be67b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"4d9652999f607d9a6f2e1559f1bed7661b4cb216a1a0e7f9e9fecb210c6be67b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Shapes/FunctorCategory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits
import Mathlib.CategoryTheory.Limits.FunctorCategory


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteLimits.Variant4d9652999f607d9a6f2e1559f1bed7661b4cb216a1a0e7f9e9fecb210c6be67b

#align_import category_theory.limits.shapes.functor_category from "leanprover-community/mathlib"@"024a4231815538ac739f52d08dd20a55da0d6b23"

/-!
# If `D` has finite (co)limits, so do the functor categories `C ⥤ D`.

These are boiler-plate instances, in their own file as neither import otherwise needs the other.
-/


open CategoryTheory

namespace CategoryTheory.Limits

universe v₁ v₂ u₁ u₂ w

variable {C : Type u₁} [Category.{v₁} C]

variable {D : Type u₂} [Category.{v₂} D]

instance functor_category_hasFiniteLimits [HasFiniteLimits D] : HasFiniteLimits (C ⥤ D)
    where out _ _ _ := inferInstance
#align category_theory.limits.functor_category_has_finite_limits CategoryTheory.Limits.functor_category_hasFiniteLimits

instance functor_category_hasFiniteColimits [HasFiniteColimits D] : HasFiniteColimits (C ⥤ D)
    where out _ _ _ := inferInstance
#align category_theory.limits.functor_category_has_finite_colimits CategoryTheory.Limits.functor_category_hasFiniteColimits

end CategoryTheory.Limits
```
