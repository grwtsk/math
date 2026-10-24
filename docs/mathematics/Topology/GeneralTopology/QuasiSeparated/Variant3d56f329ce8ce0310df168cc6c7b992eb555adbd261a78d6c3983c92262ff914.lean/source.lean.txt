-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.QuasiSeparated.Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.QuasiSeparated.Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69","mathematical_subject":"Topology.GeneralTopology","original_sha256":"502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/AlgebraicGeometry/Morphisms/QuasiSeparated.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.AlgebraicGeometry.Morphisms.QuasiCompact
import Mathlib.Topology.QuasiSeparated


namespace GRWTSK.Topology.GeneralTopology.QuasiSeparated.Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69

#align_import algebraic_geometry.morphisms.quasi_separated from "leanprover-community/mathlib"@"1a51edf13debfcbe223fa06b1cb353b9ed9751cc"

/-!
# Quasi-separated morphisms

A morphism of schemes `f : X ⟶ Y` is quasi-separated if the diagonal morphism `X ⟶ X ×[Y] X` is
quasi-compact.

A scheme is quasi-separated if the intersections of any two affine open sets is quasi-compact.
(`AlgebraicGeometry.quasiSeparatedSpace_iff_affine`)

We show that a morphism is quasi-separated if the preimage of every affine open is quasi-separated.

We also show that this property is local at the target,
and is stable under compositions and base-changes.

## Main result
- `AlgebraicGeometry.is_localization_basicOpen_of_qcqs` (**Qcqs lemma**):
  If `U` is qcqs, then `Γ(X, D(f)) ≃ Γ(X, U)_f` for every `f : Γ(X, U)`.

-/


noncomputable section

open CategoryTheory CategoryTheory.Limits Opposite TopologicalSpace

universe u

open scoped AlgebraicGeometry

namespace AlgebraicGeometry

variable {X Y : Scheme.{u}} (f : X ⟶ Y)

/-- A morphism is `QuasiSeparated` if diagonal map is quasi-compact. -/
@[mk_iff]
class QuasiSeparated (f : X ⟶ Y) : Prop where
  /-- A morphism is `QuasiSeparated` if diagonal map is quasi-compact. -/
  diagonalQuasiCompact : QuasiCompact (pullback.diagonal f)
#align algebraic_geometry.quasi_separated AlgebraicGeometry.QuasiSeparated

/-- The `AffineTargetMorphismProperty` corresponding to `QuasiSeparated`, asserting that the
domain is a quasi-separated scheme. -/
def QuasiSeparated.affineProperty : AffineTargetMorphismProperty := fun X _ _ _ =>
  QuasiSeparatedSpace X.carrier
#align algebraic_geometry.quasi_separated.affine_property AlgebraicGeometry.QuasiSeparated.affineProperty

theorem quasiSeparatedSpace_iff_affine (X : Scheme) :
    QuasiSeparatedSpace X.carrier ↔ ∀ U V : X.affineOpens, IsCompact (U ∩ V : Set X.carrier) := by
  rw [QuasiSeparatedSpace_iff]
  constructor
  · intro H U V; exact H U V U.1.2 U.2.isCompact V.1.2 V.2.isCompact
  · intro H
    suffices
      ∀ (U : Opens X.carrier) (_ : IsCompact U.1) (V : Opens X.carrier) (_ : IsCompact V.1),
        IsCompact (U ⊓ V).1
      by intro U V hU hU' hV hV'; exact this ⟨U, hU⟩ hU' ⟨V, hV⟩ hV'
    intro U hU V hV
    -- Porting note: it complains "unable to find motive", but telling Lean that motive is
    -- underscore is actually sufficient, weird
    apply compact_open_induction_on (P := _) V hV
    · simp
    · intro S _ V hV
      change IsCompact (U.1 ∩ (S.1 ∪ V.1))
      rw [Set.inter_union_distrib_left]
      apply hV.union
      clear hV
      apply compact_open_induction_on (P := _) U hU
      · simp
      · intro S _ W hW
        change IsCompact ((S.1 ∪ W.1) ∩ V.1)
        rw [Set.union_inter_distrib_right]
        apply hW.union
        apply H
#align algebraic_geometry.quasi_separated_space_iff_affine AlgebraicGeometry.quasiSeparatedSpace_iff_affine

theorem quasi_compact_affineProperty_iff_quasiSeparatedSpace {X Y : Scheme} [IsAffine Y]
    (f : X ⟶ Y) : QuasiCompact.affineProperty.diagonal f ↔ QuasiSeparatedSpace X.carrier := by
  delta AffineTargetMorphismProperty.diagonal
  rw [quasiSeparatedSpace_iff_affine]
  constructor
  · intro H U V
    haveI : IsAffine _ := U.2
    haveI : IsAffine _ := V.2
    let g : pullback (X.ofRestrict U.1.openEmbedding) (X.ofRestrict V.1.openEmbedding) ⟶ X :=
      pullback.fst ≫ X.ofRestrict _
    -- Porting note: `inferInstance` does not work here
    have : IsOpenImmersion g := PresheafedSpace.IsOpenImmersion.comp _ _
    have e := Homeomorph.ofEmbedding _ this.base_open.toEmbedding
    rw [IsOpenImmersion.range_pullback_to_base_of_left] at e
    erw [Subtype.range_coe, Subtype.range_coe] at e
    rw [isCompact_iff_compactSpace]
    exact @Homeomorph.compactSpace _ _ _ _ (H _ _) e
  · introv H h₁ h₂
    let g : pullback f₁ f₂ ⟶ X := pullback.fst ≫ f₁
    -- Porting note: `inferInstance` does not work here
    have : IsOpenImmersion g := PresheafedSpace.IsOpenImmersion.comp _ _
    have e := Homeomorph.ofEmbedding _ this.base_open.toEmbedding
    rw [IsOpenImmersion.range_pullback_to_base_of_left] at e
    simp_rw [isCompact_iff_compactSpace] at H
    exact
      @Homeomorph.compactSpace _ _ _ _
        (H ⟨⟨_, h₁.base_open.open_range⟩, rangeIsAffineOpenOfOpenImmersion _⟩
          ⟨⟨_, h₂.base_open.open_range⟩, rangeIsAffineOpenOfOpenImmersion _⟩)
        e.symm
#align algebraic_geometry.quasi_compact_affine_property_iff_quasi_separated_space AlgebraicGeometry.quasi_compact_affineProperty_iff_quasiSeparatedSpace

theorem quasiSeparated_eq_diagonal_is_quasiCompact :
    @QuasiSeparated = MorphismProperty.diagonal @QuasiCompact := by ext; exact QuasiSeparated_iff _
#align algebraic_geometry.quasi_separated_eq_diagonal_is_quasi_compact AlgebraicGeometry.quasiSeparated_eq_diagonal_is_quasiCompact

theorem quasi_compact_affineProperty_diagonal_eq :
    QuasiCompact.affineProperty.diagonal = QuasiSeparated.affineProperty := by
  funext; rw [quasi_compact_affineProperty_iff_quasiSeparatedSpace]; rfl
#align algebraic_geometry.quasi_compact_affine_property_diagonal_eq AlgebraicGeometry.quasi_compact_affineProperty_diagonal_eq

theorem quasiSeparated_eq_affineProperty_diagonal :
    @QuasiSeparated = targetAffineLocally QuasiCompact.affineProperty.diagonal := by
  rw [quasiSeparated_eq_diagonal_is_quasiCompact, quasiCompact_eq_affineProperty]
  exact
    diagonal_targetAffineLocally_eq_targetAffineLocally _ QuasiCompact.affineProperty_isLocal
#align algebraic_geometry.quasi_separated_eq_affine_property_diagonal AlgebraicGeometry.quasiSeparated_eq_affineProperty_diagonal

theorem quasiSeparated_eq_affineProperty :
    @QuasiSeparated = targetAffineLocally QuasiSeparated.affineProperty := by
  rw [quasiSeparated_eq_affineProperty_diagonal, quasi_compact_affineProperty_diagonal_eq]
#align algebraic_geometry.quasi_separated_eq_affine_property AlgebraicGeometry.quasiSeparated_eq_affineProperty

theorem QuasiSeparated.affineProperty_isLocal : QuasiSeparated.affineProperty.IsLocal :=
  quasi_compact_affineProperty_diagonal_eq ▸ QuasiCompact.affineProperty_isLocal.diagonal
#align algebraic_geometry.quasi_separated.affine_property_is_local AlgebraicGeometry.QuasiSeparated.affineProperty_isLocal

instance (priority := 900) quasiSeparatedOfMono {X Y : Scheme} (f : X ⟶ Y) [Mono f] :
    QuasiSeparated f :=
  ⟨inferInstance⟩
#align algebraic_geometry.quasi_separated_of_mono AlgebraicGeometry.quasiSeparatedOfMono

theorem quasiSeparated_stableUnderComposition :
    MorphismProperty.StableUnderComposition @QuasiSeparated :=
  quasiSeparated_eq_diagonal_is_quasiCompact.symm ▸
    quasiCompact_stableUnderComposition.diagonal quasiCompact_respectsIso
      quasiCompact_stableUnderBaseChange
#align algebraic_geometry.quasi_separated_stable_under_composition AlgebraicGeometry.quasiSeparated_stableUnderComposition

theorem quasiSeparated_stableUnderBaseChange :
    MorphismProperty.StableUnderBaseChange @QuasiSeparated :=
  quasiSeparated_eq_diagonal_is_quasiCompact.symm ▸
    quasiCompact_stableUnderBaseChange.diagonal quasiCompact_respectsIso
#align algebraic_geometry.quasi_separated_stable_under_base_change AlgebraicGeometry.quasiSeparated_stableUnderBaseChange

instance quasiSeparatedComp {X Y Z : Scheme} (f : X ⟶ Y) (g : Y ⟶ Z) [QuasiSeparated f]
    [QuasiSeparated g] : QuasiSeparated (f ≫ g) :=
  quasiSeparated_stableUnderComposition f g inferInstance inferInstance
#align algebraic_geometry.quasi_separated_comp AlgebraicGeometry.quasiSeparatedComp

theorem quasiSeparated_respectsIso : MorphismProperty.RespectsIso @QuasiSeparated :=
  quasiSeparated_eq_diagonal_is_quasiCompact.symm ▸ quasiCompact_respectsIso.diagonal
#align algebraic_geometry.quasi_separated_respects_iso AlgebraicGeometry.quasiSeparated_respectsIso

open List in
theorem QuasiSeparated.affine_openCover_TFAE {X Y : Scheme.{u}} (f : X ⟶ Y) :
    TFAE
      [QuasiSeparated f,
        ∃ (𝒰 : Scheme.OpenCover.{u} Y) (_ : ∀ i, IsAffine (𝒰.obj i)),
          ∀ i : 𝒰.J, QuasiSeparatedSpace (pullback f (𝒰.map i)).carrier,
        ∀ (𝒰 : Scheme.OpenCover.{u} Y) [∀ i, IsAffine (𝒰.obj i)] (i : 𝒰.J),
          QuasiSeparatedSpace (pullback f (𝒰.map i)).carrier,
        ∀ {U : Scheme} (g : U ⟶ Y) [IsAffine U] [IsOpenImmersion g],
          QuasiSeparatedSpace (pullback f g).carrier,
        ∃ (𝒰 : Scheme.OpenCover.{u} Y) (_ : ∀ i, IsAffine (𝒰.obj i)) (𝒰' :
          ∀ i : 𝒰.J, Scheme.OpenCover.{u} (pullback f (𝒰.map i))) (_ :
          ∀ i j, IsAffine ((𝒰' i).obj j)),
          ∀ (i : 𝒰.J) (j k : (𝒰' i).J),
            CompactSpace (pullback ((𝒰' i).map j) ((𝒰' i).map k)).carrier] := by
  have := QuasiCompact.affineProperty_isLocal.diagonal_affine_openCover_TFAE f
  simp_rw [← quasiCompact_eq_affineProperty, ← quasiSeparated_eq_diagonal_is_quasiCompact,
    quasi_compact_affineProperty_diagonal_eq] at this
  exact this
#align algebraic_geometry.quasi_separated.affine_open_cover_tfae AlgebraicGeometry.QuasiSeparated.affine_openCover_TFAE

theorem QuasiSeparated.is_local_at_target : PropertyIsLocalAtTarget @QuasiSeparated :=
  quasiSeparated_eq_affineProperty_diagonal.symm ▸
    QuasiCompact.affineProperty_isLocal.diagonal.targetAffineLocallyIsLocal
#align algebraic_geometry.quasi_separated.is_local_at_target AlgebraicGeometry.QuasiSeparated.is_local_at_target

open List in
theorem QuasiSeparated.openCover_TFAE {X Y : Scheme.{u}} (f : X ⟶ Y) :
    TFAE
      [QuasiSeparated f,
        ∃ 𝒰 : Scheme.OpenCover.{u} Y,
          ∀ i : 𝒰.J, QuasiSeparated (pullback.snd : (𝒰.pullbackCover f).obj i ⟶ 𝒰.obj i),
        ∀ (𝒰 : Scheme.OpenCover.{u} Y) (i : 𝒰.J),
          QuasiSeparated (pullback.snd : (𝒰.pullbackCover f).obj i ⟶ 𝒰.obj i),
        ∀ U : Opens Y.carrier, QuasiSeparated (f ∣_ U),
        ∀ {U : Scheme} (g : U ⟶ Y) [IsOpenImmersion g],
          QuasiSeparated (pullback.snd : pullback f g ⟶ _),
        ∃ (ι : Type u) (U : ι → Opens Y.carrier) (_ : iSup U = ⊤),
          ∀ i, QuasiSeparated (f ∣_ U i)] :=
  QuasiSeparated.is_local_at_target.openCover_TFAE f
#align algebraic_geometry.quasi_separated.open_cover_tfae AlgebraicGeometry.QuasiSeparated.openCover_TFAE

theorem quasiSeparated_over_affine_iff {X Y : Scheme} (f : X ⟶ Y) [IsAffine Y] :
    QuasiSeparated f ↔ QuasiSeparatedSpace X.carrier := by
  rw [quasiSeparated_eq_affineProperty,
    QuasiSeparated.affineProperty_isLocal.affine_target_iff f, QuasiSeparated.affineProperty]
#align algebraic_geometry.quasi_separated_over_affine_iff AlgebraicGeometry.quasiSeparated_over_affine_iff

theorem quasiSeparatedSpace_iff_quasiSeparated (X : Scheme) :
    QuasiSeparatedSpace X.carrier ↔ QuasiSeparated (terminal.from X) :=
  (quasiSeparated_over_affine_iff _).symm
#align algebraic_geometry.quasi_separated_space_iff_quasi_separated AlgebraicGeometry.quasiSeparatedSpace_iff_quasiSeparated

theorem QuasiSeparated.affine_openCover_iff {X Y : Scheme.{u}} (𝒰 : Scheme.OpenCover.{u} Y)
    [∀ i, IsAffine (𝒰.obj i)] (f : X ⟶ Y) :
    QuasiSeparated f ↔ ∀ i, QuasiSeparatedSpace (pullback f (𝒰.map i)).carrier := by
  rw [quasiSeparated_eq_affineProperty,
    QuasiSeparated.affineProperty_isLocal.affine_openCover_iff f 𝒰]
  rfl
#align algebraic_geometry.quasi_separated.affine_open_cover_iff AlgebraicGeometry.QuasiSeparated.affine_openCover_iff

theorem QuasiSeparated.openCover_iff {X Y : Scheme.{u}} (𝒰 : Scheme.OpenCover.{u} Y) (f : X ⟶ Y) :
    QuasiSeparated f ↔ ∀ i, QuasiSeparated (pullback.snd : pullback f (𝒰.map i) ⟶ _) :=
  QuasiSeparated.is_local_at_target.openCover_iff f 𝒰
#align algebraic_geometry.quasi_separated.open_cover_iff AlgebraicGeometry.QuasiSeparated.openCover_iff

instance {X Y S : Scheme} (f : X ⟶ S) (g : Y ⟶ S) [QuasiSeparated g] :
    QuasiSeparated (pullback.fst : pullback f g ⟶ X) :=
  quasiSeparated_stableUnderBaseChange.fst f g inferInstance

instance {X Y S : Scheme} (f : X ⟶ S) (g : Y ⟶ S) [QuasiSeparated f] :
    QuasiSeparated (pullback.snd : pullback f g ⟶ Y) :=
  quasiSeparated_stableUnderBaseChange.snd f g inferInstance

instance {X Y Z : Scheme} (f : X ⟶ Y) (g : Y ⟶ Z) [QuasiSeparated f] [QuasiSeparated g] :
    QuasiSeparated (f ≫ g) :=
  quasiSeparated_stableUnderComposition f g inferInstance inferInstance

theorem quasiSeparatedSpace_of_quasiSeparated {X Y : Scheme} (f : X ⟶ Y)
    [hY : QuasiSeparatedSpace Y.carrier] [QuasiSeparated f] : QuasiSeparatedSpace X.carrier := by
  rw [quasiSeparatedSpace_iff_quasiSeparated] at hY ⊢
  have : f ≫ terminal.from Y = terminal.from X := terminalIsTerminal.hom_ext _ _
  rw [← this]
  infer_instance
#align algebraic_geometry.quasi_separated_space_of_quasi_separated AlgebraicGeometry.quasiSeparatedSpace_of_quasiSeparated

instance quasiSeparatedSpace_of_isAffine (X : Scheme) [IsAffine X] :
    QuasiSeparatedSpace X.carrier := by
  constructor
  intro U V hU hU' hV hV'
  obtain ⟨s, hs, e⟩ := (isCompact_open_iff_eq_basicOpen_union _).mp ⟨hU', hU⟩
  obtain ⟨s', hs', e'⟩ := (isCompact_open_iff_eq_basicOpen_union _).mp ⟨hV', hV⟩
  rw [e, e', Set.iUnion₂_inter]
  simp_rw [Set.inter_iUnion₂]
  apply hs.isCompact_biUnion
  · intro i _
    apply hs'.isCompact_biUnion
    intro i' _
    change IsCompact (X.basicOpen i ⊓ X.basicOpen i').1
    rw [← Scheme.basicOpen_mul]
    exact ((topIsAffineOpen _).basicOpenIsAffine _).isCompact
#align algebraic_geometry.quasi_separated_space_of_is_affine AlgebraicGeometry.quasiSeparatedSpace_of_isAffine

theorem IsAffineOpen.isQuasiSeparated {X : Scheme} {U : Opens X.carrier} (hU : IsAffineOpen U) :
    IsQuasiSeparated (U : Set X.carrier) := by
  rw [isQuasiSeparated_iff_quasiSeparatedSpace]
  exacts [@AlgebraicGeometry.quasiSeparatedSpace_of_isAffine _ hU, U.isOpen]
#align algebraic_geometry.is_affine_open.is_quasi_separated AlgebraicGeometry.IsAffineOpen.isQuasiSeparated

theorem quasiSeparatedOfComp {X Y Z : Scheme} (f : X ⟶ Y) (g : Y ⟶ Z) [H : QuasiSeparated (f ≫ g)] :
    QuasiSeparated f := by
  -- Porting note: rewrite `(QuasiSeparated.affine_openCover_TFAE f).out 0 1` directly fails, but
  -- give it a name works
  have h01 := (QuasiSeparated.affine_openCover_TFAE f).out 0 1
  rw [h01]; clear h01
  -- Porting note: rewrite `(QuasiSeparated.affine_openCover_TFAE ...).out 0 2` directly fails, but
  -- give it a name works
  have h02 := (QuasiSeparated.affine_openCover_TFAE (f ≫ g)).out 0 2
  rw [h02] at H; clear h02
  refine ⟨(Z.affineCover.pullbackCover g).bind fun x => Scheme.affineCover _, ?_, ?_⟩
  -- constructor
  · intro i; dsimp; infer_instance
  rintro ⟨i, j⟩; dsimp at i j
  -- replace H := H (Scheme.OpenCover.pullbackCover (Scheme.affineCover Z) g) i
  specialize H _ i
  -- rw [←isQuasiSeparated_iff_quasiSeparatedSpace] at H
  refine @quasiSeparatedSpace_of_quasiSeparated _ _ ?_ H ?_
  · exact pullback.map _ _ _ _ (𝟙 _) _ _ (by simp) (Category.comp_id _) ≫
      (pullbackRightPullbackFstIso g (Z.affineCover.map i) f).hom
  · apply (config := {allowSynthFailures := true}) AlgebraicGeometry.quasiSeparatedOfMono
    -- Porting note: this instance was automatic
    apply mono_comp
#align algebraic_geometry.quasi_separated_of_comp AlgebraicGeometry.quasiSeparatedOfComp

theorem exists_eq_pow_mul_of_isAffineOpen (X : Scheme) (U : Opens X.carrier) (hU : IsAffineOpen U)
    (f : X.presheaf.obj (op U)) (x : X.presheaf.obj (op <| X.basicOpen f)) :
    ∃ (n : ℕ) (y : X.presheaf.obj (op U)), y |_ X.basicOpen f = (f |_ X.basicOpen f) ^ n * x := by
  have := (isLocalization_basicOpen hU f).2
  obtain ⟨⟨y, _, n, rfl⟩, d⟩ := this x
  use n, y
  delta TopCat.Presheaf.restrictOpen TopCat.Presheaf.restrict
  simpa [mul_comm x] using d.symm
#align algebraic_geometry.exists_eq_pow_mul_of_is_affine_open AlgebraicGeometry.exists_eq_pow_mul_of_isAffineOpen

set_option maxHeartbeats 700000 in
theorem exists_eq_pow_mul_of_is_compact_of_quasi_separated_space_aux (X : Scheme)
    (S : X.affineOpens) (U₁ U₂ : Opens X.carrier) {n₁ n₂ : ℕ} {y₁ : X.presheaf.obj (op U₁)}
    {y₂ : X.presheaf.obj (op U₂)} {f : X.presheaf.obj (op <| U₁ ⊔ U₂)}
    {x : X.presheaf.obj (op <| X.basicOpen f)} (h₁ : S.1 ≤ U₁) (h₂ : S.1 ≤ U₂)
    (e₁ :
      X.presheaf.map
          (homOfLE <| X.basicOpen_le (X.presheaf.map (homOfLE le_sup_left).op f) : _ ⟶ U₁).op y₁ =
        X.presheaf.map (homOfLE (by erw [X.basicOpen_res]; exact inf_le_left)).op
              (X.presheaf.map (homOfLE le_sup_left).op f) ^
            n₁ *
          (X.presheaf.map (homOfLE (by erw [X.basicOpen_res]; exact inf_le_right)).op) x)
    (e₂ :
      X.presheaf.map
          (homOfLE <| X.basicOpen_le (X.presheaf.map (homOfLE le_sup_right).op f) : _ ⟶ U₂).op y₂ =
        X.presheaf.map (homOfLE (by rw [X.basicOpen_res]; exact inf_le_left)).op
              (X.presheaf.map (homOfLE le_sup_right).op f) ^
            n₂ *
          (X.presheaf.map (homOfLE (by rw [X.basicOpen_res]; exact inf_le_right)).op) x) :
    ∃ n : ℕ,
      X.presheaf.map (homOfLE <| h₁).op
          (X.presheaf.map (homOfLE le_sup_left).op f ^ (n + n₂) * y₁) =
        X.presheaf.map (homOfLE <| h₂).op
          (X.presheaf.map (homOfLE le_sup_right).op f ^ (n + n₁) * y₂) := by
  -- have : IsLocalization.Away _ _ :=
  --   isLocalization_basicOpen S.2 (X.presheaf.map (homOfLE <| le_trans h₁ le_sup_left).op f)
  obtain ⟨⟨_, n, rfl⟩, e⟩ :=
    (@IsLocalization.eq_iff_exists _ _ _ _ _ _
      (isLocalization_basicOpen S.2 (X.presheaf.map (homOfLE <| le_trans h₁ le_sup_left).op f))
        (X.presheaf.map (homOfLE <| h₁).op
          (X.presheaf.map (homOfLE le_sup_left).op f ^ n₂ * y₁))
        (X.presheaf.map (homOfLE <| h₂).op
          (X.presheaf.map (homOfLE le_sup_right).op f ^ n₁ * y₂))).mp <| by
    -- Porting note: was just a `simp`, but know as some lemmas need `erw`, just a `simp` does not
    -- leave the goal in a desired form
    rw [RingHom.algebraMap_toAlgebra, map_mul, map_mul, map_pow, map_pow, map_mul, map_pow, map_mul]
    erw [map_pow]
    rw [←comp_apply, ←comp_apply]
    erw [←comp_apply, ←comp_apply, ←comp_apply, ←comp_apply]
    simp only [← Functor.map_comp, ← op_comp, homOfLE_comp]
    have h₃ : X.basicOpen ((X.presheaf.map (homOfLE (h₁.trans le_sup_left)).op) f) ≤ S.val := by
      simpa only [X.basicOpen_res] using inf_le_left
    trans X.presheaf.map (homOfLE <| h₃.trans <| h₁.trans le_sup_left).op f ^ (n₂ + n₁) *
      X.presheaf.map (homOfLE <| (X.basicOpen_res f _).trans_le inf_le_right).op x
    · rw [pow_add, mul_assoc]; congr 1
      convert congr_arg (X.presheaf.map (homOfLE _).op) e₁ using 1
      pick_goal 3
      · rw [X.basicOpen_res, X.basicOpen_res]; rintro x ⟨H₁, H₂⟩; exact ⟨h₁ H₁, H₂⟩
      · simp only [map_pow, map_mul, ← comp_apply, ← Functor.map_comp, ← op_comp]; congr 1
      · simp only [map_pow, map_mul, ← comp_apply, ← Functor.map_comp, ← op_comp]; congr
    · rw [add_comm, pow_add, mul_assoc]; congr 1
      convert congr_arg (X.presheaf.map (homOfLE _).op) e₂.symm
      · simp only [map_pow, map_mul, ← comp_apply, ← Functor.map_comp, ← op_comp]; congr
      · simp only [map_pow, map_mul, ← comp_apply, ← Functor.map_comp, ← op_comp]; congr
      · simp only [X.basicOpen_res]
        rintro x ⟨H₁, H₂⟩; exact ⟨h₂ H₁, H₂⟩
  use n
  simp only [pow_add, map_pow, map_mul, ← comp_apply, ← mul_assoc, ← Functor.map_comp,
    Subtype.coe_mk] at e ⊢
  exact e
#align algebraic_geometry.exists_eq_pow_mul_of_is_compact_of_quasi_separated_space_aux AlgebraicGeometry.exists_eq_pow_mul_of_is_compact_of_quasi_separated_space_aux

set_option maxHeartbeats 7000000 in
theorem exists_eq_pow_mul_of_isCompact_of_isQuasiSeparated (X : Scheme.{u}) (U : Opens X.carrier)
    (hU : IsCompact U.1) (hU' : IsQuasiSeparated U.1) (f : X.presheaf.obj (op U))
    (x : X.presheaf.obj (op <| X.basicOpen f)) :
    ∃ (n : ℕ) (y : X.presheaf.obj (op U)), y |_ X.basicOpen f = (f |_ X.basicOpen f) ^ n * x := by
  delta TopCat.Presheaf.restrictOpen TopCat.Presheaf.restrict
  revert hU' f x
  -- Porting note: complains `expected type is not available`, but tell Lean that it is underscore
  -- is sufficient
  apply compact_open_induction_on (P := _) U hU
  · intro _ f x
    use 0, f
    refine' @Subsingleton.elim _
      (CommRingCat.subsingleton_of_isTerminal (X.sheaf.isTerminalOfEqEmpty _)) _ _
    erw [eq_bot_iff]
    exact X.basicOpen_le f
  · -- Given `f : 𝒪(S ∪ U), x : 𝒪(X_f)`, we need to show that `f ^ n * x` is the restriction of
    -- some `y : 𝒪(S ∪ U)` for some `n : ℕ`.
    intro S hS U hU hSU f x
    -- We know that such `y₁, n₁` exists on `S` by the induction hypothesis.
    obtain ⟨n₁, y₁, hy₁⟩ :=
      hU (hSU.of_subset <| Set.subset_union_left _ _) (X.presheaf.map (homOfLE le_sup_left).op f)
        (X.presheaf.map (homOfLE _).op x)
    -- · rw [X.basicOpen_res]; exact inf_le_right
    -- We know that such `y₂, n₂` exists on `U` since `U` is affine.
    obtain ⟨n₂, y₂, hy₂⟩ :=
      exists_eq_pow_mul_of_isAffineOpen X _ U.2 (X.presheaf.map (homOfLE le_sup_right).op f)
        (X.presheaf.map (homOfLE _).op x)
    delta TopCat.Presheaf.restrictOpen TopCat.Presheaf.restrict at hy₂
    -- swap; · rw [X.basicOpen_res]; exact inf_le_right
    -- Since `S ∪ U` is quasi-separated, `S ∩ U` can be covered by finite affine opens.
    obtain ⟨s, hs', hs⟩ :=
      (isCompact_open_iff_eq_finset_affine_union _).mp
        ⟨hSU _ _ (Set.subset_union_left _ _) S.2 hS (Set.subset_union_right _ _) U.1.2
            U.2.isCompact,
          (S ⊓ U.1).2⟩
    haveI := hs'.to_subtype
    cases nonempty_fintype s
    replace hs : S ⊓ U.1 = iSup fun i : s => (i : Opens X.carrier) := by ext1; simpa using hs
    have hs₁ : ∀ i : s, i.1.1 ≤ S := by
      intro i; change (i : Opens X.carrier) ≤ S
      refine' le_trans _ inf_le_left; swap; exact U.1; erw [hs]
      -- Porting note: have to add argument explicitly
      exact @le_iSup (Opens X) s _ (fun (i : s) => (i : Opens X)) i
    have hs₂ : ∀ i : s, i.1.1 ≤ U.1 := by
      intro i; change (i : Opens X.carrier) ≤ U
      refine' le_trans _ inf_le_right; swap; exact S; erw [hs]
      -- Porting note: have to add argument explicitly
      exact @le_iSup (Opens X) s _ (fun (i : s) => (i : Opens X)) i
    -- On each affine open in the intersection, we have `f ^ (n + n₂) * y₁ = f ^ (n + n₁) * y₂`
    -- for some `n` since `f ^ n₂ * y₁ = f ^ (n₁ + n₂) * x = f ^ n₁ * y₂` on `X_f`.
    have :
      ∀ i : s,
        ∃ n : ℕ,
          X.presheaf.map (homOfLE <| hs₁ i).op
              (X.presheaf.map (homOfLE le_sup_left).op f ^ (n + n₂) * y₁) =
            X.presheaf.map (homOfLE <| hs₂ i).op
              (X.presheaf.map (homOfLE le_sup_right).op f ^ (n + n₁) * y₂) := by
      intro i
      exact
        exists_eq_pow_mul_of_is_compact_of_quasi_separated_space_aux X i.1 S U (hs₁ i) (hs₂ i) hy₁
          hy₂
    choose n hn using this
    -- We can thus choose a big enough `n` such that `f ^ (n + n₂) * y₁ = f ^ (n + n₁) * y₂`
    -- on `S ∩ U`.
    have :
      X.presheaf.map (homOfLE <| inf_le_left).op
          (X.presheaf.map (homOfLE le_sup_left).op f ^ (Finset.univ.sup n + n₂) * y₁) =
        X.presheaf.map (homOfLE <| inf_le_right).op
          (X.presheaf.map (homOfLE le_sup_right).op f ^ (Finset.univ.sup n + n₁) * y₂) := by
      fapply X.sheaf.eq_of_locally_eq' fun i : s => i.1.1
      · refine' fun i => homOfLE _; erw [hs];
        -- Porting note: have to add argument explicitly
        exact @le_iSup (Opens X) s _ (fun (i : s) => (i : Opens X)) i
      · exact le_of_eq hs
      · intro i
        replace hn :=
          congr_arg
            (fun x =>
              X.presheaf.map (homOfLE (le_trans (hs₁ i) le_sup_left)).op f ^
                  (Finset.univ.sup n - n i) *
                x)
            (hn i)
        dsimp only at hn
        delta Scheme.sheaf SheafedSpace.sheaf
        simp only [← map_pow, map_mul, ← comp_apply, ← Functor.map_comp, ← op_comp, ← mul_assoc]
          at hn ⊢
        erw [← map_mul, ← map_mul] at hn
        rw [← pow_add, ← pow_add, ← add_assoc, ← add_assoc, tsub_add_cancel_of_le] at hn
        convert hn
        exact Finset.le_sup (Finset.mem_univ _)
    use Finset.univ.sup n + n₁ + n₂
    -- By the sheaf condition, since `f ^ (n + n₂) * y₁ = f ^ (n + n₁) * y₂`, it can be glued into
    -- the desired section on `S ∪ U`.
    use (X.sheaf.objSupIsoProdEqLocus S U.1).inv ⟨⟨_ * _, _ * _⟩, this⟩
    refine' X.sheaf.eq_of_locally_eq₂
        (homOfLE (_ : X.basicOpen (X.presheaf.map (homOfLE le_sup_left).op f) ≤ _))
        (homOfLE (_ : X.basicOpen (X.presheaf.map (homOfLE le_sup_right).op f) ≤ _)) _ _ _ _ _
    · rw [X.basicOpen_res]; exact inf_le_right
    · rw [X.basicOpen_res]; exact inf_le_right
    · rw [X.basicOpen_res, X.basicOpen_res]
      erw [← inf_sup_right]
      refine' le_inf_iff.mpr ⟨X.basicOpen_le f, le_of_eq rfl⟩
    · convert congr_arg (X.presheaf.map
        -- Porting note: needs to be explicit here
        (homOfLE (by restrict_tac :
          X.basicOpen (X.presheaf.map (homOfLE (le_sup_left : S ≤ S ⊔ U.1)).op f) ≤ S)).op)
        (X.sheaf.objSupIsoProdEqLocus_inv_fst S U.1 ⟨⟨_ * _, _ * _⟩, this⟩) using 1
      · delta Scheme.sheaf SheafedSpace.sheaf
        -- Porting note: was just a single `simp only [...]`
        simp only
        erw [← comp_apply, ← comp_apply, ← comp_apply, ← comp_apply]
        simp only [← Functor.map_comp, ← op_comp]
        congr 1
      · delta Scheme.sheaf SheafedSpace.sheaf
        -- Porting note: was just a single `simp only [...]`
        simp only [map_pow, map_mul]
        erw [← comp_apply, ← comp_apply]
        simp only [← Functor.map_comp, ← op_comp, mul_assoc, pow_add]
        erw [hy₁]; congr 1; rw [← mul_assoc, ← mul_assoc]; congr 1
        rw [mul_comm, ← comp_apply, ← Functor.map_comp]; congr 1
    · convert
        congr_arg (X.presheaf.map (homOfLE _).op)
          (X.sheaf.objSupIsoProdEqLocus_inv_snd S U.1 ⟨⟨_ * _, _ * _⟩, this⟩) using
        1
      pick_goal 3
      · rw [X.basicOpen_res]; restrict_tac
      · delta Scheme.sheaf SheafedSpace.sheaf
        -- Porting note: was just a single `simp only [...]`
        simp only
        erw [← comp_apply, ← comp_apply, ← comp_apply, ← comp_apply]
        simp only [← Functor.map_comp, ← op_comp]
        congr 1
      · delta Scheme.sheaf SheafedSpace.sheaf
        -- Porting note: was just a single `simp only [...]`
        simp only [map_pow, map_mul]
        erw [← comp_apply, ← comp_apply]
        simp only [← Functor.map_comp, ← op_comp, mul_assoc, pow_add]
        erw [hy₂]; rw [← comp_apply, ← Functor.map_comp]; congr 1
#align algebraic_geometry.exists_eq_pow_mul_of_is_compact_of_is_quasi_separated AlgebraicGeometry.exists_eq_pow_mul_of_isCompact_of_isQuasiSeparated

/-- If `U` is qcqs, then `Γ(X, D(f)) ≃ Γ(X, U)_f` for every `f : Γ(X, U)`.
This is known as the **Qcqs lemma** in [R. Vakil, *The rising sea*][RisingSea]. -/
theorem is_localization_basicOpen_of_qcqs {X : Scheme} {U : Opens X.carrier} (hU : IsCompact U.1)
    (hU' : IsQuasiSeparated U.1) (f : X.presheaf.obj (op U)) :
    IsLocalization.Away f (X.presheaf.obj (op <| X.basicOpen f)) := by
  constructor
  · rintro ⟨_, n, rfl⟩
    simp only [map_pow, Subtype.coe_mk, RingHom.algebraMap_toAlgebra]
    exact IsUnit.pow _ (RingedSpace.isUnit_res_basicOpen _ f)
  · intro z
    obtain ⟨n, y, e⟩ := exists_eq_pow_mul_of_isCompact_of_isQuasiSeparated X U hU hU' f z
    refine' ⟨⟨y, _, n, rfl⟩, _⟩
    simpa only [map_pow, Subtype.coe_mk, RingHom.algebraMap_toAlgebra, mul_comm z] using e.symm
  · intro x y
    rw [← sub_eq_zero, ← map_sub, RingHom.algebraMap_toAlgebra]
    simp_rw [← @sub_eq_zero _ _ (_ * x) (_ * y), ← mul_sub]
    generalize x - y = z
    constructor
    · intro H
      obtain ⟨n, e⟩ := exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isCompact X hU _ _ H
      refine' ⟨⟨_, n, rfl⟩, _⟩
      simpa [mul_comm z] using e
    · rintro ⟨⟨_, n, rfl⟩, e : f ^ n * z = 0⟩
      rw [← ((RingedSpace.isUnit_res_basicOpen _ f).pow n).mul_right_inj, mul_zero, ←
        map_pow]
      -- Porting note: this one lemma needs `erw`
      erw [← map_mul]
      rw [e, map_zero]
#align algebraic_geometry.is_localization_basic_open_of_qcqs AlgebraicGeometry.is_localization_basicOpen_of_qcqs

end AlgebraicGeometry
