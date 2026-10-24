# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TransfiniteComposition.Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a431c71f9762c88849569123d172f5fa6231abb0` · SHA-256 `088634b049f7d38220c2a59146f7c121a1ea14a3b8e75763bf37d6a6687eea8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TransfiniteCompositionOfShape.Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.TransfiniteCompositionOfShape.Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"dfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/MorphismProperty/TransfiniteComposition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Limits.Constructions.EventuallyConstant
import Mathlib.CategoryTheory.MorphismProperty.Composition
import Mathlib.CategoryTheory.Limits.Shapes.Preorder.TransfiniteCompositionOfShape
import Mathlib.Order.Shrink
import Mathlib.Order.Interval.Set.SuccOrder
import Mathlib.Logic.UnivLE
/-!
# Classes of morphisms that are stable under transfinite composition

Given a well ordered type `J`, `W : MorphismProperty C` and
a morphism `f : X ⟶ Y`, we define a structure `W.TransfiniteCompositionOfShape J f`
which expresses that `f` is a transfinite composition of shape `J` of morphisms in `W`.
This structures extends `CategoryTheory.TransfiniteCompositionOfShape` which was
defined in the file `CategoryTheory.Limits.Shape.Preorder.TransfiniteCompositionOfShape`.
We use this structure in order to define the class of morphisms
`W.transfiniteCompositionsOfShape J : MorphismProperty C`, and the type class
`W.IsStableUnderTransfiniteCompositionOfShape J`.
In particular, if `J := ℕ`, we define `W.IsStableUnderInfiniteComposition`,

Finally, we introduce the class `W.IsStableUnderTransfiniteComposition`
which says that `W.IsStableUnderTransfiniteCompositionOfShape J`
holds for any well ordered type `J` in a certain universe `w`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TransfiniteCompositionOfShape.Variantdfb015e5587b174cf4f62e664b79f6a6f73dbfca372e42e34e220e7d13b09bc4

universe w w' v v' u u'

namespace CategoryTheory

open Category Limits

variable {C : Type u} [Category.{v} C] {D : Type u'} [Category.{v'} D]

namespace MorphismProperty

variable (W : MorphismProperty C)

section

variable (J : Type w) [LinearOrder J] [SuccOrder J] [OrderBot J] [WellFoundedLT J]
  {J' : Type w'} [LinearOrder J'] [SuccOrder J'] [OrderBot J'] [WellFoundedLT J']

/-- Structure expressing that a morpshism `f : X ⟶ Y` in a category `C`
is a transfinite composition of shape `J` of morphisms in `W : MorphismProperty C`. -/
structure TransfiniteCompositionOfShape {X Y : C} (f : X ⟶ Y) extends
    CategoryTheory.TransfiniteCompositionOfShape J f where
  map_mem (j : J) (hj : ¬IsMax j) : W (F.map (homOfLE (Order.le_succ j)))

namespace TransfiniteCompositionOfShape

section

variable {W J} {X Y : C} {f : X ⟶ Y} (h : W.TransfiniteCompositionOfShape J f)

/-- If `f` and `f'` are two isomorphic morphisms and `f` is a transfinite composition
of morphisms in `W : MorphismProperty C`, then so is `f'`. -/
@[simps toTransfiniteCompositionOfShape]
def ofArrowIso {X' Y' : C}
    {f' : X' ⟶ Y'} (e : Arrow.mk f ≅ Arrow.mk f') :
    W.TransfiniteCompositionOfShape J f' where
  __ := h.toTransfiniteCompositionOfShape.ofArrowIso e
  map_mem := h.map_mem

/-- If `W ≤ W'`, then transfinite compositions of shape `J` of morphisms in `W`
are also transfinite composition of shape `J` of morphisms in `W'`. -/
@[simps toTransfiniteCompositionOfShape]
def ofLE {W' : MorphismProperty C} (hW : W ≤ W') :
    W'.TransfiniteCompositionOfShape J f where
  __ := h.toTransfiniteCompositionOfShape
  map_mem j hj := hW _ (h.map_mem j hj)

/-- If `f` is a transfinite composition of shape `J` of morphisms in `W`,
then it is also a transfinite composition of shape `J'` of morphisms in `W` if `J' ≃o J`. -/
def ofOrderIso {J' : Type w'} [LinearOrder J'] [OrderBot J']
    [SuccOrder J'] [WellFoundedLT J'] (e : J' ≃o J) :
    W.TransfiniteCompositionOfShape J' f where
  __ := h.toTransfiniteCompositionOfShape.ofOrderIso e
  map_mem j hj := by
    have := h.map_mem (e j) (by simpa only [e.isMax_apply])
    rw [← W.arrow_mk_mem_toSet_iff] at this ⊢
    have eq : Arrow.mk (homOfLE (e.monotone (Order.le_succ j))) =
      Arrow.mk (homOfLE (Order.le_succ (e j))) :=
        Arrow.ext rfl (e.map_succ j) rfl
    replace eq := congr_arg h.F.mapArrow.obj eq
    convert this using 1

/-- If `f` is a transfinite composition of shape `J` of morphisms
in `W.inverseImage F`, then `F` is a transfinite composition of shape `J`
of morphisms in `W` provided `F` preserves suitable colimits. -/
@[simps toTransfiniteCompositionOfShape]
noncomputable def map {W : MorphismProperty D} {F : C ⥤ D}
    [PreservesWellOrderContinuousOfShape J F]
    [PreservesColimitsOfShape J F]
    (h : (W.inverseImage F).TransfiniteCompositionOfShape J f) :
    W.TransfiniteCompositionOfShape J (F.map f) where
  __ := h.toTransfiniteCompositionOfShape.map F
  map_mem j hj := h.map_mem j hj

/-- A transfinite composition of shape `J` of morphisms in `W` induces a transfinite
composition of shape `Set.Iic j` (for any `j : J`). -/
noncomputable def iic (j : J) :
    W.TransfiniteCompositionOfShape (Set.Iic j) (h.F.map (homOfLE bot_le : ⊥ ⟶ j)) where
  __ := h.toTransfiniteCompositionOfShape.iic j
  map_mem i hi := by
    have := h.map_mem i.1 (by
      rw [not_isMax_iff] at hi ⊢
      obtain ⟨i', hi'⟩ := hi
      exact ⟨j, lt_of_lt_of_le hi' i'.2⟩)
    rw [← W.arrow_mk_mem_toSet_iff] at this ⊢
    have eq : Arrow.mk ((Subtype.mono_coe _).functor.map (homOfLE (Order.le_succ i))) =
      Arrow.mk (homOfLE (Order.le_succ i.1)) :=
        Arrow.ext rfl (Set.Iic.coe_succ_of_not_isMax hi) rfl
    replace eq := congr_arg h.F.mapArrow.obj eq
    convert this using 1

/-- A transfinite composition of shape `J` of morphisms in `W` induces a transfinite
composition of shape `Set.Ici j` (for any `j : J`). -/
noncomputable def ici (j : J) :
    W.TransfiniteCompositionOfShape (Set.Ici j) (h.incl.app j) where
  __ := h.toTransfiniteCompositionOfShape.ici j
  map_mem i hi := by
    have := h.map_mem i.1 (Set.not_isMax_coe _ hi)
    rw [← W.arrow_mk_mem_toSet_iff] at this ⊢
    have eq : Arrow.mk ((Subtype.mono_coe _).functor.map (homOfLE (Order.le_succ i))) =
      Arrow.mk (homOfLE (Order.le_succ i.1)) :=
        Arrow.ext rfl (coe_succ_of_mem (i.2.trans (Order.le_succ _))) rfl
    replace eq := congr_arg h.F.mapArrow.obj eq
    convert this using 1

end

/-- If `F : ComposableArrows C n` and all maps `F.obj i.castSucc ⟶ F.obj i.succ`
are in `W`, then `F.hom : F.left ⟶ F.right` is a transfinite composition of
shape `Fin (n + 1)` of morphisms in `W`. -/
@[simps!]
def ofComposableArrows {n : ℕ} (F : ComposableArrows C n)
    (hF : ∀ (i : Fin n), W (F.map (homOfLE i.castSucc_le_succ))) :
    W.TransfiniteCompositionOfShape (Fin (n + 1)) F.hom where
  toTransfiniteCompositionOfShape := .ofComposableArrows F
  map_mem j hj := by
    obtain ⟨j, rfl⟩ | rfl := j.eq_castSucc_or_eq_last
    · replace hF := hF j
      rw [← W.arrow_mk_mem_toSet_iff] at hF ⊢
      have eq : Arrow.mk (homOfLE (Order.le_succ j.castSucc)) =
        Arrow.mk (homOfLE j.castSucc_le_succ) :=
          Arrow.ext rfl j.orderSucc_castSucc rfl
      replace eq := congr_arg F.mapArrow.obj eq
      convert hF using 1
    · rw [isMax_iff_eq_top] at hj
      exact (hj rfl).elim

/-- The identity of any object is a transfinite composition of shape `Fin 1`. -/
def id (X : C) : W.TransfiniteCompositionOfShape (Fin 1) (𝟙 X) :=
  ofComposableArrows W (.mk₀ X) (by simp)

variable {W}

/-- If `f : X ⟶ Y` satisfies `W f`, then `f` is a transfinite composition of shape `Fin 2`
of morphisms in `W`. -/
def ofMem {X Y : C} (f : X ⟶ Y) (hf : W f) :
    W.TransfiniteCompositionOfShape (Fin 2) f :=
  ofComposableArrows W (.mk₁ f) (fun i ↦ by fin_cases i; assumption)

/-- If `f : X ⟶ Y` and `g : Y ⟶ Z` satisfy `W f` and `W g`, then `f ≫ g` is a
transfinite composition of shape `Fin 3` of morphisms in `W`. -/
def ofComp {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) (hf : W f) (hg : W g) :
    W.TransfiniteCompositionOfShape (Fin 3) (f ≫ g) :=
  ofComposableArrows W (.mk₂ f g) (fun i ↦ by fin_cases i <;> assumption)

variable {J}

section isomorphisms

variable {X Y : C} {f : X ⟶ Y} (h : (isomorphisms C).TransfiniteCompositionOfShape J f)

instance {j : J} (g : ⊥ ⟶ j) : IsIso (h.F.map g) := by
  obtain rfl : g = homOfLE bot_le := rfl
  induction j using SuccOrder.limitRecOn with
  | isMin j hj =>
    obtain rfl := hj.eq_bot
    dsimp
    infer_instance
  | succ j hj hj' =>
    have : IsIso _ := h.map_mem j hj
    rw [← homOfLE_comp bot_le (Order.le_succ j), h.F.map_comp]
    infer_instance
  | isSuccLimit j hj hj' =>
    letI : OrderBot (Set.Iio j) :=
      { bot := ⟨⊥, Order.IsSuccLimit.bot_lt hj⟩
        bot_le j := bot_le }
    simpa using Functor.IsEventuallyConstantFrom.isIso_ι_of_isColimit
      (i₀ := ⊥) (fun i _ ↦ hj' i.1 i.2) (h.F.isColimitOfIsWellOrderContinuous j hj)

instance {j j' : J} (f : j ⟶ j') : IsIso (h.F.map f) :=
  IsIso.of_isIso_fac_left (h.F.map_comp (homOfLE bot_le) f).symm

instance (j : J) : IsIso (h.incl.app j) :=
  Functor.IsEventuallyConstantFrom.isIso_ι_of_isColimit'
    (fun _ _  ↦ inferInstance) h.isColimit j (homOfLE bot_le)

include h in
/-- A transfinite composition of isomorphisms is an isomorphism. -/
lemma isIso : IsIso f := by
  rw [← h.fac]
  infer_instance

end isomorphisms

end TransfiniteCompositionOfShape

/-- Given `W : MorphismProperty C` and a well-ordered type `J`, this is
the class of morphisms that are transfinite composition of shape `J`
of morphisms in `W`. -/
def transfiniteCompositionsOfShape : MorphismProperty C :=
  fun _ _ f ↦ Nonempty (W.TransfiniteCompositionOfShape J f)

lemma transfiniteCompositionsOfShape_monotone :
    Monotone (transfiniteCompositionsOfShape (C := C) (J := J)) := by
  rintro _ _ h _ _ _ ⟨t⟩
  exact ⟨t.ofLE h⟩

variable {J} in
lemma transfiniteCompositionsOfShape_eq_of_orderIso (e : J ≃o J') :
    W.transfiniteCompositionsOfShape J =
      W.transfiniteCompositionsOfShape J' := by
  ext _ _ f
  exact ⟨fun ⟨h⟩ ↦ ⟨h.ofOrderIso e.symm⟩, fun ⟨h⟩ ↦ ⟨h.ofOrderIso e⟩⟩

instance : RespectsIso (W.transfiniteCompositionsOfShape J) :=
  RespectsIso.of_respects_arrow_iso _ (fun _ _ e ⟨h⟩ ↦ ⟨h.ofArrowIso e⟩)

variable {W J} in
lemma TransfiniteCompositionOfShape.mem {X Y : C} (f : X ⟶ Y)
    (h : W.TransfiniteCompositionOfShape J f) :
    W.transfiniteCompositionsOfShape J f := ⟨h⟩

lemma transfiniteCompositionsOfShape_map_of_preserves (G : C ⥤ D)
    [PreservesWellOrderContinuousOfShape J G]
    {X Y : C} (f : X ⟶ Y) {P : MorphismProperty D}
    [PreservesColimitsOfShape J G]
    (h : (P.inverseImage G).transfiniteCompositionsOfShape J f) :
    P.transfiniteCompositionsOfShape J (G.map f) :=
  h.some.map.mem

/-- A class of morphisms `W : MorphismProperty C` is stable under transfinite compositions
of shape `J` if for any well-order-continuous functor `F : J ⥤ C` such that
`F.obj j ⟶ F.obj (Order.succ j)` is in `W`, then `F.obj ⊥ ⟶ c.pt` is in `W`
for any colimit cocone `c : Cocone F`. -/
@[mk_iff]
class IsStableUnderTransfiniteCompositionOfShape : Prop where
  le : W.transfiniteCompositionsOfShape J ≤ W

lemma transfiniteCompositionsOfShape_le
    [W.IsStableUnderTransfiniteCompositionOfShape J] :
    W.transfiniteCompositionsOfShape J ≤ W :=
  IsStableUnderTransfiniteCompositionOfShape.le

variable {J} in
lemma isStableUnderTransfiniteCompositionOfShape_iff_of_orderIso (e : J ≃o J') :
    W.IsStableUnderTransfiniteCompositionOfShape J ↔
      W.IsStableUnderTransfiniteCompositionOfShape J' := by
  simp only [isStableUnderTransfiniteCompositionOfShape_iff,
    W.transfiniteCompositionsOfShape_eq_of_orderIso e]

end

/-- A class of morphisms `W : MorphismProperty C` is stable under infinite composition
if for any functor `F : ℕ ⥤ C` such that `F.obj n ⟶ F.obj (n + 1)` is in `W` for any `n : ℕ`,
the map `F.obj 0 ⟶ c.pt` is in `W` for any colimit cocone `c : Cocone F`. -/
abbrev IsStableUnderInfiniteComposition : Prop :=
  W.IsStableUnderTransfiniteCompositionOfShape ℕ

/-- A class of morphisms `W : MorphismProperty C` is stable under transfinite composition
if it is multiplicative and stable under transfinite composition of any shape
(in a certain universe). -/
class IsStableUnderTransfiniteComposition : Prop where
  isStableUnderTransfiniteCompositionOfShape
    (J : Type w) [LinearOrder J] [SuccOrder J] [OrderBot J] [WellFoundedLT J] :
    W.IsStableUnderTransfiniteCompositionOfShape J

namespace IsStableUnderTransfiniteComposition

attribute [instance] isStableUnderTransfiniteCompositionOfShape

instance : (isomorphisms C).IsStableUnderTransfiniteComposition where
  isStableUnderTransfiniteCompositionOfShape J _ _ _ _ := ⟨by
    rintro _ _ f ⟨hf⟩
    exact hf.isIso⟩

variable [IsStableUnderTransfiniteComposition.{w'} W]

lemma shrink [UnivLE.{w, w'}] :
    IsStableUnderTransfiniteComposition.{w} W where
  isStableUnderTransfiniteCompositionOfShape J _ _ _ _ := by
    rw [isStableUnderTransfiniteCompositionOfShape_iff_of_orderIso W
      (orderIsoShrink.{w'} J)]
    infer_instance

lemma shrink₀ : IsStableUnderTransfiniteComposition.{0} W := shrink.{0, w'} W

attribute [local instance] shrink₀

instance : W.IsMultiplicative where
  id_mem X :=
    transfiniteCompositionsOfShape_le _ _ _
      (TransfiniteCompositionOfShape.id W X).mem
  comp_mem f g hf hg :=
    transfiniteCompositionsOfShape_le _ _ _
      (TransfiniteCompositionOfShape.ofComp f g hf hg).mem

end IsStableUnderTransfiniteComposition

/-- The class of transfinite compositions (for arbitrary well-ordered types `J : Type w`)
of a class of morphisms `W`. -/
@[pp_with_univ]
def transfiniteCompositions : MorphismProperty C :=
  ⨆ (J : Type w) (_ : LinearOrder J) (_ : SuccOrder J) (_ : OrderBot J)
    (_ : WellFoundedLT J), W.transfiniteCompositionsOfShape J

lemma transfiniteCompositions_iff {X Y : C} (f : X ⟶ Y) :
    transfiniteCompositions.{w} W f ↔
      ∃ (J : Type w) (_ : LinearOrder J) (_ : SuccOrder J) (_ : OrderBot J)
        (_ : WellFoundedLT J), W.transfiniteCompositionsOfShape J f := by
  simp only [transfiniteCompositions, iSup_iff]

lemma transfiniteCompositionsOfShape_le_transfiniteCompositions
    (J : Type w) [LinearOrder J] [SuccOrder J] [OrderBot J] [WellFoundedLT J] :
    W.transfiniteCompositionsOfShape J ≤ transfiniteCompositions.{w} W := by
  intro A B f hf
  rw [transfiniteCompositions_iff]
  exact ⟨_, _, _, _, _, hf⟩

lemma transfiniteCompositions_monotone :
    Monotone (transfiniteCompositions.{w} (C := C)) := by
  intro W₁ W₂ h X Y f hf
  rw [transfiniteCompositions_iff] at hf
  obtain ⟨J, _, _, _, _, hf⟩ := hf
  exact transfiniteCompositionsOfShape_le_transfiniteCompositions _ _ _
    (transfiniteCompositionsOfShape_monotone J h _ hf)

lemma le_transfiniteCompositions :
    W ≤ transfiniteCompositions.{w} W :=
  le_trans (fun _ _ _ hf ↦
    (MorphismProperty.TransfiniteCompositionOfShape.ofOrderIso (.ofMem _ hf)
      (orderIsoShrink.{w} (Fin 2)).symm).mem)
    (transfiniteCompositionsOfShape_le_transfiniteCompositions _ _)

lemma transfiniteCompositions_le [IsStableUnderTransfiniteComposition.{w} W] :
    transfiniteCompositions.{w} W ≤ W := by
  intro _ _ f hf
  rw [transfiniteCompositions_iff] at hf
  obtain ⟨J, _, _, _, _, hf⟩ := hf
  exact W.transfiniteCompositionsOfShape_le J _ hf

@[simp]
lemma transfiniteCompositions_le_iff {P Q : MorphismProperty C}
    [IsStableUnderTransfiniteComposition.{w} Q] :
    transfiniteCompositions.{w} P ≤ Q ↔ P ≤ Q := by
  constructor
  · exact (le_transfiniteCompositions P).trans
  · intro h
    exact (transfiniteCompositions_monotone.{w} h).trans Q.transfiniteCompositions_le

end MorphismProperty

end CategoryTheory
```
