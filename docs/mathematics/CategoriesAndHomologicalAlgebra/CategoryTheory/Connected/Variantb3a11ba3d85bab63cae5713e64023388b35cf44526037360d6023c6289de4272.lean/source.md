# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variantb3a11ba3d85bab63cae5713e64023388b35cf44526037360d6023c6289de4272

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `543f795e30d59adce56381b2a18b186cc2da8d2d` · SHA-256 `08c3576383e833bcc64e9b4b50107282ff27ab193cd8fca27794165f4b6290d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsColimitPullbackOfHasExactColimitsOfShape.Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsColimitPullbackOfHasExactColimitsOfShape.Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Abelian/GrothendieckAxioms/Connected.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Basic
import Mathlib.CategoryTheory.Limits.Connected
import Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq
import Mathlib.CategoryTheory.Limits.FunctorCategory.Shapes.Pullbacks

/-!
# Pulling back connected colimits

If `c` is a cocone over a functor `J ⥤ C` and `f : X ⟶ c.pt`, then for every `j : J` we can take
the pullback of `c.ι.app j` and `f`. This gives a new cocone with cone point `X`. We show that if
`c` is a colimit cocone, then this is again a colimit cocone as long as `J` is connected and `C`
has exact colimits of shape `J`.

From this we deduce a `hom_ext` principle for morphisms factoring through a colimit. Usually, we
only get `hom_ext` for morphisms *from* a colimit, so this is something a bit special.

The connectedness assumption on `J` is necessary: take `C` to be the category of abelian groups,
let `f : ℤ → ℤ ⊕ ℤ` be the diagonal map, and let `g := 𝟙 (ℤ ⊕ ℤ)`. Then the hypotheses of
`IsColimit.pullback_zero_ext` are satisfied, but `f ≫ g` is not zero.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsColimitPullbackOfHasExactColimitsOfShape.Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e

universe w' w v u

namespace CategoryTheory.Limits

variable {J : Type w} [Category.{w'} J] [IsConnected J] {C : Type u} [Category.{v} C]

/--
If `c` is a cocone over a functor `J ⥤ C` and `f : X ⟶ c.pt`, then for every `j : J` we can take
the pullback of `c.ι.app j` and `f`. This gives a new cocone with cone point `X`, and this cocone
is again a colimit cocone as long as `J` is connected and `C` has exact colimits of shape `J`.
-/
noncomputable def IsColimit.pullbackOfHasExactColimitsOfShape [HasPullbacks C]
    [HasColimitsOfShape J C] [HasExactColimitsOfShape J C] {F : J ⥤ C} {c : Cocone F}
    (hc : IsColimit c) {X : C} (f : X ⟶ c.pt) :
    IsColimit (Cocone.mk _ (pullback.snd c.ι ((Functor.const J).map f))) := by
  suffices IsIso (colimMap (pullback.snd c.ι ((Functor.const J).map f))) from
    Cocone.isColimitOfIsIsoColimMapι _
  have hpull := colim.map_isPullback (IsPullback.of_hasPullback c.ι ((Functor.const J).map f))
  dsimp only [colim_obj, colim_map] at hpull
  have := hc.isIso_colimMap_ι
  apply hpull.isIso_snd_of_isIso

/-- Detecting equality of morphisms factoring through a connected colimit by pulling back along
the inclusions of the colimit. -/
theorem IsColimit.pullback_hom_ext [HasPullbacks C] [HasColimitsOfShape J C]
    [HasExactColimitsOfShape J C] {F : J ⥤ C} {c : Cocone F} (hc : IsColimit c) {X Y : C}
    {f : X ⟶ c.pt} {g h : c.pt ⟶ Y}
    (hf : ∀ j, pullback.snd (c.ι.app j) f ≫ f ≫ g = pullback.snd (c.ι.app j) f ≫ f ≫ h) :
    f ≫ g = f ≫ h := by
  refine (hc.pullbackOfHasExactColimitsOfShape f).hom_ext (fun j => ?_)
  rw [← cancel_epi (pullbackObjIso _ _ _).inv]
  simpa using hf j

/-- Detecting vanishing of a morphism factoring through a connected colimit by pulling back along
the inclusions of the colimit. -/
theorem IsColimit.pullback_zero_ext [HasZeroMorphisms C] [HasPullbacks C] [HasColimitsOfShape J C]
    [HasExactColimitsOfShape J C] {F : J ⥤ C} {c : Cocone F} (hc : IsColimit c) {X Y : C}
    {f : X ⟶ c.pt} {g : c.pt ⟶ Y} (hf : ∀ j, pullback.snd (c.ι.app j) f ≫ f ≫ g = 0) :
    f ≫ g = 0 := by
  suffices f ≫ g = f ≫ 0 by simpa
  exact hc.pullback_hom_ext (by simpa using hf)

/--
If `c` is a cone over a functor `J ⥤ C` and `f : c.pt ⟶ X`, then for every `j : J` we can take
the pushout of `c.π.app j` and `f`. This gives a new cone with cone point `X`, and this cone is
again a limit cone as long as `J` is connected and `C` has exact limits of shape `J`.
-/
noncomputable def IsLimit.pushoutOfHasExactLimitsOfShape [HasPushouts C]
    [HasLimitsOfShape J C] [HasExactLimitsOfShape J C] {F : J ⥤ C} {c : Cone F}
    (hc : IsLimit c) {X : C} (f : c.pt ⟶ X) :
    IsLimit (Cone.mk _ (pushout.inr c.π ((Functor.const J).map f))) := by
  suffices IsIso (limMap (pushout.inr c.π ((Functor.const J).map f))) from
    Cone.isLimitOfIsIsoLimMapπ _
  have hpush := lim.map_isPushout (IsPushout.of_hasPushout c.π ((Functor.const J).map f))
  dsimp only [lim_obj, lim_map] at hpush
  have := hc.isIso_limMap_π
  apply hpush.isIso_inr_of_isIso

/-- Detecting equality of morphisms factoring through a connected limit by pushing out along
the projections of the limit. -/
theorem IsLimit.pushout_hom_ext [HasPushouts C] [HasLimitsOfShape J C]
    [HasExactLimitsOfShape J C] {F : J ⥤ C} {c : Cone F} (hc : IsLimit c) {X Y : C}
    {g h : Y ⟶ c.pt} {f : c.pt ⟶ X}
    (hf : ∀ j, g ≫ f ≫ pushout.inr (c.π.app j) f = h ≫ f ≫ pushout.inr (c.π.app j) f) :
    g ≫ f = h ≫ f := by
  refine (hc.pushoutOfHasExactLimitsOfShape f).hom_ext (fun j => ?_)
  rw [← cancel_mono (pushoutObjIso _ _ _).hom]
  simpa using hf j

/-- Detecting vanishing of a morphism factoring though a connected limit by pushing out along the
projections of the limit. -/
theorem IsLimit.pushout_zero_ext [HasZeroMorphisms C] [HasPushouts C] [HasLimitsOfShape J C]
    [HasExactLimitsOfShape J C] {F : J ⥤ C} {c : Cone F} (hc : IsLimit c) {X Y : C}
    {g : Y ⟶ c.pt} {f : c.pt ⟶ X} (hf : ∀ j, g ≫ f ≫ pushout.inr (c.π.app j) f = 0) :
    g ≫ f = 0 := by
  suffices g ≫ f = 0 ≫ f by simpa
  exact hc.pushout_hom_ext (by simpa using hf)

end CategoryTheory.Limits
```
