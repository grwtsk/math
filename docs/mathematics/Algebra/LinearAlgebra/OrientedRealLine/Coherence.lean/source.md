# Complete source: GRWTSK.LinearAlgebra.OrientedRealLine.Coherence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a73475cae6506de6617d61f07a981b7af8bdaf7e` · SHA-256 `2770dab9caf784cc7c890310b7e199b66187cda33fb8dc956ad35bc30656e5dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license as described in the file LICENSE.
Uses the pinned Mathlib library, whose upstream license is Apache-2.0.

Cycle obstructions and poly-isomorphism counterexamples for coordinate lines.
No identification of this abstract model with an arithmetic source is made.
-/
import GRWTSK.LinearAlgebra.OrientedRealLine.PositiveScale
import Mathlib.Data.Set.Insert

set_option autoImplicit false

noncomputable section

namespace GRWTSK.LinearAlgebra.OrientedRealLine

open PositiveScaleEquiv

theorem not_identity_of_scale_ne_one {L : Line} (f : PositiveScaleEquiv L L)
    (hscale : f.scale ≠ 1) : f.linearEquiv ≠ LinearEquiv.refl ℝ L.Carrier := by
  intro h
  exact hscale (scale_eq_one_of_identity f h)

/-- A single unbalanced square normalization obstructs an actual cycle identity. -/
theorem square_scale_cycle_not_identity {L : Line} (j : ℕ) (hj : 1 < j)
    (f : PositiveScaleEquiv L L) (hf : f.scale = (j : ℝ) ^ 2) :
    f.linearEquiv ≠ LinearEquiv.refl ℝ L.Carrier := by
  apply not_identity_of_scale_ne_one f
  rw [hf]
  have hjR : (1 : ℝ) < j := by exact_mod_cast hj
  nlinarith

open scoped BigOperators

/-- The unbalanced factor may occur on a closing edge of an arbitrarily long cycle. -/
theorem Chain.square_closure_not_commuting (C : Chain) (n : ℕ)
    (close : PositiveScaleEquiv (C.object n) (C.object 0))
    (j : ℕ) (hj : 1 < j) (hclose : close.scale = (j : ℝ) ^ 2)
    (hedges : ∀ i ∈ Finset.range n, (C.edge i).scale = 1) :
    ((C.transport n).trans close).linearEquiv ≠
      LinearEquiv.refl ℝ (C.object 0).Carrier := by
  apply square_scale_cycle_not_identity j hj
  rw [PositiveScaleEquiv.scale_trans, C.scale_transport, hclose]
  have hprod : (∏ i ∈ Finset.range n, (C.edge i).scale) = 1 :=
    Finset.prod_eq_one hedges
  rw [hprod, mul_one]

/-- Route defect is attached to two actual arrows with the same endpoints. -/
def routeDefect {L M : Line} (left right : PositiveScaleEquiv L M) : ℝ :=
  left.scale / right.scale

theorem routeDefect_eq_one_of_routes_equal {L M : Line}
    (left right : PositiveScaleEquiv L M) (h : left.linearEquiv = right.linearEquiv) :
    routeDefect left right = 1 := by
  rw [routeDefect, scale_eq_of_linearEquiv_eq left right h]
  exact div_self (ne_of_gt right.scale_pos)

theorem routeDefect_eq_square {L M : Line} (left right : PositiveScaleEquiv L M)
    (j : ℝ) (h : left.scale = j ^ 2 * right.scale) :
    routeDefect left right = j ^ 2 := by
  rw [routeDefect, h, mul_div_cancel_right₀ _ (ne_of_gt right.scale_pos)]

/-- A lower bound for route distortion gives the exact calibration used by repair. -/
theorem scale_lower_of_defect_lower {L M : Line}
    (actual reference : PositiveScaleEquiv L M) (κ α : ℝ)
    (hκ : 0 ≤ κ) (href : α ≤ reference.scale)
    (hdefect : κ ≤ routeDefect actual reference) : κ * α ≤ actual.scale := by
  calc
    κ * α ≤ κ * reference.scale := mul_le_mul_of_nonneg_left href hκ
    _ ≤ actual.scale := (le_div_iff₀ reference.scale_pos).mp hdefect

theorem square_scaled_routes_ne {L M : Line} (left right : PositiveScaleEquiv L M)
    (j : ℕ) (hj : 1 < j) (h : left.scale = (j : ℝ) ^ 2 * right.scale) :
    left.linearEquiv ≠ right.linearEquiv := by
  intro heq
  have hd := routeDefect_eq_one_of_routes_equal left right heq
  rw [routeDefect_eq_square left right j h] at hd
  have hjR : (1 : ℝ) < j := by exact_mod_cast hj
  nlinarith

/-- Every edge has a genuine inverse, but the three forward edges have holonomy four. -/
theorem reversible_edges_need_not_descend :
    ∃ f g h : PositiveScaleEquiv realLine realLine,
      (f.trans f.symm).linearEquiv = LinearEquiv.refl ℝ realLine.Carrier ∧
      (g.trans g.symm).linearEquiv = LinearEquiv.refl ℝ realLine.Carrier ∧
      (h.trans h.symm).linearEquiv = LinearEquiv.refl ℝ realLine.Carrier ∧
      ((f.trans g).trans h).scale = 4 ∧
      ((f.trans g).trans h).linearEquiv ≠ LinearEquiv.refl ℝ realLine.Carrier := by
  let f := dilation 2 (by norm_num)
  let h := dilation 1 (by norm_num)
  refine ⟨f, f, h, ?_, ?_, ?_, ?_, ?_⟩
  · exact f.linearEquiv.self_trans_symm
  · exact f.linearEquiv.self_trans_symm
  · exact h.linearEquiv.self_trans_symm
  · norm_num [f, h, PositiveScaleEquiv.trans, dilation]
  · apply not_identity_of_scale_ne_one
    norm_num [f, h, PositiveScaleEquiv.trans, dilation]

/-- A poly-isomorphism is a set of actual maps, with no distinguished member. -/
abbrev PolyIsomorphism (L M : Line) := Set (PositiveScaleEquiv L M)

/-- Existence of one normalization satisfying a bound does not give invariance over the family. -/
theorem poly_isomorphism_some_bound_not_all :
    ∃ P : PolyIsomorphism realLine realLine,
      (∃ f ∈ P, realLine.coordinate (f.linearEquiv (realLine.coordinate.symm 1)) ≤ 1) ∧
      ¬ (∀ f ∈ P, realLine.coordinate (f.linearEquiv (realLine.coordinate.symm 1)) ≤ 1) := by
  let f := dilation 1 (by norm_num)
  let g := dilation 2 (by norm_num)
  refine ⟨{f, g}, ⟨f, by simp, ?_⟩, ?_⟩
  · rw [f.realizes_scale, realLine.coordinate.apply_symm_apply]
    norm_num [f, dilation]
  · intro hall
    have hg := hall g (by simp)
    rw [g.realizes_scale, realLine.coordinate.apply_symm_apply] at hg
    norm_num [g, dilation] at hg

/-- An explicit aggregation map can average normalizations without identifying routes. -/
def meanScale {L M : Line} (f g : PositiveScaleEquiv L M) : ℝ :=
  (f.scale + g.scale) / 2

theorem mean_scale_does_not_identify_routes :
    ∃ f g : PositiveScaleEquiv realLine realLine,
      meanScale f g = 2 ∧ f.linearEquiv ≠ g.linearEquiv := by
  let f := dilation 1 (by norm_num)
  let g := dilation 3 (by norm_num)
  refine ⟨f, g, ?_, ?_⟩
  · norm_num [meanScale, f, g, dilation]
  · intro heq
    have hs := scale_eq_of_linearEquiv_eq f g heq
    norm_num [f, g, dilation] at hs

end GRWTSK.LinearAlgebra.OrientedRealLine
```
