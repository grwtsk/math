# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variant4efc61a2ca7f5a0221d632847e63f8640de2902fb1cae04dee02f90136c86986

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37a5d486776bfe8c500ee985a7f3f3101583713a` · SHA-256 `9cc4c63ab0321c5782eb5064b9acbd13f285d3c6a468e56538d8abdb32cf1d38`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasCofilteredLimitsOfSize.Variant59b3ee1194ee3bd445b269fbef0cf812f023efdb7e6447d2608c7f47b361eb15","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"59b3ee1194ee3bd445b269fbef0cf812f023efdb7e6447d2608c7f47b361eb15","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasCofilteredLimitsOfSize.Variant59b3ee1194ee3bd445b269fbef0cf812f023efdb7e6447d2608c7f47b361eb15","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"59b3ee1194ee3bd445b269fbef0cf812f023efdb7e6447d2608c7f47b361eb15","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Filtered.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Filtered
import Mathlib.CategoryTheory.Limits.HasLimits


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasCofilteredLimitsOfSize.Variant59b3ee1194ee3bd445b269fbef0cf812f023efdb7e6447d2608c7f47b361eb15

#align_import category_theory.limits.filtered from "leanprover-community/mathlib"@"e4ee4e30418efcb8cf304ba76ad653aeec04ba6e"

/-!
# Possession of filtered colimits
-/


universe w' w v u

noncomputable section

open CategoryTheory

variable {C : Type u} [Category.{v} C]

namespace CategoryTheory.Limits

section

variable (C)

/-- Class for having all cofiltered limits of a given size. -/
@[pp_with_univ]
class HasCofilteredLimitsOfSize : Prop where
  /-- For all filtered types of size `w`, we have limits -/
  HasLimitsOfShape : ∀ (I : Type w) [Category.{w'} I] [IsCofiltered I], HasLimitsOfShape I C
#align category_theory.limits.has_cofiltered_limits_of_size CategoryTheory.Limits.HasCofilteredLimitsOfSize

/-- Class for having all filtered colimits of a given size. -/
@[pp_with_univ]
class HasFilteredColimitsOfSize : Prop where
  /-- For all filtered types of a size `w`, we have colimits -/
  HasColimitsOfShape : ∀ (I : Type w) [Category.{w'} I] [IsFiltered I], HasColimitsOfShape I C
#align category_theory.limits.has_filtered_colimits_of_size CategoryTheory.Limits.HasFilteredColimitsOfSize

end

instance (priority := 100) hasLimitsOfShape_of_has_cofiltered_limits
    [HasCofilteredLimitsOfSize.{w', w} C] (I : Type w) [Category.{w'} I] [IsCofiltered I] :
    HasLimitsOfShape I C :=
  HasCofilteredLimitsOfSize.HasLimitsOfShape _
#align category_theory.limits.has_limits_of_shape_of_has_cofiltered_limits CategoryTheory.Limits.hasLimitsOfShape_of_has_cofiltered_limits

instance (priority := 100) hasColimitsOfShape_of_has_filtered_colimits
    [HasFilteredColimitsOfSize.{w', w} C] (I : Type w) [Category.{w'} I] [IsFiltered I] :
    HasColimitsOfShape I C :=
  HasFilteredColimitsOfSize.HasColimitsOfShape _
#align category_theory.limits.has_colimits_of_shape_of_has_filtered_colimits CategoryTheory.Limits.hasColimitsOfShape_of_has_filtered_colimits

end CategoryTheory.Limits
```
