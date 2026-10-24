# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Gluing.Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7111257d225ca68393d544fd7efd7619715b4793` · SHA-256 `5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.AlgebraicGeometry.PresheafedSpace.Gluing
import Mathlib.AlgebraicGeometry.OpenImmersion.Scheme

#align_import algebraic_geometry.gluing from "leanprover-community/mathlib"@"533f62f4dd62a5aad24a04326e6e787c8f7e98b1"

/-!
# Gluing Schemes

Given a family of gluing data of schemes, we may glue them together.

## Main definitions

* `AlgebraicGeometry.Scheme.GlueData`: A structure containing the family of gluing data.
* `AlgebraicGeometry.Scheme.GlueData.glued`: The glued scheme.
    This is defined as the multicoequalizer of `∐ V i j ⇉ ∐ U i`, so that the general colimit API
    can be used.
* `AlgebraicGeometry.Scheme.GlueData.ι`: The immersion `ι i : U i ⟶ glued` for each `i : J`.
* `AlgebraicGeometry.Scheme.GlueData.isoCarrier`: The isomorphism between the underlying space
  of the glued scheme and the gluing of the underlying topological spaces.
* `AlgebraicGeometry.Scheme.OpenCover.gluedCover`: The glue data associated with an open cover.
* `AlgebraicGeometry.Scheme.OpenCover.fromGlued`: The canonical morphism
  `𝒰.gluedCover.glued ⟶ X`. This has an `is_iso` instance.
* `AlgebraicGeometry.Scheme.OpenCover.glueMorphisms`: We may glue a family of compatible
  morphisms defined on an open cover of a scheme.

## Main results

* `AlgebraicGeometry.Scheme.GlueData.ι_isOpenImmersion`: The map `ι i : U i ⟶ glued`
  is an open immersion for each `i : J`.
* `AlgebraicGeometry.Scheme.GlueData.ι_jointly_surjective` : The underlying maps of
  `ι i : U i ⟶ glued` are jointly surjective.
* `AlgebraicGeometry.Scheme.GlueData.vPullbackConeIsLimit` : `V i j` is the pullback
  (intersection) of `U i` and `U j` over the glued space.
* `AlgebraicGeometry.Scheme.GlueData.ι_eq_iff` : `ι i x = ι j y` if and only if they coincide
  when restricted to `V i i`.
* `AlgebraicGeometry.Scheme.GlueData.isOpen_iff` : A subset of the glued scheme is open iff
  all its preimages in `U i` are open.

## Implementation details

All the hard work is done in `AlgebraicGeometry/PresheafedSpace/Gluing.lean` where we glue
presheafed spaces, sheafed spaces, and locally ringed spaces.

-/

set_option linter.uppercaseLean3 false

noncomputable section

universe u

open TopologicalSpace CategoryTheory Opposite

open CategoryTheory.Limits AlgebraicGeometry.PresheafedSpace

open CategoryTheory.GlueData

namespace AlgebraicGeometry

namespace Scheme

/-- A family of gluing data consists of
1. An index type `J`
2. A scheme `U i` for each `i : J`.
3. A scheme `V i j` for each `i j : J`.
  (Note that this is `J × J → Scheme` rather than `J → J → Scheme` to connect to the
  limits library easier.)
4. An open immersion `f i j : V i j ⟶ U i` for each `i j : ι`.
5. A transition map `t i j : V i j ⟶ V j i` for each `i j : ι`.
such that
6. `f i i` is an isomorphism.
7. `t i i` is the identity.
8. `V i j ×[U i] V i k ⟶ V i j ⟶ V j i` factors through `V j k ×[U j] V j i ⟶ V j i` via some
    `t' : V i j ×[U i] V i k ⟶ V j k ×[U j] V j i`.
9. `t' i j k ≫ t' j k i ≫ t' k i j = 𝟙 _`.

We can then glue the schemes `U i` together by identifying `V i j` with `V j i`, such
that the `U i`'s are open subschemes of the glued space.
-/
-- Porting note: @[nolint has_nonempty_instance]
structure GlueData extends CategoryTheory.GlueData Scheme where
  f_open : ∀ i j, IsOpenImmersion (f i j)
#align algebraic_geometry.Scheme.glue_data AlgebraicGeometry.Scheme.GlueData

attribute [instance] GlueData.f_open

namespace GlueData

variable (D : GlueData.{u})

local notation "𝖣" => D.toGlueData

/-- The glue data of locally ringed spaces spaces associated to a family of glue data of schemes. -/
abbrev toLocallyRingedSpaceGlueData : LocallyRingedSpace.GlueData :=
  { f_open := D.f_open
    toGlueData := 𝖣.mapGlueData forgetToLocallyRingedSpace }
#align algebraic_geometry.Scheme.glue_data.to_LocallyRingedSpace_glue_data AlgebraicGeometry.Scheme.GlueData.toLocallyRingedSpaceGlueData

instance (i j : 𝖣.J) :
    LocallyRingedSpace.IsOpenImmersion ((D.toLocallyRingedSpaceGlueData).toGlueData.f i j) := by
  apply GlueData.f_open

instance (i j : 𝖣.J) :
    SheafedSpace.IsOpenImmersion
      (D.toLocallyRingedSpaceGlueData.toSheafedSpaceGlueData.toGlueData.f i j) := by
  apply GlueData.f_open

instance (i j : 𝖣.J) :
    PresheafedSpace.IsOpenImmersion
      (D.toLocallyRingedSpaceGlueData.toSheafedSpaceGlueData.toPresheafedSpaceGlueData.toGlueData.f
        i j) := by
  apply GlueData.f_open

-- Porting note: this was not needed.
instance (i : 𝖣.J) :
    LocallyRingedSpace.IsOpenImmersion ((D.toLocallyRingedSpaceGlueData).toGlueData.ι i) := by
  apply LocallyRingedSpace.GlueData.ι_isOpenImmersion

/-- (Implementation). The glued scheme of a glue data.
This should not be used outside this file. Use `AlgebraicGeometry.Scheme.GlueData.glued` instead. -/
def gluedScheme : Scheme := by
  apply LocallyRingedSpace.IsOpenImmersion.scheme
    D.toLocallyRingedSpaceGlueData.toGlueData.glued
  intro x
  obtain ⟨i, y, rfl⟩ := D.toLocallyRingedSpaceGlueData.ι_jointly_surjective x
  refine' ⟨_, _ ≫ D.toLocallyRingedSpaceGlueData.toGlueData.ι i, _⟩
  swap; exact (D.U i).affineCover.map y
  constructor
  · dsimp [-Set.mem_range]
    rw [coe_comp, Set.range_comp]
    refine' Set.mem_image_of_mem _ _
    exact (D.U i).affineCover.Covers y
  · infer_instance
#align algebraic_geometry.Scheme.glue_data.glued_Scheme AlgebraicGeometry.Scheme.GlueData.gluedScheme

instance : CreatesColimit 𝖣.diagram.multispan forgetToLocallyRingedSpace :=
  createsColimitOfFullyFaithfulOfIso D.gluedScheme
    (HasColimit.isoOfNatIso (𝖣.diagramIso forgetToLocallyRingedSpace).symm)

-- Porting note: we need to use `CommRingCatMax.{u, u}` instead of just `CommRingCat`.
instance : PreservesColimit (𝖣.diagram.multispan) forgetToTop :=
  inferInstanceAs (PreservesColimit (𝖣.diagram).multispan (forgetToLocallyRingedSpace ⋙
      LocallyRingedSpace.forgetToSheafedSpace ⋙ SheafedSpace.forget CommRingCatMax.{u, u}))

instance : HasMulticoequalizer 𝖣.diagram :=
  hasColimit_of_created _ forgetToLocallyRingedSpace

/-- The glued scheme of a glued space. -/
abbrev glued : Scheme :=
  𝖣.glued
#align algebraic_geometry.Scheme.glue_data.glued AlgebraicGeometry.Scheme.GlueData.glued

/-- The immersion from `D.U i` into the glued space. -/
abbrev ι (i : D.J) : D.U i ⟶ D.glued :=
  𝖣.ι i
#align algebraic_geometry.Scheme.glue_data.ι AlgebraicGeometry.Scheme.GlueData.ι

/-- The gluing as sheafed spaces is isomorphic to the gluing as presheafed spaces. -/
abbrev isoLocallyRingedSpace :
    D.glued.toLocallyRingedSpace ≅ D.toLocallyRingedSpaceGlueData.toGlueData.glued :=
  𝖣.gluedIso forgetToLocallyRingedSpace
#align algebraic_geometry.Scheme.glue_data.iso_LocallyRingedSpace AlgebraicGeometry.Scheme.GlueData.isoLocallyRingedSpace

theorem ι_isoLocallyRingedSpace_inv (i : D.J) :
    D.toLocallyRingedSpaceGlueData.toGlueData.ι i ≫ D.isoLocallyRingedSpace.inv = 𝖣.ι i :=
  𝖣.ι_gluedIso_inv forgetToLocallyRingedSpace i
#align algebraic_geometry.Scheme.glue_data.ι_iso_LocallyRingedSpace_inv AlgebraicGeometry.Scheme.GlueData.ι_isoLocallyRingedSpace_inv

instance ι_isOpenImmersion (i : D.J) : IsOpenImmersion (𝖣.ι i) := by
  rw [← D.ι_isoLocallyRingedSpace_inv]; infer_instance
#align algebraic_geometry.Scheme.glue_data.ι_is_open_immersion AlgebraicGeometry.Scheme.GlueData.ι_isOpenImmersion

theorem ι_jointly_surjective (x : 𝖣.glued.carrier) :
    ∃ (i : D.J) (y : (D.U i).carrier), (D.ι i).1.base y = x :=
  𝖣.ι_jointly_surjective (forgetToTop ⋙ forget TopCat) x
#align algebraic_geometry.Scheme.glue_data.ι_jointly_surjective AlgebraicGeometry.Scheme.GlueData.ι_jointly_surjective

-- Porting note : promote to higher priority to short circuit simplifier
@[simp (high), reassoc]
theorem glue_condition (i j : D.J) : D.t i j ≫ D.f j i ≫ D.ι j = D.f i j ≫ D.ι i :=
  𝖣.glue_condition i j
#align algebraic_geometry.Scheme.glue_data.glue_condition AlgebraicGeometry.Scheme.GlueData.glue_condition

/-- The pullback cone spanned by `V i j ⟶ U i` and `V i j ⟶ U j`.
This is a pullback diagram (`vPullbackConeIsLimit`). -/
def vPullbackCone (i j : D.J) : PullbackCone (D.ι i) (D.ι j) :=
  PullbackCone.mk (D.f i j) (D.t i j ≫ D.f j i) (by simp)
#align algebraic_geometry.Scheme.glue_data.V_pullback_cone AlgebraicGeometry.Scheme.GlueData.vPullbackCone

/-- The following diagram is a pullback, i.e. `Vᵢⱼ` is the intersection of `Uᵢ` and `Uⱼ` in `X`.

Vᵢⱼ ⟶ Uᵢ
 |      |
 ↓      ↓
 Uⱼ ⟶ X
-/
def vPullbackConeIsLimit (i j : D.J) : IsLimit (D.vPullbackCone i j) :=
  𝖣.vPullbackConeIsLimitOfMap forgetToLocallyRingedSpace i j
    (D.toLocallyRingedSpaceGlueData.vPullbackConeIsLimit _ _)
#align algebraic_geometry.Scheme.glue_data.V_pullback_cone_is_limit AlgebraicGeometry.Scheme.GlueData.vPullbackConeIsLimit

-- Porting note: new notation
local notation "D_" => TopCat.GlueData.toGlueData <|
  D.toLocallyRingedSpaceGlueData.toSheafedSpaceGlueData.toPresheafedSpaceGlueData.toTopGlueData

/-- The underlying topological space of the glued scheme is isomorphic to the gluing of the
underlying spaces -/
def isoCarrier :
    D.glued.carrier ≅ (D_).glued := by
  refine (PresheafedSpace.forget _).mapIso ?_ ≪≫
    GlueData.gluedIso _ (PresheafedSpace.forget.{_, _, u} _)
  refine SheafedSpace.forgetToPresheafedSpace.mapIso ?_ ≪≫
    SheafedSpace.GlueData.isoPresheafedSpace _
  refine LocallyRingedSpace.forgetToSheafedSpace.mapIso ?_ ≪≫
    LocallyRingedSpace.GlueData.isoSheafedSpace _
  exact Scheme.GlueData.isoLocallyRingedSpace _
#align algebraic_geometry.Scheme.glue_data.iso_carrier AlgebraicGeometry.Scheme.GlueData.isoCarrier

@[simp]
theorem ι_isoCarrier_inv (i : D.J) :
    (D_).ι i ≫ D.isoCarrier.inv = (D.ι i).1.base := by
  delta isoCarrier
  rw [Iso.trans_inv, GlueData.ι_gluedIso_inv_assoc, Functor.mapIso_inv, Iso.trans_inv,
    Functor.mapIso_inv, Iso.trans_inv, SheafedSpace.forgetToPresheafedSpace_map, forget_map,
    forget_map, ← comp_base, ← Category.assoc,
    D.toLocallyRingedSpaceGlueData.toSheafedSpaceGlueData.ι_isoPresheafedSpace_inv i]
  erw [← Category.assoc, D.toLocallyRingedSpaceGlueData.ι_isoSheafedSpace_inv i]
  change (_ ≫ D.isoLocallyRingedSpace.inv).1.base = _
  rw [D.ι_isoLocallyRingedSpace_inv i]
#align algebraic_geometry.Scheme.glue_data.ι_iso_carrier_inv AlgebraicGeometry.Scheme.GlueData.ι_isoCarrier_inv

/-- An equivalence relation on `Σ i, D.U i` that holds iff `𝖣 .ι i x = 𝖣 .ι j y`.
See `AlgebraicGeometry.Scheme.GlueData.ι_eq_iff`. -/
def Rel (a b : Σ i, ((D.U i).carrier : Type _)) : Prop :=
  a = b ∨
    ∃ x : (D.V (a.1, b.1)).carrier, (D.f _ _).1.base x = a.2 ∧ (D.t _ _ ≫ D.f _ _).1.base x = b.2
#align algebraic_geometry.Scheme.glue_data.rel AlgebraicGeometry.Scheme.GlueData.Rel

theorem ι_eq_iff (i j : D.J) (x : (D.U i).carrier) (y : (D.U j).carrier) :
    (𝖣.ι i).1.base x = (𝖣.ι j).1.base y ↔ D.Rel ⟨i, x⟩ ⟨j, y⟩ := by
  refine' Iff.trans _
    (TopCat.GlueData.ι_eq_iff_rel
      D.toLocallyRingedSpaceGlueData.toSheafedSpaceGlueData.toPresheafedSpaceGlueData.toTopGlueData
      i j x y)
  rw [← ((TopCat.mono_iff_injective D.isoCarrier.inv).mp _).eq_iff]
  · simp_rw [← comp_apply, ← D.ι_isoCarrier_inv]; rfl
  · infer_instance
#align algebraic_geometry.Scheme.glue_data.ι_eq_iff AlgebraicGeometry.Scheme.GlueData.ι_eq_iff

theorem isOpen_iff (U : Set D.glued.carrier) : IsOpen U ↔ ∀ i, IsOpen ((D.ι i).1.base ⁻¹' U) := by
  rw [← (TopCat.homeoOfIso D.isoCarrier.symm).isOpen_preimage]
  rw [TopCat.GlueData.isOpen_iff]
  apply forall_congr'
  intro i
  erw [← Set.preimage_comp, ← ι_isoCarrier_inv]
  rfl
#align algebraic_geometry.Scheme.glue_data.is_open_iff AlgebraicGeometry.Scheme.GlueData.isOpen_iff

/-- The open cover of the glued space given by the glue data. -/
def openCover (D : Scheme.GlueData) : OpenCover D.glued where
  J := D.J
  obj := D.U
  map := D.ι
  f x := (D.ι_jointly_surjective x).choose
  Covers x := ⟨_, (D.ι_jointly_surjective x).choose_spec.choose_spec⟩
#align algebraic_geometry.Scheme.glue_data.open_cover AlgebraicGeometry.Scheme.GlueData.openCover

end GlueData

namespace OpenCover

variable {X : Scheme.{u}} (𝒰 : OpenCover.{u} X)

/-- (Implementation) the transition maps in the glue data associated with an open cover. -/
def gluedCoverT' (x y z : 𝒰.J) :
    pullback (pullback.fst : pullback (𝒰.map x) (𝒰.map y) ⟶ _)
        (pullback.fst : pullback (𝒰.map x) (𝒰.map z) ⟶ _) ⟶
      pullback (pullback.fst : pullback (𝒰.map y) (𝒰.map z) ⟶ _)
        (pullback.fst : pullback (𝒰.map y) (𝒰.map x) ⟶ _) := by
  refine' (pullbackRightPullbackFstIso _ _ _).hom ≫ _
  refine' _ ≫ (pullbackSymmetry _ _).hom
  refine' _ ≫ (pullbackRightPullbackFstIso _ _ _).inv
  refine' pullback.map _ _ _ _ (pullbackSymmetry _ _).hom (𝟙 _) (𝟙 _) _ _
  · simp [pullback.condition]
  · simp
#align algebraic_geometry.Scheme.open_cover.glued_cover_t' AlgebraicGeometry.Scheme.OpenCover.gluedCoverT'

@[simp, reassoc]
theorem gluedCoverT'_fst_fst (x y z : 𝒰.J) :
    𝒰.gluedCoverT' x y z ≫ pullback.fst ≫ pullback.fst = pullback.fst ≫ pullback.snd := by
  delta gluedCoverT'; simp
#align algebraic_geometry.Scheme.open_cover.glued_cover_t'_fst_fst AlgebraicGeometry.Scheme.OpenCover.gluedCoverT'_fst_fst

@[simp, reassoc]
theorem gluedCoverT'_fst_snd (x y z : 𝒰.J) :
    gluedCoverT' 𝒰 x y z ≫ pullback.fst ≫ pullback.snd = pullback.snd ≫ pullback.snd := by
  delta gluedCoverT'; simp
#align algebraic_geometry.Scheme.open_cover.glued_cover_t'_fst_snd AlgebraicGeometry.Scheme.OpenCover.gluedCoverT'_fst_snd

@[simp, reassoc]
theorem gluedCoverT'_snd_fst (x y z : 𝒰.J) :
    gluedCoverT' 𝒰 x y z ≫ pullback.snd ≫ pullback.fst = pullback.fst ≫ pullback.snd := by
  delta gluedCoverT'; simp
#align algebraic_geometry.Scheme.open_cover.glued_cover_t'_snd_fst AlgebraicGeometry.Scheme.OpenCover.gluedCoverT'_snd_fst

@[simp, reassoc]
theorem gluedCoverT'_snd_snd (x y z : 𝒰.J) :
    gluedCoverT' 𝒰 x y z ≫ pullback.snd ≫ pullback.snd = pullback.fst ≫ pullback.fst := by
  delta gluedCoverT'; simp
#align algebraic_geometry.Scheme.open_cover.glued_cover_t'_snd_snd AlgebraicGeometry.Scheme.OpenCover.gluedCoverT'_snd_snd

theorem glued_cover_cocycle_fst (x y z : 𝒰.J) :
    gluedCoverT' 𝒰 x y z ≫ gluedCoverT' 𝒰 y z x ≫ gluedCoverT' 𝒰 z x y ≫ pullback.fst =
      pullback.fst :=
  by apply pullback.hom_ext <;> simp
#align algebraic_geometry.Scheme.open_cover.glued_cover_cocycle_fst AlgebraicGeometry.Scheme.OpenCover.glued_cover_cocycle_fst

theorem glued_cover_cocycle_snd (x y z : 𝒰.J) :
    gluedCoverT' 𝒰 x y z ≫ gluedCoverT' 𝒰 y z x ≫ gluedCoverT' 𝒰 z x y ≫ pullback.snd =
      pullback.snd :=
  by apply pullback.hom_ext <;> simp [pullback.condition]
#align algebraic_geometry.Scheme.open_cover.glued_cover_cocycle_snd AlgebraicGeometry.Scheme.OpenCover.glued_cover_cocycle_snd

theorem glued_cover_cocycle (x y z : 𝒰.J) :
    gluedCoverT' 𝒰 x y z ≫ gluedCoverT' 𝒰 y z x ≫ gluedCoverT' 𝒰 z x y = 𝟙 _ := by
  apply pullback.hom_ext <;> simp_rw [Category.id_comp, Category.assoc]
  apply glued_cover_cocycle_fst
  apply glued_cover_cocycle_snd
#align algebraic_geometry.Scheme.open_cover.glued_cover_cocycle AlgebraicGeometry.Scheme.OpenCover.glued_cover_cocycle

/-- The glue data associated with an open cover.
The canonical isomorphism `𝒰.gluedCover.glued ⟶ X` is provided by `𝒰.fromGlued`. -/
@[simps]
def gluedCover : Scheme.GlueData.{u} where
  J := 𝒰.J
  U := 𝒰.obj
  V := fun ⟨x, y⟩ => pullback (𝒰.map x) (𝒰.map y)
  f x y := pullback.fst
  f_id x := inferInstance
  t x y := (pullbackSymmetry _ _).hom
  t_id x := by simp
  t' x y z := gluedCoverT' 𝒰 x y z
  t_fac x y z := by apply pullback.hom_ext <;> simp
  -- The `cocycle` field could have been `by tidy` but lean timeouts.
  cocycle x y z := glued_cover_cocycle 𝒰 x y z
  f_open x := inferInstance
#align algebraic_geometry.Scheme.open_cover.glued_cover AlgebraicGeometry.Scheme.OpenCover.gluedCover

/-- The canonical morphism from the gluing of an open cover of `X` into `X`.
This is an isomorphism, as witnessed by an `IsIso` instance. -/
def fromGlued : 𝒰.gluedCover.glued ⟶ X := by
  fapply Multicoequalizer.desc
  exact fun x => 𝒰.map x
  rintro ⟨x, y⟩
  change pullback.fst ≫ _ = ((pullbackSymmetry _ _).hom ≫ pullback.fst) ≫ _
  simpa using pullback.condition
#align algebraic_geometry.Scheme.open_cover.from_glued AlgebraicGeometry.Scheme.OpenCover.fromGlued

@[simp, reassoc]
theorem ι_fromGlued (x : 𝒰.J) : 𝒰.gluedCover.ι x ≫ 𝒰.fromGlued = 𝒰.map x :=
  Multicoequalizer.π_desc _ _ _ _ _
#align algebraic_geometry.Scheme.open_cover.ι_from_glued AlgebraicGeometry.Scheme.OpenCover.ι_fromGlued

theorem fromGlued_injective : Function.Injective 𝒰.fromGlued.1.base := by
  intro x y h
  obtain ⟨i, x, rfl⟩ := 𝒰.gluedCover.ι_jointly_surjective x
  obtain ⟨j, y, rfl⟩ := 𝒰.gluedCover.ι_jointly_surjective y
  simp_rw [← comp_apply, ← SheafedSpace.comp_base, ← LocallyRingedSpace.comp_val] at h
  erw [ι_fromGlued, ι_fromGlued] at h
  let e :=
    (TopCat.pullbackConeIsLimit _ _).conePointUniqueUpToIso
      (isLimitOfHasPullbackOfPreservesLimit Scheme.forgetToTop (𝒰.map i) (𝒰.map j))
  rw [𝒰.gluedCover.ι_eq_iff]
  right
  use e.hom ⟨⟨x, y⟩, h⟩
  constructor
  -- Porting note: in the two subproofs below, added the `change` lines
  · change (e.hom ≫ _) ⟨(x, y), h⟩ = x
    erw [IsLimit.conePointUniqueUpToIso_hom_comp _ _ WalkingCospan.left]; rfl
  · change (e.hom ≫ ((gluedCover 𝒰).toGlueData.t i j ≫
      (gluedCover 𝒰).toGlueData.f j i).val.base) ⟨(x, y), h⟩ = y
    erw [pullbackSymmetry_hom_comp_fst,
      IsLimit.conePointUniqueUpToIso_hom_comp _ _ WalkingCospan.right]
    rfl
#align algebraic_geometry.Scheme.open_cover.from_glued_injective AlgebraicGeometry.Scheme.OpenCover.fromGlued_injective

instance fromGlued_stalk_iso (x : 𝒰.gluedCover.glued.carrier) :
    IsIso (PresheafedSpace.stalkMap 𝒰.fromGlued.val x) := by
  obtain ⟨i, x, rfl⟩ := 𝒰.gluedCover.ι_jointly_surjective x
  have :=
    PresheafedSpace.stalkMap.congr_hom _ _
      (congr_arg LocallyRingedSpace.Hom.val <| 𝒰.ι_fromGlued i) x
  erw [PresheafedSpace.stalkMap.comp] at this
  rw [← IsIso.eq_comp_inv] at this
  rw [this]
  infer_instance
#align algebraic_geometry.Scheme.open_cover.from_glued_stalk_iso AlgebraicGeometry.Scheme.OpenCover.fromGlued_stalk_iso

theorem fromGlued_open_map : IsOpenMap 𝒰.fromGlued.1.base := by
  intro U hU
  rw [isOpen_iff_forall_mem_open]
  intro x hx
  rw [𝒰.gluedCover.isOpen_iff] at hU
  use 𝒰.fromGlued.val.base '' U ∩ Set.range (𝒰.map (𝒰.f x)).1.base
  use Set.inter_subset_left _ _
  constructor
  · rw [← Set.image_preimage_eq_inter_range]
    apply (show IsOpenImmersion (𝒰.map (𝒰.f x)) from inferInstance).base_open.isOpenMap
    convert hU (𝒰.f x) using 1
    rw [← ι_fromGlued]; erw [coe_comp]; rw [Set.preimage_comp]
    congr! 1
    refine' Set.preimage_image_eq _ 𝒰.fromGlued_injective
  · exact ⟨hx, 𝒰.Covers x⟩
#align algebraic_geometry.Scheme.open_cover.from_glued_open_map AlgebraicGeometry.Scheme.OpenCover.fromGlued_open_map

theorem fromGlued_openEmbedding : OpenEmbedding 𝒰.fromGlued.1.base :=
  -- Porting note: the continuity argument used to be `by continuity`
  openEmbedding_of_continuous_injective_open
    (ContinuousMap.continuous_toFun _) 𝒰.fromGlued_injective 𝒰.fromGlued_open_map
#align algebraic_geometry.Scheme.open_cover.from_glued_open_embedding AlgebraicGeometry.Scheme.OpenCover.fromGlued_openEmbedding

instance : Epi 𝒰.fromGlued.val.base := by
  rw [TopCat.epi_iff_surjective]
  intro x
  obtain ⟨y, h⟩ := 𝒰.Covers x
  use (𝒰.gluedCover.ι (𝒰.f x)).1.base y
  rw [← comp_apply]
  rw [← 𝒰.ι_fromGlued (𝒰.f x)] at h
  exact h

instance fromGlued_open_immersion : IsOpenImmersion 𝒰.fromGlued :=
  SheafedSpace.IsOpenImmersion.of_stalk_iso _ 𝒰.fromGlued_openEmbedding
#align algebraic_geometry.Scheme.open_cover.from_glued_open_immersion AlgebraicGeometry.Scheme.OpenCover.fromGlued_open_immersion

instance : IsIso 𝒰.fromGlued :=
  let F := Scheme.forgetToLocallyRingedSpace ⋙ LocallyRingedSpace.forgetToSheafedSpace ⋙
    SheafedSpace.forgetToPresheafedSpace
  have : IsIso (F.map (fromGlued 𝒰)) := by
    change @IsIso (PresheafedSpace _) _ _ _ 𝒰.fromGlued.val
    apply PresheafedSpace.IsOpenImmersion.to_iso
  isIso_of_reflects_iso _ F

/-- Given an open cover of `X`, and a morphism `𝒰.obj x ⟶ Y` for each open subscheme in the cover,
such that these morphisms are compatible in the intersection (pullback), we may glue the morphisms
together into a morphism `X ⟶ Y`.

Note:
If `X` is exactly (defeq to) the gluing of `U i`, then using `Multicoequalizer.desc` suffices.
-/
def glueMorphisms {Y : Scheme} (f : ∀ x, 𝒰.obj x ⟶ Y)
    (hf : ∀ x y, (pullback.fst : pullback (𝒰.map x) (𝒰.map y) ⟶ _) ≫ f x = pullback.snd ≫ f y) :
    X ⟶ Y := by
  refine' inv 𝒰.fromGlued ≫ _
  fapply Multicoequalizer.desc
  exact f
  rintro ⟨i, j⟩
  change pullback.fst ≫ f i = (_ ≫ _) ≫ f j
  erw [pullbackSymmetry_hom_comp_fst]
  exact hf i j
#align algebraic_geometry.Scheme.open_cover.glue_morphisms AlgebraicGeometry.Scheme.OpenCover.glueMorphisms

@[simp, reassoc]
theorem ι_glueMorphisms {Y : Scheme} (f : ∀ x, 𝒰.obj x ⟶ Y)
    (hf : ∀ x y, (pullback.fst : pullback (𝒰.map x) (𝒰.map y) ⟶ _) ≫ f x = pullback.snd ≫ f y)
    (x : 𝒰.J) : 𝒰.map x ≫ 𝒰.glueMorphisms f hf = f x := by
  rw [← ι_fromGlued, Category.assoc]
  erw [IsIso.hom_inv_id_assoc, Multicoequalizer.π_desc]
#align algebraic_geometry.Scheme.open_cover.ι_glue_morphisms AlgebraicGeometry.Scheme.OpenCover.ι_glueMorphisms

theorem hom_ext {Y : Scheme} (f₁ f₂ : X ⟶ Y) (h : ∀ x, 𝒰.map x ≫ f₁ = 𝒰.map x ≫ f₂) : f₁ = f₂ := by
  rw [← cancel_epi 𝒰.fromGlued]
  apply Multicoequalizer.hom_ext
  intro x
  erw [Multicoequalizer.π_desc_assoc]
  erw [Multicoequalizer.π_desc_assoc]
  exact h x
#align algebraic_geometry.Scheme.open_cover.hom_ext AlgebraicGeometry.Scheme.OpenCover.hom_ext

end OpenCover

end Scheme

end AlgebraicGeometry
```
