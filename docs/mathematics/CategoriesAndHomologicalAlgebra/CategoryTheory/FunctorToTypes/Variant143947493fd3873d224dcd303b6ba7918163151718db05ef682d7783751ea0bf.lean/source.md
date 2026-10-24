# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorToTypes.Variant143947493fd3873d224dcd303b6ba7918163151718db05ef682d7783751ea0bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d7bc3e6b161ddaa0f96918063b1477fc61c6487` · SHA-256 `483bbc02a51d986023b6bfb8e310ef2282f1edf65efa81a5ca433fbebaf8064c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorToTypes.Variante42b841b8d080815111dc4121d3fbdeefb367941c69dd992302506a7f2ab2964","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e42b841b8d080815111dc4121d3fbdeefb367941c69dd992302506a7f2ab2964","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorToTypes.Variante42b841b8d080815111dc4121d3fbdeefb367941c69dd992302506a7f2ab2964","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e42b841b8d080815111dc4121d3fbdeefb367941c69dd992302506a7f2ab2964","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Set/FunctorToTypes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Category.Preorder
import Mathlib.CategoryTheory.Types
import Mathlib.Data.Set.Basic

/-!
# The functor from `Set X` to types

Given `X : Type u`, we define the functor `Set.functorToTypes : Set X ⥤ Type u`
which sends `A : Set X` to its underlying type.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorToTypes.Variante42b841b8d080815111dc4121d3fbdeefb367941c69dd992302506a7f2ab2964

universe u

open CategoryTheory

namespace Set

/-- Given `X : Type u`, this the functor `Set X ⥤ Type u` which sends `A`
to its underlying type. -/
@[simps obj map]
def functorToTypes {X : Type u} : Set X ⥤ Type u where
  obj S := S
  map {S T} f := fun ⟨x, hx⟩ ↦ ⟨x, leOfHom f hx⟩

end Set
```
