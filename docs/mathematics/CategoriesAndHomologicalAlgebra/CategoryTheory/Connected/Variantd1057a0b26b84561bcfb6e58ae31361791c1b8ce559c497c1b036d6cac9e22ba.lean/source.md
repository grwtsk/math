# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variantd1057a0b26b84561bcfb6e58ae31361791c1b8ce559c497c1b036d6cac9e22ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7aa367e446e3e2037524a6b2fc59614f7dd0e0f3` · SHA-256 `cdf2702ddb2047dd0cab7f706a061f2110d297704f56a11a486c0e7ccb3c0adb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsFilteredOrEmptyIsPreconnected.Variant6caf65bcbfeacc693e0ab9fecf2fca62773fe68e3b5f88e8b51cb4c27e2d57bb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6caf65bcbfeacc693e0ab9fecf2fca62773fe68e3b5f88e8b51cb4c27e2d57bb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsFilteredOrEmptyIsPreconnected.Variant6caf65bcbfeacc693e0ab9fecf2fca62773fe68e3b5f88e8b51cb4c27e2d57bb","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"6caf65bcbfeacc693e0ab9fecf2fca62773fe68e3b5f88e8b51cb4c27e2d57bb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Filtered/Connected.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Filtered.Basic
import Mathlib.CategoryTheory.IsConnected

/-!
# Filtered categories are connected
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsFilteredOrEmptyIsPreconnected.Variant6caf65bcbfeacc693e0ab9fecf2fca62773fe68e3b5f88e8b51cb4c27e2d57bb

universe v u

namespace CategoryTheory

variable (C : Type u) [Category.{v} C]

theorem IsFilteredOrEmpty.isPreconnected [IsFilteredOrEmpty C] : IsPreconnected C :=
  zigzag_isPreconnected fun j j' => .trans
    (.single <| .inl <| .intro <| IsFiltered.leftToMax j j')
    (.single <| .inr <| .intro <| IsFiltered.rightToMax j j')

theorem IsCofilteredOrEmpty.isPreconnected [IsCofilteredOrEmpty C] : IsPreconnected C :=
  zigzag_isPreconnected fun j j' => .trans
    (.single <| .inr <| .intro <| IsCofiltered.minToLeft j j')
    (.single <| .inl <| .intro <| IsCofiltered.minToRight j j')

attribute [local instance] IsFiltered.nonempty in
theorem IsFiltered.isConnected [IsFiltered C] : IsConnected C :=
  { IsFilteredOrEmpty.isPreconnected C with }

attribute [local instance] IsCofiltered.nonempty in
theorem IsCofiltered.isConnected [IsCofiltered C] : IsConnected C :=
  { IsCofilteredOrEmpty.isPreconnected C with }

end CategoryTheory
```
