# Complete source: GRWTSK.Analysis.Completion.Variant9882cbee59cebb9c9ab33525017e67103fcb203a49d3bdd428c987682c9e0b46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74a8f027416e5421bd7627a7deb89113ba1cea52` · SHA-256 `94822172809fcc09597e4482f5c518e11219e377b6aef6e021dee32021839bba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.Completion.Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Completion.Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"fbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/Normed/Group/SemiNormedGroupCat/Completion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Riccardo Brasca. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Riccardo Brasca, Johan Commelin
-/
import Mathlib.Analysis.Normed.Group.SemiNormedGroupCat
import Mathlib.CategoryTheory.Preadditive.AdditiveFunctor
import Mathlib.Analysis.Normed.Group.HomCompletion


namespace GRWTSK.Analysis.Completion.Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab

#align_import analysis.normed.group.SemiNormedGroup.completion from "leanprover-community/mathlib"@"17ef379e997badd73e5eabb4d38f11919ab3c4b3"

/-!
# Completions of normed groups

This file contains an API for completions of seminormed groups (basic facts about
objects and morphisms).

## Main definitions

- `SemiNormedGroup.Completion : SemiNormedGroup ⥤ SemiNormedGroup` : the completion of a
  seminormed group (defined as a functor on `SemiNormedGroup` to itself).
- `SemiNormedGroup.Completion.lift (f : V ⟶ W) : (Completion.obj V ⟶ W)` : a normed group hom
  from `V` to complete `W` extends ("lifts") to a seminormed group hom from the completion of
  `V` to `W`.

## Projects

1. Construct the category of complete seminormed groups, say `CompleteSemiNormedGroup`
  and promote the `Completion` functor below to a functor landing in this category.
2. Prove that the functor `Completion : SemiNormedGroup ⥤ CompleteSemiNormedGroup`
  is left adjoint to the forgetful functor.

-/

noncomputable section

universe u

open UniformSpace MulOpposite CategoryTheory NormedAddGroupHom

set_option linter.uppercaseLean3 false

namespace SemiNormedGroupCat

/-- The completion of a seminormed group, as an endofunctor on `SemiNormedGroup`. -/
@[simps]
def completion : SemiNormedGroupCat.{u} ⥤ SemiNormedGroupCat.{u} where
  obj V := SemiNormedGroupCat.of (Completion V)
  map f := f.completion
  map_id _ := completion_id
  map_comp f g := (completion_comp f g).symm
#align SemiNormedGroup.Completion SemiNormedGroupCat.completion

instance completion_completeSpace {V : SemiNormedGroupCat} : CompleteSpace (completion.obj V) :=
  Completion.completeSpace _
#align SemiNormedGroup.Completion_complete_space SemiNormedGroupCat.completion_completeSpace

/-- The canonical morphism from a seminormed group `V` to its completion. -/
@[simps]
def completion.incl {V : SemiNormedGroupCat} : V ⟶ completion.obj V where
  toFun v := (v : Completion V)
  map_add' := Completion.coe_add
  bound' := ⟨1, fun v => by simp⟩
#align SemiNormedGroup.Completion.incl SemiNormedGroupCat.completion.incl

theorem completion.norm_incl_eq {V : SemiNormedGroupCat} {v : V} : ‖completion.incl v‖ = ‖v‖ :=
  UniformSpace.Completion.norm_coe _
#align SemiNormedGroup.Completion.norm_incl_eq SemiNormedGroupCat.completion.norm_incl_eq

theorem completion.map_normNoninc {V W : SemiNormedGroupCat} {f : V ⟶ W} (hf : f.NormNoninc) :
    (completion.map f).NormNoninc :=
  NormedAddGroupHom.NormNoninc.normNoninc_iff_norm_le_one.2 <|
    (NormedAddGroupHom.norm_completion f).le.trans <|
      NormedAddGroupHom.NormNoninc.normNoninc_iff_norm_le_one.1 hf
#align SemiNormedGroup.Completion.map_norm_noninc SemiNormedGroupCat.completion.map_normNoninc

variable (V W : SemiNormedGroupCat)

/-- Given a normed group hom `V ⟶ W`, this defines the associated morphism
from the completion of `V` to the completion of `W`.
The difference from the definition obtained from the functoriality of completion is in that the
map sending a morphism `f` to the associated morphism of completions is itself additive. -/
def completion.mapHom (V W : SemiNormedGroupCat.{u}) :
    -- Porting note: cannot see instances through concrete cats
    have (V W : SemiNormedGroupCat.{u}) : AddGroup (V ⟶ W) := inferInstanceAs <| AddGroup
      <| NormedAddGroupHom V W
    (V ⟶ W) →+ (completion.obj V ⟶ completion.obj W) :=
  @AddMonoidHom.mk' _ _ (_) (_) completion.map fun f g => f.completion_add g
#align SemiNormedGroup.Completion.map_hom SemiNormedGroupCat.completion.mapHom

-- @[simp] -- Porting note: removed simp since LHS simplifies and is not used
theorem completion.map_zero (V W : SemiNormedGroupCat) : completion.map (0 : V ⟶ W) = 0 :=
  -- Porting note: cannot see instances through concrete cats
  @AddMonoidHom.map_zero _ _ (_) (_) (completion.mapHom V W)
#align SemiNormedGroup.Completion.map_zero SemiNormedGroupCat.completion.map_zero

instance : Preadditive SemiNormedGroupCat.{u} where
  homGroup P Q := inferInstanceAs <| AddCommGroup <| NormedAddGroupHom P Q
  add_comp := by
    intros _ Q _ f f' g; ext x
    -- Porting note: failing simps probably due to instance synthesis issues with concrete
    -- cats; see the gymnastics below for what used to be
    -- simp only [add_apply, comp_apply. map_add]
    rw [NormedAddGroupHom.add_apply, CategoryTheory.comp_apply, CategoryTheory.comp_apply,
      CategoryTheory.comp_apply, @NormedAddGroupHom.add_apply _ _ (_) (_)]
    convert map_add g (f x) (f' x)
  comp_add := by
    intros; ext
    -- Porting note: failing simps probably due to instance synthesis issues with concrete
    -- cats; see the gymnastics below for what used to be
    -- simp only [add_apply, comp_apply. map_add]
    rw [NormedAddGroupHom.add_apply, CategoryTheory.comp_apply, CategoryTheory.comp_apply,
      CategoryTheory.comp_apply, @NormedAddGroupHom.add_apply _ _ (_) (_)]

instance : Functor.Additive completion where
  map_add := NormedAddGroupHom.completion_add _ _

/-- Given a normed group hom `f : V → W` with `W` complete, this provides a lift of `f` to
the completion of `V`. The lemmas `lift_unique` and `lift_comp_incl` provide the api for the
universal property of the completion. -/
def completion.lift {V W : SemiNormedGroupCat} [CompleteSpace W] [SeparatedSpace W] (f : V ⟶ W) :
    completion.obj V ⟶ W where
  toFun := f.extension
  map_add' := f.extension.toAddMonoidHom.map_add'
  bound' := f.extension.bound'
#align SemiNormedGroup.Completion.lift SemiNormedGroupCat.completion.lift

theorem completion.lift_comp_incl {V W : SemiNormedGroupCat} [CompleteSpace W] [SeparatedSpace W]
    (f : V ⟶ W) : completion.incl ≫ completion.lift f = f :=
  ext <| NormedAddGroupHom.extension_coe _
#align SemiNormedGroup.Completion.lift_comp_incl SemiNormedGroupCat.completion.lift_comp_incl

theorem completion.lift_unique {V W : SemiNormedGroupCat} [CompleteSpace W] [SeparatedSpace W]
    (f : V ⟶ W) (g : completion.obj V ⟶ W) : completion.incl ≫ g = f → g = completion.lift f :=
  fun h => (NormedAddGroupHom.extension_unique _ fun v => ((ext_iff.1 h) v).symm).symm
#align SemiNormedGroup.Completion.lift_unique SemiNormedGroupCat.completion.lift_unique

end SemiNormedGroupCat

```
