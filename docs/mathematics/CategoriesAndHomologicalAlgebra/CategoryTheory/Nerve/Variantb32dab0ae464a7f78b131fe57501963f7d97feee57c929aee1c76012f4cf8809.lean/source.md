# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Nerve.Variantb32dab0ae464a7f78b131fe57501963f7d97feee57c929aee1c76012f4cf8809

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3678f8a2d6e6bbff89bca4fc990385eeb0bd46ad` · SHA-256 `6b4215b38b471c380b93f87bb034f293dcc278fccb3b3fa61904f4682aecf7e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Nerve.Variantc53083ab8e3dc5ba7a002bc8d6b5b62e9c29ff5581acce3e18330d2e0c6ace20","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c53083ab8e3dc5ba7a002bc8d6b5b62e9c29ff5581acce3e18330d2e0c6ace20","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Nerve.Variantc53083ab8e3dc5ba7a002bc8d6b5b62e9c29ff5581acce3e18330d2e0c6ace20","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c53083ab8e3dc5ba7a002bc8d6b5b62e9c29ff5581acce3e18330d2e0c6ace20","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/AlgebraicTopology/Nerve.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.SimplicialSet


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Nerve.Variantc53083ab8e3dc5ba7a002bc8d6b5b62e9c29ff5581acce3e18330d2e0c6ace20

#align_import algebraic_topology.nerve from "leanprover-community/mathlib"@"841aef25c9d7a5a5d63a3dcf7bc43386b2c206d6"

/-!

# The nerve of a category

This file provides the definition of the nerve of a category `C`,
which is a simplicial set `nerve C` (see [goerss-jardine-2009], Example I.1.4).

## References
* [Paul G. Goerss, John F. Jardine, *Simplical Homotopy Theory*][goerss-jardine-2009]

-/


open CategoryTheory.Category

universe v u

namespace CategoryTheory

/-- The nerve of a category -/
@[simps]
def nerve (C : Type u) [Category.{v} C] : SSet.{max u v} where
  obj Δ := SimplexCategory.toCat.obj Δ.unop ⥤ C
  map f x := SimplexCategory.toCat.map f.unop ⋙ x
#align category_theory.nerve CategoryTheory.nerve

instance {C : Type*} [Category C] {Δ : SimplexCategoryᵒᵖ} : Category ((nerve C).obj Δ) :=
  (inferInstance : Category (SimplexCategory.toCat.obj Δ.unop ⥤ C))

/-- The nerve of a category, as a functor `Cat ⥤ SSet` -/
@[simps]
def nerveFunctor : Cat ⥤ SSet where
  obj C := nerve C
  map F := { app := fun Δ x => x ⋙ F }
#align category_theory.nerve_functor CategoryTheory.nerveFunctor

end CategoryTheory
```
