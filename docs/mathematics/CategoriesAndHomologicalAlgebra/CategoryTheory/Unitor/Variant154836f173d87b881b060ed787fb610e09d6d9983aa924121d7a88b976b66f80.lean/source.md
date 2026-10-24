# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Unitor.Variant154836f173d87b881b060ed787fb610e09d6d9983aa924121d7a88b976b66f80

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04727dd044e1faaa63704bb68988b16525752ef7` · SHA-256 `b45870e37a04dd310e1723bf89a2d099dac1e11dd8fe872896a8969a2a4aaa20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftUnitor.Variantccb005ffd14d127ebe439fc21a38a5da0d3c2b8caea14d6aa22f0320976b9f23","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ccb005ffd14d127ebe439fc21a38a5da0d3c2b8caea14d6aa22f0320976b9f23","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LeftUnitor.Variantccb005ffd14d127ebe439fc21a38a5da0d3c2b8caea14d6aa22f0320976b9f23","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ccb005ffd14d127ebe439fc21a38a5da0d3c2b8caea14d6aa22f0320976b9f23","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Products/Unitor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Shanghe Chen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Shanghe Chen
-/
import Mathlib.CategoryTheory.Products.Basic
import Mathlib.CategoryTheory.Discrete.Basic

/-!
# The left/right unitor equivalences `1 × C ≌ C` and `C × 1 ≌ C`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftUnitor.Variantccb005ffd14d127ebe439fc21a38a5da0d3c2b8caea14d6aa22f0320976b9f23

universe w v u

open CategoryTheory

namespace CategoryTheory.prod

variable (C : Type u) [Category.{v} C]

/-- The left unitor functor `1 × C ⥤ C` -/
@[simps]
def leftUnitor : Discrete (PUnit : Type w) × C ⥤ C where
  obj X := X.2
  map f := f.2

/-- The right unitor functor `C × 1 ⥤ C` -/
@[simps]
def rightUnitor : C × Discrete (PUnit : Type w) ⥤ C where
  obj X := X.1
  map f := f.1

/-- The left inverse unitor `C ⥤ 1 × C` -/
@[simps]
def leftInverseUnitor : C ⥤ Discrete (PUnit : Type w) × C where
  obj X := ⟨⟨PUnit.unit⟩, X⟩
  map f := ⟨𝟙 _, f⟩

/-- The right inverse unitor `C ⥤ C × 1` -/
@[simps]
def rightInverseUnitor : C ⥤ C × Discrete (PUnit : Type w) where
  obj X := ⟨X, ⟨PUnit.unit⟩⟩
  map f := ⟨f, 𝟙 _⟩

/-- The equivalence of categories expressing left unity of products of categories. -/
@[simps]
def leftUnitorEquivalence : Discrete (PUnit : Type w) × C ≌ C where
  functor := leftUnitor C
  inverse := leftInverseUnitor C
  unitIso := Iso.refl _
  counitIso := Iso.refl _

/-- The equivalence of categories expressing right unity of products of categories. -/
@[simps]
def rightUnitorEquivalence : C × Discrete (PUnit : Type w) ≌ C where
  functor := rightUnitor C
  inverse := rightInverseUnitor C
  unitIso := Iso.refl _
  counitIso := Iso.refl _

instance leftUnitor_isEquivalence : (leftUnitor C).IsEquivalence :=
  (leftUnitorEquivalence C).isEquivalence_functor

instance rightUnitor_isEquivalence : (rightUnitor C).IsEquivalence :=
  (rightUnitorEquivalence C).isEquivalence_functor

end CategoryTheory.prod
```
