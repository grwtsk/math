# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteProducts.Variant6a87503f1412e23ad96cdbbf1fc34a5092df652abc2464190961cd8acd09fc62

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f49a554691b4d9aad651237dcf94387cf970a15` · SHA-256 `44fe15fa69f191aa9b0e8248992d36bca4b2119a89d4815f863f8cf1f75d645e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasFiniteProducts.Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasFiniteProducts.Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Shapes/FiniteProducts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits
import Mathlib.CategoryTheory.Limits.Shapes.Products

/-!
# Categories with finite (co)products

Typeclasses representing categories with (co)products over finite indexing types.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasFiniteProducts.Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9

universe w v u

open CategoryTheory

namespace CategoryTheory.Limits

variable (C : Type u) [Category.{v} C]

/-- A category has finite products if there exists a limit for every diagram
with shape `Discrete J`, where we have `[Finite J]`.

We require this condition only for `J = Fin n` in the definition, then deduce a version for any
`J : Type*` as a corollary of this definition.
-/
class HasFiniteProducts : Prop where
  /-- `C` has finite products -/
  out (n : ℕ) : HasLimitsOfShape (Discrete (Fin n)) C

/-- If `C` has finite limits then it has finite products. -/
instance (priority := 10) hasFiniteProducts_of_hasFiniteLimits [HasFiniteLimits C] :
    HasFiniteProducts C :=
  ⟨fun _ => inferInstance⟩

instance hasLimitsOfShape_discrete [HasFiniteProducts C] (ι : Type w) [Finite ι] :
    HasLimitsOfShape (Discrete ι) C := by
  rcases Finite.exists_equiv_fin ι with ⟨n, ⟨e⟩⟩
  haveI : HasLimitsOfShape (Discrete (Fin n)) C := HasFiniteProducts.out n
  exact hasLimitsOfShape_of_equivalence (Discrete.equivalence e.symm)

/-- We can now write this for powers. -/
noncomputable example [HasFiniteProducts C] (X : C) : C :=
  ∏ᶜ fun _ : Fin 5 => X

/-- If a category has all products then in particular it has finite products.
-/
theorem hasFiniteProducts_of_hasProducts [HasProducts.{w} C] : HasFiniteProducts C :=
  ⟨fun _ => hasLimitsOfShape_of_equivalence (Discrete.equivalence Equiv.ulift.{w})⟩

/-- A category has finite coproducts if there exists a colimit for every diagram
with shape `Discrete J`, where we have `[Fintype J]`.

We require this condition only for `J = Fin n` in the definition, then deduce a version for any
`J : Type*` as a corollary of this definition.
-/
class HasFiniteCoproducts : Prop where
  /-- `C` has all finite coproducts -/
  out (n : ℕ) : HasColimitsOfShape (Discrete (Fin n)) C

-- attribute [class] HasFiniteCoproducts Porting note: this doesn't seem necessary in Lean 4

instance hasColimitsOfShape_discrete [HasFiniteCoproducts C] (ι : Type w) [Finite ι] :
    HasColimitsOfShape (Discrete ι) C := by
  rcases Finite.exists_equiv_fin ι with ⟨n, ⟨e⟩⟩
  haveI : HasColimitsOfShape (Discrete (Fin n)) C := HasFiniteCoproducts.out n
  exact hasColimitsOfShape_of_equivalence (Discrete.equivalence e.symm)

/-- If `C` has finite colimits then it has finite coproducts. -/
instance (priority := 10) hasFiniteCoproducts_of_hasFiniteColimits [HasFiniteColimits C] :
    HasFiniteCoproducts C :=
  ⟨fun J => by infer_instance⟩

/-- If a category has all coproducts then in particular it has finite coproducts.
-/
theorem hasFiniteCoproducts_of_hasCoproducts [HasCoproducts.{w} C] : HasFiniteCoproducts C :=
  ⟨fun _ => hasColimitsOfShape_of_equivalence (Discrete.equivalence Equiv.ulift.{w})⟩

end CategoryTheory.Limits
```
