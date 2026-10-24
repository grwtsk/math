# Complete source: GRWTSK.Analysis.Completion.Variant373fc31dfa773efe111f0c46d64552e782cb8e4c8fbe44c4f95a28064440ab7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1028c1deeffc05b465f52378695b4be076d74959` · SHA-256 `8216d5811becb5613b58b2d6a257b2e94a6597186ceab84f4bec08b7c635736c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.Completion.Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Completion.Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"dea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Normed/Group/SemiNormedGrp/Completion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Riccardo Brasca. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Riccardo Brasca, Johan Commelin
-/
import Mathlib.Analysis.Normed.Group.SemiNormedGrp
import Mathlib.CategoryTheory.Preadditive.AdditiveFunctor
import Mathlib.Analysis.Normed.Group.HomCompletion

/-!
# Completions of normed groups

This file contains an API for completions of seminormed groups (basic facts about
objects and morphisms).

## Main definitions

- `SemiNormedGrp.Completion : SemiNormedGrp ⥤ SemiNormedGrp` : the completion of a
  seminormed group (defined as a functor on `SemiNormedGrp` to itself).
- `SemiNormedGrp.Completion.lift (f : V ⟶ W) : (Completion.obj V ⟶ W)` : a normed group hom
  from `V` to complete `W` extends ("lifts") to a seminormed group hom from the completion of
  `V` to `W`.

## Projects

1. Construct the category of complete seminormed groups, say `CompleteSemiNormedGrp`
  and promote the `Completion` functor below to a functor landing in this category.
2. Prove that the functor `Completion : SemiNormedGrp ⥤ CompleteSemiNormedGrp`
  is left adjoint to the forgetful functor.

-/


namespace GRWTSK.Analysis.Completion.Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431

noncomputable section

universe u

open UniformSpace MulOpposite CategoryTheory NormedAddGroupHom


namespace SemiNormedGrp

/-- The completion of a seminormed group, as an endofunctor on `SemiNormedGrp`. -/
@[simps]
def completion : SemiNormedGrp.{u} ⥤ SemiNormedGrp.{u} where
  obj V := SemiNormedGrp.of (Completion V)
  map f := SemiNormedGrp.ofHom f.hom.completion
  map_id _ := SemiNormedGrp.hom_ext completion_id
  map_comp f g := SemiNormedGrp.hom_ext (completion_comp f.hom g.hom).symm

instance completion_completeSpace {V : SemiNormedGrp} : CompleteSpace (completion.obj V) :=
  Completion.completeSpace _

/-- The canonical morphism from a seminormed group `V` to its completion. -/
def completion.incl {V : SemiNormedGrp} : V ⟶ completion.obj V :=
  ofHom
  { toFun v := (v : Completion V)
    map_add' := Completion.coe_add
    bound' := ⟨1, fun v => by simp⟩ }

theorem completion.norm_incl_eq {V : SemiNormedGrp} {v : V} : ‖completion.incl v‖ = ‖v‖ :=
  UniformSpace.Completion.norm_coe _

theorem completion.map_normNoninc {V W : SemiNormedGrp} {f : V ⟶ W} (hf : f.hom.NormNoninc) :
    (completion.map f).hom.NormNoninc :=
  NormedAddGroupHom.NormNoninc.normNoninc_iff_norm_le_one.2 <|
    (NormedAddGroupHom.norm_completion f.hom).le.trans <|
      NormedAddGroupHom.NormNoninc.normNoninc_iff_norm_le_one.1 hf

variable (V W : SemiNormedGrp)

/-- Given a normed group hom `V ⟶ W`, this defines the associated morphism
from the completion of `V` to the completion of `W`.
The difference from the definition obtained from the functoriality of completion is in that the
map sending a morphism `f` to the associated morphism of completions is itself additive. -/
def completion.mapHom (V W : SemiNormedGrp.{u}) :
   (V ⟶ W) →+ (completion.obj V ⟶ completion.obj W) :=
  @AddMonoidHom.mk' _ _ (_) (_) completion.map fun f g =>
    SemiNormedGrp.hom_ext (f.hom.completion_add g.hom)

theorem completion.map_zero (V W : SemiNormedGrp) : completion.map (0 : V ⟶ W) = 0 :=
  (completion.mapHom V W).map_zero

instance : Preadditive SemiNormedGrp.{u} where

instance : Functor.Additive completion where
  map_add := SemiNormedGrp.hom_ext <| NormedAddGroupHom.completion_add _ _

/-- Given a normed group hom `f : V → W` with `W` complete, this provides a lift of `f` to
the completion of `V`. The lemmas `lift_unique` and `lift_comp_incl` provide the api for the
universal property of the completion. -/
def completion.lift {V W : SemiNormedGrp} [CompleteSpace W] [T0Space W] (f : V ⟶ W) :
    completion.obj V ⟶ W :=
  ofHom
  { toFun := f.hom.extension
    map_add' := f.hom.extension.toAddMonoidHom.map_add'
    bound' := f.hom.extension.bound' }

theorem completion.lift_comp_incl {V W : SemiNormedGrp} [CompleteSpace W] [T0Space W]
    (f : V ⟶ W) : completion.incl ≫ completion.lift f = f :=
  ext <| NormedAddGroupHom.extension_coe _

theorem completion.lift_unique {V W : SemiNormedGrp} [CompleteSpace W] [T0Space W]
    (f : V ⟶ W) (g : completion.obj V ⟶ W) : completion.incl ≫ g = f → g = completion.lift f :=
  fun h => SemiNormedGrp.hom_ext (NormedAddGroupHom.extension_unique _ fun v =>
    ((SemiNormedGrp.ext_iff.1 h) v).symm).symm

end SemiNormedGrp
```
