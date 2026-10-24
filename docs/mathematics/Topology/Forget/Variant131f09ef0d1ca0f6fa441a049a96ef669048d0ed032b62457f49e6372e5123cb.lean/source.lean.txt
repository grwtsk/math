-- corpus-organization-transform:v1
-- Mathematical subject: Topology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.IsSheafIffIsSheafCompPrime.Varianteb0f97901fe6a9964298d4985abd9fdb29c6b2d66f6c077351d114b9f7b93c55","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb0f97901fe6a9964298d4985abd9fdb29c6b2d66f6c077351d114b9f7b93c55","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.IsSheafIffIsSheafCompPrime.Varianteb0f97901fe6a9964298d4985abd9fdb29c6b2d66f6c077351d114b9f7b93c55","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"eb0f97901fe6a9964298d4985abd9fdb29c6b2d66f6c077351d114b9f7b93c55","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Sheaves/Forget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Topology.Sheaves.Sheaf

/-!
# Checking the sheaf condition on the underlying presheaf of types.

If `G : C ⥤ D` is a functor which reflects isomorphisms and preserves limits
(we assume all limits exist in `C`),
then checking the sheaf condition for a presheaf `F : Presheaf C X`
is equivalent to checking the sheaf condition for `F ⋙ G`.

The important special case is when
`C` is a concrete category with a forgetful functor
that preserves limits and reflects isomorphisms.
Then to check the sheaf condition it suffices
to check it on the underlying sheaf of types.

## References
* https://stacks.math.columbia.edu/tag/0073
-/


namespace GRWTSK.Topology.IsSheafIffIsSheafCompPrime.Varianteb0f97901fe6a9964298d4985abd9fdb29c6b2d66f6c077351d114b9f7b93c55

universe v v₁ v₂ u₁ u₂

noncomputable section

open CategoryTheory Limits

namespace TopCat.Presheaf

/-- If `G : C ⥤ D` is a functor which reflects isomorphisms and preserves limits
(we assume all limits exist in `C`),
then checking the sheaf condition for a presheaf `F : Presheaf C X`
is equivalent to checking the sheaf condition for `F ⋙ G`.

The important special case is when
`C` is a concrete category with a forgetful functor
that preserves limits and reflects isomorphisms.
Then to check the sheaf condition it suffices to check it on the underlying sheaf of types.

Another useful example is the forgetful functor `TopCommRingCat ⥤ TopCat`. -/
@[stacks 0073 "In fact we prove a stronger version with arbitrary target category."]
theorem isSheaf_iff_isSheaf_comp' {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]
    (G : C ⥤ D) [G.ReflectsIsomorphisms] [HasLimitsOfSize.{v, v} C] [PreservesLimitsOfSize.{v, v} G]
    {X : TopCat.{v}} (F : Presheaf C X) : Presheaf.IsSheaf F ↔ Presheaf.IsSheaf (F ⋙ G) :=
  Presheaf.isSheaf_iff_isSheaf_comp _ F G

theorem isSheaf_iff_isSheaf_comp {C : Type u₁} [Category.{v} C] {D : Type u₂} [Category.{v} D]
    (G : C ⥤ D) [G.ReflectsIsomorphisms] [HasLimits C] [PreservesLimits G]
    {X : TopCat.{v}} (F : Presheaf C X) : Presheaf.IsSheaf F ↔ Presheaf.IsSheaf (F ⋙ G) :=
  isSheaf_iff_isSheaf_comp' G F

end TopCat.Presheaf
