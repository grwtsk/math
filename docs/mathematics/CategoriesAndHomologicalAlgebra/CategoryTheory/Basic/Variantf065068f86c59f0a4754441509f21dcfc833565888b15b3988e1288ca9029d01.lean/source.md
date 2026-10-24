# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantf065068f86c59f0a4754441509f21dcfc833565888b15b3988e1288ca9029d01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed8551479184459ab122ea136b378aad3c688f45` · SHA-256 `02daa9ebeed8267d08c5ea8a9933a5ba1332169c7d0f031906063e23e0ebdfd8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CatCenter.Variant8605c80c31914c2e192f1cd310b2014ed4c7af684edf3431c6819128c970a249","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8605c80c31914c2e192f1cd310b2014ed4c7af684edf3431c6819128c970a249","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CatCenter.Variant8605c80c31914c2e192f1cd310b2014ed4c7af684edf3431c6819128c970a249","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"8605c80c31914c2e192f1cd310b2014ed4c7af684edf3431c6819128c970a249","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Center/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Endomorphism

/-!
# The center of a category

Given a category `C`, we introduce an abbreviation `CatCenter C` for
the center of the category `C`, which is `End (𝟭 C)`, the
type of endomorphisms of the identity functor of `C`.

## References
* https://ncatlab.org/nlab/show/center+of+a+category

-/

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CatCenter.Variant8605c80c31914c2e192f1cd310b2014ed4c7af684edf3431c6819128c970a249

universe v u

namespace CategoryTheory

open Category

variable (C : Type u) [Category.{v} C]

/-- The center of a category `C` is the type `End (𝟭 C)` of the endomorphisms
of the identify functor of `C`. -/
abbrev CatCenter := End (𝟭 C)

namespace CatCenter

variable {C}

@[ext]
lemma ext (x y : CatCenter C) (h : ∀ (X : C), x.app X = y.app X) : x = y :=
  NatTrans.ext (funext h)

@[reassoc]
lemma mul_app' (x y : CatCenter C) (X : C) : (x * y).app X = y.app X ≫ x.app X := rfl

@[reassoc]
lemma mul_app (x y : CatCenter C) (X : C) : (x * y).app X = x.app X ≫ y.app X := by
  rw [mul_app']
  exact x.naturality (y.app X)

instance : IsMulCommutative (CatCenter C) where
  is_comm := ⟨fun x y ↦ by
    ext X
    rw [mul_app' x y, mul_app y x]⟩

end CatCenter

end CategoryTheory
```
