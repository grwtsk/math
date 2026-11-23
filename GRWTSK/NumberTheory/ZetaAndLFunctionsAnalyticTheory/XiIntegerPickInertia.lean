/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.Calculus.Deriv.Add
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.Analysis.Calculus.Deriv.Inv
import Mathlib.Analysis.Complex.Basic
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith

/-! # Shifted and central arithmetic sampling kernels

Finite identities used when passing from the two-sided xi ratio to an
integer-sampled Cauchy kernel and the signature of its pole pairing.
-/
noncomputable section
namespace GRWTSK.NumberTheory.XiIntegerPickInertia
open Finset Complex

/-- The xi observation uses the ratio at oppositely displaced arguments. -/
def shiftedRatio (f : ℝ → ℝ) (s h : ℝ) := f (s-h) / f (s+h)

/-- The first variation retains the true logarithmic derivative. -/
theorem shiftedRatio_deriv {f : ℝ → ℝ} {s v : ℝ} (hf : HasDerivAt f v s) (hs : f s ≠ 0) :
    HasDerivAt (shiftedRatio f s) (-2*v/f s) 0 := by
  have hm : HasDerivAt (fun h : ℝ => s-h) (-1) 0 := by
    simpa [Pi.sub_def,id_eq] using ((hasDerivAt_const (0:ℝ) s).sub (hasDerivAt_id (0:ℝ)))
  have hp : HasDerivAt (fun h : ℝ => s+h) 1 0 := by
    simpa [Pi.add_def,id_eq] using ((hasDerivAt_const (0:ℝ) s).add (hasDerivAt_id (0:ℝ)))
  have h₁ := (show HasDerivAt f v (s-0) by simpa using hf).comp 0 hm
  have h₂ := (show HasDerivAt f v (s+0) by simpa using hf).comp 0 hp
  convert h₁.div h₂ (by simpa using hs) using 1
  · rfl
  · simp
    field_simp
    ring

/-- First variation of an actual two-sample Pick entry. -/
theorem central_pick_deriv {f : ℝ → ℝ} {s t v w d : ℝ}
    (hf : HasDerivAt f v s) (hg : HasDerivAt f w t) (hs : f s ≠ 0) (ht : f t ≠ 0) :
    HasDerivAt (fun h => (1-shiftedRatio f s h * shiftedRatio f t h)/d)
      (2*(v/f s+w/f t)/d) 0 := by
  have h := (shiftedRatio_deriv hf hs).mul (shiftedRatio_deriv hg ht)
  convert (((hasDerivAt_const (0:ℝ) 1).sub h).div_const d) using 1
  simp [shiftedRatio,hs,ht]
  ring

/-- Divided differences of a finite meromorphic partial-fraction sum
recover the exact Cauchy Gram entries, with every residue visible. -/
theorem cauchy_divided_difference {ι : Type*} (s : Finset ι) (a w : ι → ℂ)
    (z u : ℂ) (hu : z ≠ u) (hz : ∀ j ∈ s, a j ≠ z) (hw : ∀ j ∈ s, a j ≠ u) :
    ((∑ j ∈ s, w j/(a j-z))-(∑ j ∈ s, w j/(a j-u)))/(z-u) =
      ∑ j ∈ s, w j/((a j-z)*(a j-u)) := by
  rw [← sum_sub_distrib, sum_div]
  refine sum_congr rfl fun j hj => ?_
  field_simp [sub_ne_zero.mpr hu,sub_ne_zero.mpr (hz j hj),sub_ne_zero.mpr (hw j hj)]
  ring

/-- In real trial coordinates the swap pairing has one negative square
per conjugate pair. Complex coordinates follow by applying this twice. -/
theorem finite_swap_signature {ι : Type*} (s : Finset ι) (u v : ι → ℝ) :
    ∑ j ∈ s, 2*u j*v j =
      (∑ j ∈ s, (u j+v j)^2/2) - ∑ j ∈ s, (u j-v j)^2/2 := by
  rw [← sum_sub_distrib]
  exact sum_congr rfl fun j _ => by ring

/-- Diagonal congruence clears the denominator of the two Blaschke factors. -/
theorem pick_quotient_congruence {u v a b : ℂ} (hv : v ≠ 0) (hb : b ≠ 0) :
    v*b*(1-(u/v)*(a/b)) = (1-u*a)-(1-v*b) := by
  field_simp
  ring

end GRWTSK.NumberTheory.XiIntegerPickInertia
