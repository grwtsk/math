# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PrettyPrinting.Variant5a090394287d0ee822891add8249dda3647a9922f3ada1f0298d69059c2675c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92103174d9e5ed276c779f473f3d8c62c7e96b55` · SHA-256 `57ace6e9131ee9a6d0c4f15157dba8432ddec4ef374da2e4a78939e325893529`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant8566224d3026567432b0654361281ad980f85d188c1470e5400c4ff5a37a9c56","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8566224d3026567432b0654361281ad980f85d188c1470e5400c4ff5a37a9c56","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Functor.Variant8566224d3026567432b0654361281ad980f85d188c1470e5400c4ff5a37a9c56","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"8566224d3026567432b0654361281ad980f85d188c1470e5400c4ff5a37a9c56","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/PrettyPrinting.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Functor.Basic

/-!
# Tests that terms used in category theory pretty-print as expected
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant8566224d3026567432b0654361281ad980f85d188c1470e5400c4ff5a37a9c56

section

open Opposite

/-- info: Opposite.op_unop.{u} {α : Sort u} (x : αᵒᵖ) : op (unop x) = x -/
#guard_msgs in
#check Opposite.op_unop

end

section

open CategoryTheory

/--
info: CategoryTheory.Functor.map_id.{v₁, v₂, u₁, u₂} {C : Type u₁} [Category.{v₁, u₁} C] {D : Type u₂} [Category.{v₂, u₂} D]
  (self : C ⥤ D) (X : C) : self.map (𝟙 X) = 𝟙 (self.obj X)
-/
#guard_msgs in
#check CategoryTheory.Functor.map_id

end
```
