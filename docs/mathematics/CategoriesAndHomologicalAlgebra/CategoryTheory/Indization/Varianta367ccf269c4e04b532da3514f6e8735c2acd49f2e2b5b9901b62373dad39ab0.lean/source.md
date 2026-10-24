# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Indization.Varianta367ccf269c4e04b532da3514f6e8735c2acd49f2e2b5b9901b62373dad39ab0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8863d4db01b18d9b3b1bfc9abced4bae0fe646fd` · SHA-256 `ae871eaa6c7200b10df221401b479f5bd02632984885aff88c810a5ed27ecfb6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IndIsSeparatingRangeYoneda.Variant9d86db6e3aae628bdd202312a6683c71caea3ebde5214ac5a4b4a63f0b041f49","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d86db6e3aae628bdd202312a6683c71caea3ebde5214ac5a4b4a63f0b041f49","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IndIsSeparatingRangeYoneda.Variant9d86db6e3aae628bdd202312a6683c71caea3ebde5214ac5a4b4a63f0b041f49","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"9d86db6e3aae628bdd202312a6683c71caea3ebde5214ac5a4b4a63f0b041f49","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Generator/Indization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Generator.Basic
import Mathlib.CategoryTheory.Limits.Indization.Category
import Mathlib.CategoryTheory.Preadditive.Indization

/-!
# Separating set in the category of ind-objects

We construct a separating set in the category of ind-objects and conclude that if `C` is small
and additive, then `Ind C` has a separator.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IndIsSeparatingRangeYoneda.Variant9d86db6e3aae628bdd202312a6683c71caea3ebde5214ac5a4b4a63f0b041f49

universe v u

namespace CategoryTheory

open Limits

section

variable {C : Type u} [Category.{v} C]

theorem Ind.isSeparating_range_yoneda : IsSeparating (Set.range (Ind.yoneda : C ⥤ _).obj) := by
  refine fun X Y f g h => (cancel_epi (Ind.colimitPresentationCompYoneda X).hom).1 ?_
  exact colimit.hom_ext (fun i => by simp [← Category.assoc, h])

end

section

variable {C : Type u} [SmallCategory C] [Preadditive C] [HasFiniteColimits C]

theorem Ind.isSeparator_range_yoneda : IsSeparator (∐ (Ind.yoneda : C ⥤ _).obj) :=
  Ind.isSeparating_range_yoneda.isSeparator_coproduct

end

end CategoryTheory
```
