# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elementwise.Variantfb3ddeecc5c3f1dbf7ded6feb3456ab95429d68d5f23b026a1e81cf8a614aff9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5075718410cb4abf6aaae7c5c2f9fecfbd495da` · SHA-256 `055a3dcb9cc93b4661abf989c6e7da01804e36103ab5602cb8c9c0a13ad6d35a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elementwise.Variant369cea636d450caa016c5f5f898c27a9a4db2cde8b5c164728b0ce335a31a2f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"369cea636d450caa016c5f5f898c27a9a4db2cde8b5c164728b0ce335a31a2f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Elementwise.Variant369cea636d450caa016c5f5f898c27a9a4db2cde8b5c164728b0ce335a31a2f7","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"369cea636d450caa016c5f5f898c27a9a4db2cde8b5c164728b0ce335a31a2f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/ConcreteCategory/Elementwise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.Tactic.CategoryTheory.Elementwise
import Mathlib.CategoryTheory.Limits.HasLimits
import Mathlib.CategoryTheory.Limits.Shapes.Kernels
import Mathlib.CategoryTheory.ConcreteCategory.Basic

/-!
In this file we provide various simp lemmas in its elementwise form via `Tactic.Elementwise`.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elementwise.Variant369cea636d450caa016c5f5f898c27a9a4db2cde8b5c164728b0ce335a31a2f7

open CategoryTheory CategoryTheory.Limits

set_option linter.existingAttributeWarning false in
attribute [elementwise (attr := simp)] Cone.w limit.lift_π limit.w
  colimit.ι_desc colimit.w kernel.lift_ι cokernel.π_desc kernel.condition cokernel.condition

attribute [elementwise] Cocone.w
```
