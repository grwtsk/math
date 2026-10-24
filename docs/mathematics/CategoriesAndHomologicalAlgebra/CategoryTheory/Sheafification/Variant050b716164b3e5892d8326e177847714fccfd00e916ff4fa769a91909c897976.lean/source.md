# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sheafification.Variant050b716164b3e5892d8326e177847714fccfd00e916ff4fa769a91909c897976

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3017eb4fac1af4639f0d398c52180af479c60f59` · SHA-256 `050b716164b3e5892d8326e177847714fccfd00e916ff4fa769a91909c897976`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/
import Mathlib.CategoryTheory.Adjunction.FullyFaithful
import Mathlib.CategoryTheory.Sites.Plus
import Mathlib.CategoryTheory.Limits.ConcreteCategory
import Mathlib.CategoryTheory.ConcreteCategory.Elementwise

#align_import category_theory.sites.sheafification from "leanprover-community/mathlib"@"70fd9563a21e7b963887c9360bd29b2393e6225a"

/-!

# Sheafification

We construct the sheafification of a presheaf over a site `C` with values in `D` whenever
`D` is a concrete category for which the forgetful functor preserves the appropriate (co)limits
and reflects isomorphisms.

We generally follow the approach of https://stacks.math.columbia.edu/tag/00W1

-/


namespace CategoryTheory

open CategoryTheory.Limits Opposite

universe w v u

variable {C : Type u} [Category.{v} C] {J : GrothendieckTopology C}

variable {D : Type w} [Category.{max v u} D]

section

variable [ConcreteCategory.{max v u} D]

attribute [local instance] ConcreteCategory.hasCoeToSort ConcreteCategory.funLike

-- porting note: removed @[nolint has_nonempty_instance]
/-- A concrete version of the multiequalizer, to be used below. -/
def Meq {X : C} (P : Cᵒᵖ ⥤ D) (S : J.Cover X) :=
  { x : ∀ I : S.Arrow, P.obj (op I.Y) //
    ∀ I : S.Relation, P.map I.g₁.op (x I.fst) = P.map I.g₂.op (x I.snd) }
#align category_theory.meq CategoryTheory.Meq

end

namespace Meq

variable [ConcreteCategory.{max v u} D]

attribute [local instance] ConcreteCategory.hasCoeToSort ConcreteCategory.funLike

instance {X} (P : Cᵒᵖ ⥤ D) (S : J.Cover X) :
    CoeFun (Meq P S) fun _ => ∀ I : S.Arrow, P.obj (op I.Y) :=
  ⟨fun x => x.1⟩

@[ext]
theorem ext {X} {P : Cᵒᵖ ⥤ D} {S : J.Cover X} (x y : Meq P S) (h : ∀ I : S.Arrow, x I = y I) :
    x = y :=
  Subtype.ext <| funext <| h
#align category_theory.meq.ext CategoryTheory.Meq.ext

theorem condition {X} {P : Cᵒᵖ ⥤ D} {S : J.Cover X} (x : Meq P S) (I : S.Relation) :
    P.map I.g₁.op (x ((S.index P).fstTo I)) = P.map I.g₂.op (x ((S.index P).sndTo I)) :=
  x.2 _
#align category_theory.meq.condition CategoryTheory.Meq.condition

/-- Refine a term of `Meq P T` with respect to a refinement `S ⟶ T` of covers. -/
def refine {X : C} {P : Cᵒᵖ ⥤ D} {S T : J.Cover X} (x : Meq P T) (e : S ⟶ T) : Meq P S :=
  ⟨fun I => x ⟨I.Y, I.f, (leOfHom e) _ I.hf⟩, fun I =>
    x.condition
      ⟨I.Y₁, I.Y₂, I.Z, I.g₁, I.g₂, I.f₁, I.f₂, (leOfHom e) _ I.h₁, (leOfHom e) _ I.h₂, I.w⟩⟩
#align category_theory.meq.refine CategoryTheory.Meq.refine

@[simp]
theorem refine_apply {X : C} {P : Cᵒᵖ ⥤ D} {S T : J.Cover X} (x : Meq P T) (e : S ⟶ T)
    (I : S.Arrow) : x.refine e I = x ⟨I.Y, I.f, (leOfHom e) _ I.hf⟩ :=
  rfl
#align category_theory.meq.refine_apply CategoryTheory.Meq.refine_apply

/-- Pull back a term of `Meq P S` with respect to a morphism `f : Y ⟶ X` in `C`. -/
def pullback {Y X : C} {P : Cᵒᵖ ⥤ D} {S : J.Cover X} (x : Meq P S) (f : Y ⟶ X) :
    Meq P ((J.pullback f).obj S) :=
  ⟨fun I => x ⟨_, I.f ≫ f, I.hf⟩, fun I =>
    x.condition
      ⟨I.Y₁, I.Y₂, I.Z, I.g₁, I.g₂, I.f₁ ≫ f, I.f₂ ≫ f, I.h₁, I.h₂, by simp [I.w_assoc]⟩⟩
#align category_theory.meq.pullback CategoryTheory.Meq.pullback

@[simp]
theorem pullback_apply {Y X : C} {P : Cᵒᵖ ⥤ D} {S : J.Cover X} (x : Meq P S) (f : Y ⟶ X)
    (I : ((J.pullback f).obj S).Arrow) : x.pullback f I = x ⟨_, I.f ≫ f, I.hf⟩ :=
  rfl
#align category_theory.meq.pullback_apply CategoryTheory.Meq.pullback_apply

@[simp]
theorem pullback_refine {Y X : C} {P : Cᵒᵖ ⥤ D} {S T : J.Cover X} (h : S ⟶ T) (f : Y ⟶ X)
    (x : Meq P T) : (x.pullback f).refine ((J.pullback f).map h) = (refine x h).pullback _ :=
  rfl
#align category_theory.meq.pullback_refine CategoryTheory.Meq.pullback_refine

/-- Make a term of `Meq P S`. -/
def mk {X : C} {P : Cᵒᵖ ⥤ D} (S : J.Cover X) (x : P.obj (op X)) : Meq P S :=
  ⟨fun I => P.map I.f.op x, fun I => by
    dsimp
    simp only [← comp_apply, ← P.map_comp, ← op_comp, I.w]⟩
#align category_theory.meq.mk CategoryTheory.Meq.mk

theorem mk_apply {X : C} {P : Cᵒᵖ ⥤ D} (S : J.Cover X) (x : P.obj (op X)) (I : S.Arrow) :
    mk S x I = P.map I.f.op x :=
  rfl
#align category_theory.meq.mk_apply CategoryTheory.Meq.mk_apply

variable [PreservesLimits (forget D)]

/-- The equivalence between the type associated to `multiequalizer (S.index P)` and `Meq P S`. -/
noncomputable def equiv {X : C} (P : Cᵒᵖ ⥤ D) (S : J.Cover X) [HasMultiequalizer (S.index P)] :
    (multiequalizer (S.index P) : D) ≃ Meq P S :=
  Limits.Concrete.multiequalizerEquiv _
#align category_theory.meq.equiv CategoryTheory.Meq.equiv

@[simp]
theorem equiv_apply {X : C} {P : Cᵒᵖ ⥤ D} {S : J.Cover X} [HasMultiequalizer (S.index P)]
    (x : (multiequalizer (S.index P) : D)) (I : S.Arrow) :
    equiv P S x I = Multiequalizer.ι (S.index P) I x :=
  rfl
#align category_theory.meq.equiv_apply CategoryTheory.Meq.equiv_apply

@[simp]
theorem equiv_symm_eq_apply {X : C} {P : Cᵒᵖ ⥤ D} {S : J.Cover X} [HasMultiequalizer (S.index P)]
    (x : Meq P S) (I : S.Arrow) :
    Multiequalizer.ι (S.index P) I ((Meq.equiv P S).symm x) = x I := by
  rw [← equiv_apply]
  simp
#align category_theory.meq.equiv_symm_eq_apply CategoryTheory.Meq.equiv_symm_eq_apply

end Meq

namespace GrothendieckTopology

namespace Plus

variable [ConcreteCategory.{max v u} D]

attribute [local instance] ConcreteCategory.hasCoeToSort ConcreteCategory.funLike

variable [PreservesLimits (forget D)]

variable [∀ X : C, HasColimitsOfShape (J.Cover X)ᵒᵖ D]

variable [∀ (P : Cᵒᵖ ⥤ D) (X : C) (S : J.Cover X), HasMultiequalizer (S.index P)]

noncomputable section

/-- Make a term of `(J.plusObj P).obj (op X)` from `x : Meq P S`. -/
def mk {X : C} {P : Cᵒᵖ ⥤ D} {S : J.Cover X} (x : Meq P S) : (J.plusObj P).obj (op X) :=
  colimit.ι (J.diagram P X) (op S) ((Meq.equiv P S).symm x)
#align category_theory.grothendieck_topology.plus.mk CategoryTheory.GrothendieckTopology.Plus.mk

theorem res_mk_eq_mk_pullback {Y X : C} {P : Cᵒᵖ ⥤ D} {S : J.Cover X} (x : Meq P S) (f : Y ⟶ X) :
    (J.plusObj P).map f.op (mk x) = mk (x.pullback f) := by
  dsimp [mk, plusObj]
  rw [← comp_apply (x := (Meq.equiv P S).symm x), ι_colimMap_assoc, colimit.ι_pre,
    comp_apply (x := (Meq.equiv P S).symm x)]
  apply congr_arg
  apply (Meq.equiv P _).injective
  erw [Equiv.apply_symm_apply]
  ext i
  simp only [Functor.op_obj, unop_op, pullback_obj, diagram_obj, Functor.comp_obj,
    diagramPullback_app, Meq.equiv_apply, Meq.pullback_apply]
  erw [← comp_apply, Multiequalizer.lift_ι, Meq.equiv_symm_eq_apply]
  cases i; rfl
#align category_theory.grothendieck_topology.plus.res_mk_eq_mk_pullback CategoryTheory.GrothendieckTopology.Plus.res_mk_eq_mk_pullback

theorem toPlus_mk {X : C} {P : Cᵒᵖ ⥤ D} (S : J.Cover X) (x : P.obj (op X)) :
    (J.toPlus P).app _ x = mk (Meq.mk S x) := by
  dsimp [mk, toPlus]
  let e : S ⟶ ⊤ := homOfLE (OrderTop.le_top _)
  rw [← colimit.w _ e.op]
  delta Cover.toMultiequalizer
  erw [comp_apply, comp_apply]
  apply congr_arg
  dsimp [diagram]
  apply Concrete.multiequalizer_ext
  intro i
  simp only [← comp_apply, Category.assoc, Multiequalizer.lift_ι, Category.comp_id,
    Meq.equiv_symm_eq_apply]
  rfl
#align category_theory.grothendieck_topology.plus.to_plus_mk CategoryTheory.GrothendieckTopology.Plus.toPlus_mk

theorem toPlus_apply {X : C} {P : Cᵒᵖ ⥤ D} (S : J.Cover X) (x : Meq P S) (I : S.Arrow) :
    (J.toPlus P).app _ (x I) = (J.plusObj P).map I.f.op (mk x) := by
  dsimp only [toPlus, plusObj]
  delta Cover.toMultiequalizer
  dsimp [mk]
  erw [←comp_apply]
  rw [ι_colimMap_assoc, colimit.ι_pre, comp_apply, comp_apply]
  dsimp only [Functor.op]
  let e : (J.pullback I.f).obj (unop (op S)) ⟶ ⊤ := homOfLE (OrderTop.le_top _)
  rw [← colimit.w _ e.op]
  erw [comp_apply]
  apply congr_arg
  apply Concrete.multiequalizer_ext
  intro i
  dsimp [diagram]
  rw [←comp_apply, ←comp_apply, ←comp_apply, Multiequalizer.lift_ι, Multiequalizer.lift_ι,
    Multiequalizer.lift_ι]
  erw [Meq.equiv_symm_eq_apply]
  let RR : S.Relation :=
    ⟨_, _, _, i.f, 𝟙 _, I.f, i.f ≫ I.f, I.hf, Sieve.downward_closed _ I.hf _, by simp⟩
  erw [x.condition RR]
  simp only [unop_op, pullback_obj, op_id, Functor.map_id, id_apply]
  rfl
#align category_theory.grothendieck_topology.plus.to_plus_apply CategoryTheory.GrothendieckTopology.Plus.toPlus_apply

theorem toPlus_eq_mk {X : C} {P : Cᵒᵖ ⥤ D} (x : P.obj (op X)) :
    (J.toPlus P).app _ x = mk (Meq.mk ⊤ x) := by
  dsimp [mk, toPlus]
  delta Cover.toMultiequalizer
  simp only [comp_apply]
  apply congr_arg
  apply (Meq.equiv P ⊤).injective
  ext i
  rw [Meq.equiv_apply, Equiv.apply_symm_apply, ←comp_apply, Multiequalizer.lift_ι]
  rfl
#align category_theory.grothendieck_topology.plus.to_plus_eq_mk CategoryTheory.GrothendieckTopology.Plus.toPlus_eq_mk

variable [∀ X : C, PreservesColimitsOfShape (J.Cover X)ᵒᵖ (forget D)]

theorem exists_rep {X : C} {P : Cᵒᵖ ⥤ D} (x : (J.plusObj P).obj (op X)) :
    ∃ (S : J.Cover X) (y : Meq P S), x = mk y := by
  obtain ⟨S, y, h⟩ := Concrete.colimit_exists_rep (J.diagram P X) x
  use S.unop, Meq.equiv _ _ y
  rw [← h]
  dsimp [mk]
  simp
#align category_theory.grothendieck_topology.plus.exists_rep CategoryTheory.GrothendieckTopology.Plus.exists_rep

theorem eq_mk_iff_exists {X : C} {P : Cᵒᵖ ⥤ D} {S T : J.Cover X} (x : Meq P S) (y : Meq P T) :
    mk x = mk y ↔ ∃ (W : J.Cover X) (h1 : W ⟶ S) (h2 : W ⟶ T), x.refine h1 = y.refine h2 := by
  constructor
  · intro h
    obtain ⟨W, h1, h2, hh⟩ := Concrete.colimit_exists_of_rep_eq _ _ _ h
    use W.unop, h1.unop, h2.unop
    ext I
    apply_fun Multiequalizer.ι (W.unop.index P) I at hh
    convert hh
    all_goals
      dsimp [diagram]
      erw [← comp_apply, Multiequalizer.lift_ι, Meq.equiv_symm_eq_apply]
      cases I; rfl
  · rintro ⟨S, h1, h2, e⟩
    apply Concrete.colimit_rep_eq_of_exists
    use op S, h1.op, h2.op
    apply Concrete.multiequalizer_ext
    intro i
    apply_fun fun ee => ee i at e
    convert e
    all_goals
      dsimp [diagram]
      rw [← comp_apply, Multiequalizer.lift_ι]
      erw [Meq.equiv_symm_eq_apply]
      cases i; rfl
#align category_theory.grothendieck_topology.plus.eq_mk_iff_exists CategoryTheory.GrothendieckTopology.Plus.eq_mk_iff_exists

/-- `P⁺` is always separated. -/
theorem sep {X : C} (P : Cᵒᵖ ⥤ D) (S : J.Cover X) (x y : (J.plusObj P).obj (op X))
    (h : ∀ I : S.Arrow, (J.plusObj P).map I.f.op x = (J.plusObj P).map I.f.op y) : x = y := by
  -- First, we choose representatives for x and y.
  obtain ⟨Sx, x, rfl⟩ := exists_rep x
  obtain ⟨Sy, y, rfl⟩ := exists_rep y
  simp only [res_mk_eq_mk_pullback] at h
  -- Next, using our assumption,
  -- choose covers over which the pullbacks of these representatives become equal.
  choose W h1 h2 hh using fun I : S.Arrow => (eq_mk_iff_exists _ _).mp (h I)
  -- To prove equality, it suffices to prove that there exists a cover over which
  -- the representatives become equal.
  rw [eq_mk_iff_exists]
  -- Construct the cover over which the representatives become equal by combining the various
  -- covers chosen above.
  let B : J.Cover X := S.bind W
  use B
  -- Prove that this cover refines the two covers over which our representatives are defined
  -- and use these proofs.
  let ex : B ⟶ Sx :=
    homOfLE
      (by
        rintro Y f ⟨Z, e1, e2, he2, he1, hee⟩
        rw [← hee]
        apply leOfHom (h1 ⟨_, _, he2⟩)
        exact he1)
  let ey : B ⟶ Sy :=
    homOfLE
      (by
        rintro Y f ⟨Z, e1, e2, he2, he1, hee⟩
        rw [← hee]
        apply leOfHom (h2 ⟨_, _, he2⟩)
        exact he1)
  use ex, ey
  -- Now prove that indeed the representatives become equal over `B`.
  -- This will follow by using the fact that our representatives become
  -- equal over the chosen covers.
  ext1 I
  let IS : S.Arrow := I.fromMiddle
  specialize hh IS
  let IW : (W IS).Arrow := I.toMiddle
  apply_fun fun e => e IW at hh
  convert hh using 1
  · let Rx : Sx.Relation :=
      ⟨I.Y, I.Y, I.Y, 𝟙 _, 𝟙 _, I.f, I.toMiddleHom ≫ I.fromMiddleHom, leOfHom ex _ I.hf,
        by simpa only [I.middle_spec] using leOfHom ex _ I.hf, by simp [I.middle_spec]⟩
    simpa [id_apply] using x.condition Rx
  · let Ry : Sy.Relation :=
      ⟨I.Y, I.Y, I.Y, 𝟙 _, 𝟙 _, I.f, I.toMiddleHom ≫ I.fromMiddleHom, leOfHom ey _ I.hf,
        by simpa only [I.middle_spec] using leOfHom ey _ I.hf, by simp [I.middle_spec]⟩
    simpa [id_apply] using y.condition Ry
#align category_theory.grothendieck_topology.plus.sep CategoryTheory.GrothendieckTopology.Plus.sep

theorem inj_of_sep (P : Cᵒᵖ ⥤ D)
    (hsep :
      ∀ (X : C) (S : J.Cover X) (x y : P.obj (op X)),
        (∀ I : S.Arrow, P.map I.f.op x = P.map I.f.op y) → x = y)
    (X : C) : Function.Injective ((J.toPlus P).app (op X)) := by
  intro x y h
  simp only [toPlus_eq_mk] at h
  rw [eq_mk_iff_exists] at h
  obtain ⟨W, h1, h2, hh⟩ := h
  apply hsep X W
  intro I
  apply_fun fun e => e I at hh
  exact hh
#align category_theory.grothendieck_topology.plus.inj_of_sep CategoryTheory.GrothendieckTopology.Plus.inj_of_sep

/-- An auxiliary definition to be used in the proof of `exists_of_sep` below.
  Given a compatible family of local sections for `P⁺`, and representatives of said sections,
  construct a compatible family of local sections of `P` over the combination of the covers
  associated to the representatives.
  The separatedness condition is used to prove compatibility among these local sections of `P`. -/
def meqOfSep (P : Cᵒᵖ ⥤ D)
    (hsep :
      ∀ (X : C) (S : J.Cover X) (x y : P.obj (op X)),
        (∀ I : S.Arrow, P.map I.f.op x = P.map I.f.op y) → x = y)
    (X : C) (S : J.Cover X) (s : Meq (J.plusObj P) S) (T : ∀ I : S.Arrow, J.Cover I.Y)
    (t : ∀ I : S.Arrow, Meq P (T I)) (ht : ∀ I : S.Arrow, s I = mk (t I)) : Meq P (S.bind T) where
  val I := t I.fromMiddle I.toMiddle
  property := by
    intro II
    apply inj_of_sep P hsep
    rw [← comp_apply, ← comp_apply, (J.toPlus P).naturality, (J.toPlus P).naturality, comp_apply,
      comp_apply]
    erw [toPlus_apply (T II.fst.fromMiddle) (t II.fst.fromMiddle) II.fst.toMiddle,
      toPlus_apply (T II.snd.fromMiddle) (t II.snd.fromMiddle) II.snd.toMiddle, ← ht, ← ht, ←
      comp_apply, ← comp_apply, ← (J.plusObj P).map_comp, ← (J.plusObj P).map_comp]
    rw [← op_comp, ← op_comp]
    let IR : S.Relation :=
      ⟨_, _, _, II.g₁ ≫ II.fst.toMiddleHom, II.g₂ ≫ II.snd.toMiddleHom, II.fst.fromMiddleHom,
        II.snd.fromMiddleHom, II.fst.from_middle_condition, II.snd.from_middle_condition, by
          simpa only [Category.assoc, II.fst.middle_spec, II.snd.middle_spec] using II.w⟩
    exact s.condition IR
#align category_theory.grothendieck_topology.plus.meq_of_sep CategoryTheory.GrothendieckTopology.Plus.meqOfSep

theorem exists_of_sep (P : Cᵒᵖ ⥤ D)
    (hsep :
      ∀ (X : C) (S : J.Cover X) (x y : P.obj (op X)),
        (∀ I : S.Arrow, P.map I.f.op x = P.map I.f.op y) → x = y)
    (X : C) (S : J.Cover X) (s : Meq (J.plusObj P) S) :
    ∃ t : (J.plusObj P).obj (op X), Meq.mk S t = s := by
  have inj : ∀ X : C, Function.Injective ((J.toPlus P).app (op X)) := inj_of_sep _ hsep
  -- Choose representatives for the given local sections.
  choose T t ht using fun I => exists_rep (s I)
  -- Construct a large cover over which we will define a representative that will
  -- provide the gluing of the given local sections.
  let B : J.Cover X := S.bind T
  choose Z e1 e2 he2 _ _ using fun I : B.Arrow => I.hf
  -- Construct a compatible system of local sections over this large cover, using the chosen
  -- representatives of our local sections.
  -- The compatibility here follows from the separatedness assumption.
  let w : Meq P B := meqOfSep P hsep X S s T t ht
  -- The associated gluing will be the candidate section.
  use mk w
  ext I
  dsimp [Meq.mk]
  erw [ht, res_mk_eq_mk_pullback]
  -- Use the separatedness of `P⁺` to prove that this is indeed a gluing of our
  -- original local sections.
  apply sep P (T I)
  intro II
  simp only [res_mk_eq_mk_pullback, eq_mk_iff_exists]
  -- It suffices to prove equality for representatives over a
  -- convenient sufficiently large cover...
  use (J.pullback II.f).obj (T I)
  let e0 : (J.pullback II.f).obj (T I) ⟶ (J.pullback II.f).obj ((J.pullback I.f).obj B) :=
    homOfLE
      (by
        intro Y f hf
        apply Sieve.le_pullback_bind _ _ _ I.hf
        · cases I
          exact hf)
  use e0, 𝟙 _
  ext IV
  let IA : B.Arrow := ⟨_, (IV.f ≫ II.f) ≫ I.f,
    ⟨I.Y, _, _, I.hf, Sieve.downward_closed _ II.hf _, rfl⟩⟩
  let IB : S.Arrow := IA.fromMiddle
  let IC : (T IB).Arrow := IA.toMiddle
  let ID : (T I).Arrow := ⟨IV.Y, IV.f ≫ II.f, Sieve.downward_closed (T I).sieve II.hf IV.f⟩
  change t IB IC = t I ID
  apply inj IV.Y
  erw [toPlus_apply (T I) (t I) ID, toPlus_apply (T IB) (t IB) IC, ← ht, ← ht]
  -- Conclude by constructing the relation showing equality...
  let IR : S.Relation := ⟨_, _, IV.Y, IC.f, ID.f, IB.f, I.f, IB.hf, I.hf, IA.middle_spec⟩
  exact s.condition IR
#align category_theory.grothendieck_topology.plus.exists_of_sep CategoryTheory.GrothendieckTopology.Plus.exists_of_sep

variable [ReflectsIsomorphisms (forget D)]

/-- If `P` is separated, then `P⁺` is a sheaf. -/
theorem isSheaf_of_sep (P : Cᵒᵖ ⥤ D)
    (hsep :
      ∀ (X : C) (S : J.Cover X) (x y : P.obj (op X)),
        (∀ I : S.Arrow, P.map I.f.op x = P.map I.f.op y) → x = y) :
    Presheaf.IsSheaf J (J.plusObj P) := by
  rw [Presheaf.isSheaf_iff_multiequalizer]
  intro X S
  apply @isIso_of_reflects_iso _ _ _ _ _ _ _ (forget D) ?_
  rw [isIso_iff_bijective]
  constructor
  · intro x y h
    apply sep P S _ _
    intro I
    apply_fun Meq.equiv _ _ at h
    apply_fun fun e => e I at h
    convert h <;> erw [Meq.equiv_apply, ← comp_apply, Multiequalizer.lift_ι] <;> rfl
  · rintro (x : (multiequalizer (S.index _) : D))
    obtain ⟨t, ht⟩ := exists_of_sep P hsep X S (Meq.equiv _ _ x)
    use t
    apply (Meq.equiv _ _).injective
    rw [← ht]
    ext i
    dsimp
    erw [← comp_apply]
    rw [Multiequalizer.lift_ι]
    rfl
#align category_theory.grothendieck_topology.plus.is_sheaf_of_sep CategoryTheory.GrothendieckTopology.Plus.isSheaf_of_sep

variable (J)

/-- `P⁺⁺` is always a sheaf. -/
theorem isSheaf_plus_plus (P : Cᵒᵖ ⥤ D) : Presheaf.IsSheaf J (J.plusObj (J.plusObj P)) := by
  apply isSheaf_of_sep
  intro X S x y
  apply sep
#align category_theory.grothendieck_topology.plus.is_sheaf_plus_plus CategoryTheory.GrothendieckTopology.Plus.isSheaf_plus_plus

end

end Plus

variable (J)

variable [∀ (P : Cᵒᵖ ⥤ D) (X : C) (S : J.Cover X), HasMultiequalizer (S.index P)]
  [∀ X : C, HasColimitsOfShape (J.Cover X)ᵒᵖ D]

/-- The sheafification of a presheaf `P`.
*NOTE:* Additional hypotheses are needed to obtain a proof that this is a sheaf! -/
noncomputable def sheafify (P : Cᵒᵖ ⥤ D) : Cᵒᵖ ⥤ D :=
  J.plusObj (J.plusObj P)
#align category_theory.grothendieck_topology.sheafify CategoryTheory.GrothendieckTopology.sheafify

/-- The canonical map from `P` to its sheafification. -/
noncomputable def toSheafify (P : Cᵒᵖ ⥤ D) : P ⟶ J.sheafify P :=
  J.toPlus P ≫ J.plusMap (J.toPlus P)
#align category_theory.grothendieck_topology.to_sheafify CategoryTheory.GrothendieckTopology.toSheafify

/-- The canonical map on sheafifications induced by a morphism. -/
noncomputable def sheafifyMap {P Q : Cᵒᵖ ⥤ D} (η : P ⟶ Q) : J.sheafify P ⟶ J.sheafify Q :=
  J.plusMap <| J.plusMap η
#align category_theory.grothendieck_topology.sheafify_map CategoryTheory.GrothendieckTopology.sheafifyMap

@[simp]
theorem sheafifyMap_id (P : Cᵒᵖ ⥤ D) : J.sheafifyMap (𝟙 P) = 𝟙 (J.sheafify P) := by
  dsimp [sheafifyMap, sheafify]
  simp
#align category_theory.grothendieck_topology.sheafify_map_id CategoryTheory.GrothendieckTopology.sheafifyMap_id

@[simp]
theorem sheafifyMap_comp {P Q R : Cᵒᵖ ⥤ D} (η : P ⟶ Q) (γ : Q ⟶ R) :
    J.sheafifyMap (η ≫ γ) = J.sheafifyMap η ≫ J.sheafifyMap γ := by
  dsimp [sheafifyMap, sheafify]
  simp
#align category_theory.grothendieck_topology.sheafify_map_comp CategoryTheory.GrothendieckTopology.sheafifyMap_comp

@[reassoc (attr := simp)]
theorem toSheafify_naturality {P Q : Cᵒᵖ ⥤ D} (η : P ⟶ Q) :
    η ≫ J.toSheafify _ = J.toSheafify _ ≫ J.sheafifyMap η := by
  dsimp [sheafifyMap, sheafify, toSheafify]
  simp
#align category_theory.grothendieck_topology.to_sheafify_naturality CategoryTheory.GrothendieckTopology.toSheafify_naturality

variable (D)

/-- The sheafification of a presheaf `P`, as a functor.
*NOTE:* Additional hypotheses are needed to obtain a proof that this is a sheaf! -/
noncomputable def sheafification : (Cᵒᵖ ⥤ D) ⥤ Cᵒᵖ ⥤ D :=
  J.plusFunctor D ⋙ J.plusFunctor D
#align category_theory.grothendieck_topology.sheafification CategoryTheory.GrothendieckTopology.sheafification

@[simp]
theorem sheafification_obj (P : Cᵒᵖ ⥤ D) : (J.sheafification D).obj P = J.sheafify P :=
  rfl
#align category_theory.grothendieck_topology.sheafification_obj CategoryTheory.GrothendieckTopology.sheafification_obj

@[simp]
theorem sheafification_map {P Q : Cᵒᵖ ⥤ D} (η : P ⟶ Q) :
    (J.sheafification D).map η = J.sheafifyMap η :=
  rfl
#align category_theory.grothendieck_topology.sheafification_map CategoryTheory.GrothendieckTopology.sheafification_map

/-- The canonical map from `P` to its sheafification, as a natural transformation.
*Note:* We only show this is a sheaf under additional hypotheses on `D`. -/
noncomputable def toSheafification : 𝟭 _ ⟶ sheafification J D :=
  J.toPlusNatTrans D ≫ whiskerRight (J.toPlusNatTrans D) (J.plusFunctor D)
#align category_theory.grothendieck_topology.to_sheafification CategoryTheory.GrothendieckTopology.toSheafification

@[simp]
theorem toSheafification_app (P : Cᵒᵖ ⥤ D) : (J.toSheafification D).app P = J.toSheafify P :=
  rfl
#align category_theory.grothendieck_topology.to_sheafification_app CategoryTheory.GrothendieckTopology.toSheafification_app

variable {D}

theorem isIso_toSheafify {P : Cᵒᵖ ⥤ D} (hP : Presheaf.IsSheaf J P) : IsIso (J.toSheafify P) := by
  dsimp [toSheafify]
  haveI := isIso_toPlus_of_isSheaf J P hP
  change (IsIso (toPlus J P ≫ (J.plusFunctor D).map (toPlus J P)))
  infer_instance
#align category_theory.grothendieck_topology.is_iso_to_sheafify CategoryTheory.GrothendieckTopology.isIso_toSheafify

/-- If `P` is a sheaf, then `P` is isomorphic to `J.sheafify P`. -/
noncomputable def isoSheafify {P : Cᵒᵖ ⥤ D} (hP : Presheaf.IsSheaf J P) : P ≅ J.sheafify P :=
  letI := isIso_toSheafify J hP
  asIso (J.toSheafify P)
#align category_theory.grothendieck_topology.iso_sheafify CategoryTheory.GrothendieckTopology.isoSheafify

@[simp]
theorem isoSheafify_hom {P : Cᵒᵖ ⥤ D} (hP : Presheaf.IsSheaf J P) :
    (J.isoSheafify hP).hom = J.toSheafify P :=
  rfl
#align category_theory.grothendieck_topology.iso_sheafify_hom CategoryTheory.GrothendieckTopology.isoSheafify_hom

/-- Given a sheaf `Q` and a morphism `P ⟶ Q`, construct a morphism from
`J.sheafify P` to `Q`. -/
noncomputable def sheafifyLift {P Q : Cᵒᵖ ⥤ D} (η : P ⟶ Q) (hQ : Presheaf.IsSheaf J Q) :
    J.sheafify P ⟶ Q :=
  J.plusLift (J.plusLift η hQ) hQ
#align category_theory.grothendieck_topology.sheafify_lift CategoryTheory.GrothendieckTopology.sheafifyLift

@[reassoc (attr := simp)]
theorem toSheafify_sheafifyLift {P Q : Cᵒᵖ ⥤ D} (η : P ⟶ Q) (hQ : Presheaf.IsSheaf J Q) :
    J.toSheafify P ≫ sheafifyLift J η hQ = η := by
  dsimp only [sheafifyLift, toSheafify]
  simp
#align category_theory.grothendieck_topology.to_sheafify_sheafify_lift CategoryTheory.GrothendieckTopology.toSheafify_sheafifyLift

theorem sheafifyLift_unique {P Q : Cᵒᵖ ⥤ D} (η : P ⟶ Q) (hQ : Presheaf.IsSheaf J Q)
    (γ : J.sheafify P ⟶ Q) : J.toSheafify P ≫ γ = η → γ = sheafifyLift J η hQ := by
  intro h
  apply plusLift_unique
  apply plusLift_unique
  rw [← Category.assoc, ← plusMap_toPlus]
  exact h
#align category_theory.grothendieck_topology.sheafify_lift_unique CategoryTheory.GrothendieckTopology.sheafifyLift_unique

@[simp]
theorem isoSheafify_inv {P : Cᵒᵖ ⥤ D} (hP : Presheaf.IsSheaf J P) :
    (J.isoSheafify hP).inv = J.sheafifyLift (𝟙 _) hP := by
  apply J.sheafifyLift_unique
  simp [Iso.comp_inv_eq]
#align category_theory.grothendieck_topology.iso_sheafify_inv CategoryTheory.GrothendieckTopology.isoSheafify_inv

theorem sheafify_hom_ext {P Q : Cᵒᵖ ⥤ D} (η γ : J.sheafify P ⟶ Q) (hQ : Presheaf.IsSheaf J Q)
    (h : J.toSheafify P ≫ η = J.toSheafify P ≫ γ) : η = γ := by
  apply J.plus_hom_ext _ _ hQ
  apply J.plus_hom_ext _ _ hQ
  rw [← Category.assoc, ← Category.assoc, ← plusMap_toPlus]
  exact h
#align category_theory.grothendieck_topology.sheafify_hom_ext CategoryTheory.GrothendieckTopology.sheafify_hom_ext

@[reassoc (attr := simp)]
theorem sheafifyMap_sheafifyLift {P Q R : Cᵒᵖ ⥤ D} (η : P ⟶ Q) (γ : Q ⟶ R)
    (hR : Presheaf.IsSheaf J R) :
    J.sheafifyMap η ≫ J.sheafifyLift γ hR = J.sheafifyLift (η ≫ γ) hR := by
  apply J.sheafifyLift_unique
  rw [← Category.assoc, ← J.toSheafify_naturality, Category.assoc, toSheafify_sheafifyLift]
#align category_theory.grothendieck_topology.sheafify_map_sheafify_lift CategoryTheory.GrothendieckTopology.sheafifyMap_sheafifyLift

end GrothendieckTopology

variable (J)

variable [ConcreteCategory.{max v u} D] [PreservesLimits (forget D)]
  [∀ (P : Cᵒᵖ ⥤ D) (X : C) (S : J.Cover X), HasMultiequalizer (S.index P)]
  [∀ X : C, HasColimitsOfShape (J.Cover X)ᵒᵖ D]
  [∀ X : C, PreservesColimitsOfShape (J.Cover X)ᵒᵖ (forget D)] [ReflectsIsomorphisms (forget D)]

theorem GrothendieckTopology.sheafify_isSheaf (P : Cᵒᵖ ⥤ D) : Presheaf.IsSheaf J (J.sheafify P) :=
  GrothendieckTopology.Plus.isSheaf_plus_plus _ _
#align category_theory.grothendieck_topology.sheafify_is_sheaf CategoryTheory.GrothendieckTopology.sheafify_isSheaf

variable (D)

/-- The sheafification functor, as a functor taking values in `Sheaf`. -/
@[simps]
noncomputable def presheafToSheaf : (Cᵒᵖ ⥤ D) ⥤ Sheaf J D where
  obj P := ⟨J.sheafify P, J.sheafify_isSheaf P⟩
  map η := ⟨J.sheafifyMap η⟩
  map_id _ := Sheaf.Hom.ext _ _ <| J.sheafifyMap_id _
  map_comp _ _ := Sheaf.Hom.ext _ _ <| J.sheafifyMap_comp _ _
set_option linter.uppercaseLean3 false in
#align category_theory.presheaf_to_Sheaf CategoryTheory.presheafToSheaf

instance presheafToSheaf_preservesZeroMorphisms [Preadditive D] :
    (presheafToSheaf J D).PreservesZeroMorphisms where
  map_zero F G := by
    ext : 3
    refine' colimit.hom_ext (fun j => _)
    erw [colimit.ι_map, comp_zero, J.plusMap_zero, J.diagramNatTrans_zero, zero_comp]
set_option linter.uppercaseLean3 false in
#align category_theory.presheaf_to_Sheaf_preserves_zero_morphisms CategoryTheory.presheafToSheaf_preservesZeroMorphisms

/-- The sheafification functor is left adjoint to the forgetful functor. -/
@[simps! unit_app counit_app_val]
noncomputable def sheafificationAdjunction : presheafToSheaf J D ⊣ sheafToPresheaf J D :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun P Q =>
        { toFun := fun e => J.toSheafify P ≫ e.val
          invFun := fun e => ⟨J.sheafifyLift e Q.2⟩
          left_inv := fun e => Sheaf.Hom.ext _ _ <| (J.sheafifyLift_unique _ _ _ rfl).symm
          right_inv := fun e => J.toSheafify_sheafifyLift _ _ }
      homEquiv_naturality_left_symm := by
        intro P Q R η γ; ext1; dsimp; symm
        apply J.sheafifyMap_sheafifyLift
      homEquiv_naturality_right := fun η γ => by
        dsimp
        rw [Category.assoc] }
#align category_theory.sheafification_adjunction CategoryTheory.sheafificationAdjunction

noncomputable instance sheafToPresheafIsRightAdjoint : IsRightAdjoint (sheafToPresheaf J D) :=
  ⟨_, sheafificationAdjunction J D⟩
set_option linter.uppercaseLean3 false in
#align category_theory.Sheaf_to_presheaf_is_right_adjoint CategoryTheory.sheafToPresheafIsRightAdjoint

instance presheaf_mono_of_mono {F G : Sheaf J D} (f : F ⟶ G) [Mono f] : Mono f.1 :=
  (sheafToPresheaf J D).map_mono _
#align category_theory.presheaf_mono_of_mono CategoryTheory.presheaf_mono_of_mono

theorem Sheaf.Hom.mono_iff_presheaf_mono {F G : Sheaf J D} (f : F ⟶ G) : Mono f ↔ Mono f.1 :=
  ⟨fun m => by infer_instance, fun m => by exact Sheaf.Hom.mono_of_presheaf_mono J D f⟩
set_option linter.uppercaseLean3 false in
#align category_theory.Sheaf.hom.mono_iff_presheaf_mono CategoryTheory.Sheaf.Hom.mono_iff_presheaf_mono

-- porting note: added to ease the port of CategoryTheory.Sites.LeftExact
-- in mathlib, this was `by refl`, but here it would timeout
@[simps! hom_app inv_app]
noncomputable
def GrothendieckTopology.sheafificationIsoPresheafToSheafCompSheafToPreasheaf :
    J.sheafification D ≅ presheafToSheaf J D ⋙ sheafToPresheaf J D :=
  NatIso.ofComponents fun P => Iso.refl _

variable {J D}

/-- A sheaf `P` is isomorphic to its own sheafification. -/
@[simps]
noncomputable def sheafificationIso (P : Sheaf J D) : P ≅ (presheafToSheaf J D).obj P.val where
  hom := ⟨(J.isoSheafify P.2).hom⟩
  inv := ⟨(J.isoSheafify P.2).inv⟩
  hom_inv_id := by
    ext1
    apply (J.isoSheafify P.2).hom_inv_id
  inv_hom_id := by
    ext1
    apply (J.isoSheafify P.2).inv_hom_id
#align category_theory.sheafification_iso CategoryTheory.sheafificationIso

instance isIso_sheafificationAdjunction_counit (P : Sheaf J D) :
    IsIso ((sheafificationAdjunction J D).counit.app P) :=
  isIso_of_fully_faithful (sheafToPresheaf J D) _
#align category_theory.is_iso_sheafification_adjunction_counit CategoryTheory.isIso_sheafificationAdjunction_counit

instance sheafification_reflective : IsIso (sheafificationAdjunction J D).counit :=
  NatIso.isIso_of_isIso_app _
#align category_theory.sheafification_reflective CategoryTheory.sheafification_reflective

end CategoryTheory
```
