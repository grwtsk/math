# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Indization.Variant26050cbbbf6294b7c8ad90ac87fd3b020d960b557dd71ef306922f11006d7232

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b3a265746588f8d81e0b2634470a0c52fdd725f` · SHA-256 `3741991c44f1e094b11edb9c9b0a908331470602aa3fcae999a27f0cab7570b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Indization.Varianteb6322fcbc2eec69f1d9be962b535edcc0ad9267f0e3d4a05f3515d5cea5c2c5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb6322fcbc2eec69f1d9be962b535edcc0ad9267f0e3d4a05f3515d5cea5c2c5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Indization.Varianteb6322fcbc2eec69f1d9be962b535edcc0ad9267f0e3d4a05f3515d5cea5c2c5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"eb6322fcbc2eec69f1d9be962b535edcc0ad9267f0e3d4a05f3515d5cea5c2c5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Abelian/Indization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Preadditive.Indization
import Mathlib.CategoryTheory.Abelian.FunctorCategory
import Mathlib.CategoryTheory.Limits.Preserves.Shapes.AbelianImages

/-!
# The category of ind-objects is abelian

We show that if `C` is a small abelian category, then `Ind C` is an abelian category.

In the file `Mathlib/CategoryTheory/Abelian/GrothendieckAxioms/Indization.lean`, we show that in
this situation `Ind C` is in fact Grothendieck abelian.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Indization.Varianteb6322fcbc2eec69f1d9be962b535edcc0ad9267f0e3d4a05f3515d5cea5c2c5

universe v

open CategoryTheory.Abelian

namespace CategoryTheory

variable {C : Type v} [SmallCategory C] [Abelian C]

instance {X Y : Ind C} (f : X ⟶ Y) : IsIso (Abelian.coimageImageComparison f) := by
  obtain ⟨I, _, _, F, G, ϕ, ⟨i⟩⟩ := Ind.exists_nonempty_arrow_mk_iso_ind_lim (f := f)
  let i' := coimageImageComparisonFunctor.mapIso i
  dsimp only [coimageImageComparisonFunctor_obj, Arrow.mk_left, Arrow.mk_right, Arrow.mk_hom] at i'
  rw [Arrow.isIso_iff_isIso_of_isIso i'.hom,
    Arrow.isIso_iff_isIso_of_isIso (PreservesCoimageImageComparison.iso (Ind.lim I) ϕ).inv]
  infer_instance

noncomputable instance : Abelian (Ind C) :=
  .ofCoimageImageComparisonIsIso

end CategoryTheory
```
