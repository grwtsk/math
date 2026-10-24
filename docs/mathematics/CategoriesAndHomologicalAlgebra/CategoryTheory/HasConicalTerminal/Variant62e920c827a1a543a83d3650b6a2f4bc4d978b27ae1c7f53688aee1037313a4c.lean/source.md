# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasConicalTerminal.Variant62e920c827a1a543a83d3650b6a2f4bc4d978b27ae1c7f53688aee1037313a4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35500d4a7f4cb57797ce819c282ae176bd063b1b` · SHA-256 `d95f35810ccddc021dda4f7bd3f64b8e2645e951620633105f88077e4ce66592`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasConicalTerminal.Variant91128c4d8ad2eb2076628cb8c9f7138c786585c1299cff84bc479d2cfd4b8013","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91128c4d8ad2eb2076628cb8c9f7138c786585c1299cff84bc479d2cfd4b8013","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasConicalTerminal.Variant91128c4d8ad2eb2076628cb8c9f7138c786585c1299cff84bc479d2cfd4b8013","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"91128c4d8ad2eb2076628cb8c9f7138c786585c1299cff84bc479d2cfd4b8013","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Enriched/Limits/HasConicalTerminal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson, Jon Eugster, Emily Riehl
-/
import Mathlib.CategoryTheory.Enriched.Limits.HasConicalProducts

/-!
# Existence of conical terminal objects
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasConicalTerminal.Variant91128c4d8ad2eb2076628cb8c9f7138c786585c1299cff84bc479d2cfd4b8013

universe w v' v u u'

namespace CategoryTheory.Enriched

open Limits HasConicalLimit

/-- A category has a conical terminal object
if it has a conical limit over the empty diagram. -/
abbrev HasConicalTerminal := HasConicalLimitsOfShape (Discrete.{0} PEmpty)

variable (V : Type u') [Category.{v'} V] [MonoidalCategory V]
variable (C : Type u) [Category.{v} C] [EnrichedOrdinaryCategory V C]

example [HasConicalTerminal V C] : HasTerminal C := inferInstance

instance HasConicalProducts.hasConicalTerminal [HasConicalProducts.{w} V C] :
    HasConicalTerminal V C :=
  HasConicalLimitsOfShape.of_equiv V C emptyEquivalence.functor

end CategoryTheory.Enriched
```
