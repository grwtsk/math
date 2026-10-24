# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Final.Variantea7481fecf80ade19032c64a2a1e64789a25618d4df4d4a38a2902c5edbf8716

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20b0a60190b69479102e48f8a08f81cd2b4e8004` · SHA-256 `5848b9fad62d3d8dd85e0533199d9f22c2804ceba1a2fc50206b724f529882e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Final.Variantb24ff17cea611d63b1ff18962e51490de169c7740f774b0e5313a5aa72548872","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b24ff17cea611d63b1ff18962e51490de169c7740f774b0e5313a5aa72548872","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Final.Variantb24ff17cea611d63b1ff18962e51490de169c7740f774b0e5313a5aa72548872","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b24ff17cea611d63b1ff18962e51490de169c7740f774b0e5313a5aa72548872","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Interval/Set/Final.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Filtered.Final

/-!
# Final functors between intervals

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Final.Variantb24ff17cea611d63b1ff18962e51490de169c7740f774b0e5313a5aa72548872

universe u

instance Set.Ici.subtype_functor_final {J : Type u} [LinearOrder J] (j : J) :
    (Subtype.mono_coe (Set.Ici j)).functor.Final := by
  rw [Monotone.final_functor_iff]
  intro k
  exact ⟨⟨max j k, le_max_left _ _⟩, le_max_right _ _⟩
```
