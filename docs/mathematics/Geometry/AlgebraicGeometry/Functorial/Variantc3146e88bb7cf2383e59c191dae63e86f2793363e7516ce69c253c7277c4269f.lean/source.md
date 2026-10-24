# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Functorial.Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7acb171ee8520b8a12e4eb909be138fcff632f42` · SHA-256 `1a642156573f07aafba40c9eabbabf6f331942c32d373d2fcfc761fdd6484322`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.Comap.Variant7a724af006a3c7afd4f6b162ec177924b08e78fbfecadec19f11f345e6f4a520","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a724af006a3c7afd4f6b162ec177924b08e78fbfecadec19f11f345e6f4a520","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.Comap.Variant7a724af006a3c7afd4f6b162ec177924b08e78fbfecadec19f11f345e6f4a520","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"7a724af006a3c7afd4f6b162ec177924b08e78fbfecadec19f11f345e6f4a520","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicGeometry/IdealSheaf/Functorial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion
import Mathlib.AlgebraicGeometry.PullbackCarrier

/-!
# Functorial constructions of ideal sheaves

We define the pullback and pushforward of ideal sheaves in this file.

## Main definitions
- `AlgebraicGeometry.Scheme.IdealSheafData.comap`: The pullback of an ideal sheaf.
- `AlgebraicGeometry.Scheme.IdealSheafData.map`: The pushforward of an ideal sheaf.
- `AlgebraicGeometry.Scheme.IdealSheafData.map_gc`:
  The galois connection between pullback and pushforward.

-/


namespace GRWTSK.Geometry.AlgebraicGeometry.Comap.Variant7a724af006a3c7afd4f6b162ec177924b08e78fbfecadec19f11f345e6f4a520

noncomputable section

universe u

open CategoryTheory Limits

namespace AlgebraicGeometry

variable {X Y Z : Scheme.{u}}

namespace Scheme.IdealSheafData

/-- The pullback of an ideal sheaf. -/
def comap (I : Y.IdealSheafData) (f : X ⟶ Y) : X.IdealSheafData :=
  (pullback.fst f I.subschemeι).ker

/-- The subscheme associated to the pullback ideal sheaf is isomorphic to the fibred product. -/
def comapIso (I : Y.IdealSheafData) (f : X ⟶ Y) :
    (I.comap f).subscheme ≅ pullback f I.subschemeι :=
  (asIso (pullback.fst f I.subschemeι).toImage).symm

@[reassoc (attr := simp)]
lemma comapIso_inv_subschemeι (I : Y.IdealSheafData) (f : X ⟶ Y) :
    (I.comapIso f).inv ≫ (I.comap f).subschemeι = pullback.fst _ _ :=
  (pullback.fst f I.subschemeι).toImage_imageι

@[reassoc (attr := simp)]
lemma comapIso_hom_fst (I : Y.IdealSheafData) (f : X ⟶ Y) :
    (I.comapIso f).hom ≫ pullback.fst _ _ = (I.comap f).subschemeι := by
  rw [← comapIso_inv_subschemeι, Iso.hom_inv_id_assoc]

@[simp]
lemma comap_comp (I : Z.IdealSheafData) (f : X ⟶ Y) (g : Y ⟶ Z) :
    I.comap (f ≫ g) = (I.comap g).comap f := by
  let e : pullback f (I.comap g).subschemeι ≅ pullback (f ≫ g) I.subschemeι :=
    asIso (pullback.map _ _ _ _ (𝟙 _) (I.comapIso g).hom (𝟙 _) (by simp) (by simp)) ≪≫
      pullbackRightPullbackFstIso _ _ _
  rw [comap, comap, ← Scheme.Hom.ker_comp_of_isIso e.hom]
  simp [e]

@[simp]
lemma comap_id (I : Z.IdealSheafData) :
    I.comap (𝟙 _) = I := by
  rw [comap, ← Scheme.Hom.ker_comp_of_isIso (inv (pullback.snd _ _)),
    pullback_inv_snd_fst_of_left_isIso, IsIso.inv_id, Category.comp_id, ker_subschemeι]

@[simp]
lemma support_comap (I : Y.IdealSheafData) (f : X ⟶ Y) :
    (I.comap f).support = I.support.preimage f.continuous := by
  ext1
  rw [comap, Scheme.Hom.support_ker, Pullback.range_fst, range_subschemeι,
    TopologicalSpace.Closeds.coe_preimage, (I.support.isClosed.preimage f.continuous).closure_eq]

/-- The pushforward of an ideal sheaf. -/
def map (I : X.IdealSheafData) (f : X ⟶ Y) : Y.IdealSheafData :=
  (I.subschemeι ≫ f).ker

lemma le_map_iff_comap_le {I : X.IdealSheafData} {f : X ⟶ Y} {J : Y.IdealSheafData} :
    J ≤ I.map f ↔ J.comap f ≤ I := by
  constructor
  · intro H
    rw [← I.ker_subschemeι, ← pullback.lift_fst (f := f) (g := J.subschemeι) I.subschemeι
      ((I.subschemeι ≫ f).toImage ≫ inclusion H) (by simp)]
    exact Hom.le_ker_comp _ _
  · intro H
    have : (inclusion H ≫ (J.comapIso f).hom ≫ pullback.snd _ _) ≫ J.subschemeι =
        I.subschemeι ≫ f := by simp [← pullback.condition]
    rw [map, ← J.ker_subschemeι, ← this]
    exact Hom.le_ker_comp _ _

section gc

variable (I I₁ I₂ : X.IdealSheafData) (J J₁ J₂ : Y.IdealSheafData) (f : X ⟶ Y)

/-- Pushforward and pullback of ideal sheaves forms a galois connection. -/
lemma map_gc : GaloisConnection (comap · f) (map · f) := fun _ _ ↦ le_map_iff_comap_le.symm

lemma map_mono          : Monotone (map · f)                          := (map_gc f).monotone_u
lemma comap_mono        : Monotone (comap · f)                        := (map_gc f).monotone_l
lemma le_map_comap      : J ≤ (J.comap f).map f                       := (map_gc f).le_u_l J
lemma comap_map_le      : (I.map f).comap f ≤ I                       := (map_gc f).l_u_le I
@[simp] lemma map_top   : map ⊤ f = ⊤                                 := (map_gc f).u_top
@[simp] lemma comap_bot : comap ⊥ f = ⊥                               := (map_gc f).l_bot
@[simp] lemma map_inf   : map (I₁ ⊓ I₂) f = map I₁ f ⊓ map I₂ f       := (map_gc f).u_inf
@[simp] lemma comap_sup : comap (J₁ ⊔ J₂) f = comap J₁ f ⊔ comap J₂ f := (map_gc f).l_sup

end gc

@[simp]
lemma map_bot (f : X ⟶ Y) : map ⊥ f = f.ker := by
  simp [map, Scheme.Hom.ker_comp_of_isIso]

@[simp]
lemma comap_top (f : X ⟶ Y) : comap ⊤ f = ⊤ := by
  rw [comap, Hom.ker_eq_top_iff_isEmpty]
  exact Function.isEmpty (pullback.snd f _).base

@[simp]
lemma map_comp (I : X.IdealSheafData) (f : X ⟶ Y) (g : Y ⟶ Z) :
    I.map (f ≫ g) = (I.map f).map g := by
  apply le_antisymm
  · rw [le_map_iff_comap_le, le_map_iff_comap_le, ← comap_comp]; exact comap_map_le _ _
  · rw [le_map_iff_comap_le, comap_comp]
    exact (comap_mono _ (comap_map_le _ _)).trans (comap_map_le _ _)

@[simp]
lemma map_id (I : Z.IdealSheafData) :
    I.map (𝟙 _) = I := by
  simp [map]

lemma map_ker (f : X ⟶ Y) (g : Y ⟶ Z) : f.ker.map g = (f ≫ g).ker := by
  simp [← map_bot]

lemma _root_.GRWTSK.Geometry.AlgebraicGeometry.Comap.Variant7a724af006a3c7afd4f6b162ec177924b08e78fbfecadec19f11f345e6f4a520.AlgebraicGeometry.Scheme.Hom.ker_comp
    (f : X ⟶ Y) (g : Y ⟶ Z) : (f ≫ g).ker = f.ker.map g := (map_ker f g).symm

lemma map_vanishingIdeal {X Y : Scheme} (f : X ⟶ Y) (Z : TopologicalSpace.Closeds X) :
    (vanishingIdeal Z).map f = vanishingIdeal (.closure (f.base '' Z)) := by
  apply le_antisymm
  · rw [map, ← le_support_iff_le_vanishingIdeal, TopologicalSpace.Closeds.closure_le]
    refine .trans ?_ (Hom.range_subset_ker_support _)
    rw [Scheme.comp_base, TopCat.coe_comp, Set.range_comp,
      range_subschemeι, coe_support_vanishingIdeal]
  · simp [le_map_iff_comap_le, ← le_support_iff_le_vanishingIdeal, ← Set.image_subset_iff,
      subset_closure, ← SetLike.coe_subset_coe]

@[simp]
lemma support_map (I : X.IdealSheafData) (f : X ⟶ Y) [QuasiCompact f] :
    (I.map f).support = .closure (f.base '' I.support) := by
  ext1
  rw [map, Scheme.Hom.support_ker, Scheme.comp_base, TopCat.coe_comp,
    Set.range_comp, range_subschemeι, TopologicalSpace.Closeds.coe_closure]

lemma ideal_map (I : X.IdealSheafData) (f : X ⟶ Y) [QuasiCompact f] (U : Y.affineOpens)
    (H : IsAffineOpen (f ⁻¹ᵁ U)) :
    (I.map f).ideal U = (I.ideal ⟨_, H⟩).comap (f.app U).hom := by
  have : RingHom.ker (I.subschemeObjIso ⟨_, H⟩).inv.hom = ⊥ :=
    RingHom.ker_coe_equiv (I.subschemeObjIso ⟨_, H⟩).symm.commRingCatIsoToRingEquiv
  simp [map, ← RingHom.comap_ker, subschemeι_app _ ⟨_, H⟩,
    this, ← RingHom.ker_eq_comap_bot]

lemma ideal_map_of_isAffineHom
    (I : X.IdealSheafData) (f : X ⟶ Y) [IsAffineHom f] (U : Y.affineOpens) :
    (I.map f).ideal U = (I.ideal ⟨_, U.2.preimage f⟩).comap (f.app U).hom :=
  ideal_map I f U (U.2.preimage f)

lemma ideal_comap_of_isOpenImmersion
    (I : Y.IdealSheafData) (f : X ⟶ Y) [IsOpenImmersion f] (U : X.affineOpens) :
    (I.comap f).ideal U = (I.ideal ⟨f ''ᵁ U, U.2.image_of_isOpenImmersion f⟩).comap
      (f.appIso U).inv.hom := by
  refine (ker_ideal_of_isPullback_of_isOpenImmersion _ _ _ _
    (IsPullback.of_hasPullback f I.subschemeι) U).trans ?_
  simp

/-- If `J ≤ I.map f`, then `f` restricts to a map `I ⟶ J` between the closed subschemes. -/
def subschemeMap (I : X.IdealSheafData) (J : Y.IdealSheafData)
    (f : X ⟶ Y) (H : J ≤ I.map f) : I.subscheme ⟶ J.subscheme :=
  IsClosedImmersion.lift J.subschemeι (I.subschemeι ≫ f) (by simpa using H)

@[reassoc (attr := simp)]
lemma subschemeMap_subschemeι (I : X.IdealSheafData) (J : Y.IdealSheafData)
    (f : X ⟶ Y) (H : J ≤ I.map f) : subschemeMap I J f H ≫ J.subschemeι = I.subschemeι ≫ f :=
  IsClosedImmersion.lift_fac _ _ _

@[reassoc (attr := simp)]
lemma comapIso_hom_snd (I : Y.IdealSheafData) (f : X ⟶ Y) :
    (I.comapIso f).hom ≫ pullback.snd _ _ = subschemeMap _ _ f (I.le_map_comap f) := by
  rw [← cancel_mono I.subschemeι]
  simp [← pullback.condition]

end Scheme.IdealSheafData

end AlgebraicGeometry
```
