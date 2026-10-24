# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Over.Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01e5c6f0183a39947bf2f761b428cc02455cab6b` · SHA-256 `f5d224dfd75f7999933f9e91397655b252fc7098abde30f055f7d6107069c2cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.CoverOver.Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.CoverOver.Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"f711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicGeometry/Cover/Over.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
import Mathlib.AlgebraicGeometry.Morphisms.UnderlyingMap
import Mathlib.CategoryTheory.Limits.MorphismProperty

/-!

# Covers of schemes over a base

In this file we define the typeclass `Cover.Over`. For a cover `𝒰` of an `S`-scheme `X`,
the datum `𝒰.Over S` contains `S`-scheme structures on the components of `𝒰` and asserts
that the component maps are morphisms of `S`-schemes.

We provide instances of `𝒰.Over S` for standard constructions on covers.

-/


namespace GRWTSK.Geometry.AlgebraicGeometry.CoverOver.Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162

universe v u

noncomputable section

open CategoryTheory Limits

namespace AlgebraicGeometry.Scheme

variable {P : MorphismProperty Scheme.{u}} (S : Scheme.{u})

/-- Bundle an `S`-scheme with `P` into an object of `P.Over ⊤ S`. -/
abbrev asOverProp (X : Scheme.{u}) (S : Scheme.{u}) [X.Over S] (h : P (X ↘ S)) : P.Over ⊤ S :=
  ⟨X.asOver S, h⟩

/-- Bundle an `S`-morphism of `S`-scheme with `P` into a morphism in `P.Over ⊤ S`. -/
abbrev Hom.asOverProp {X Y : Scheme.{u}} (f : X.Hom Y) (S : Scheme.{u}) [X.Over S] [Y.Over S]
    [f.IsOver S] {hX : P (X ↘ S)} {hY : P (Y ↘ S)} : X.asOverProp S hX ⟶ Y.asOverProp S hY :=
  ⟨f.asOver S, trivial, trivial⟩

/-- A `P`-cover of a scheme `X` over `S` is a cover, where the components are over `S` and the
component maps commute with the structure morphisms. -/
protected class Cover.Over {P : MorphismProperty Scheme.{u}} {X : Scheme.{u}} [X.Over S]
    (𝒰 : X.Cover P) where
  over (j : 𝒰.J) : (𝒰.obj j).Over S := by infer_instance
  isOver_map (j : 𝒰.J) : (𝒰.map j).IsOver S := by infer_instance

attribute [instance] Cover.Over.over Cover.Over.isOver_map

instance [P.ContainsIdentities] [P.RespectsIso] {X Y : Scheme.{u}} (f : X ⟶ Y) [X.Over S] [Y.Over S]
    [f.IsOver S] [IsIso f] : (coverOfIsIso (P := P) f).Over S where
  over _ := inferInstanceAs <| X.Over S
  isOver_map _ := inferInstanceAs <| f.IsOver S

section

variable [P.IsStableUnderBaseChange] [IsJointlySurjectivePreserving P]
variable {X W : Scheme.{u}} (𝒰 : X.Cover P) (f : W ⟶ X) [W.Over S] [X.Over S]
  [𝒰.Over S] [f.IsOver S]

/-- The pullback of a cover of `S`-schemes along a morphism of `S`-schemes. This is not
definitionally equal to `AlgebraicGeometry.Scheme.Cover.pullbackCover`, as here we take
the pullback in `Over S`, whose underlying scheme is only isomorphic but not equal to the
pullback in `Scheme`. -/
@[simps]
def Cover.pullbackCoverOver : W.Cover P where
  J := 𝒰.J
  obj x := (pullback (f.asOver S) ((𝒰.map x).asOver S)).left
  map x := (pullback.fst (f.asOver S) ((𝒰.map x).asOver S)).left
  f x := 𝒰.f (f.base x)
  covers x := (mem_range_iff_of_surjective ((𝒰.pullbackCover f).map (𝒰.f (f.base x))) _
    ((PreservesPullback.iso (Over.forget S) (f.asOver S) ((𝒰.map _).asOver S)).inv)
    (PreservesPullback.iso_inv_fst _ _ _) x).mp ((𝒰.pullbackCover f).covers x)
  map_prop j := by
    rw [← Over.forget_map, ← PreservesPullback.iso_hom_fst, P.cancel_left_of_respectsIso]
    exact P.pullback_fst _ _ (𝒰.map_prop j)

instance (j : 𝒰.J) : ((𝒰.pullbackCoverOver S f).obj j).Over S where
  hom := (pullback (f.asOver S) ((𝒰.map j).asOver S)).hom

instance : (𝒰.pullbackCoverOver S f).Over S where
  isOver_map j := { comp_over := by exact Over.w (pullback.fst (f.asOver S) ((𝒰.map j).asOver S)) }

/-- A variant of `AlgebraicGeometry.Scheme.Cover.pullbackCoverOver` with the arguments in the
fiber products flipped. -/
@[simps]
def Cover.pullbackCoverOver' : W.Cover P where
  J := 𝒰.J
  obj x := (pullback ((𝒰.map x).asOver S) (f.asOver S)).left
  map x := (pullback.snd ((𝒰.map x).asOver S) (f.asOver S)).left
  f x := 𝒰.f (f.base x)
  covers x := (mem_range_iff_of_surjective ((𝒰.pullbackCover' f).map (𝒰.f (f.base x))) _
    ((PreservesPullback.iso (Over.forget S) ((𝒰.map _).asOver S) (f.asOver S)).inv)
    (PreservesPullback.iso_inv_snd _ _ _) x).mp ((𝒰.pullbackCover' f).covers x)
  map_prop j := by
    rw [← Over.forget_map, ← PreservesPullback.iso_hom_snd, P.cancel_left_of_respectsIso]
    exact P.pullback_snd _ _ (𝒰.map_prop j)

instance (j : 𝒰.J) : ((𝒰.pullbackCoverOver' S f).obj j).Over S where
  hom := (pullback ((𝒰.map j).asOver S) (f.asOver S)).hom

instance : (𝒰.pullbackCoverOver' S f).Over S where
  isOver_map j := { comp_over := by exact Over.w (pullback.snd ((𝒰.map j).asOver S) (f.asOver S)) }

variable {Q : MorphismProperty Scheme.{u}} [Q.HasOfPostcompProperty Q]
  [Q.IsStableUnderBaseChange] [Q.IsStableUnderComposition]

variable (hX : Q (X ↘ S)) (hW : Q (W ↘ S)) (hQ : ∀ j, Q (𝒰.obj j ↘ S))

/-- The pullback of a cover of `S`-schemes with `Q` along a morphism of `S`-schemes. This is not
definitionally equal to `AlgebraicGeometry.Scheme.Cover.pullbackCover`, as here we take
the pullback in `Q.Over ⊤ S`, whose underlying scheme is only isomorphic but not equal to the
pullback in `Scheme`. -/
@[simps -isSimp]
def Cover.pullbackCoverOverProp : W.Cover P where
  J := 𝒰.J
  obj x := (pullback (f.asOverProp (hX := hW) (hY := hX) S)
    ((𝒰.map x).asOverProp (hX := hQ x) (hY := hX) S)).left
  map x := (pullback.fst (f.asOverProp S) ((𝒰.map x).asOverProp S)).left
  f x := 𝒰.f (f.base x)
  covers x := (mem_range_iff_of_surjective ((𝒰.pullbackCover f).map (𝒰.f (f.base x))) _
    ((PreservesPullback.iso (MorphismProperty.Over.forget Q _ _ ⋙ Over.forget S)
      (f.asOverProp S) ((𝒰.map _).asOverProp S)).inv)
    (PreservesPullback.iso_inv_fst _ _ _) x).mp ((𝒰.pullbackCover f).covers x)
  map_prop j := by
    dsimp only
    rw [← Over.forget_map, MorphismProperty.Comma.toCommaMorphism_eq_hom,
      ← MorphismProperty.Comma.forget_map, ← Functor.comp_map]
    rw [← PreservesPullback.iso_hom_fst, P.cancel_left_of_respectsIso]
    exact P.pullback_fst _ _ (𝒰.map_prop j)

instance (j : 𝒰.J) : ((𝒰.pullbackCoverOverProp S f hX hW hQ).obj j).Over S where
  hom := (pullback (f.asOverProp (hX := hW) (hY := hX) S)
    ((𝒰.map j).asOverProp (hX := hQ j) (hY := hX) S)).hom

instance : (𝒰.pullbackCoverOverProp S f hX hW hQ).Over S where
  isOver_map j :=
    { comp_over := by exact (pullback.fst (f.asOverProp S) ((𝒰.map j).asOverProp S)).w }

/-- A variant of `AlgebraicGeometry.Scheme.Cover.pullbackCoverOverProp` with the arguments in the
fiber products flipped. -/
@[simps -isSimp]
def Cover.pullbackCoverOverProp' : W.Cover P where
  J := 𝒰.J
  obj x := (pullback ((𝒰.map x).asOverProp (hX := hQ x) (hY := hX) S)
    (f.asOverProp (hX := hW) (hY := hX) S)).left
  map x := (pullback.snd ((𝒰.map x).asOverProp S) (f.asOverProp S)).left
  f x := 𝒰.f (f.base x)
  covers x := (mem_range_iff_of_surjective ((𝒰.pullbackCover' f).map (𝒰.f (f.base x))) _
    ((PreservesPullback.iso (MorphismProperty.Over.forget Q _ _ ⋙ Over.forget S)
      ((𝒰.map _).asOverProp S) (f.asOverProp S)).inv)
    (PreservesPullback.iso_inv_snd _ _ _) x).mp ((𝒰.pullbackCover' f).covers x)
  map_prop j := by
    dsimp only
    rw [← Over.forget_map, MorphismProperty.Comma.toCommaMorphism_eq_hom,
      ← MorphismProperty.Comma.forget_map, ← Functor.comp_map]
    rw [← PreservesPullback.iso_hom_snd, P.cancel_left_of_respectsIso]
    exact P.pullback_snd _ _ (𝒰.map_prop j)

instance (j : 𝒰.J) : ((𝒰.pullbackCoverOverProp' S f hX hW hQ).obj j).Over S where
  hom := (pullback ((𝒰.map j).asOverProp (hX := hQ j) (hY := hX) S)
    (f.asOverProp (hX := hW) (hY := hX) S)).hom

instance : (𝒰.pullbackCoverOverProp' S f hX hW hQ).Over S where
  isOver_map j :=
    { comp_over := by exact (pullback.snd ((𝒰.map j).asOverProp S) (f.asOverProp S)).w }

end

variable [P.IsStableUnderComposition]
variable {X : Scheme.{u}} (𝒰 : X.Cover P) (𝒱 : ∀ x, (𝒰.obj x).Cover P)
  [X.Over S] [𝒰.Over S] [∀ x, (𝒱 x).Over S]

instance (j : (𝒰.bind 𝒱).J) : ((𝒰.bind 𝒱).obj j).Over S :=
  inferInstanceAs <| ((𝒱 j.1).obj j.2).Over S

instance {X : Scheme.{u}} (𝒰 : X.Cover P) (𝒱 : ∀ x, (𝒰.obj x).Cover P)
    [X.Over S] [𝒰.Over S] [∀ x, (𝒱 x).Over S] : (𝒰.bind 𝒱).Over S where
  over := fun ⟨i, j⟩ ↦ inferInstanceAs <| ((𝒱 i).obj j).Over S
  isOver_map := fun ⟨i, j⟩ ↦ { comp_over := by simp }

end AlgebraicGeometry.Scheme
```
