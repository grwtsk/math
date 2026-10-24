# Complete source: GRWTSK.Geometry.AlgebraicGeometry.UniversallyOpen.Variant0bbed296fc7de534819b2e9854845997db2af2d2759faf5be2a2ab5b8e87f119

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23866a269d8686bab5ab6a7211df1c95e92ee723` · SHA-256 `e355fad8a07f330cdadd1b99464bb004074e45b573ed2cac40400ccec6fbc145`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.UniversallyOpen.Variant9b51f5de4b79e4528a75615c6cc93c6bd7d530787668784155e7ecc736152bed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b51f5de4b79e4528a75615c6cc93c6bd7d530787668784155e7ecc736152bed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.UniversallyOpen.Variant9b51f5de4b79e4528a75615c6cc93c6bd7d530787668784155e7ecc736152bed","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"9b51f5de4b79e4528a75615c6cc93c6bd7d530787668784155e7ecc736152bed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicGeometry/Morphisms/UniversallyOpen.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
import Mathlib.AlgebraicGeometry.Morphisms.FinitePresentation
import Mathlib.AlgebraicGeometry.Morphisms.Flat
import Mathlib.AlgebraicGeometry.Morphisms.UnderlyingMap
import Mathlib.RingTheory.Spectrum.Prime.Chevalley

/-!
# Universally open morphism

A morphism of schemes `f : X ⟶ Y` is universally open if `X ×[Y] Y' ⟶ Y'` is an open map
for all base change `Y' ⟶ Y`.

We show that being universally open is local at the target, and is stable under compositions and
base changes.

-/


namespace GRWTSK.Geometry.AlgebraicGeometry.UniversallyOpen.Variant9b51f5de4b79e4528a75615c6cc93c6bd7d530787668784155e7ecc736152bed

noncomputable section

open CategoryTheory CategoryTheory.Limits Opposite TopologicalSpace

universe v u

namespace AlgebraicGeometry

variable {X Y : Scheme.{u}} (f : X ⟶ Y)

open CategoryTheory.MorphismProperty

/-- A morphism of schemes `f : X ⟶ Y` is universally open if the base change `X ×[Y] Y' ⟶ Y'`
along any morphism `Y' ⟶ Y` is (topologically) an open map.
-/
@[mk_iff]
class UniversallyOpen (f : X ⟶ Y) : Prop where
  out : universally (topologically @IsOpenMap) f

lemma Scheme.Hom.isOpenMap {X Y : Scheme} (f : X.Hom Y) [UniversallyOpen f] :
    IsOpenMap f.base := UniversallyOpen.out _ _ _ IsPullback.of_id_snd

namespace UniversallyOpen

theorem eq : @UniversallyOpen = universally (topologically @IsOpenMap) := by
  ext X Y f; rw [universallyOpen_iff]

instance (priority := 900) [IsOpenImmersion f] : UniversallyOpen f := by
  rw [eq]
  intro X' Y' i₁ i₂ f' hf
  have hf' : IsOpenImmersion f' := MorphismProperty.of_isPullback hf.flip inferInstance
  exact f'.isOpenEmbedding.isOpenMap

instance : RespectsIso @UniversallyOpen :=
  eq.symm ▸ inferInstance

instance : IsStableUnderBaseChange @UniversallyOpen :=
  eq.symm ▸ inferInstance

instance : IsStableUnderComposition (topologically @IsOpenMap) where
  comp_mem f g hf hg := IsOpenMap.comp (f := f.base) (g := g.base) hg hf

instance : IsStableUnderComposition @UniversallyOpen := by
  rw [eq]
  infer_instance

instance {X Y Z : Scheme} (f : X ⟶ Y) (g : Y ⟶ Z)
    [hf : UniversallyOpen f] [hg : UniversallyOpen g] : UniversallyOpen (f ≫ g) :=
  comp_mem _ _ _ hf hg

instance : MorphismProperty.IsMultiplicative @UniversallyOpen where
  id_mem _ := inferInstance

instance fst {X Y Z : Scheme} (f : X ⟶ Z) (g : Y ⟶ Z) [hg : UniversallyOpen g] :
    UniversallyOpen (pullback.fst f g) :=
  MorphismProperty.pullback_fst f g hg

instance snd {X Y Z : Scheme} (f : X ⟶ Z) (g : Y ⟶ Z) [hf : UniversallyOpen f] :
    UniversallyOpen (pullback.snd f g) :=
  MorphismProperty.pullback_snd f g hf

instance : IsLocalAtTarget @UniversallyOpen := by
  rw [eq]
  apply universally_isLocalAtTarget
  intro X Y f ι U hU H
  simp_rw [topologically, morphismRestrict_base] at H
  exact hU.isOpenMap_iff_restrictPreimage.mpr H

instance : IsLocalAtSource @UniversallyOpen := by
  rw [eq]
  exact universally_isLocalAtSource _

end UniversallyOpen

variable {X Y : Scheme.{u}} (f : X ⟶ Y)

/-- A generalizing morphism, locally of finite presentation is open. -/
@[stacks 01U1]
lemma isOpenMap_of_generalizingMap [LocallyOfFinitePresentation f]
    (hf : GeneralizingMap f.base) : IsOpenMap f.base := by
  show topologically IsOpenMap f
  wlog hY : ∃ R, Y = Spec R
  · rw [IsLocalAtTarget.iff_of_openCover (P := topologically IsOpenMap) Y.affineCover]
    intro i
    dsimp only [Scheme.Cover.pullbackHom]
    refine this _ ?_ ⟨_, rfl⟩
    exact IsLocalAtTarget.of_isPullback (P := topologically GeneralizingMap)
      (iY := Y.affineCover.map i) (IsPullback.of_hasPullback ..) hf
  obtain ⟨R, rfl⟩ := hY
  wlog hX : ∃ S, X = Spec S
  · rw [IsLocalAtSource.iff_of_openCover (P := topologically IsOpenMap) X.affineCover]
    intro i
    refine this f _ _ ?_ ⟨_, rfl⟩
    exact IsLocalAtSource.comp (P := topologically GeneralizingMap) hf _
  obtain ⟨S, rfl⟩ := hX
  obtain ⟨φ, rfl⟩ := Spec.map_surjective f
  algebraize [φ.hom]
  convert PrimeSpectrum.isOpenMap_comap_of_hasGoingDown_of_finitePresentation
  · rwa [Algebra.HasGoingDown.iff_generalizingMap_primeSpectrumComap]
  · apply (HasRingHomProperty.Spec_iff (P := @LocallyOfFinitePresentation)).mp inferInstance

/-- Any flat morphism is generalizing. -/
lemma Flat.generalizingMap [Flat f] : GeneralizingMap f.base := by
  have := HasRingHomProperty.of_isLocalAtSource_of_isLocalAtTarget.{u}
    (topologically GeneralizingMap)
  show topologically GeneralizingMap f
  rw [HasRingHomProperty.iff_appLE (P := topologically GeneralizingMap)]
  intro U V e
  algebraize [(f.appLE U V e).hom]
  apply Algebra.HasGoingDown.iff_generalizingMap_primeSpectrumComap.mp
  convert Algebra.HasGoingDown.of_flat
  exact HasRingHomProperty.appLE @Flat f ‹_› U V e

/-- A flat morphism, locally of finite presentation is universally open. -/
@[stacks 01UA]
instance (priority := low) UniversallyOpen.of_flat [Flat f] [LocallyOfFinitePresentation f] :
    UniversallyOpen f :=
  ⟨universally_mk' _ _ fun _ _ ↦ isOpenMap_of_generalizingMap _ (Flat.generalizingMap _)⟩

end AlgebraicGeometry
```
