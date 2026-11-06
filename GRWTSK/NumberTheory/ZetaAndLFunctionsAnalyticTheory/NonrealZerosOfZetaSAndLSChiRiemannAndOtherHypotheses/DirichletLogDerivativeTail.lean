/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.MeasureAndIntegration.LogarithmicPowerTail
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CubicZetaIdentity
import Mathlib.NumberTheory.LSeries.DirichletContinuation
import Mathlib.NumberTheory.LSeries.Nonvanishing

/-!
# Arithmetic Euler source, complete omitted tails and integer endpoints

Reuse the upstream chi*vonMangoldt identity and transfer its derivative to the
actual continued L-function by equality on an OPEN neighborhood. For M>=1,
alpha>0 and Re(s)>=1+2*alpha, the complete tail has norm at most
 exp(-alpha*log M)/alpha^2.
Every omitted term is paid by an integral cell, using |chi(n)|<=1 and
Lambda(n)<=log n. This absolute Dirichlet series is NOT continued into the
critical strip. The estimate is deliberately coarse, uniform in the character.

The cutoff includes M; the tail begins at M+1. Half-weight endpoints have their
own exact correction, including for the finite twisted Chebyshev source.
No Perron inversion, shifted contour identity or infinite zero sum is assumed.
Source-side convergence does not control a critical-strip reciprocal.

Upstream Michael Stoll/David Loeffler mathematics retains its authorship and
license. Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
AI-assisted source; compilation, kernel, axiom audit and review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set Filter
open scoped Topology BigOperators LSeries.notation

namespace GRWTSK.NumberTheory.Conditional.DirichletLogDerivativeTail

open GRWTSK.Analysis.RealAnalysis.PowerCellMajorant
open GRWTSK.Analysis.RealAnalysis.LogarithmicPowerTail
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.RiemannHypothesis.CubicZetaIdentity

variable {N : ℕ} [NeZero N]

def coefficient (χ : DirichletCharacter ℂ N) (n : ℕ) : ℂ :=
  χ (n : ZMod N) * (ArithmeticFunction.vonMangoldt n : ℂ)

/-- The upstream term retains its explicit zero-index convention. -/
def summand (χ : DirichletCharacter ℂ N) (s : ℂ) (n : ℕ) : ℂ :=
  LSeries.term (coefficient χ) s n

theorem summand_eq_logPower (χ : DirichletCharacter ℂ N) (s : ℂ) (n : ℕ)
    (positive : 0 < n) :
    summand χ s n = coefficient χ n * logPower (n : ℝ) (-s) := by
  rw [logPower_neg_eq_reciprocal_cpow (n : ℝ) (by exact_mod_cast positive) s]
  simp [summand, LSeries.term, Nat.ne_of_gt positive, div_eq_mul_inv]

theorem summable_source (χ : DirichletCharacter ℂ N) (s : ℂ) (halfPlane : 1 < s.re) :
    Summable (summand χ s) :=
  χ.LSeriesSummable_twist_vonMangoldt halfPlane

/-- Actual arithmetic coefficients are identified with the analytic source. -/
theorem source_identity (χ : DirichletCharacter ℂ N) (s : ℂ) (halfPlane : 1 < s.re) :
    (∑' n : ℕ, summand χ s n) = -logDeriv χ.LFunction s := by
  have near : LSeries (fun n : ℕ => χ (n : ZMod N)) =ᶠ[𝓝 s] χ.LFunction := by
    apply eventuallyEq_of_mem
      ((isOpen_lt continuous_const Complex.continuous_re).mem_nhds halfPlane)
    intro w hw
    exact (χ.LFunction_eq_LSeries hw).symm
  have h := χ.LSeries_twist_vonMangoldt_eq halfPlane
  rw [near.deriv_eq, near.eq_of_nhds] at h
  simpa only [summand, coefficient, LSeries, logDeriv, neg_div] using h

/-- The last included integer is M. -/
def partialSum (χ : DirichletCharacter ℂ N) (M : ℕ) (s : ℂ) : ℂ :=
  ∑ n ∈ Finset.range (M + 1), summand χ s n

/-- Every omitted term is included, starting strictly after M. -/
def tail (χ : DirichletCharacter ℂ N) (M : ℕ) (s : ℂ) : ℂ :=
  ∑' k : ℕ, summand χ s (k + (M + 1))

theorem exact_balance (χ : DirichletCharacter ℂ N) (M : ℕ)
    (s : ℂ) (halfPlane : 1 < s.re) :
    -logDeriv χ.LFunction s = partialSum χ M s + tail χ M s := by
  rw [← source_identity χ s halfPlane]
  exact ((summable_source χ s halfPlane).sum_add_tsum_nat_add (M + 1)).symm

theorem coefficient_norm_bound (χ : DirichletCharacter ℂ N) (n : ℕ) :
    ‖coefficient χ n‖ ≤ Real.log n := by
  unfold coefficient
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
  exact ((mul_le_mul_of_nonneg_right (χ.norm_le_one (n : ZMod N))
    ArithmeticFunction.vonMangoldt_nonneg).trans_eq (one_mul _)).trans
    ArithmeticFunction.vonMangoldt_le_log

theorem summand_bound (χ : DirichletCharacter ℂ N) (s : ℂ)
    (α : ℝ) (positiveMargin : 0 < α) (halfPlane : 1 + 2 * α ≤ s.re)
    (n : ℕ) (positive : 0 < n) :
    ‖summand χ s n‖ ≤ decayPower (α + 1) (n : ℝ) / α := by
  have hn : (1 : ℝ) ≤ n := by exact_mod_cast (Nat.succ_le_of_lt positive)
  have logNonnegative : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg hn
  have normPower : ‖logPower (n : ℝ) (-s)‖ = decayPower s.re (n : ℝ) := by
    simp [logPower, decayPower, Complex.norm_exp, Complex.mul_re]
  rw [summand_eq_logPower χ s n positive, norm_mul, normPower]
  calc
    _ ≤ Real.log (n : ℝ) * decayPower s.re (n : ℝ) :=
      mul_le_mul_of_nonneg_right (coefficient_norm_bound χ n) (decayPower_pos _ _).le
    _ ≤ Real.log (n : ℝ) * decayPower (1 + 2 * α) (n : ℝ) := by
      apply mul_le_mul_of_nonneg_left _ logNonnegative
      apply Real.exp_le_exp.mpr
      exact mul_le_mul_of_nonneg_right (neg_le_neg halfPlane) logNonnegative
    _ ≤ _ := log_mul_decay_le (n : ℝ) α hn positiveMargin

/-- Explicit bound for the COMPLETE arithmetic tail. -/
theorem tail_bound (χ : DirichletCharacter ℂ N) (M : ℕ) (cutoff : 0 < M)
    (s : ℂ) (α : ℝ) (positiveMargin : 0 < α) (halfPlane : 1 + 2 * α ≤ s.re) :
    ‖tail χ M s‖ ≤ decayPower α (M : ℝ) / α ^ 2 := by
  apply GRWTSK.Analysis.RealAnalysis.LogarithmicPowerTail.norm_tsum_le
    (fun k => summand χ s (k + (M + 1))) (M : ℝ) α
    (by exact_mod_cast cutoff) positiveMargin
  intro k
  simpa only [Nat.cast_add, Nat.cast_one, add_assoc, add_comm, add_left_comm] using
    summand_bound χ s α positiveMargin halfPlane (k + (M + 1)) (by omega)

theorem truncation_error (χ : DirichletCharacter ℂ N) (M : ℕ) (cutoff : 0 < M)
    (s : ℂ) (α : ℝ) (positiveMargin : 0 < α) (halfPlane : 1 + 2 * α ≤ s.re) :
    ‖-logDeriv χ.LFunction s - partialSum χ M s‖ ≤ decayPower α (M : ℝ) / α ^ 2 := by
  rw [exact_balance χ M s (by linarith), add_sub_cancel_left]
  exact tail_bound χ M cutoff s α positiveMargin halfPlane

theorem universal_truncation_bound :
    ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q) (M : ℕ), 0 < M →
      ∀ (s : ℂ) (α : ℝ), 0 < α → 1 + 2 * α ≤ s.re →
      ‖-logDeriv χ.LFunction s - partialSum χ M s‖ ≤ decayPower α (M : ℝ) / α ^ 2 := by
  intro q hq χ M hM s α hα hs
  exact truncation_error χ M hM s α hα hs

def starPartial (χ : DirichletCharacter ℂ N) (M : ℕ) (s : ℂ) : ℂ :=
  (∑ n ∈ Finset.range M, summand χ s n) + summand χ s M / 2

theorem partial_eq_star_add_endpoint (χ : DirichletCharacter ℂ N) (M : ℕ) (s : ℂ) :
    partialSum χ M s = starPartial χ M s + summand χ s M / 2 := by
  unfold partialSum starPartial
  rw [Finset.sum_range_succ]
  ring

theorem exact_star_balance (χ : DirichletCharacter ℂ N) (M : ℕ)
    (s : ℂ) (halfPlane : 1 < s.re) :
    -logDeriv χ.LFunction s =
      starPartial χ M s + summand χ s M / 2 + tail χ M s := by
  rw [exact_balance χ M s halfPlane, partial_eq_star_add_endpoint]

theorem corrected_star_error (χ : DirichletCharacter ℂ N) (M : ℕ) (cutoff : 0 < M)
    (s : ℂ) (α : ℝ) (positiveMargin : 0 < α) (halfPlane : 1 + 2 * α ≤ s.re) :
    ‖-logDeriv χ.LFunction s - starPartial χ M s - summand χ s M / 2‖ ≤
      decayPower α (M : ℝ) / α ^ 2 := by
  have h := truncation_error χ M cutoff s α positiveMargin halfPlane
  rw [partial_eq_star_add_endpoint] at h
  simpa only [sub_add_eq_sub_sub] using h

/-- The actual finite twisted Chebyshev source with its closed endpoint. -/
def psiClosed (χ : DirichletCharacter ℂ N) (M : ℕ) : ℂ :=
  ∑ n ∈ Finset.range (M + 1), coefficient χ n

def psiStar (χ : DirichletCharacter ℂ N) (M : ℕ) : ℂ :=
  (∑ n ∈ Finset.range M, coefficient χ n) + coefficient χ M / 2

theorem psi_endpoint_correction (χ : DirichletCharacter ℂ N) (M : ℕ) :
    psiClosed χ M - psiStar χ M = coefficient χ M / 2 := by
  unfold psiClosed psiStar
  rw [Finset.sum_range_succ]
  ring

theorem psiClosed_eq_star_iff (χ : DirichletCharacter ℂ N) (M : ℕ) :
    psiClosed χ M = psiStar χ M ↔ coefficient χ M = 0 := by
  rw [← sub_eq_zero, psi_endpoint_correction, div_eq_zero_iff]
  norm_num

end GRWTSK.NumberTheory.Conditional.DirichletLogDerivativeTail
