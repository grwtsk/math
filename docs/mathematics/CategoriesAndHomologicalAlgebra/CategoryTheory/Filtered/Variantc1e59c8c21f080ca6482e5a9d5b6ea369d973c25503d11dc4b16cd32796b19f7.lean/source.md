# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variantc1e59c8c21f080ca6482e5a9d5b6ea369d973c25503d11dc4b16cd32796b19f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a4070ceb738d424048b76a9633bed625ec37774` · SHA-256 `4530223a04e0a9c2a418bed8c97eeb304a67efc76daba24daf138a3f9ff21bcb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantd0de268c47034c4956fe2eede69bfa4ddbaf0114031ab84969855c7a60302b93","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d0de268c47034c4956fe2eede69bfa4ddbaf0114031ab84969855c7a60302b93","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorCategory.Variantd0de268c47034c4956fe2eede69bfa4ddbaf0114031ab84969855c7a60302b93","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d0de268c47034c4956fe2eede69bfa4ddbaf0114031ab84969855c7a60302b93","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/FunctorCategory/Filtered.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Limits.FunctorCategory.Basic
import Mathlib.CategoryTheory.Limits.Filtered

/-!
# Functor categories have filtered colimits when the target category does

These declarations cannot be in `Mathlib/CategoryTheory/Limits/FunctorCategory.lean` because
that file shouldn't import `Mathlib/CategoryTheory/Limits/Filtered.lean`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantd0de268c47034c4956fe2eede69bfa4ddbaf0114031ab84969855c7a60302b93

universe w' w v₁ v₂ u₁ u₂

namespace CategoryTheory.Limits

variable {C : Type u₁} [Category.{v₁} C] {K : Type u₂} [Category.{v₂} K]

instance [HasFilteredColimitsOfSize.{w', w} C] : HasFilteredColimitsOfSize.{w', w} (K ⥤ C) :=
  ⟨fun _ => inferInstance⟩

instance [HasCofilteredLimitsOfSize.{w', w} C] : HasCofilteredLimitsOfSize.{w', w} (K ⥤ C) :=
  ⟨fun _ => inferInstance⟩

end CategoryTheory.Limits
```
