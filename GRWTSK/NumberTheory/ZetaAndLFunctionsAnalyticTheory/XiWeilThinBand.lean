/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Complex.Basic
import Mathlib.LinearAlgebra.Lagrange
import Mathlib.Tactic

/-! Finite rational interpolation and exterior bounds for the thin Fourier sections
of the Galerkin Weil form. The accompanying analytic argument estimates the cost of
this interpolation at growing degree. -/

open Finset Polynomial
open scoped ComplexConjugate

namespace GRWTSK.XiWeilThinBand

/-- Realize arbitrary prescribed values on a finite set disjoint from the poles
by partial fractions on the fixed grid. Zero target values erase unwanted nodes. -/
theorem cauchy_interpolation {ι κ : Type*} [DecidableEq ι] [DecidableEq κ]
    {s : Finset ι} {t : Finset κ} {x : ι → ℂ} {y : κ → ℂ}
    (hx : Set.InjOn x s) (hy : Set.InjOn y t)
    (hdisj : ∀ j ∈ t, ∀ i ∈ s, y j ≠ x i)
    (hcard : t.card ≤ s.card) (values : κ → ℂ) :
    ∃ c : ι → ℂ, ∀ j ∈ t, ∑ i ∈ s, c i / (y j - x i) = values j := by
  let D := Lagrange.nodal s x
  let q := Lagrange.interpolate t y (fun j => D.eval (y j) * values j)
  have hq : q.degree < (s.card : WithBot ℕ) :=
    (Lagrange.degree_interpolate_lt _ hy).trans_le (by exact_mod_cast hcard)
  refine ⟨fun i => Lagrange.nodalWeight s x i * q.eval (x i), ?_⟩
  intro j hj
  apply mul_left_cancel₀ (Lagrange.eval_nodal_not_at_node (hdisj j hj))
  calc
    D.eval (y j) * _ = D.eval (y j) *
        (∑ i ∈ s, Lagrange.nodalWeight s x i * (y j - x i)⁻¹ * q.eval (x i)) := by
          congr 1
          apply sum_congr rfl
          intro i _
          rw [div_eq_mul_inv]
          ring
    _ = (Lagrange.interpolate s x (fun i => q.eval (x i))).eval (y j) :=
      (Lagrange.eval_interpolate_not_at_node _ (hdisj j hj)).symm
    _ = q.eval (y j) := by rw [← Lagrange.eq_interpolate hx hq]
    _ = D.eval (y j) * values j := Lagrange.eval_interpolate_at_node _ hy hj

/-- Lower bound for the product over Fourier nodes outside the retained band. -/
theorem nodal_lower {ι : Type*} (s : Finset ι) (x : ι → ℂ) {Ω : ℝ} {z : ℂ}
    (hΩ : ∀ i ∈ s, ‖x i‖ ≤ Ω) (hz : Ω ≤ ‖z‖) :
    (‖z‖ - Ω) ^ s.card ≤ ‖(Lagrange.nodal s x).eval z‖ := by
  rw [Lagrange.eval_nodal, norm_prod, ← prod_const]
  exact prod_le_prod₀ (fun _ _ => sub_nonneg.mpr hz)
    (fun i hi => (sub_le_sub_left (hΩ i hi) _).trans (norm_sub_norm_le z (x i)))

/-- Prescribing opposite transform values at a nonreal conjugate pair makes its
contribution negative for every complex amplitude, including mixtures of tests. -/
theorem pair_negative_square (s u : ℂ) (hs : s ≠ 0) :
    let a := s * ((conj s / s) * u)
    let b := conj s * (-u)
    (a * conj b + b * conj a).re = -2 * ‖s‖ ^ 2 * ‖u‖ ^ 2 := by
  dsimp only
  have h : s * (conj s / s * u) = conj s * u := by field_simp
  rw [h, mul_neg, map_neg, mul_neg, neg_mul, Complex.mul_conj]
  simp [Complex.sq_norm, Complex.normSq_mul]
  ring

end GRWTSK.XiWeilThinBand
