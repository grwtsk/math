# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasConicalProducts.Variant34731b2be76baaab7469a9eb4a28f391a24b20f85287d571a1510c6f7de8d748

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f3d76b88484b43575a1d178c0d3ff6687b95865` · SHA-256 `453ef0aa456dbdd2b080f9e6cacff450699f4d51cf8fb127b12d5e0ff7d80353`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasConicalProducts.Variantc423fb05363cbaa9206be48b773ff2c2a95ccea24e65dd3d223d9d8c168ed92f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c423fb05363cbaa9206be48b773ff2c2a95ccea24e65dd3d223d9d8c168ed92f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasConicalProducts.Variantc423fb05363cbaa9206be48b773ff2c2a95ccea24e65dd3d223d9d8c168ed92f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c423fb05363cbaa9206be48b773ff2c2a95ccea24e65dd3d223d9d8c168ed92f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Enriched/Limits/HasConicalProducts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson, Jon Eugster, Emily Riehl
-/
import Mathlib.CategoryTheory.Enriched.Limits.HasConicalLimits

/-!
# Existence of conical products
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasConicalProducts.Variantc423fb05363cbaa9206be48b773ff2c2a95ccea24e65dd3d223d9d8c168ed92f

universe w v' v u u'

namespace CategoryTheory.Enriched

open Limits

/-- Has conical products if all discrete diagrams of bounded size have conical products. -/
class HasConicalProducts
    (V : outParam <| Type u') [Category.{v'} V] [MonoidalCategory V]
    (C : Type u) [Category.{v} C] [EnrichedOrdinaryCategory V C] : Prop where
  /-- A family of objects (parametrized by any `J : Type w`) has a conical product. -/
  hasConicalLimitsOfShape : ∀ J : Type w, HasConicalLimitsOfShape (Discrete J) V C := by
    infer_instance

attribute [instance] HasConicalProducts.hasConicalLimitsOfShape

variable (V : Type u') [Category.{v'} V] [MonoidalCategory V]
variable {C : Type u} [Category.{v} C] [EnrichedOrdinaryCategory V C]

/-- An abbreviation for `HasConicalLimit V (Discrete.functor f)`. -/
abbrev HasConicalProduct {I : Type w} (f : I → C) :=
  HasConicalLimit V (Discrete.functor f)

/-- ensure products exists from the existence of conical products -/
example [HasConicalProducts.{w} V C] : HasProducts.{w} C := inferInstance

end CategoryTheory.Enriched
```
