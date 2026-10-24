# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CartesianClosed.Variantde67cd2bad02e3d24a72e05b1134ecbcd69d77112b5b519c1560574f1b5db249

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46cc3aa16e2b048f849ac467142413c12e3423c2` · SHA-256 `227a9e8b65c537cf8f1df5e2583551dd5879e16a4ea9aa37310a4ba47372d8d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variant9a22b116c045fac36247e2983298548b7317663d76b626dc53056ebd984f4ffd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a22b116c045fac36247e2983298548b7317663d76b626dc53056ebd984f4ffd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Types.Variant9a22b116c045fac36247e2983298548b7317663d76b626dc53056ebd984f4ffd","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"9a22b116c045fac36247e2983298548b7317663d76b626dc53056ebd984f4ffd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Condensed/CartesianClosed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Closed.Types
import Mathlib.CategoryTheory.Sites.CartesianClosed
import Mathlib.Condensed.Basic
import Mathlib.CategoryTheory.Sites.LeftExact
/-!

# Condensed sets form a cartesian closed category
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variant9a22b116c045fac36247e2983298548b7317663d76b626dc53056ebd984f4ffd

universe u

noncomputable section

open CategoryTheory

instance : CartesianMonoidalCategory (CondensedSet.{u}) :=
  inferInstanceAs (CartesianMonoidalCategory (Sheaf _ _))

attribute [local instance] Types.instFunLike Types.instConcreteCategory in
instance : CartesianClosed (CondensedSet.{u}) := inferInstanceAs (CartesianClosed (Sheaf _ _))
```
