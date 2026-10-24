# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variantf97b0f07dc0203167389b91d87eb884e2223029fb6537bd2407ee6776a4c9b78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `504f35a3a454c8ee0689141bfb45cf978a8c2056` · SHA-256 `d04470e0c7c8bf84042481d6a072bcfa82547f42de8a5af99789dd723482b735`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Braided.Variantcec1a54f2b9779655400cdbc689f5ae23c04636754a6dd1d2052752dd1c821c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cec1a54f2b9779655400cdbc689f5ae23c04636754a6dd1d2052752dd1c821c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Braided.Variantcec1a54f2b9779655400cdbc689f5ae23c04636754a6dd1d2052752dd1c821c2","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"cec1a54f2b9779655400cdbc689f5ae23c04636754a6dd1d2052752dd1c821c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monoidal/Braided/Opposite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Monoidal.Braided.Basic
import Mathlib.CategoryTheory.Monoidal.Opposite

/-!
# If `C` is braided, so is `Cᵒᵖ`.

Todo: we should also do `Cᵐᵒᵖ`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Braided.Variantcec1a54f2b9779655400cdbc689f5ae23c04636754a6dd1d2052752dd1c821c2

open CategoryTheory MonoidalCategory BraidedCategory Opposite

variable {C : Type*} [Category C] [MonoidalCategory C] [BraidedCategory C]

instance : BraidedCategory Cᵒᵖ where
  braiding X Y := (β_ (unop Y) (unop X)).op

namespace CategoryTheory.BraidedCategory

@[simp] lemma unop_tensorμ {C : Type*} [Category C] [MonoidalCategory C]
    [BraidedCategory C] (X Y W Z : Cᵒᵖ) :
    (tensorμ X W Y Z).unop = tensorμ X.unop Y.unop W.unop Z.unop := by
  simp only [unop_tensorObj, tensorμ, unop_comp, unop_inv_associator, unop_whiskerLeft,
    unop_hom_associator, unop_whiskerRight, unop_hom_braiding, Category.assoc]

@[simp] lemma op_tensorμ {C : Type*} [Category C] [MonoidalCategory C]
    [BraidedCategory C] (X Y W Z : C) :
    (tensorμ X W Y Z).op = tensorμ (op X) (op Y) (op W) (op Z) := by
  simp only [op_tensorObj, tensorμ, op_comp, op_inv_associator, op_whiskerLeft, op_hom_associator,
    op_whiskerRight, op_hom_braiding, Category.assoc]

end CategoryTheory.BraidedCategory
```
