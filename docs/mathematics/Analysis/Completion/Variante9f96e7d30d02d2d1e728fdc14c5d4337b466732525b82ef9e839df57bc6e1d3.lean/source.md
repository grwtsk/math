# Complete source: GRWTSK.Analysis.Completion.Variante9f96e7d30d02d2d1e728fdc14c5d4337b466732525b82ef9e839df57bc6e1d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d03d4a902f7caac15c2373643c90af4bf5b7bbd` · SHA-256 `313a2ca13ff3762c531b2f49395d125451756a4747b788d9f4ae8ca0d7aa54bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.Completion.Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Completion.Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Normed/Group/SemiNormedGrp/Completion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Riccardo Brasca. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Riccardo Brasca, Johan Commelin
-/
module

public import Mathlib.Analysis.Normed.Group.SemiNormedGrp
public import Mathlib.CategoryTheory.Preadditive.AdditiveFunctor
public import Mathlib.Analysis.Normed.Group.HomCompletion

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


namespace GRWTSK.Analysis.Completion.Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a

@[expose] public section

noncomputable section

universe u

open UniformSpace CategoryTheory NormedAddGroupHom


namespace SemiNormedGrp

/-- The completion of a seminormed group, as an endofunctor on `SemiNormedGrp`. -/
@[simps]
def completion : SemiNormedGrp.{u} ⥤ SemiNormedGrp.{u} where
  obj V := ↧(Completion V)
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
