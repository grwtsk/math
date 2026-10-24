# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KernelPair.Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc72d8a6b155c3fed940cce4bca724aa389b6ce1` · SHA-256 `113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.CategoryTheory.Limits.Shapes.Equalizers
import Mathlib.CategoryTheory.Limits.Shapes.CommSq
import Mathlib.CategoryTheory.Limits.Shapes.RegularMono

#align_import category_theory.limits.shapes.kernel_pair from "leanprover-community/mathlib"@"f6bab67886fb92c3e2f539cc90a83815f69a189d"

/-!
# Kernel pairs

This file defines what it means for a parallel pair of morphisms `a b : R ⟶ X` to be the kernel pair
for a morphism `f`.
Some properties of kernel pairs are given, namely allowing one to transfer between
the kernel pair of `f₁ ≫ f₂` to the kernel pair of `f₁`.
It is also proved that if `f` is a coequalizer of some pair, and `a`,`b` is a kernel pair for `f`
then it is a coequalizer of `a`,`b`.

## Implementation

The definition is essentially just a wrapper for `IsLimit (PullbackCone.mk _ _ _)`, but the
constructions given here are useful, yet awkward to present in that language, so a basic API
is developed here.

## TODO

- Internal equivalence relations (or congruences) and the fact that every kernel pair induces one,
  and the converse in an effective regular category (WIP by b-mehta).

-/


universe v u u₂

namespace CategoryTheory

open CategoryTheory CategoryTheory.Category CategoryTheory.Limits

variable {C : Type u} [Category.{v} C]

variable {R X Y Z : C} (f : X ⟶ Y) (a b : R ⟶ X)

/-- `IsKernelPair f a b` expresses that `(a, b)` is a kernel pair for `f`, i.e. `a ≫ f = b ≫ f`
and the square
  R → X
  ↓   ↓
  X → Y
is a pullback square.
This is just an abbreviation for `IsPullback a b f f`.
-/
abbrev IsKernelPair :=
  IsPullback a b f f
#align category_theory.is_kernel_pair CategoryTheory.IsKernelPair

namespace IsKernelPair

/-- The data expressing that `(a, b)` is a kernel pair is subsingleton. -/
instance : Subsingleton (IsKernelPair f a b) :=
  ⟨fun P Q => by
    cases P
    cases Q
    congr ⟩

/-- If `f` is a monomorphism, then `(𝟙 _, 𝟙 _)` is a kernel pair for `f`. -/
theorem id_of_mono [Mono f] : IsKernelPair f (𝟙 _) (𝟙 _) :=
  ⟨⟨rfl⟩, ⟨PullbackCone.isLimitMkIdId _⟩⟩
#align category_theory.is_kernel_pair.id_of_mono CategoryTheory.IsKernelPair.id_of_mono

instance [Mono f] : Inhabited (IsKernelPair f (𝟙 _) (𝟙 _)) :=
  ⟨id_of_mono f⟩

variable {f a b}

-- porting note: `lift` and the two following simp lemmas were introduced to ease the port
/--
Given a pair of morphisms `p`, `q` to `X` which factor through `f`, they factor through any kernel
pair of `f`.
-/
noncomputable def lift {S : C} (k : IsKernelPair f a b) (p q : S ⟶ X) (w : p ≫ f = q ≫ f) :
    S ⟶ R :=
  PullbackCone.IsLimit.lift k.isLimit _ _ w

@[reassoc (attr := simp)]
lemma lift_fst {S : C} (k : IsKernelPair f a b) (p q : S ⟶ X) (w : p ≫ f = q ≫ f) :
  k.lift p q w ≫ a = p :=
  PullbackCone.IsLimit.lift_fst _ _ _ _

@[reassoc (attr := simp)]
lemma lift_snd {S : C} (k : IsKernelPair f a b) (p q : S ⟶ X) (w : p ≫ f = q ≫ f) :
  k.lift p q w ≫ b = q :=
  PullbackCone.IsLimit.lift_snd _ _ _ _

/--
Given a pair of morphisms `p`, `q` to `X` which factor through `f`, they factor through any kernel
pair of `f`.
-/
noncomputable def lift' {S : C} (k : IsKernelPair f a b) (p q : S ⟶ X) (w : p ≫ f = q ≫ f) :
    { t : S ⟶ R // t ≫ a = p ∧ t ≫ b = q } :=
  ⟨k.lift p q w, by simp⟩
#align category_theory.is_kernel_pair.lift' CategoryTheory.IsKernelPair.lift'

/--
If `(a,b)` is a kernel pair for `f₁ ≫ f₂` and `a ≫ f₁ = b ≫ f₁`, then `(a,b)` is a kernel pair for
just `f₁`.
That is, to show that `(a,b)` is a kernel pair for `f₁` it suffices to only show the square
commutes, rather than to additionally show it's a pullback.
-/
theorem cancel_right {f₁ : X ⟶ Y} {f₂ : Y ⟶ Z} (comm : a ≫ f₁ = b ≫ f₁)
    (big_k : IsKernelPair (f₁ ≫ f₂) a b) : IsKernelPair f₁ a b :=
  { w := comm
    isLimit' :=
      ⟨PullbackCone.isLimitAux' _ fun s => by
        let s' : PullbackCone (f₁ ≫ f₂) (f₁ ≫ f₂) :=
          PullbackCone.mk s.fst s.snd (s.condition_assoc _)
        refine' ⟨big_k.isLimit.lift s', big_k.isLimit.fac _ WalkingCospan.left,
          big_k.isLimit.fac _ WalkingCospan.right, fun m₁ m₂ => _⟩
        apply big_k.isLimit.hom_ext
        refine' (PullbackCone.mk a b _ : PullbackCone (f₁ ≫ f₂) _).equalizer_ext _ _
        · apply reassoc_of% comm
        · apply m₁.trans (big_k.isLimit.fac s' WalkingCospan.left).symm
        · apply m₂.trans (big_k.isLimit.fac s' WalkingCospan.right).symm⟩ }
#align category_theory.is_kernel_pair.cancel_right CategoryTheory.IsKernelPair.cancel_right

/-- If `(a,b)` is a kernel pair for `f₁ ≫ f₂` and `f₂` is mono, then `(a,b)` is a kernel pair for
just `f₁`.
The converse of `comp_of_mono`.
-/
theorem cancel_right_of_mono {f₁ : X ⟶ Y} {f₂ : Y ⟶ Z} [Mono f₂]
    (big_k : IsKernelPair (f₁ ≫ f₂) a b) : IsKernelPair f₁ a b :=
  cancel_right (by rw [← cancel_mono f₂, assoc, assoc, big_k.w]) big_k
#align category_theory.is_kernel_pair.cancel_right_of_mono CategoryTheory.IsKernelPair.cancel_right_of_mono

/--
If `(a,b)` is a kernel pair for `f₁` and `f₂` is mono, then `(a,b)` is a kernel pair for `f₁ ≫ f₂`.
The converse of `cancel_right_of_mono`.
-/
theorem comp_of_mono {f₁ : X ⟶ Y} {f₂ : Y ⟶ Z} [Mono f₂] (small_k : IsKernelPair f₁ a b) :
    IsKernelPair (f₁ ≫ f₂) a b :=
  { w := by rw [small_k.w_assoc]
    isLimit' := ⟨by
      refine' PullbackCone.isLimitAux _
        (fun s => small_k.lift s.fst s.snd (by rw [← cancel_mono f₂, assoc, s.condition, assoc]))
        (by simp) (by simp) _
      · intro s m hm
        apply small_k.isLimit.hom_ext
        apply PullbackCone.equalizer_ext small_k.cone _ _
        · exact (hm WalkingCospan.left).trans (by simp)
        · exact (hm WalkingCospan.right).trans (by simp)⟩ }
#align category_theory.is_kernel_pair.comp_of_mono CategoryTheory.IsKernelPair.comp_of_mono

/--
If `(a,b)` is the kernel pair of `f`, and `f` is a coequalizer morphism for some parallel pair, then
`f` is a coequalizer morphism of `a` and `b`.
-/
def toCoequalizer (k : IsKernelPair f a b) [r : RegularEpi f] : IsColimit (Cofork.ofπ f k.w) := by
  let t := k.isLimit.lift (PullbackCone.mk _ _ r.w)
  have ht : t ≫ a = r.left := k.isLimit.fac _ WalkingCospan.left
  have kt : t ≫ b = r.right := k.isLimit.fac _ WalkingCospan.right
  refine' Cofork.IsColimit.mk _
    (fun s => Cofork.IsColimit.desc r.isColimit s.π
      (by rw [← ht, assoc, s.condition, reassoc_of% kt]))
    (fun s => _) (fun s m w => _)
  · apply Cofork.IsColimit.π_desc' r.isColimit
  · apply Cofork.IsColimit.hom_ext r.isColimit
    exact w.trans (Cofork.IsColimit.π_desc' r.isColimit _ _).symm
#align category_theory.is_kernel_pair.to_coequalizer CategoryTheory.IsKernelPair.toCoequalizer

/-- If `a₁ a₂ : A ⟶ Y` is a kernel pair for `g : Y ⟶ Z`, then `a₁ ×[Z] X` and `a₂ ×[Z] X`
(`A ×[Z] X ⟶ Y ×[Z] X`) is a kernel pair for `Y ×[Z] X ⟶ X`. -/
protected theorem pullback {X Y Z A : C} {g : Y ⟶ Z} {a₁ a₂ : A ⟶ Y} (h : IsKernelPair g a₁ a₂)
    (f : X ⟶ Z) [HasPullback f g] [HasPullback f (a₁ ≫ g)] :
    IsKernelPair (pullback.fst : pullback f g ⟶ X)
      (pullback.map f _ f _ (𝟙 X) a₁ (𝟙 Z) (by simp) <| Category.comp_id _)
      (pullback.map _ _ _ _ (𝟙 X) a₂ (𝟙 Z) (by simp) <| (Category.comp_id _).trans h.1.1) := by
  refine' ⟨⟨by rw [pullback.lift_fst, pullback.lift_fst]⟩, ⟨PullbackCone.isLimitAux _
    (fun s => pullback.lift (s.fst ≫ pullback.fst)
      (h.lift (s.fst ≫ pullback.snd) (s.snd ≫ pullback.snd) _ ) _) (fun s => _) (fun s => _)
        (fun s m hm => _)⟩⟩
  · simp_rw [Category.assoc, ← pullback.condition, ← Category.assoc, s.condition]
  · simp only [assoc, lift_fst_assoc, pullback.condition]
  · ext <;> simp
  · ext
    · simp [s.condition]
    · simp
  · apply pullback.hom_ext
    · simpa using hm WalkingCospan.left =≫ pullback.fst
    · apply PullbackCone.IsLimit.hom_ext h.isLimit
      · simpa using hm WalkingCospan.left =≫ pullback.snd
      · simpa using hm WalkingCospan.right =≫ pullback.snd
#align category_theory.is_kernel_pair.pullback CategoryTheory.IsKernelPair.pullback

theorem mono_of_isIso_fst (h : IsKernelPair f a b) [IsIso a] : Mono f := by
  obtain ⟨l, h₁, h₂⟩ := Limits.PullbackCone.IsLimit.lift' h.isLimit (𝟙 _) (𝟙 _) (by simp [h.w])
  rw [IsPullback.cone_fst, ← IsIso.eq_comp_inv, Category.id_comp] at h₁
  rw [h₁, IsIso.inv_comp_eq, Category.comp_id] at h₂
  constructor
  intro Z g₁ g₂ e
  obtain ⟨l', rfl, rfl⟩ := Limits.PullbackCone.IsLimit.lift' h.isLimit _ _ e
  rw [IsPullback.cone_fst, h₂]
#align category_theory.is_kernel_pair.mono_of_is_iso_fst CategoryTheory.IsKernelPair.mono_of_isIso_fst

theorem isIso_of_mono (h : IsKernelPair f a b) [Mono f] : IsIso a := by
  rw [←
    show _ = a from
      (Category.comp_id _).symm.trans
        ((IsKernelPair.id_of_mono f).isLimit.conePointUniqueUpToIso_inv_comp h.isLimit
          WalkingCospan.left)]
  infer_instance
#align category_theory.is_kernel_pair.is_iso_of_mono CategoryTheory.IsKernelPair.isIso_of_mono

theorem of_isIso_of_mono [IsIso a] [Mono f] : IsKernelPair f a a := by
  change IsPullback _ _ _ _
  convert (IsPullback.of_horiz_isIso ⟨(rfl : a ≫ 𝟙 X = _ )⟩).paste_vert (IsKernelPair.id_of_mono f)
  all_goals { simp }
#align category_theory.is_kernel_pair.of_is_iso_of_mono CategoryTheory.IsKernelPair.of_isIso_of_mono

end IsKernelPair

end CategoryTheory
```
