# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Small.Variant5c078b801da1cd36204a541aac33b8bef352428c21ad4b69846ae0abc1d16134

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2a28b851baa2e2769c24606de221a26d8a6bac9` · SHA-256 `442ae4d758abfe5cc9b3123b475b57d01d9d211597f016b86458acf24316a275`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.MapFunctorPullbackMemCoverings.Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.MapFunctorPullbackMemCoverings.Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"d293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicGeometry/Sites/Small.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
module

public import Mathlib.AlgebraicGeometry.Cover.Over
public import Mathlib.AlgebraicGeometry.Sites.Pretopology
public import Mathlib.CategoryTheory.MorphismProperty.CommaSites
public import Mathlib.CategoryTheory.Sites.DenseSubsite.InducedTopology
public import Mathlib.CategoryTheory.Sites.Over

/-!
# Small sites

In this file we define the small sites associated to morphism properties and give
generating pretopologies.

## Main definitions

- `AlgebraicGeometry.Scheme.overGrothendieckTopology`: the Grothendieck topology on `Over S`
  obtained by localizing the topology on `Scheme` induced by `P` at `S`.
- `AlgebraicGeometry.Scheme.overPretopology`: the pretopology on `Over S` defined by
  `P`-coverings of `S`-schemes. The induced topology agrees with
  `AlgebraicGeometry.Scheme.overGrothendieckTopology`.
- `AlgebraicGeometry.Scheme.smallGrothendieckTopology`: the by the inclusion
  `P.Over ⊤ S ⥤ Over S` induced topology on `P.Over ⊤ S`.
- `AlgebraicGeometry.Scheme.smallPretopology`: the pretopology on `P.Over ⊤ S` defined by
  `P`-coverings of `S`-schemes with `P`. The induced topology agrees
  with `AlgebraicGeometry.Scheme.smallGrothendieckTopology`.

-/


namespace GRWTSK.Geometry.AlgebraicGeometry.MapFunctorPullbackMemCoverings.Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158

@[expose] public section

universe v u

open CategoryTheory

namespace AlgebraicGeometry.Scheme

variable {P Q : MorphismProperty Scheme.{u}} {S : Scheme.{u}}

variable [Q.IsStableUnderComposition]

private lemma map_functorPullback_mem_coverings (hPQ : P ≤ Q) (X : Q.Over ⊤ S)
    {R : Presieve ((MorphismProperty.Over.forget Q ⊤ S).obj X)}
    (hR : R ∈ ((precoverage P).over S).coverings ((MorphismProperty.Over.forget Q ⊤ S).obj X)) :
    letI F := MorphismProperty.Over.forget Q ⊤ S
    (R.functorPullback F).map F ∈ ((precoverage P).over S).coverings (F.obj X) := by
  have hle : precoverage P ≤ Q.precoverage := fun _ _ hR _ _ hf ↦ hPQ _ (hR.2 hf)
  obtain ⟨T, rfl⟩ := MorphismProperty.exists_map_eq_of_presieve (precoverage P) hle hR
  simpa using hR

variable [P.IsStableUnderBaseChange]

/-- The presieve defined by a `P`-cover of `S`-schemes. -/
def Cover.toPresieveOver {X : Over S} (𝒰 : Cover.{u} (precoverage P) X.left) [𝒰.Over S] :
    Presieve X :=
  Presieve.ofArrows (fun i ↦ (𝒰.X i).asOver S) (fun i ↦ (𝒰.f i).asOver S)

/-- The presieve defined by a `P`-cover of `S`-schemes with `Q`. -/
def Cover.toPresieveOverProp {X : Q.Over ⊤ S} (𝒰 : Cover.{u} (precoverage P) X.left) [𝒰.Over S]
    (h : ∀ j, Q (𝒰.X j ↘ S)) : Presieve X :=
  Presieve.ofArrows (fun i ↦ (𝒰.X i).asOverProp S (h i)) (fun i ↦ (𝒰.f i).asOverProp S)

set_option backward.defeqAttrib.useBackward true in
lemma Cover.overEquiv_generate_toPresieveOver_eq_ofArrows {X : Over S}
    (𝒰 : Cover.{u} (precoverage P) X.left)
    [𝒰.Over S] : Sieve.overEquiv X (Sieve.generate 𝒰.toPresieveOver) =
      Sieve.ofArrows 𝒰.X 𝒰.f := by
  ext V f
  simp only [Sieve.overEquiv_iff, Sieve.generate_apply]
  constructor
  · rintro ⟨U, h, g, ⟨k⟩, hcomp⟩
    exact ⟨𝒰.X k, h.left, 𝒰.f k, ⟨k⟩, congrArg CommaMorphism.left hcomp⟩
  · rintro ⟨U, h, g, ⟨k⟩, hcomp⟩
    have : 𝒰.f k ≫ X.hom = 𝒰.X k ↘ S := comp_over (𝒰.f k) S
    refine ⟨(𝒰.X k).asOver S, Over.homMk h (by simp [← hcomp, this]), (𝒰.f k).asOver S, ⟨k⟩, ?_⟩
    ext : 1
    simpa

lemma Cover.toPresieveOver_le_arrows_iff {X : Over S} (R : Sieve X)
    (𝒰 : Cover.{u} (precoverage P) X.left) [𝒰.Over S] :
    𝒰.toPresieveOver ≤ R.arrows ↔
      Presieve.ofArrows 𝒰.X 𝒰.f ≤ (Sieve.overEquiv X R).arrows := by
  simp_rw [← Sieve.giGenerate.gc.le_iff_le, ← (Sieve.overEquiv X).map_rel_iff]
  rw [overEquiv_generate_toPresieveOver_eq_ofArrows]

variable [P.IsMultiplicative]

variable (P Q S)

/-- The pretopology on `Over S` induced by `P` where coverings are given by `P`-covers
of `S`-schemes. -/
abbrev overPretopology : Pretopology (Over S) :=
  ((Scheme.precoverage P).over S).toPretopology

/-- The topology on `Over S` induced from the topology on `Scheme` defined by `P`.
This agrees with the topology induced by `S.overPretopology P`, see
`AlgebraicGeometry.Scheme.overGrothendieckTopology_eq_toGrothendieck_overPretopology`. -/
abbrev overGrothendieckTopology : GrothendieckTopology (Over S) :=
  (Scheme.grothendieckTopology P).over S

lemma overGrothendieckTopology_eq_toGrothendieck_overPretopology :
    S.overGrothendieckTopology P = (S.overPretopology P).toGrothendieck := by
  rw [Precoverage.toGrothendieck_toPretopology_eq_toGrothendieck]
  exact over_toGrothendieck_eq_toGrothendieck_comap_forget (precoverage P) S

variable {S}

lemma mem_overGrothendieckTopology (X : Over S) (R : Sieve X) :
    R ∈ S.overGrothendieckTopology P X ↔
      ∃ (𝒰 : Cover.{u} (precoverage P) X.left) (_ : 𝒰.Over S), 𝒰.toPresieveOver ≤ R.arrows := by
  simp only [GrothendieckTopology.mem_over_iff, mem_grothendieckTopology_iff]
  refine exists_congr fun 𝒰 ↦ ?_
  simp only [Cover.toPresieveOver_le_arrows_iff]
  rw [exists_const_iff, iff_and_self]
  intro
  let (i : 𝒰.I₀) : (𝒰.X i).Over S := ⟨𝒰.f i ≫ X.hom⟩
  exact ⟨⟨inferInstance, fun i ↦ ⟨rfl⟩⟩⟩

variable (S) {P Q} in
lemma locallyCoverDense_of_le (hPQ : P ≤ Q) :
    (MorphismProperty.Over.forget Q ⊤ S).LocallyCoverDense (overGrothendieckTopology P S) := by
  rw [overGrothendieckTopology_eq_toGrothendieck_overPretopology,
    Precoverage.toGrothendieck_toPretopology_eq_toGrothendieck]
  apply Precoverage.locallyCoverDense_of_map_functorPullback_mem
  apply map_functorPullback_mem_coverings hPQ

instance : (MorphismProperty.Over.forget P ⊤ S).LocallyCoverDense (overGrothendieckTopology P S) :=
  locallyCoverDense_of_le S le_rfl

variable (S) {Q} in
/-- If `P` and `Q` are morphism properties with `P ≤ Q`, this is the Grothendieck topology
induced via the forgetful functor `Q.Over ⊤ S ⥤ Over S` by the topology defined by `P`. -/
abbrev smallGrothendieckTopology : GrothendieckTopology (Q.Over ⊤ S) :=
  (MorphismProperty.Over.forget Q ⊤ S).restrictedTopology (S.overGrothendieckTopology P)

@[deprecated (since := "2026-05-28")]
alias smallGrothendieckTopologyOfLE := smallGrothendieckTopology

variable [Q.IsStableUnderBaseChange] [Q.HasOfPostcompProperty Q]

/-- The pretopology defined on the subcategory of `S`-schemes satisfying `Q` where coverings
are given by `P`-coverings in `S`-schemes satisfying `Q`.
The most common case is `P = Q`. In this case, this is simply surjective families
in `S`-schemes with `P`. -/
abbrev smallPretopology : Pretopology (Q.Over ⊤ S) :=
  (((precoverage P).over S).comap (MorphismProperty.Over.forget Q ⊤ S)).toPretopology

variable (S) {P Q} in
lemma smallGrothendieckTopology_eq_toGrothendieck_smallPretopology (hPQ : P ≤ Q) :
    S.smallGrothendieckTopology P = (S.smallPretopology P Q).toGrothendieck := by
  rw [smallGrothendieckTopology, overGrothendieckTopology_eq_toGrothendieck_overPretopology,
    Precoverage.toGrothendieck_toPretopology_eq_toGrothendieck,
    Precoverage.toGrothendieck_toPretopology_eq_toGrothendieck]
  exact (Precoverage.toGrothendieck_comap_eq_restrictedTopology _ _
    (map_functorPullback_mem_coverings hPQ _)).symm

@[deprecated (since := "2026-05-28")]
alias smallGrothendieckTopologyOfLE_eq_toGrothendieck_smallPretopology :=
  smallGrothendieckTopology_eq_toGrothendieck_smallPretopology

variable {P Q}

lemma mem_toGrothendieck_smallPretopology (X : Q.Over ⊤ S) (R : Sieve X) :
    R ∈ (S.smallPretopology P Q).toGrothendieck X ↔
      ∀ x : X.left, ∃ (Y : Q.Over ⊤ S) (f : Y ⟶ X) (y : Y.left), R f ∧ P f.left ∧ f.left y = x := by
  refine ⟨?_, fun h ↦ ?_⟩
  · rintro ⟨_, ⟨hs, hP⟩, hle⟩ x
    obtain ⟨-, -, ⟨⟨⟨hf⟩⟩⟩, y, hy⟩ := hs x
    exact ⟨_, _, y, hle _ _ hf, hP ⟨⟨hf⟩⟩, hy⟩
  · refine ⟨fun _ f ↦ R f ∧ P f.left, ⟨fun x ↦ ?_, fun _ _ ⟨⟨⟨_, h⟩⟩⟩ ↦ h⟩, fun _ _ hf ↦ hf.1⟩
    obtain ⟨Y, f, y, hR, hP, hy⟩ := h x
    exact ⟨_, _, ⟨⟨⟨hR, hP⟩⟩⟩, y, hy⟩

lemma mem_smallGrothendieckTopology (X : P.Over ⊤ S) (R : Sieve X) :
    R ∈ S.smallGrothendieckTopology P X ↔
      ∃ (𝒰 : Cover.{u} (precoverage P) X.left) (_ : 𝒰.Over S) (h : ∀ j, P (𝒰.X j ↘ S)),
          𝒰.toPresieveOverProp h ≤ R.arrows := by
  rw [Functor.mem_restrictedTopology_iff, mem_overGrothendieckTopology]
  apply exists₂_congr
  intro 𝒰 h𝒰
  refine ⟨fun hle ↦ ?_, fun ⟨_, hle⟩ ↦ ?_⟩
  · exact ⟨fun j ↦ comp_over (𝒰.f j) S ▸ P.comp_mem _ _ (𝒰.map_prop j) X.prop,
      fun _ _ ⟨i⟩ ↦ (Sieve.mem_functorPushforward_iff_of_full_of_faithful _ _ _).mp (hle _ _ ⟨i⟩)⟩
  · exact fun _ _ ⟨i⟩ ↦ Sieve.image_mem_functorPushforward _ _ (hle _ _ ⟨i⟩)

end AlgebraicGeometry.Scheme
```
