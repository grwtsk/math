import GRWTSK.ApproximationsAndExpansions.SeriesExpansionsEGTaylorLidstoneSeriesButNotFourierSeries.TaylorPolynomialCoefficients
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Series
import Mathlib.Analysis.SpecificLimits.Basic

/-!
# Actual sine and cosine Taylor polynomials at every degree

Local attribution: grwtsk contributors.
Grant Sanderson, Taylor series (2017-05-07), text adaptation Kurt Bruns,
https://www.3blue1brown.com/lessons/taylor-series/ .
All bodies, construction fields and inherited suppliers: NOT_RUN_USER_DEFERRED.

Actual derivative jets determine the existing finiteTaylor constructor. Paired
finite degree identities account for the zero coefficients; natural half-degree
indices then return imported analytic series to EVERY degree. Finite matching
alone is not used to infer analytic equality. No monotone error improvement or
arbitrary smooth-function analyticity is asserted.
-/

namespace GRWTSK.Approximation.TaylorTrigonometricConvergence

open Polynomial Filter
open GRWTSK.Approximation.TaylorPolynomialCoefficients
open scoped BigOperators Topology

noncomputable def cosineTerm (x : ℝ) (m : ℕ) : ℝ :=
  (-1 : ℝ)^m*x^(2*m)/((2*m).factorial : ℝ)

noncomputable def sineTerm (x : ℝ) (m : ℕ) : ℝ :=
  (-1 : ℝ)^m*x^(2*m+1)/((2*m+1).factorial : ℝ)

theorem cosine_even_jet (m : ℕ) : iteratedDeriv (2*m) Real.cos 0 = (-1 : ℝ)^m := by
  rw [Real.iteratedDeriv_even_cos]
  simp

theorem cosine_odd_jet (m : ℕ) : iteratedDeriv (2*m+1) Real.cos 0 = 0 := by
  rw [Real.iteratedDeriv_odd_cos]
  simp

theorem sine_even_jet (m : ℕ) : iteratedDeriv (2*m) Real.sin 0 = 0 := by
  rw [Real.iteratedDeriv_even_sin]
  simp

theorem sine_odd_jet (m : ℕ) : iteratedDeriv (2*m+1) Real.sin 0 = (-1 : ℝ)^m := by
  rw [Real.iteratedDeriv_odd_sin]
  simp

/-- The successor formula concerns the existing constructed polynomial, not a replacement series. -/
theorem taylor_eval_successor (f : ℝ → ℝ) (N : ℕ) (x : ℝ) :
    (finiteTaylor f (N+1)).eval x = (finiteTaylor f N).eval x +
      iteratedDeriv (N+1) f 0/((N+1).factorial : ℝ)*x^(N+1) := by
  simp [finiteTaylor, finitePolynomial, Finset.sum_range_succ, Polynomial.eval_finsetSum]

theorem cosine_odd_degree (m : ℕ) (x : ℝ) :
    (finiteTaylor Real.cos (2*m+1)).eval x = (finiteTaylor Real.cos (2*m)).eval x := by
  rw [taylor_eval_successor, cosine_odd_jet]
  simp

theorem cosine_even_sum (m : ℕ) (x : ℝ) :
    (finiteTaylor Real.cos (2*m)).eval x = ∑ k ∈ Finset.range (m+1), cosineTerm x k := by
  induction m with
  | zero => simp [finiteTaylor, finitePolynomial, cosineTerm, iteratedDeriv_zero]
  | succ m ih =>
    have he : 2*(m+1) = (2*m+1)+1 := by omega
    rw [he, taylor_eval_successor, cosine_odd_degree, ih, Finset.sum_range_succ]
    have hj : (2*m+1)+1 = 2*(m+1) := by omega
    rw [hj, cosine_even_jet]
    simp only [cosineTerm]
    ring

theorem sine_odd_step (m : ℕ) (x : ℝ) :
    (finiteTaylor Real.sin (2*m+1)).eval x =
      (finiteTaylor Real.sin (2*m)).eval x+sineTerm x m := by
  rw [taylor_eval_successor, sine_odd_jet]
  dsimp [sineTerm]
  ring

theorem sine_even_sum (m : ℕ) (x : ℝ) :
    (finiteTaylor Real.sin (2*m)).eval x = ∑ k ∈ Finset.range m, sineTerm x k := by
  induction m with
  | zero => simp [finiteTaylor, finitePolynomial, iteratedDeriv_zero]
  | succ m ih =>
    have he : 2*(m+1) = (2*m+1)+1 := by omega
    rw [he, taylor_eval_successor]
    have hj : (2*m+1)+1 = 2*(m+1) := by omega
    rw [hj, sine_even_jet]
    simp only [zero_div, zero_mul, add_zero]
    rw [sine_odd_step, ih, Finset.sum_range_succ]

theorem sine_odd_sum (m : ℕ) (x : ℝ) :
    (finiteTaylor Real.sin (2*m+1)).eval x = ∑ k ∈ Finset.range (m+1), sineTerm x k := by
  rw [sine_odd_step, sine_even_sum, Finset.sum_range_succ]

/-- Degree N has floor(N/2)+1 nonzero cosine terms, including the constant. -/
theorem cosine_every_degree_sum (N : ℕ) (x : ℝ) :
    (finiteTaylor Real.cos N).eval x = ∑ k ∈ Finset.range (N/2+1), cosineTerm x k := by
  have hmod := Nat.mod_lt N (by omega : 0 < 2)
  by_cases h : N%2 = 0
  · have he : N = 2*(N/2) := by omega
    conv_lhs => rw [he]
    exact cosine_even_sum (N/2) x
  · have he : N = 2*(N/2)+1 := by omega
    conv_lhs => rw [he]
    rw [cosine_odd_degree]
    exact cosine_even_sum (N/2) x

/-- Degree N has floor((N+1)/2) nonzero sine terms; degree0 is empty. -/
theorem sine_every_degree_sum (N : ℕ) (x : ℝ) :
    (finiteTaylor Real.sin N).eval x = ∑ k ∈ Finset.range ((N+1)/2), sineTerm x k := by
  have hmod := Nat.mod_lt N (by omega : 0 < 2)
  by_cases h : N%2 = 0
  · have he : N = 2*(N/2) := by omega
    have hi : (N+1)/2 = N/2 := by omega
    rw [hi]
    conv_lhs => rw [he]
    exact sine_even_sum (N/2) x
  · have he : N = 2*(N/2)+1 := by omega
    have hi : (N+1)/2 = N/2+1 := by omega
    rw [hi]
    conv_lhs => rw [he]
    exact sine_odd_sum (N/2) x

/-- Imported analytic convergence returns only after actual jets and finite observations agree. -/
theorem cosine_polynomials_tendsto (x : ℝ) :
    Tendsto (fun N : ℕ => (finiteTaylor Real.cos N).eval x) atTop (𝓝 (Real.cos x)) := by
  have hs : Tendsto (fun M : ℕ => ∑ k ∈ Finset.range M, cosineTerm x k)
      atTop (𝓝 (Real.cos x)) := by
    simpa only [cosineTerm] using (Real.hasSum_cos x).tendsto_sum_nat
  have hi : Tendsto (fun N : ℕ => N/2+1) atTop atTop :=
    (tendsto_add_atTop_nat 1).comp (Nat.tendsto_div_const_atTop (by omega : 2 ≠ 0))
  simpa only [cosine_every_degree_sum] using hs.comp hi

theorem sine_polynomials_tendsto (x : ℝ) :
    Tendsto (fun N : ℕ => (finiteTaylor Real.sin N).eval x) atTop (𝓝 (Real.sin x)) := by
  have hs : Tendsto (fun M : ℕ => ∑ k ∈ Finset.range M, sineTerm x k)
      atTop (𝓝 (Real.sin x)) := by
    simpa only [sineTerm] using (Real.hasSum_sin x).tendsto_sum_nat
  have hi : Tendsto (fun N : ℕ => (N+1)/2) atTop atTop :=
    (Nat.tendsto_div_const_atTop (by omega : 2 ≠ 0)).comp (tendsto_add_atTop_nat 1)
  simpa only [sine_every_degree_sum] using hs.comp hi

/-- Source finite examples occur in the same sequences whose analytic limits were supplied. -/
theorem source_finite_and_infinite (x : ℝ) :
    (finiteTaylor Real.sin 3).eval x = x-x^3/6 ∧
    (finiteTaylor Real.cos 4).eval x = 1-x^2/2+x^4/24 ∧
    Tendsto (fun N : ℕ => (finiteTaylor Real.sin N).eval x) atTop (𝓝 (Real.sin x)) ∧
    Tendsto (fun N : ℕ => (finiteTaylor Real.cos N).eval x) atTop (𝓝 (Real.cos x)) :=
  ⟨sine_cubic_formula x, cosine_quartic_formula x,
    sine_polynomials_tendsto x, cosine_polynomials_tendsto x⟩

end GRWTSK.Approximation.TaylorTrigonometricConvergence
