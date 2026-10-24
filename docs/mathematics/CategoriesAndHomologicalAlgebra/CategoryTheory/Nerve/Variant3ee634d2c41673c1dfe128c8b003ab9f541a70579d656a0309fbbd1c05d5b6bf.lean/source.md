# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Nerve.Variant3ee634d2c41673c1dfe128c8b003ab9f541a70579d656a0309fbbd1c05d5b6bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2d4216d23a5ae3c2658df14c4da5fdc63b5f6d6` · SHA-256 `38a01eca304e361b7b9b6ba8d4aa6fcf55a0697ac5d365a3a43316b7700a2f99`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.StrictSegal.Variant6af52fc1deebaee469e6fe987b212d1a41681d58931cd9c6ae150f7c9e5ab3c8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6af52fc1deebaee469e6fe987b212d1a41681d58931cd9c6ae150f7c9e5ab3c8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.StrictSegal.Variant6af52fc1deebaee469e6fe987b212d1a41681d58931cd9c6ae150f7c9e5ab3c8","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"6af52fc1deebaee469e6fe987b212d1a41681d58931cd9c6ae150f7c9e5ab3c8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicTopology/Quasicategory/Nerve.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Nick Ward. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Emily Riehl, Nick Ward
-/
import Mathlib.AlgebraicTopology.Quasicategory.StrictSegal

/-!
# The nerve of a category is a quasicategory

In `AlgebraicTopology.Quasicategory.StrictSegal`, we show that any
strict Segal simplicial set is a quasicategory.
In `AlgebraicTopology.SimplicialSet.StrictSegal`, we show that the nerve of a
category satisfies the strict Segal condition.

In this file, we prove as a direct consequence that the nerve of a category is
a quasicategory.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.StrictSegal.Variant6af52fc1deebaee469e6fe987b212d1a41681d58931cd9c6ae150f7c9e5ab3c8

universe v u

open SSet

namespace CategoryTheory.Nerve

/-- By virtue of satisfying the `StrictSegal` condition, the nerve of a
category is a `Quasicategory`. -/
instance quasicategory {C : Type u} [Category.{v} C] :
  Quasicategory (nerve C) := inferInstance

end CategoryTheory.Nerve
```
