# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CartesianClosed.Variantd615b6965f5fa9b1ea53dcc484f7c9bf6f1a21b6639886e866ebec999e98f44c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3269abf8e6ea4e95eb275048dacabe212185044d` · SHA-256 `f704460e4abdd6fc862284a98a15b9b36275fa1b9a91c4025aa9984a8b63fb78`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Ideal.Variantc5efc73a99bc00d83be7bfb5aa52db8e26b5f874fe432ef0b02c65141ec69a32","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5efc73a99bc00d83be7bfb5aa52db8e26b5f874fe432ef0b02c65141ec69a32","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Ideal.Variantc5efc73a99bc00d83be7bfb5aa52db8e26b5f874fe432ef0b02c65141ec69a32","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c5efc73a99bc00d83be7bfb5aa52db8e26b5f874fe432ef0b02c65141ec69a32","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Sites/CartesianClosed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Closed.Ideal
import Mathlib.CategoryTheory.Monoidal.Cartesian.FunctorCategory
import Mathlib.CategoryTheory.Sites.CartesianMonoidal
import Mathlib.CategoryTheory.Sites.Sheafification
/-!

# Sheaf categories are cartesian closed

...if the underlying presheaf category is cartesian closed, the target category has
(chosen) finite products, and there exists a sheafification functor.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Ideal.Variantc5efc73a99bc00d83be7bfb5aa52db8e26b5f874fe432ef0b02c65141ec69a32

noncomputable section

open CategoryTheory Limits

variable {C : Type*} [Category C] (J : GrothendieckTopology C) (A : Type*) [Category A]

instance [HasSheafify J A] [CartesianMonoidalCategory A] [CartesianClosed (Cᵒᵖ ⥤ A)] :
    CartesianClosed (Sheaf J A) :=
  cartesianClosedOfReflective (sheafToPresheaf _ _)
```
