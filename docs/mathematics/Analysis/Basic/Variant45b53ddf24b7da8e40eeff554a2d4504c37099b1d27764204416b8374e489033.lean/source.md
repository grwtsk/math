# Complete source: GRWTSK.Analysis.Basic.Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `711eb1d745e7a6a78efe8b8e24ddd59fe4e5894f` · SHA-256 `45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Frédéric Dupuis
-/
import Mathlib.Analysis.Convex.Hull
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.LinearPMap

#align_import analysis.convex.cone.basic from "leanprover-community/mathlib"@"915591b2bb3ea303648db07284a161a7f2a9e3d4"

/-!
# Convex cones

In a `𝕜`-module `E`, we define a convex cone as a set `s` such that `a • x + b • y ∈ s` whenever
`x, y ∈ s` and `a, b > 0`. We prove that convex cones form a `CompleteLattice`, and define their
images (`ConvexCone.map`) and preimages (`ConvexCone.comap`) under linear maps.

We define pointed, blunt, flat and salient cones, and prove the correspondence between
convex cones and ordered modules.

We define `Convex.toCone` to be the minimal cone that includes a given convex set.

## Main statements

We prove two extension theorems:
* `riesz_extension`:
  [M. Riesz extension theorem](https://en.wikipedia.org/wiki/M._Riesz_extension_theorem) says that
  if `s` is a convex cone in a real vector space `E`, `p` is a submodule of `E`
  such that `p + s = E`, and `f` is a linear function `p → ℝ` which is
  nonnegative on `p ∩ s`, then there exists a globally defined linear function
  `g : E → ℝ` that agrees with `f` on `p`, and is nonnegative on `s`.
* `exists_extension_of_le_sublinear`:
  Hahn-Banach theorem: if `N : E → ℝ` is a sublinear map, `f` is a linear map
  defined on a subspace of `E`, and `f x ≤ N x` for all `x` in the domain of `f`,
  then `f` can be extended to the whole space to a linear map `g` such that `g x ≤ N x`
  for all `x`

In `Mathlib/Analysis/Convex/Cone/Dual.lean`, we prove the following theorems:
* `ConvexCone.hyperplane_separation_of_nonempty_of_isClosed_of_nmem`:
  This variant of the
  [hyperplane separation theorem](https://en.wikipedia.org/wiki/Hyperplane_separation_theorem)
  states that given a nonempty, closed, convex cone `K` in a complete, real inner product space `H`
  and a point `b` disjoint from it, there is a vector `y` which separates `b` from `K` in the sense
  that for all points `x` in `K`, `0 ≤ ⟪x, y⟫_ℝ` and `⟪y, b⟫_ℝ < 0`. This is also a geometric
  interpretation of the
  [Farkas lemma](https://en.wikipedia.org/wiki/Farkas%27_lemma#Geometric_interpretation).
* `ConvexCone.inner_dual_cone_of_inner_dual_cone_eq_self`:

## Implementation notes

While `Convex 𝕜` is a predicate on sets, `ConvexCone 𝕜 E` is a bundled convex cone.

## References

* https://en.wikipedia.org/wiki/Convex_cone
* [Stephen P. Boyd and Lieven Vandenberghe, *Convex Optimization*][boydVandenberghe2004]
* [Emo Welzl and Bernd Gärtner, *Cone Programming*][welzl_garter]
-/


assert_not_exists NormedSpace

open Set LinearMap

open Classical Pointwise

variable {𝕜 E F G : Type*}

/-! ### Definition of `ConvexCone` and basic properties -/

section Definitions

variable (𝕜 E)
variable [OrderedSemiring 𝕜]

/-- A convex cone is a subset `s` of a `𝕜`-module such that `a • x + b • y ∈ s` whenever `a, b > 0`
and `x, y ∈ s`. -/
structure ConvexCone [AddCommMonoid E] [SMul 𝕜 E] where
  carrier : Set E
  smul_mem' : ∀ ⦃c : 𝕜⦄, 0 < c → ∀ ⦃x : E⦄, x ∈ carrier → c • x ∈ carrier
  add_mem' : ∀ ⦃x⦄ (_ : x ∈ carrier) ⦃y⦄ (_ : y ∈ carrier), x + y ∈ carrier
#align convex_cone ConvexCone

end Definitions

namespace ConvexCone

section OrderedSemiring

variable [OrderedSemiring 𝕜] [AddCommMonoid E]

section SMul

variable [SMul 𝕜 E] (S T : ConvexCone 𝕜 E)

instance : SetLike (ConvexCone 𝕜 E) E where
  coe := carrier
  coe_injective' S T h := by cases S; cases T; congr

@[simp]
theorem coe_mk {s : Set E} {h₁ h₂} : ↑(@mk 𝕜 _ _ _ _ s h₁ h₂) = s :=
  rfl
#align convex_cone.coe_mk ConvexCone.coe_mk

@[simp]
theorem mem_mk {s : Set E} {h₁ h₂ x} : x ∈ @mk 𝕜 _ _ _ _ s h₁ h₂ ↔ x ∈ s :=
  Iff.rfl
#align convex_cone.mem_mk ConvexCone.mem_mk

/-- Two `ConvexCone`s are equal if they have the same elements. -/
@[ext]
theorem ext {S T : ConvexCone 𝕜 E} (h : ∀ x, x ∈ S ↔ x ∈ T) : S = T :=
  SetLike.ext h
#align convex_cone.ext ConvexCone.ext

theorem smul_mem {c : 𝕜} {x : E} (hc : 0 < c) (hx : x ∈ S) : c • x ∈ S :=
  S.smul_mem' hc hx
#align convex_cone.smul_mem ConvexCone.smul_mem

theorem add_mem ⦃x⦄ (hx : x ∈ S) ⦃y⦄ (hy : y ∈ S) : x + y ∈ S :=
  S.add_mem' hx hy
#align convex_cone.add_mem ConvexCone.add_mem

instance : AddMemClass (ConvexCone 𝕜 E) E where add_mem ha hb := add_mem _ ha hb

instance : Inf (ConvexCone 𝕜 E) :=
  ⟨fun S T =>
    ⟨S ∩ T, fun _ hc _ hx => ⟨S.smul_mem hc hx.1, T.smul_mem hc hx.2⟩, fun _ hx _ hy =>
      ⟨S.add_mem hx.1 hy.1, T.add_mem hx.2 hy.2⟩⟩⟩

@[simp]
theorem coe_inf : ((S ⊓ T : ConvexCone 𝕜 E) : Set E) = ↑S ∩ ↑T :=
  rfl
#align convex_cone.coe_inf ConvexCone.coe_inf

theorem mem_inf {x} : x ∈ S ⊓ T ↔ x ∈ S ∧ x ∈ T :=
  Iff.rfl
#align convex_cone.mem_inf ConvexCone.mem_inf

instance : InfSet (ConvexCone 𝕜 E) :=
  ⟨fun S =>
    ⟨⋂ s ∈ S, ↑s, fun _ hc _ hx => mem_biInter fun s hs => s.smul_mem hc <| mem_iInter₂.1 hx s hs,
      fun _ hx _ hy =>
      mem_biInter fun s hs => s.add_mem (mem_iInter₂.1 hx s hs) (mem_iInter₂.1 hy s hs)⟩⟩

@[simp]
theorem coe_sInf (S : Set (ConvexCone 𝕜 E)) : ↑(sInf S) = ⋂ s ∈ S, (s : Set E) :=
  rfl
#align convex_cone.coe_Inf ConvexCone.coe_sInf

theorem mem_sInf {x : E} {S : Set (ConvexCone 𝕜 E)} : x ∈ sInf S ↔ ∀ s ∈ S, x ∈ s :=
  mem_iInter₂
#align convex_cone.mem_Inf ConvexCone.mem_sInf

@[simp]
theorem coe_iInf {ι : Sort*} (f : ι → ConvexCone 𝕜 E) : ↑(iInf f) = ⋂ i, (f i : Set E) := by
  simp [iInf]
#align convex_cone.coe_infi ConvexCone.coe_iInf

theorem mem_iInf {ι : Sort*} {x : E} {f : ι → ConvexCone 𝕜 E} : x ∈ iInf f ↔ ∀ i, x ∈ f i :=
  mem_iInter₂.trans <| by simp
#align convex_cone.mem_infi ConvexCone.mem_iInf

variable (𝕜)

instance : Bot (ConvexCone 𝕜 E) :=
  ⟨⟨∅, fun _ _ _ => False.elim, fun _ => False.elim⟩⟩

theorem mem_bot (x : E) : (x ∈ (⊥ : ConvexCone 𝕜 E)) = False :=
  rfl
#align convex_cone.mem_bot ConvexCone.mem_bot

@[simp]
theorem coe_bot : ↑(⊥ : ConvexCone 𝕜 E) = (∅ : Set E) :=
  rfl
#align convex_cone.coe_bot ConvexCone.coe_bot

instance : Top (ConvexCone 𝕜 E) :=
  ⟨⟨univ, fun _ _ _ _ => mem_univ _, fun _ _ _ _ => mem_univ _⟩⟩

theorem mem_top (x : E) : x ∈ (⊤ : ConvexCone 𝕜 E) :=
  mem_univ x
#align convex_cone.mem_top ConvexCone.mem_top

@[simp]
theorem coe_top : ↑(⊤ : ConvexCone 𝕜 E) = (univ : Set E) :=
  rfl
#align convex_cone.coe_top ConvexCone.coe_top

instance : CompleteLattice (ConvexCone 𝕜 E) :=
  { SetLike.instPartialOrder with
    le := (· ≤ ·)
    lt := (· < ·)
    bot := ⊥
    bot_le := fun _ _ => False.elim
    top := ⊤
    le_top := fun _ x _ => mem_top 𝕜 x
    inf := (· ⊓ ·)
    sInf := InfSet.sInf
    sup := fun a b => sInf { x | a ≤ x ∧ b ≤ x }
    sSup := fun s => sInf { T | ∀ S ∈ s, S ≤ T }
    le_sup_left := fun _ _ => fun _ hx => mem_sInf.2 fun _ hs => hs.1 hx
    le_sup_right := fun _ _ => fun _ hx => mem_sInf.2 fun _ hs => hs.2 hx
    sup_le := fun _ _ c ha hb _ hx => mem_sInf.1 hx c ⟨ha, hb⟩
    le_inf := fun _ _ _ ha hb _ hx => ⟨ha hx, hb hx⟩
    inf_le_left := fun _ _ _ => And.left
    inf_le_right := fun _ _ _ => And.right
    le_sSup := fun _ p hs _ hx => mem_sInf.2 fun _ ht => ht p hs hx
    sSup_le := fun _ p hs _ hx => mem_sInf.1 hx p hs
    le_sInf := fun _ _ ha _ hx => mem_sInf.2 fun t ht => ha t ht hx
    sInf_le := fun _ _ ha _ hx => mem_sInf.1 hx _ ha }

instance : Inhabited (ConvexCone 𝕜 E) :=
  ⟨⊥⟩

end SMul

section Module

variable [Module 𝕜 E] (S : ConvexCone 𝕜 E)

protected theorem convex : Convex 𝕜 (S : Set E) :=
  convex_iff_forall_pos.2 fun _ hx _ hy _ _ ha hb _ =>
    S.add_mem (S.smul_mem ha hx) (S.smul_mem hb hy)
#align convex_cone.convex ConvexCone.convex

end Module

end OrderedSemiring

section LinearOrderedField

variable [LinearOrderedField 𝕜]

section AddCommMonoid

variable [AddCommMonoid E] [AddCommMonoid F] [AddCommMonoid G]

section MulAction

variable [MulAction 𝕜 E] (S : ConvexCone 𝕜 E)

theorem smul_mem_iff {c : 𝕜} (hc : 0 < c) {x : E} : c • x ∈ S ↔ x ∈ S :=
  ⟨fun h => inv_smul_smul₀ hc.ne' x ▸ S.smul_mem (inv_pos.2 hc) h, S.smul_mem hc⟩
#align convex_cone.smul_mem_iff ConvexCone.smul_mem_iff

end MulAction

section Module

variable [Module 𝕜 E] [Module 𝕜 F] [Module 𝕜 G]

/-- The image of a convex cone under a `𝕜`-linear map is a convex cone. -/
def map (f : E →ₗ[𝕜] F) (S : ConvexCone 𝕜 E) : ConvexCone 𝕜 F where
  carrier := f '' S
  smul_mem' := fun c hc _ ⟨x, hx, hy⟩ => hy ▸ f.map_smul c x ▸ mem_image_of_mem f (S.smul_mem hc hx)
  add_mem' := fun _ ⟨x₁, hx₁, hy₁⟩ _ ⟨x₂, hx₂, hy₂⟩ =>
    hy₁ ▸ hy₂ ▸ f.map_add x₁ x₂ ▸ mem_image_of_mem f (S.add_mem hx₁ hx₂)
#align convex_cone.map ConvexCone.map

@[simp]
theorem mem_map {f : E →ₗ[𝕜] F} {S : ConvexCone 𝕜 E} {y : F} : y ∈ S.map f ↔ ∃ x ∈ S, f x = y :=
  Set.mem_image f S y
#align convex_cone.mem_map ConvexCone.mem_map

theorem map_map (g : F →ₗ[𝕜] G) (f : E →ₗ[𝕜] F) (S : ConvexCone 𝕜 E) :
    (S.map f).map g = S.map (g.comp f) :=
  SetLike.coe_injective <| image_image g f S
#align convex_cone.map_map ConvexCone.map_map

@[simp]
theorem map_id (S : ConvexCone 𝕜 E) : S.map LinearMap.id = S :=
  SetLike.coe_injective <| image_id _
#align convex_cone.map_id ConvexCone.map_id

/-- The preimage of a convex cone under a `𝕜`-linear map is a convex cone. -/
def comap (f : E →ₗ[𝕜] F) (S : ConvexCone 𝕜 F) : ConvexCone 𝕜 E where
  carrier := f ⁻¹' S
  smul_mem' c hc x hx := by
    rw [mem_preimage, f.map_smul c]
    exact S.smul_mem hc hx
  add_mem' x hx y hy := by
    rw [mem_preimage, f.map_add]
    exact S.add_mem hx hy
#align convex_cone.comap ConvexCone.comap

@[simp]
theorem coe_comap (f : E →ₗ[𝕜] F) (S : ConvexCone 𝕜 F) : (S.comap f : Set E) = f ⁻¹' S :=
  rfl
#align convex_cone.coe_comap ConvexCone.coe_comap

@[simp] -- porting note: was not a `dsimp` lemma
theorem comap_id (S : ConvexCone 𝕜 E) : S.comap LinearMap.id = S :=
  rfl
#align convex_cone.comap_id ConvexCone.comap_id

theorem comap_comap (g : F →ₗ[𝕜] G) (f : E →ₗ[𝕜] F) (S : ConvexCone 𝕜 G) :
    (S.comap g).comap f = S.comap (g.comp f) :=
  rfl
#align convex_cone.comap_comap ConvexCone.comap_comap

@[simp]
theorem mem_comap {f : E →ₗ[𝕜] F} {S : ConvexCone 𝕜 F} {x : E} : x ∈ S.comap f ↔ f x ∈ S :=
  Iff.rfl
#align convex_cone.mem_comap ConvexCone.mem_comap

end Module

end AddCommMonoid

section OrderedAddCommGroup

variable [OrderedAddCommGroup E] [Module 𝕜 E]

/-- Constructs an ordered module given an `OrderedAddCommGroup`, a cone, and a proof that
the order relation is the one defined by the cone.
-/
theorem to_orderedSMul (S : ConvexCone 𝕜 E) (h : ∀ x y : E, x ≤ y ↔ y - x ∈ S) : OrderedSMul 𝕜 E :=
  OrderedSMul.mk'
    (by
      intro x y z xy hz
      rw [h (z • x) (z • y), ← smul_sub z y x]
      exact smul_mem S hz ((h x y).mp xy.le))
#align convex_cone.to_ordered_smul ConvexCone.to_orderedSMul

end OrderedAddCommGroup

end LinearOrderedField

/-! ### Convex cones with extra properties -/


section OrderedSemiring

variable [OrderedSemiring 𝕜]

section AddCommMonoid

variable [AddCommMonoid E] [SMul 𝕜 E] (S : ConvexCone 𝕜 E)

/-- A convex cone is pointed if it includes `0`. -/
def Pointed (S : ConvexCone 𝕜 E) : Prop :=
  (0 : E) ∈ S
#align convex_cone.pointed ConvexCone.Pointed

/-- A convex cone is blunt if it doesn't include `0`. -/
def Blunt (S : ConvexCone 𝕜 E) : Prop :=
  (0 : E) ∉ S
#align convex_cone.blunt ConvexCone.Blunt

theorem pointed_iff_not_blunt (S : ConvexCone 𝕜 E) : S.Pointed ↔ ¬S.Blunt :=
  ⟨fun h₁ h₂ => h₂ h₁, Classical.not_not.mp⟩
#align convex_cone.pointed_iff_not_blunt ConvexCone.pointed_iff_not_blunt

theorem blunt_iff_not_pointed (S : ConvexCone 𝕜 E) : S.Blunt ↔ ¬S.Pointed := by
  rw [pointed_iff_not_blunt, Classical.not_not]
#align convex_cone.blunt_iff_not_pointed ConvexCone.blunt_iff_not_pointed

theorem Pointed.mono {S T : ConvexCone 𝕜 E} (h : S ≤ T) : S.Pointed → T.Pointed :=
  @h _
#align convex_cone.pointed.mono ConvexCone.Pointed.mono

theorem Blunt.anti {S T : ConvexCone 𝕜 E} (h : T ≤ S) : S.Blunt → T.Blunt :=
  (· ∘ @h 0)
#align convex_cone.blunt.anti ConvexCone.Blunt.anti

end AddCommMonoid

section AddCommGroup

variable [AddCommGroup E] [SMul 𝕜 E] (S : ConvexCone 𝕜 E)

/-- A convex cone is flat if it contains some nonzero vector `x` and its opposite `-x`. -/
def Flat : Prop :=
  ∃ x ∈ S, x ≠ (0 : E) ∧ -x ∈ S
#align convex_cone.flat ConvexCone.Flat

/-- A convex cone is salient if it doesn't include `x` and `-x` for any nonzero `x`. -/
def Salient : Prop :=
  ∀ x ∈ S, x ≠ (0 : E) → -x ∉ S
#align convex_cone.salient ConvexCone.Salient

theorem salient_iff_not_flat (S : ConvexCone 𝕜 E) : S.Salient ↔ ¬S.Flat := by
  simp [Salient, Flat]
#align convex_cone.salient_iff_not_flat ConvexCone.salient_iff_not_flat

theorem Flat.mono {S T : ConvexCone 𝕜 E} (h : S ≤ T) : S.Flat → T.Flat
  | ⟨x, hxS, hx, hnxS⟩ => ⟨x, h hxS, hx, h hnxS⟩
#align convex_cone.flat.mono ConvexCone.Flat.mono

theorem Salient.anti {S T : ConvexCone 𝕜 E} (h : T ≤ S) : S.Salient → T.Salient :=
  fun hS x hxT hx hnT => hS x (h hxT) hx (h hnT)
#align convex_cone.salient.anti ConvexCone.Salient.anti

/-- A flat cone is always pointed (contains `0`). -/
theorem Flat.pointed {S : ConvexCone 𝕜 E} (hS : S.Flat) : S.Pointed := by
  obtain ⟨x, hx, _, hxneg⟩ := hS
  rw [Pointed, ← add_neg_self x]
  exact add_mem S hx hxneg
#align convex_cone.flat.pointed ConvexCone.Flat.pointed

/-- A blunt cone (one not containing `0`) is always salient. -/
theorem Blunt.salient {S : ConvexCone 𝕜 E} : S.Blunt → S.Salient := by
  rw [salient_iff_not_flat, blunt_iff_not_pointed]
  exact mt Flat.pointed
#align convex_cone.blunt.salient ConvexCone.Blunt.salient

/-- A pointed convex cone defines a preorder. -/
def toPreorder (h₁ : S.Pointed) : Preorder E where
  le x y := y - x ∈ S
  le_refl x := by change x - x ∈ S; rw [sub_self x]; exact h₁
  le_trans x y z xy zy := by simpa using add_mem S zy xy
#align convex_cone.to_preorder ConvexCone.toPreorder

/-- A pointed and salient cone defines a partial order. -/
def toPartialOrder (h₁ : S.Pointed) (h₂ : S.Salient) : PartialOrder E :=
  { toPreorder S h₁ with
    le_antisymm := by
      intro a b ab ba
      by_contra h
      have h' : b - a ≠ 0 := fun h'' => h (eq_of_sub_eq_zero h'').symm
      have H := h₂ (b - a) ab h'
      rw [neg_sub b a] at H
      exact H ba }
#align convex_cone.to_partial_order ConvexCone.toPartialOrder

/-- A pointed and salient cone defines an `OrderedAddCommGroup`. -/
def toOrderedAddCommGroup (h₁ : S.Pointed) (h₂ : S.Salient) : OrderedAddCommGroup E :=
  { toPartialOrder S h₁ h₂, show AddCommGroup E by infer_instance with
    add_le_add_left := by
      intro a b hab c
      change c + b - (c + a) ∈ S
      rw [add_sub_add_left_eq_sub]
      exact hab }
#align convex_cone.to_ordered_add_comm_group ConvexCone.toOrderedAddCommGroup

end AddCommGroup

section Module

variable [AddCommMonoid E] [Module 𝕜 E]

instance : Zero (ConvexCone 𝕜 E) :=
  ⟨⟨0, fun _ _ => by simp, fun _ => by simp⟩⟩

@[simp]
theorem mem_zero (x : E) : x ∈ (0 : ConvexCone 𝕜 E) ↔ x = 0 :=
  Iff.rfl
#align convex_cone.mem_zero ConvexCone.mem_zero

@[simp]
theorem coe_zero : ((0 : ConvexCone 𝕜 E) : Set E) = 0 :=
  rfl
#align convex_cone.coe_zero ConvexCone.coe_zero

theorem pointed_zero : (0 : ConvexCone 𝕜 E).Pointed := by rw [Pointed, mem_zero]
#align convex_cone.pointed_zero ConvexCone.pointed_zero

instance instAdd : Add (ConvexCone 𝕜 E) :=
  ⟨fun K₁ K₂ =>
    { carrier := { z | ∃ x y : E, x ∈ K₁ ∧ y ∈ K₂ ∧ x + y = z }
      smul_mem' := by
        rintro c hc _ ⟨x, y, hx, hy, rfl⟩
        rw [smul_add]
        use c • x, c • y, K₁.smul_mem hc hx, K₂.smul_mem hc hy
      add_mem' := by
        rintro _ ⟨x₁, x₂, hx₁, hx₂, rfl⟩ y ⟨y₁, y₂, hy₁, hy₂, rfl⟩
        use x₁ + y₁, x₂ + y₂, K₁.add_mem hx₁ hy₁, K₂.add_mem hx₂ hy₂
        abel }⟩

@[simp]
theorem mem_add {K₁ K₂ : ConvexCone 𝕜 E} {a : E} :
    a ∈ K₁ + K₂ ↔ ∃ x y : E, x ∈ K₁ ∧ y ∈ K₂ ∧ x + y = a :=
  Iff.rfl
#align convex_cone.mem_add ConvexCone.mem_add

instance instAddZeroClass : AddZeroClass (ConvexCone 𝕜 E) where
  zero_add _ := by ext; simp
  add_zero _ := by ext; simp

instance instAddCommSemigroup : AddCommSemigroup (ConvexCone 𝕜 E) where
  add := Add.add
  add_assoc _ _ _ := SetLike.coe_injective <| Set.addCommSemigroup.add_assoc _ _ _
  add_comm _ _ := SetLike.coe_injective <| Set.addCommSemigroup.add_comm _ _

end Module

end OrderedSemiring

end ConvexCone

namespace Submodule

/-! ### Submodules are cones -/


section OrderedSemiring

variable [OrderedSemiring 𝕜]

section AddCommMonoid

variable [AddCommMonoid E] [Module 𝕜 E]

/-- Every submodule is trivially a convex cone. -/
def toConvexCone (S : Submodule 𝕜 E) : ConvexCone 𝕜 E where
  carrier := S
  smul_mem' c _ _ hx := S.smul_mem c hx
  add_mem' _ hx _ hy := S.add_mem hx hy
#align submodule.to_convex_cone Submodule.toConvexCone

@[simp]
theorem coe_toConvexCone (S : Submodule 𝕜 E) : ↑S.toConvexCone = (S : Set E) :=
  rfl
#align submodule.coe_to_convex_cone Submodule.coe_toConvexCone

@[simp]
theorem mem_toConvexCone {x : E} {S : Submodule 𝕜 E} : x ∈ S.toConvexCone ↔ x ∈ S :=
  Iff.rfl
#align submodule.mem_to_convex_cone Submodule.mem_toConvexCone

@[simp]
theorem toConvexCone_le_iff {S T : Submodule 𝕜 E} : S.toConvexCone ≤ T.toConvexCone ↔ S ≤ T :=
  Iff.rfl
#align submodule.to_convex_cone_le_iff Submodule.toConvexCone_le_iff

@[simp]
theorem toConvexCone_bot : (⊥ : Submodule 𝕜 E).toConvexCone = 0 :=
  rfl
#align submodule.to_convex_cone_bot Submodule.toConvexCone_bot

@[simp]
theorem toConvexCone_top : (⊤ : Submodule 𝕜 E).toConvexCone = ⊤ :=
  rfl
#align submodule.to_convex_cone_top Submodule.toConvexCone_top

@[simp]
theorem toConvexCone_inf (S T : Submodule 𝕜 E) :
    (S ⊓ T).toConvexCone = S.toConvexCone ⊓ T.toConvexCone :=
  rfl
#align submodule.to_convex_cone_inf Submodule.toConvexCone_inf

@[simp]
theorem pointed_toConvexCone (S : Submodule 𝕜 E) : S.toConvexCone.Pointed :=
  S.zero_mem
#align submodule.pointed_to_convex_cone Submodule.pointed_toConvexCone

end AddCommMonoid

end OrderedSemiring

end Submodule

namespace ConvexCone

/-! ### Positive cone of an ordered module -/


section PositiveCone

variable (𝕜 E) [OrderedSemiring 𝕜] [OrderedAddCommGroup E] [Module 𝕜 E] [OrderedSMul 𝕜 E]

/-- The positive cone is the convex cone formed by the set of nonnegative elements in an ordered
module.
-/
def positive : ConvexCone 𝕜 E where
  carrier := Set.Ici 0
  smul_mem' _ hc _ (hx : _ ≤ _) := smul_nonneg hc.le hx
  add_mem' _ (hx : _ ≤ _) _ (hy : _ ≤ _) := add_nonneg hx hy
#align convex_cone.positive ConvexCone.positive

@[simp]
theorem mem_positive {x : E} : x ∈ positive 𝕜 E ↔ 0 ≤ x :=
  Iff.rfl
#align convex_cone.mem_positive ConvexCone.mem_positive

@[simp]
theorem coe_positive : ↑(positive 𝕜 E) = Set.Ici (0 : E) :=
  rfl
#align convex_cone.coe_positive ConvexCone.coe_positive

/-- The positive cone of an ordered module is always salient. -/
theorem salient_positive : Salient (positive 𝕜 E) := fun x xs hx hx' =>
  lt_irrefl (0 : E)
    (calc
      0 < x := lt_of_le_of_ne xs hx.symm
      _ ≤ x + -x := (le_add_of_nonneg_right hx')
      _ = 0 := add_neg_self x
      )
#align convex_cone.salient_positive ConvexCone.salient_positive

/-- The positive cone of an ordered module is always pointed. -/
theorem pointed_positive : Pointed (positive 𝕜 E) :=
  le_refl 0
#align convex_cone.pointed_positive ConvexCone.pointed_positive

/-- The cone of strictly positive elements.

Note that this naming diverges from the mathlib convention of `pos` and `nonneg` due to "positive
cone" (`ConvexCone.positive`) being established terminology for the non-negative elements. -/
def strictlyPositive : ConvexCone 𝕜 E where
  carrier := Set.Ioi 0
  smul_mem' _ hc _ (hx : _ < _) := smul_pos hc hx
  add_mem' _ hx _ hy := add_pos hx hy
#align convex_cone.strictly_positive ConvexCone.strictlyPositive

@[simp]
theorem mem_strictlyPositive {x : E} : x ∈ strictlyPositive 𝕜 E ↔ 0 < x :=
  Iff.rfl
#align convex_cone.mem_strictly_positive ConvexCone.mem_strictlyPositive

@[simp]
theorem coe_strictlyPositive : ↑(strictlyPositive 𝕜 E) = Set.Ioi (0 : E) :=
  rfl
#align convex_cone.coe_strictly_positive ConvexCone.coe_strictlyPositive

theorem positive_le_strictlyPositive : strictlyPositive 𝕜 E ≤ positive 𝕜 E := fun _ => le_of_lt
#align convex_cone.positive_le_strictly_positive ConvexCone.positive_le_strictlyPositive

/-- The strictly positive cone of an ordered module is always salient. -/
theorem salient_strictlyPositive : Salient (strictlyPositive 𝕜 E) :=
  (salient_positive 𝕜 E).anti <| positive_le_strictlyPositive 𝕜 E
#align convex_cone.salient_strictly_positive ConvexCone.salient_strictlyPositive

/-- The strictly positive cone of an ordered module is always blunt. -/
theorem blunt_strictlyPositive : Blunt (strictlyPositive 𝕜 E) :=
  lt_irrefl 0
#align convex_cone.blunt_strictly_positive ConvexCone.blunt_strictlyPositive

end PositiveCone

end ConvexCone

/-! ### Cone over a convex set -/


section ConeFromConvex

variable [LinearOrderedField 𝕜] [AddCommGroup E] [Module 𝕜 E]

namespace Convex

/-- The set of vectors proportional to those in a convex set forms a convex cone. -/
def toCone (s : Set E) (hs : Convex 𝕜 s) : ConvexCone 𝕜 E := by
  apply ConvexCone.mk (⋃ (c : 𝕜) (_ : 0 < c), c • s) <;> simp only [mem_iUnion, mem_smul_set]
  · rintro c c_pos _ ⟨c', c'_pos, x, hx, rfl⟩
    exact ⟨c * c', mul_pos c_pos c'_pos, x, hx, (smul_smul _ _ _).symm⟩
  · rintro _ ⟨cx, cx_pos, x, hx, rfl⟩ _ ⟨cy, cy_pos, y, hy, rfl⟩
    have : 0 < cx + cy := add_pos cx_pos cy_pos
    refine' ⟨_, this, _, convex_iff_div.1 hs hx hy cx_pos.le cy_pos.le this, _⟩
    simp only [smul_add, smul_smul, mul_div_assoc', mul_div_cancel_left _ this.ne']
#align convex.to_cone Convex.toCone

variable {s : Set E} (hs : Convex 𝕜 s) {x : E}

theorem mem_toCone : x ∈ hs.toCone s ↔ ∃ c : 𝕜, 0 < c ∧ ∃ y ∈ s, c • y = x := by
  simp only [toCone, ConvexCone.mem_mk, mem_iUnion, mem_smul_set, eq_comm, exists_prop]
#align convex.mem_to_cone Convex.mem_toCone

theorem mem_toCone' : x ∈ hs.toCone s ↔ ∃ c : 𝕜, 0 < c ∧ c • x ∈ s := by
  refine' hs.mem_toCone.trans ⟨_, _⟩
  · rintro ⟨c, hc, y, hy, rfl⟩
    exact ⟨c⁻¹, inv_pos.2 hc, by rwa [smul_smul, inv_mul_cancel hc.ne', one_smul]⟩
  · rintro ⟨c, hc, hcx⟩
    exact ⟨c⁻¹, inv_pos.2 hc, _, hcx, by rw [smul_smul, inv_mul_cancel hc.ne', one_smul]⟩
#align convex.mem_to_cone' Convex.mem_toCone'

theorem subset_toCone : s ⊆ hs.toCone s := fun x hx =>
  hs.mem_toCone'.2 ⟨1, zero_lt_one, by rwa [one_smul]⟩
#align convex.subset_to_cone Convex.subset_toCone

/-- `hs.toCone s` is the least cone that includes `s`. -/
theorem toCone_isLeast : IsLeast { t : ConvexCone 𝕜 E | s ⊆ t } (hs.toCone s) := by
  refine' ⟨hs.subset_toCone, fun t ht x hx => _⟩
  rcases hs.mem_toCone.1 hx with ⟨c, hc, y, hy, rfl⟩
  exact t.smul_mem hc (ht hy)
#align convex.to_cone_is_least Convex.toCone_isLeast

theorem toCone_eq_sInf : hs.toCone s = sInf { t : ConvexCone 𝕜 E | s ⊆ t } :=
  hs.toCone_isLeast.isGLB.sInf_eq.symm
#align convex.to_cone_eq_Inf Convex.toCone_eq_sInf

end Convex

theorem convexHull_toCone_isLeast (s : Set E) :
    IsLeast { t : ConvexCone 𝕜 E | s ⊆ t } ((convex_convexHull 𝕜 s).toCone _) := by
  convert (convex_convexHull 𝕜 s).toCone_isLeast using 1
  ext t
  exact ⟨fun h => convexHull_min h t.convex, (subset_convexHull 𝕜 s).trans⟩
#align convex_hull_to_cone_is_least convexHull_toCone_isLeast

theorem convexHull_toCone_eq_sInf (s : Set E) :
    (convex_convexHull 𝕜 s).toCone _ = sInf { t : ConvexCone 𝕜 E | s ⊆ t } :=
  Eq.symm <| IsGLB.sInf_eq <| IsLeast.isGLB <| convexHull_toCone_isLeast s
#align convex_hull_to_cone_eq_Inf convexHull_toCone_eq_sInf

end ConeFromConvex

/-!
### M. Riesz extension theorem

Given a convex cone `s` in a vector space `E`, a submodule `p`, and a linear `f : p → ℝ`, assume
that `f` is nonnegative on `p ∩ s` and `p + s = E`. Then there exists a globally defined linear
function `g : E → ℝ` that agrees with `f` on `p`, and is nonnegative on `s`.

We prove this theorem using Zorn's lemma. `RieszExtension.step` is the main part of the proof.
It says that if the domain `p` of `f` is not the whole space, then `f` can be extended to a larger
subspace `p ⊔ span ℝ {y}` without breaking the non-negativity condition.

In `RieszExtension.exists_top` we use Zorn's lemma to prove that we can extend `f`
to a linear map `g` on `⊤ : Submodule E`. Mathematically this is the same as a linear map on `E`
but in Lean `⊤ : Submodule E` is isomorphic but is not equal to `E`. In `riesz_extension`
we use this isomorphism to prove the theorem.
-/


variable [AddCommGroup E] [Module ℝ E]

namespace RieszExtension

open Submodule

variable (s : ConvexCone ℝ E) (f : E →ₗ.[ℝ] ℝ)

/-- Induction step in M. Riesz extension theorem. Given a convex cone `s` in a vector space `E`,
a partially defined linear map `f : f.domain → ℝ`, assume that `f` is nonnegative on `f.domain ∩ p`
and `p + s = E`. If `f` is not defined on the whole `E`, then we can extend it to a larger
submodule without breaking the non-negativity condition. -/
theorem step (nonneg : ∀ x : f.domain, (x : E) ∈ s → 0 ≤ f x)
    (dense : ∀ y, ∃ x : f.domain, (x : E) + y ∈ s) (hdom : f.domain ≠ ⊤) :
    ∃ g, f < g ∧ ∀ x : g.domain, (x : E) ∈ s → 0 ≤ g x := by
  obtain ⟨y, -, hy⟩ : ∃ y ∈ ⊤, y ∉ f.domain :=
    @SetLike.exists_of_lt (Submodule ℝ E) _ _ _ _ (lt_top_iff_ne_top.2 hdom)
  obtain ⟨c, le_c, c_le⟩ :
      ∃ c, (∀ x : f.domain, -(x : E) - y ∈ s → f x ≤ c) ∧
        ∀ x : f.domain, (x : E) + y ∈ s → c ≤ f x := by
    set Sp := f '' { x : f.domain | (x : E) + y ∈ s }
    set Sn := f '' { x : f.domain | -(x : E) - y ∈ s }
    suffices (upperBounds Sn ∩ lowerBounds Sp).Nonempty by
      simpa only [Set.Nonempty, upperBounds, lowerBounds, ball_image_iff] using this
    refine' exists_between_of_forall_le (Nonempty.image f _) (Nonempty.image f (dense y)) _
    · rcases dense (-y) with ⟨x, hx⟩
      rw [← neg_neg x, AddSubgroupClass.coe_neg, ← sub_eq_add_neg] at hx
      exact ⟨_, hx⟩
    rintro a ⟨xn, hxn, rfl⟩ b ⟨xp, hxp, rfl⟩
    have := s.add_mem hxp hxn
    rw [add_assoc, add_sub_cancel'_right, ← sub_eq_add_neg, ← AddSubgroupClass.coe_sub] at this
    replace := nonneg _ this
    rwa [f.map_sub, sub_nonneg] at this
  -- Porting note: removed an unused `have`
  refine' ⟨f.supSpanSingleton y (-c) hy, _, _⟩
  · refine' lt_iff_le_not_le.2 ⟨f.left_le_sup _ _, fun H => _⟩
    replace H := LinearPMap.domain_mono.monotone H
    rw [LinearPMap.domain_supSpanSingleton, sup_le_iff, span_le, singleton_subset_iff] at H
    exact hy H.2
  · rintro ⟨z, hz⟩ hzs
    rcases mem_sup.1 hz with ⟨x, hx, y', hy', rfl⟩
    rcases mem_span_singleton.1 hy' with ⟨r, rfl⟩
    simp only [Subtype.coe_mk] at hzs
    erw [LinearPMap.supSpanSingleton_apply_mk _ _ _ _ _ hx, smul_neg, ← sub_eq_add_neg, sub_nonneg]
    rcases lt_trichotomy r 0 with (hr | hr | hr)
    · have : -(r⁻¹ • x) - y ∈ s := by
        rwa [← s.smul_mem_iff (neg_pos.2 hr), smul_sub, smul_neg, neg_smul, neg_neg, smul_smul,
          mul_inv_cancel hr.ne, one_smul, sub_eq_add_neg, neg_smul, neg_neg]
      -- Porting note: added type annotation and `by exact`
      replace : f (r⁻¹ • ⟨x, hx⟩) ≤ c := le_c (r⁻¹ • ⟨x, hx⟩) (by exact this)
      rwa [← mul_le_mul_left (neg_pos.2 hr), neg_mul, neg_mul, neg_le_neg_iff, f.map_smul,
        smul_eq_mul, ← mul_assoc, mul_inv_cancel hr.ne, one_mul] at this
    · subst r
      simp only [zero_smul, add_zero] at hzs ⊢
      apply nonneg
      exact hzs
    · have : r⁻¹ • x + y ∈ s := by
        rwa [← s.smul_mem_iff hr, smul_add, smul_smul, mul_inv_cancel hr.ne', one_smul]
      -- Porting note: added type annotation and `by exact`
      replace : c ≤ f (r⁻¹ • ⟨x, hx⟩) := c_le (r⁻¹ • ⟨x, hx⟩) (by exact this)
      rwa [← mul_le_mul_left hr, f.map_smul, smul_eq_mul, ← mul_assoc, mul_inv_cancel hr.ne',
        one_mul] at this
#align riesz_extension.step RieszExtension.step

theorem exists_top (p : E →ₗ.[ℝ] ℝ) (hp_nonneg : ∀ x : p.domain, (x : E) ∈ s → 0 ≤ p x)
    (hp_dense : ∀ y, ∃ x : p.domain, (x : E) + y ∈ s) :
    ∃ q ≥ p, q.domain = ⊤ ∧ ∀ x : q.domain, (x : E) ∈ s → 0 ≤ q x := by
  set S := { p : E →ₗ.[ℝ] ℝ | ∀ x : p.domain, (x : E) ∈ s → 0 ≤ p x }
  have hSc : ∀ c, c ⊆ S → IsChain (· ≤ ·) c → ∀ y ∈ c, ∃ ub ∈ S, ∀ z ∈ c, z ≤ ub
  · intro c hcs c_chain y hy
    clear hp_nonneg hp_dense p
    have cne : c.Nonempty := ⟨y, hy⟩
    have hcd : DirectedOn (· ≤ ·) c := c_chain.directedOn
    refine' ⟨LinearPMap.sSup c hcd, _, fun _ ↦ LinearPMap.le_sSup hcd⟩
    rintro ⟨x, hx⟩ hxs
    have hdir : DirectedOn (· ≤ ·) (LinearPMap.domain '' c) :=
      directedOn_image.2 (hcd.mono fun h ↦ LinearPMap.domain_mono.monotone h)
    rcases (mem_sSup_of_directed (cne.image _) hdir).1 hx with ⟨_, ⟨f, hfc, rfl⟩, hfx⟩
    have : f ≤ LinearPMap.sSup c hcd := LinearPMap.le_sSup _ hfc
    convert ← hcs hfc ⟨x, hfx⟩ hxs using 1
    exact this.2 rfl
  obtain ⟨q, hqs, hpq, hq⟩ := zorn_nonempty_partialOrder₀ S hSc p hp_nonneg
  · refine' ⟨q, hpq, _, hqs⟩
    contrapose! hq
    have hqd : ∀ y, ∃ x : q.domain, (x : E) + y ∈ s := fun y ↦
      let ⟨x, hx⟩ := hp_dense y
      ⟨ofLe hpq.left x, hx⟩
    rcases step s q hqs hqd hq with ⟨r, hqr, hr⟩
    exact ⟨r, hr, hqr.le, hqr.ne'⟩
#align riesz_extension.exists_top RieszExtension.exists_top

end RieszExtension

/-- M. **Riesz extension theorem**: given a convex cone `s` in a vector space `E`, a submodule `p`,
and a linear `f : p → ℝ`, assume that `f` is nonnegative on `p ∩ s` and `p + s = E`. Then
there exists a globally defined linear function `g : E → ℝ` that agrees with `f` on `p`,
and is nonnegative on `s`. -/
theorem riesz_extension (s : ConvexCone ℝ E) (f : E →ₗ.[ℝ] ℝ)
    (nonneg : ∀ x : f.domain, (x : E) ∈ s → 0 ≤ f x)
    (dense : ∀ y, ∃ x : f.domain, (x : E) + y ∈ s) :
    ∃ g : E →ₗ[ℝ] ℝ, (∀ x : f.domain, g x = f x) ∧ ∀ x ∈ s, 0 ≤ g x := by
  rcases RieszExtension.exists_top s f nonneg dense
    with ⟨⟨g_dom, g⟩, ⟨-, hfg⟩, rfl : g_dom = ⊤, hgs⟩
  refine' ⟨g.comp (LinearMap.id.codRestrict ⊤ fun _ ↦ trivial), _, _⟩
  · exact fun x => (hfg rfl).symm
  · exact fun x hx => hgs ⟨x, _⟩ hx
#align riesz_extension riesz_extension

/-- **Hahn-Banach theorem**: if `N : E → ℝ` is a sublinear map, `f` is a linear map
defined on a subspace of `E`, and `f x ≤ N x` for all `x` in the domain of `f`,
then `f` can be extended to the whole space to a linear map `g` such that `g x ≤ N x`
for all `x`. -/
theorem exists_extension_of_le_sublinear (f : E →ₗ.[ℝ] ℝ) (N : E → ℝ)
    (N_hom : ∀ c : ℝ, 0 < c → ∀ x, N (c • x) = c * N x) (N_add : ∀ x y, N (x + y) ≤ N x + N y)
    (hf : ∀ x : f.domain, f x ≤ N x) :
    ∃ g : E →ₗ[ℝ] ℝ, (∀ x : f.domain, g x = f x) ∧ ∀ x, g x ≤ N x := by
  let s : ConvexCone ℝ (E × ℝ) :=
    { carrier := { p : E × ℝ | N p.1 ≤ p.2 }
      smul_mem' := fun c hc p hp =>
        calc
          N (c • p.1) = c * N p.1 := N_hom c hc p.1
          _ ≤ c * p.2 := mul_le_mul_of_nonneg_left hp hc.le
      add_mem' := fun x hx y hy => (N_add _ _).trans (add_le_add hx hy) }
  set f' := (-f).coprod (LinearMap.id.toPMap ⊤)
  have hf'_nonneg : ∀ x : f'.domain, x.1 ∈ s → 0 ≤ f' x := fun x (hx : N x.1.1 ≤ x.1.2) ↦ by
    simpa using le_trans (hf ⟨x.1.1, x.2.1⟩) hx
  have hf'_dense : ∀ y : E × ℝ, ∃ x : f'.domain, ↑x + y ∈ s
  · rintro ⟨x, y⟩
    refine' ⟨⟨(0, N x - y), ⟨f.domain.zero_mem, trivial⟩⟩, _⟩
    simp only [ConvexCone.mem_mk, mem_setOf_eq, Prod.fst_add, Prod.snd_add, zero_add,
      sub_add_cancel, le_rfl]
  obtain ⟨g, g_eq, g_nonneg⟩ := riesz_extension s f' hf'_nonneg hf'_dense
  replace g_eq : ∀ (x : f.domain) (y : ℝ), g (x, y) = y - f x := fun x y ↦
    (g_eq ⟨(x, y), ⟨x.2, trivial⟩⟩).trans (sub_eq_neg_add _ _).symm
  refine ⟨-g.comp (inl ℝ E ℝ), fun x ↦ ?_, fun x ↦ ?_⟩
  · simp [g_eq x 0]
  · calc -g (x, 0) = g (0, N x) - g (x, N x) := by simp [← map_sub, ← map_neg]
      _ = N x - g (x, N x) := by simpa using g_eq 0 (N x)
      _ ≤ N x := by simpa using g_nonneg ⟨x, N x⟩ (le_refl (N x))
#align exists_extension_of_le_sublinear exists_extension_of_le_sublinear
```
