# Complete source: GRWTSK.Geometry.AlgebraicGeometry.AffineTransitionLimit.Variant4aee6a7e109d23a8a74b06330c2302bddc84e6041c1ecb540da807c75b159e5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fac74f6c68e11e7b6069698df948fa94158eba80` · SHA-256 `431d223f945b9ccd5a6204dc18b83bd30dc6b7031dc83918fca8f0cf3883bd00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.SchemeNonemptyOfIsLimit.Variantd4771a8cfd60770f2c6c40b3d9d117549ed853d1dddf838137446897ccadeac4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d4771a8cfd60770f2c6c40b3d9d117549ed853d1dddf838137446897ccadeac4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.SchemeNonemptyOfIsLimit.Variantd4771a8cfd60770f2c6c40b3d9d117549ed853d1dddf838137446897ccadeac4","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"d4771a8cfd60770f2c6c40b3d9d117549ed853d1dddf838137446897ccadeac4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicGeometry/AffineTransitionLimit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.AlgebraicGeometry.Morphisms.Affine
import Mathlib.AlgebraicGeometry.Properties
import Mathlib.CategoryTheory.Filtered.Final

/-!

# Inverse limits of schemes with affine transition maps

In this file, we develop API for inverse limits of schemes with affine transition maps,
following EGA IV 8 and https://stacks.math.columbia.edu/tag/01YT.

-/


namespace GRWTSK.Geometry.AlgebraicGeometry.SchemeNonemptyOfIsLimit.Variantd4771a8cfd60770f2c6c40b3d9d117549ed853d1dddf838137446897ccadeac4

universe uI u

open AlgebraicGeometry CategoryTheory Limits

-- We refrain from considering diagrams in the over category since inverse limits in the over
-- category is isomorphic to limits in `Scheme`. Instead we use `D ⟶ (Functor.const I).obj S` to
-- say that the diagram is over the base scheme `S`.
variable {I : Type u} [Category.{u} I] {S X : Scheme.{u}} (D : I ⥤ Scheme.{u})
  (t : D ⟶ (Functor.const I).obj S) (f : X ⟶ S) (c : Cone D) (hc : IsLimit c)

include hc in
/--
Suppose we have a cofiltered diagram of nonempty quasi-compact schemes,
whose transition maps are affine. Then the limit is also nonempty.
-/
@[stacks 01Z2]
lemma Scheme.nonempty_of_isLimit [IsCofilteredOrEmpty I]
    [∀ {i j} (f : i ⟶ j), IsAffineHom (D.map f)] [∀ i, Nonempty (D.obj i)]
    [∀ i, CompactSpace (D.obj i)] :
    Nonempty c.pt := by
  classical
  cases isEmpty_or_nonempty I
  · have e := (isLimitEquivIsTerminalOfIsEmpty _ _ hc).uniqueUpToIso specULiftZIsTerminal
    exact Nonempty.map e.inv.base inferInstance
  · have i := Nonempty.some ‹Nonempty I›
    have : IsCofiltered I := ⟨⟩
    let 𝒰 := (D.obj i).affineCover.finiteSubcover
    have (i') : IsAffine (𝒰.obj i') := inferInstanceAs (IsAffine (Spec _))
    obtain ⟨j, H⟩ :
        ∃ j : 𝒰.J, ∀ {i'} (f : i' ⟶ i), Nonempty ((𝒰.pullbackCover (D.map f)).obj j) := by
      simp_rw [← not_isEmpty_iff]
      by_contra! H
      choose i' f hf using H
      let g (j) := IsCofiltered.infTo (insert i (Finset.univ.image i'))
        (Finset.univ.image fun j : 𝒰.J ↦ ⟨_, _, by simp, by simp, f j⟩) (X := j)
      have (j : 𝒰.J) : IsEmpty ((𝒰.pullbackCover (D.map (g i (by simp)))).obj j) := by
        let F : (𝒰.pullbackCover (D.map (g i (by simp)))).obj j ⟶
            (𝒰.pullbackCover (D.map (f j))).obj j :=
          pullback.map _ _ _ _ (D.map (g _ (by simp))) (𝟙 _) (𝟙 _) (by
            rw [← D.map_comp, IsCofiltered.infTo_commutes]
            · simp [g]
            · simp
            · exact Finset.mem_image_of_mem _ (Finset.mem_univ _)) (by simp)
        exact Function.isEmpty F.base
      obtain ⟨x, -⟩ :=
        (𝒰.pullbackCover (D.map (g i (by simp)))).covers (Nonempty.some inferInstance)
      exact (this _).elim x
    let F := Over.post D ⋙ Over.pullback (𝒰.map j) ⋙ Over.forget _
    have (i') : IsAffine (F.obj i') :=
      have : IsAffineHom (pullback.snd (D.map i'.hom) (𝒰.map j)) :=
        MorphismProperty.pullback_snd _ _ inferInstance
      isAffine_of_isAffineHom (pullback.snd (D.map i'.hom) (𝒰.map j))
    have (i') : Nonempty (F.obj i') := H i'.hom
    let e : F ⟶ (F ⋙ Scheme.Γ.rightOp) ⋙ Scheme.Spec := whiskerLeft F ΓSpec.adjunction.unit
    have (i) : IsIso (e.app i) := IsAffine.affine
    have : IsIso e := NatIso.isIso_of_isIso_app e
    let c' : LimitCone F := ⟨_, (IsLimit.postcomposeInvEquiv (asIso e) _).symm
      (isLimitOfPreserves Scheme.Spec (limit.isLimit (F ⋙ Scheme.Γ.rightOp)))⟩
    have : Nonempty c'.1.pt := by
      apply (config := { allowSynthFailures := true }) PrimeSpectrum.instNonemptyOfNontrivial
      have (i') : Nontrivial ((F ⋙ Scheme.Γ.rightOp).leftOp.obj i') := by
        apply (config := { allowSynthFailures := true }) Scheme.component_nontrivial
        simp
      exact CommRingCat.FilteredColimits.nontrivial
        (isColimitCoconeLeftOpOfCone _ (limit.isLimit (F ⋙ Scheme.Γ.rightOp)))
    let α : F ⟶ Over.forget _ ⋙ D := whiskerRight
      (whiskerLeft (Over.post D) (Over.mapPullbackAdj (𝒰.map j)).counit) (Over.forget _)
    exact this.map (((Functor.Initial.isLimitWhiskerEquiv (Over.forget i) c).symm hc).lift
        ((Cones.postcompose α).obj c'.1)).base
```
