# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant155e9752af8f15506cab6b1c56fc437d0f1325a020f9efa474f6639a370dba95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b62a9d7e5c6fdc7263109ea58cd2f187b4215780` · SHA-256 `ee15f668c7f550eb4d7df1e910a7090e812a52152e62b73796e949053f75d3b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preorder.Variant48bab1db76992c08121e9a9d4ee6a406c4fca28242143915d776e11ecd55acb3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48bab1db76992c08121e9a9d4ee6a406c4fca28242143915d776e11ecd55acb3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Preorder.Variant48bab1db76992c08121e9a9d4ee6a406c4fca28242143915d776e11ecd55acb3","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"48bab1db76992c08121e9a9d4ee6a406c4fca28242143915d776e11ecd55acb3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Shapes/Preorder/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Limits.Preorder

/-!
# Limits and colimits indexed by preorders

In this file, we obtain the following very basic results
about limits and colimits indexed by a preordered type `J`:
* a least element in `J` implies the existence of all limits indexed by `J`
* a greatest element in `J` implies the existence of all colimits indexed by `J`

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preorder.Variant48bab1db76992c08121e9a9d4ee6a406c4fca28242143915d776e11ecd55acb3

universe v v' u u' w

open CategoryTheory Limits

variable (C : Type u) [Category.{v} C] (J : Type w) [Preorder J]

namespace Preorder

section OrderBot

variable [OrderBot J]

instance : HasLimitsOfShape J C := ⟨fun _ ↦ by infer_instance⟩

end OrderBot

section OrderTop

variable [OrderTop J]

instance : HasColimitsOfShape J C := ⟨fun _ ↦ by infer_instance⟩

end OrderTop

end Preorder
```
