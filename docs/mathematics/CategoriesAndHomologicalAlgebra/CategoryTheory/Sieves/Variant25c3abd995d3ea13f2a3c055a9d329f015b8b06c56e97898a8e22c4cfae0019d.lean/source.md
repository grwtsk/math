# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sieves.Variant25c3abd995d3ea13f2a3c055a9d329f015b8b06c56e97898a8e22c4cfae0019d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2215de2b69071325c46dfe3e5efee47b34db0dec` · SHA-256 `1e3275a10b42ae80496769ac4a173bbb12bef098d4cdf13e9175d37c2809a2e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SieveOfSection.Variantc5a0c81fc951afb31b172a9ac3de90192449d4b2a3e0122f4b32e6c57382decd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5a0c81fc951afb31b172a9ac3de90192449d4b2a3e0122f4b32e6c57382decd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SieveOfSection.Variantc5a0c81fc951afb31b172a9ac3de90192449d4b2a3e0122f4b32e6c57382decd","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c5a0c81fc951afb31b172a9ac3de90192449d4b2a3e0122f4b32e6c57382decd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Subpresheaf/Sieves.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.CategoryTheory.Subpresheaf.Basic
import Mathlib.CategoryTheory.Sites.IsSheafFor

/-!
# Sieves attached to subpresheaves

Given a subpresheaf `G` of a presheaf of types `F : Cᵒᵖ ⥤ Type w` and
a section `s : F.obj U`, we define a sieve `G.sieveOfSection s : Sieve (unop U)`
and the associated compatible family of elements with values in `G.toPresheaf`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SieveOfSection.Variantc5a0c81fc951afb31b172a9ac3de90192449d4b2a3e0122f4b32e6c57382decd

universe w v u

namespace CategoryTheory.Subpresheaf

open Opposite

variable {C : Type u} [Category.{v} C] {F : Cᵒᵖ ⥤ Type w} (G : Subpresheaf F)

/-- Given a subpresheaf `G` of `F`, an `F`-section `s` on `U`, we may define a sieve of `U`
consisting of all `f : V ⟶ U` such that the restriction of `s` along `f` is in `G`. -/
@[simps]
def sieveOfSection {U : Cᵒᵖ} (s : F.obj U) : Sieve (unop U) where
  arrows V f := F.map f.op s ∈ G.obj (op V)
  downward_closed := @fun V W i hi j => by
    simp only [op_unop, op_comp, FunctorToTypes.map_comp_apply]
    exact G.map _ hi

/-- Given an `F`-section `s` on `U` and a subpresheaf `G`, we may define a family of elements in
`G` consisting of the restrictions of `s` -/
def familyOfElementsOfSection {U : Cᵒᵖ} (s : F.obj U) :
    (G.sieveOfSection s).1.FamilyOfElements G.toPresheaf := fun _ i hi => ⟨F.map i.op s, hi⟩

theorem family_of_elements_compatible {U : Cᵒᵖ} (s : F.obj U) :
    (G.familyOfElementsOfSection s).Compatible := by
  intro Y₁ Y₂ Z g₁ g₂ f₁ f₂ h₁ h₂ e
  refine Subtype.ext ?_ -- Porting note: `ext1` does not work here
  change F.map g₁.op (F.map f₁.op s) = F.map g₂.op (F.map f₂.op s)
  rw [← FunctorToTypes.map_comp_apply, ← FunctorToTypes.map_comp_apply, ← op_comp, ← op_comp, e]

end CategoryTheory.Subpresheaf
```
