# Complete source: GRWTSK.LinearAlgebra.OrientedRealLine.PositiveScale

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4c5cba89981ecebfd3506653fd07c766a7dca31` · SHA-256 `a805952c93780ad82dbd127e6646853e5bc953c4462426aff576b179d4b84d24`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license as described in the file LICENSE.
Uses the pinned Mathlib library, whose upstream license is Apache-2.0.

Oriented real lines with explicitly chosen positive coordinates. A coordinate
fixes a unit as well as an orientation: scales are relative to these units.
These are abstract linear-algebra statements, with no application to any
particular arithmetic construction asserted.
-/
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.Data.Real.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

set_option autoImplicit false

noncomputable section

namespace GRWTSK.LinearAlgebra.OrientedRealLine

universe u

/-- A real line with a chosen coordinate; its positive half-line is coordinate-positive. -/
structure Line where
  Carrier : Type u
  addCommGroup : AddCommGroup Carrier
  moduleReal : Module ℝ Carrier
  coordinate : Carrier ≃ₗ[ℝ] ℝ

attribute [instance] Line.addCommGroup Line.moduleReal

theorem finrank_one (L : Line) : Module.finrank ℝ L.Carrier = 1 := by
  rw [L.coordinate.finrank_eq]
  exact CommSemiring.finrank_self ℝ

/-- The order is recorded as a relation, avoiding an implicit identification of copies. -/
def CoordLE (L : Line) (x y : L.Carrier) : Prop := L.coordinate x ≤ L.coordinate y

/-- A positive equivalence, with its coordinate normalization retained as data. -/
structure PositiveScaleEquiv (L M : Line) where
  linearEquiv : L.Carrier ≃ₗ[ℝ] M.Carrier
  scale : ℝ
  scale_pos : 0 < scale
  realizes_scale : ∀ x, M.coordinate (linearEquiv x) = scale * L.coordinate x

namespace PositiveScaleEquiv

variable {L M N : Line}

def refl (L : Line) : PositiveScaleEquiv L L where
  linearEquiv := LinearEquiv.refl ℝ L.Carrier
  scale := 1
  scale_pos := zero_lt_one
  realizes_scale := by intro x; simp

/-- `f.trans g` first applies `f` and then `g`. -/
def trans (f : PositiveScaleEquiv L M) (g : PositiveScaleEquiv M N) :
    PositiveScaleEquiv L N where
  linearEquiv := f.linearEquiv.trans g.linearEquiv
  scale := g.scale * f.scale
  scale_pos := mul_pos g.scale_pos f.scale_pos
  realizes_scale := by
    intro x
    change N.coordinate (g.linearEquiv (f.linearEquiv x)) = _
    rw [g.realizes_scale, f.realizes_scale, mul_assoc]

@[simp] theorem scale_trans (f : PositiveScaleEquiv L M) (g : PositiveScaleEquiv M N) :
    (f.trans g).scale = g.scale * f.scale := rfl

def symm (f : PositiveScaleEquiv L M) : PositiveScaleEquiv M L where
  linearEquiv := f.linearEquiv.symm
  scale := f.scale⁻¹
  scale_pos := inv_pos.mpr f.scale_pos
  realizes_scale := by
    intro y
    have h := f.realizes_scale (f.linearEquiv.symm y)
    rw [f.linearEquiv.apply_symm_apply] at h
    rw [h, ← mul_assoc, inv_mul_cancel₀ (ne_of_gt f.scale_pos), one_mul]

@[simp] theorem scale_symm (f : PositiveScaleEquiv L M) : f.symm.scale = f.scale⁻¹ := rfl

theorem preserves_order (f : PositiveScaleEquiv L M) (x y : L.Carrier) :
    CoordLE M (f.linearEquiv x) (f.linearEquiv y) ↔ CoordLE L x y := by
  simp only [CoordLE, f.realizes_scale, mul_le_mul_iff_right₀ f.scale_pos]

/-- Equality of the underlying routes forces equality of their normalizations. -/
theorem scale_eq_of_linearEquiv_eq (f g : PositiveScaleEquiv L M)
    (h : f.linearEquiv = g.linearEquiv) : f.scale = g.scale := by
  have hf := f.realizes_scale (L.coordinate.symm 1)
  have hg := g.realizes_scale (L.coordinate.symm 1)
  rw [h] at hf
  simpa only [L.coordinate.apply_symm_apply, mul_one] using hf.symm.trans hg

theorem scale_eq_one_of_identity (f : PositiveScaleEquiv L L)
    (h : f.linearEquiv = LinearEquiv.refl ℝ L.Carrier) : f.scale = 1 :=
  scale_eq_of_linearEquiv_eq f (refl L) h

/-- The standard real coordinate line. -/
def realLine : Line where
  Carrier := ℝ
  addCommGroup := inferInstance
  moduleReal := inferInstance
  coordinate := LinearEquiv.refl ℝ ℝ

/-- A positive scalar gives an actual linear equivalence, not just a scale label. -/
def dilation (s : ℝ) (hs : 0 < s) : PositiveScaleEquiv realLine realLine where
  linearEquiv := LinearEquiv.smulOfNeZero ℝ ℝ s (ne_of_gt hs)
  scale := s
  scale_pos := hs
  realizes_scale := by intro x; rfl

@[simp] theorem dilation_scale (s : ℝ) (hs : 0 < s) : (dilation s hs).scale = s := rfl

end PositiveScaleEquiv

open scoped BigOperators

/-- A composable, genuinely indexed family of arrows between distinct line copies. -/
structure Chain where
  object : ℕ → Line
  edge : ∀ i, PositiveScaleEquiv (object i) (object (i + 1))

namespace Chain

def transport (C : Chain) (n : ℕ) : PositiveScaleEquiv (C.object 0) (C.object n) :=
  Nat.rec (motive := fun k => PositiveScaleEquiv (C.object 0) (C.object k))
    (PositiveScaleEquiv.refl (C.object 0))
    (fun k route => route.trans (C.edge k)) n

theorem scale_transport (C : Chain) (n : ℕ) :
    (C.transport n).scale = ∏ i ∈ Finset.range n, (C.edge i).scale := by
  induction n with
  | zero => simp [transport, PositiveScaleEquiv.refl]
  | succ n ih =>
    change ((C.transport n).trans (C.edge n)).scale = _
    rw [PositiveScaleEquiv.scale_trans, ih, Finset.prod_range_succ, mul_comm]

/-- A commuting closed diagram includes its closing arrow and actual route equality. -/
theorem cycle_scale (C : Chain) (n : ℕ)
    (close : PositiveScaleEquiv (C.object n) (C.object 0))
    (commutes : ((C.transport n).trans close).linearEquiv =
      LinearEquiv.refl ℝ (C.object 0).Carrier) :
    close.scale * (∏ i ∈ Finset.range n, (C.edge i).scale) = 1 := by
  rw [← C.scale_transport n]
  exact PositiveScaleEquiv.scale_eq_one_of_identity _ commutes

end Chain

/-- Descent to a common comparison object requires all triple cocycle equations. -/
structure ComparisonCocycle {ι : Type*} (object : ι → Line) where
  arrow : ∀ i j, PositiveScaleEquiv (object i) (object j)
  identity : ∀ i, (arrow i i).linearEquiv = LinearEquiv.refl ℝ (object i).Carrier
  cocycle : ∀ i j k, ((arrow i j).trans (arrow j k)).linearEquiv = (arrow i k).linearEquiv

namespace ComparisonCocycle

theorem scale_cocycle {ι : Type*} {object : ι → Line}
    (C : ComparisonCocycle object) (i j k : ι) :
    (C.arrow j k).scale * (C.arrow i j).scale = (C.arrow i k).scale :=
  PositiveScaleEquiv.scale_eq_of_linearEquiv_eq _ _ (C.cocycle i j k)

theorem triangle_scale {ι : Type*} {object : ι → Line}
    (C : ComparisonCocycle object) (i j k : ι) :
    (C.arrow k i).scale * ((C.arrow j k).scale * (C.arrow i j).scale) = 1 := by
  rw [C.scale_cocycle, C.scale_cocycle]
  exact PositiveScaleEquiv.scale_eq_one_of_identity _ (C.identity i)

end ComparisonCocycle

/-- A simultaneous descent witness: one common line and a map from every object. -/
structure CommonComparison {ι : Type*} (object : ι → Line.{u}) where
  common : Line.{u}
  comparison : ∀ i, PositiveScaleEquiv (object i) common

namespace CommonComparison

/-- A common comparison object constructs every triple coherence equation. -/
def toCocycle {ι : Type*} {object : ι → Line} (D : CommonComparison object) :
    ComparisonCocycle object where
  arrow i j := (D.comparison i).trans (D.comparison j).symm
  identity i := (D.comparison i).linearEquiv.self_trans_symm
  cocycle i j k := by
    ext x
    change (D.comparison k).linearEquiv.symm
      ((D.comparison j).linearEquiv ((D.comparison j).linearEquiv.symm
        ((D.comparison i).linearEquiv x))) = _
    rw [(D.comparison j).linearEquiv.apply_symm_apply]
    rfl

theorem toCocycle_scale {ι : Type*} {object : ι → Line} (D : CommonComparison object)
    (i j : ι) :
    (D.toCocycle.arrow i j).scale = (D.comparison i).scale / (D.comparison j).scale := by
  simp only [toCocycle, PositiveScaleEquiv.scale_trans, PositiveScaleEquiv.scale_symm,
    div_eq_mul_inv, mul_comm]

end CommonComparison

end GRWTSK.LinearAlgebra.OrientedRealLine
```
