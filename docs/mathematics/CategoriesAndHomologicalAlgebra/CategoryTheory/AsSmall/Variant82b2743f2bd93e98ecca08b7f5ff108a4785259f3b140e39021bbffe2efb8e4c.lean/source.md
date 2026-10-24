# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AsSmall.Variant82b2743f2bd93e98ecca08b7f5ff108a4785259f3b140e39021bbffe2efb8e4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f01ca41ebcc18d92b2c0da8750b54019a72efacf` · SHA-256 `7283a30a6596016b70b808f07ca75803f5e227457fd3d47b49612b7f90873df4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AsSmallFunctor.Variantde2bd23d8173b146634194dad8d89c7c9936df9cfc04bfaed1e769178e35e033","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de2bd23d8173b146634194dad8d89c7c9936df9cfc04bfaed1e769178e35e033","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.AsSmallFunctor.Variantde2bd23d8173b146634194dad8d89c7c9936df9cfc04bfaed1e769178e35e033","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"de2bd23d8173b146634194dad8d89c7c9936df9cfc04bfaed1e769178e35e033","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Category/Cat/AsSmall.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer
-/
import Mathlib.CategoryTheory.Category.Cat
import Mathlib.CategoryTheory.Category.ULift

/-!
# Functorially embedding `Cat` into the category of small categories

There is a canonical functor `asSmallFunctor` between the category of categories of any size and
any larger category of small categories.

## Future Work

Show that `asSmallFunctor` is faithful.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AsSmallFunctor.Variantde2bd23d8173b146634194dad8d89c7c9936df9cfc04bfaed1e769178e35e033

universe w v u

namespace CategoryTheory

namespace Cat

/-- Assigning to each category `C` the small category `AsSmall C` induces a functor `Cat ⥤ Cat`. -/
@[simps]
def asSmallFunctor : Cat.{v, u} ⥤ Cat.{max w v u, max w v u} where
  obj C := .of <| AsSmall C
  map F := AsSmall.down ⋙ F ⋙ AsSmall.up

end Cat

end CategoryTheory
```
