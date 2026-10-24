# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SingleObj.Variant3ca01caa187b7a9bf80ef31e6c01ef9a9f2eab5499cb1136ecc9a67c21443cdc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9a1b88fa6b804ad1f258c3fc8d9560230e765a0` · SHA-256 `19ec1b6b9814cc66f60e13580308afe6af7b84ad95dc3b9a4c2b81b1630bdd2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preadditive.Variant17954e1af9837d6899a7740a379a9a551f222eeff945ddd34becb1a490576b8c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"17954e1af9837d6899a7740a379a9a551f222eeff945ddd34becb1a490576b8c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Preadditive.Variant17954e1af9837d6899a7740a379a9a551f222eeff945ddd34becb1a490576b8c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"17954e1af9837d6899a7740a379a9a551f222eeff945ddd34becb1a490576b8c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Preadditive/SingleObj.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Preadditive.Basic
import Mathlib.CategoryTheory.SingleObj

/-!
# `SingleObj α` is preadditive when `α` is a ring.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preadditive.Variant17954e1af9837d6899a7740a379a9a551f222eeff945ddd34becb1a490576b8c

namespace CategoryTheory

variable {α : Type*} [Ring α]

instance : Preadditive (SingleObj α) where
  add_comp _ _ _ f f' g := mul_add g f f'
  comp_add _ _ _ f g g' := add_mul g g' f

-- TODO define `PreAddCat` (with additive functors as morphisms), and `Ring ⥤ PreAddCat`.
end CategoryTheory
```
