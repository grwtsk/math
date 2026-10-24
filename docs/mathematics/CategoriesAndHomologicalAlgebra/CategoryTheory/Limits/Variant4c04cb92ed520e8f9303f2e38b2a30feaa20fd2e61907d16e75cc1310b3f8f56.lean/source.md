# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant4c04cb92ed520e8f9303f2e38b2a30feaa20fd2e61907d16e75cc1310b3f8f56

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bffd5b4f78310b005d501e71f23fd3c4f9d55c93` · SHA-256 `0e4c41d67bfa53c466bf649a200053f948b64674a694bf325b54c14774003096`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Yoneda.Variant8bbec67df018a52c0b92f0405a0aeb257b17911a87249d51a52afef364e1efd9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8bbec67df018a52c0b92f0405a0aeb257b17911a87249d51a52afef364e1efd9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Yoneda.Variant8bbec67df018a52c0b92f0405a0aeb257b17911a87249d51a52afef364e1efd9","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"8bbec67df018a52c0b92f0405a0aeb257b17911a87249d51a52afef364e1efd9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Preadditive/Yoneda/Limits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Preadditive.Yoneda.Basic
import Mathlib.Algebra.Category.ModuleCat.Abelian
import Mathlib.CategoryTheory.Limits.Yoneda

/-!
# The Yoneda embedding for preadditive categories preserves limits

The Yoneda embedding for preadditive categories preserves limits.

## Implementation notes

This is in a separate file to avoid having to import the development of the abelian structure on
`ModuleCat` in the main file about the preadditive Yoneda embedding.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Yoneda.Variant8bbec67df018a52c0b92f0405a0aeb257b17911a87249d51a52afef364e1efd9

universe v u

open CategoryTheory.Preadditive Opposite CategoryTheory.Limits

noncomputable section

namespace CategoryTheory

variable {C : Type u} [Category.{v} C] [Preadditive C]

instance preservesLimits_preadditiveYonedaObj (X : C) : PreservesLimits (preadditiveYonedaObj X) :=
  have : PreservesLimits (preadditiveYonedaObj X ⋙ forget _) :=
    (inferInstance : PreservesLimits (yoneda.obj X))
  preservesLimits_of_reflects_of_preserves _ (forget _)

instance preservesLimits_preadditiveCoyonedaObj (X : C) :
    PreservesLimits (preadditiveCoyonedaObj X) :=
  have : PreservesLimits (preadditiveCoyonedaObj X ⋙ forget _) :=
    (inferInstance : PreservesLimits (coyoneda.obj (op X)))
  preservesLimits_of_reflects_of_preserves _ (forget _)

instance preservesLimits_preadditiveYoneda_obj (X : C) :
    PreservesLimits (preadditiveYoneda.obj X) :=
  show PreservesLimits (preadditiveYonedaObj X ⋙ forget₂ _ _) from inferInstance

instance preservesLimits_preadditiveCoyoneda_obj (X : Cᵒᵖ) :
    PreservesLimits (preadditiveCoyoneda.obj X) :=
  show PreservesLimits (preadditiveCoyonedaObj (unop X) ⋙ forget₂ _ _) from inferInstance

end CategoryTheory
```
