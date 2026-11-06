/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.RegularizedCharacterFormula
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DirichletLogDerivativeTail
import GRWTSK.FunctionsOfAComplexVariable.ZeroSumRemainders

/-!
# Quantitative arithmetic and zero-side finite explicit formula consumers

The pole-corrected zero formula returns to the actual -L'/L source before any
truncation of its complete zero inventory. The error retains the entire omitted
zero sum, retained weight errors and whole-boundary integrand error. The exact
normalization term w(1) remains in both observations.

On a vertical line in the absolute-convergence half-plane the arithmetic series
tail gives a finite upward-contour error 2*T*E_M*B. The factor i from ds=i*dt
is retained. Keeping the first two, zero, von Mangoldt terms also gives the
uniform source bound 1/alpha^2 for every positive modulus and character.

These are two finite interfaces. Prime-counting Perron inversion, critical-strip
contour shifts, horizontal bounds and infinite zero-sum convergence are NOT
inferred from them. SmoothedArithmeticHeightTail separately supplies complete
right-line Gamma-weighted height tails. Endpoint corrections remain explicit.
Primary proof: actual-source identities, complete finite inventories, circle
length, exact finite arithmetic truncation and uniform right-line bounds.
AI-assisted source; compilation, fresh kernel, axiom audit and review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set Metric MeasureTheory
open scoped Interval Topology BigOperators

namespace GRWTSK.NumberTheory.Conditional.ArithmeticExplicitRemainders

open GRWTSK.Analysis.ComplexAnalysis
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.Analysis.RealAnalysis.PowerCellMajorant
open ZeroSumRemainders
open DirichletLogDerivativeTail

variable {N : ℕ} [NeZero N]

/-- The actual compact normalized-source inventory, not an independently chosen list. -/
abbrev inventory (χ : DirichletCharacter ℂ N) (c : ℂ) (r : ℝ) : Finset ℂ :=
  (RegularizedCharacter.context χ).zeros (closedBall c r)
    (isCompact_closedBall c r) (subset_univ _)

theorem normalized_formula (χ : DirichletCharacter ℂ N) (c : ℂ) (r : ℝ)
    (inside : (1 : ℂ) ∈ ball c r)
    (boundary : ∀ z ∈ sphere c r, χ.LFunction z ≠ 0)
    (w : ℂ → ℂ) (analytic : AnalyticOnNhd ℂ w (closedBall c r)) :
    normalizedIntegral (fun z => -logDeriv χ.LFunction z * w z) c r =
      w 1 - fullSum (inventory χ c r) (analyticOrderNatAt (RegularizedCharacter.source χ)) w := by
  have h := (RegularizedCharacter.finite_explicit_formula χ c r inside boundary w analytic).2
  unfold normalizedIntegral fullSum
  rw [h]
  field_simp [FinitePrincipalPartCircle.period_ne_zero]
  <;> ring

/-- The complete pole-corrected comparison pays all three independent remainders. -/
theorem finite_error_formula (χ : DirichletCharacter ℂ N) (c : ℂ) (r : ℝ)
    (inside : (1 : ℂ) ∈ ball c r)
    (boundary : ∀ z ∈ sphere c r, χ.LFunction z ≠ 0)
    (w v : ℂ → ℂ) (analytic : AnalyticOnNhd ℂ w (closedBall c r))
    (keep : ℂ → Prop) [DecidablePred keep]
    (G : ℂ → ℂ) (integrable : CircleIntegrable G c r) (ε : ℝ)
    (error : ∀ z ∈ sphere c r, ‖G z - (-logDeriv χ.LFunction z * w z)‖ ≤ ε) :
    ‖normalizedIntegral G c r -
      (w 1 - retained (inventory χ c r)
        (analyticOrderNatAt (RegularizedCharacter.source χ)) keep v)‖ ≤
      r * ε + omittedBudget (inventory χ c r)
        (analyticOrderNatAt (RegularizedCharacter.source χ)) keep w +
      weightBudget (inventory χ c r)
        (analyticOrderNatAt (RegularizedCharacter.source χ)) keep w v := by
  have positive : 0 < r := dist_nonneg.trans_lt (mem_ball.mp inside)
  have hF := (RegularizedCharacter.finite_explicit_formula χ c r inside boundary w analytic).1
  have hboundary := boundary_error (fun z => -logDeriv χ.LFunction z * w z)
    G c r ε positive.le hF integrable error
  have hsum := corrected_error (w 1) (inventory χ c r)
    (analyticOrderNatAt (RegularizedCharacter.source χ)) keep w v
  rw [← normalized_formula χ c r inside boundary w analytic] at hsum
  exact ((norm_sub_le_norm_sub_add_norm_sub _
    (normalizedIntegral (fun z => -logDeriv χ.LFunction z * w z) c r) _).trans
      (add_le_add hboundary hsum)).trans_eq (by ring)

/-- A conductor-independent source bound in the absolute-convergence region. -/
theorem right_halfPlane_source_bound (χ : DirichletCharacter ℂ N)
    (s : ℂ) (α : ℝ) (positive : 0 < α) (halfPlane : 1 + 2 * α ≤ s.re) :
    ‖-logDeriv χ.LFunction s‖ ≤ 1 / α ^ 2 := by
  have first : partialSum χ 1 s = 0 := by
    norm_num [partialSum, summand, coefficient, LSeries.term, Finset.sum_range_succ]
  have h := truncation_error χ 1 (by norm_num) s α positive halfPlane
  simpa [first, decayPower] using h

def verticalLine (c t : ℝ) : ℂ := (c : ℂ) + (t : ℂ) * Complex.I

@[simp] theorem verticalLine_re (c t : ℝ) : (verticalLine c t).re = c := by
  simp [verticalLine]

/-- The factor i is the actual upward orientation ds=i*dt. -/
def verticalIntegral (F : ℂ → ℂ) (c T : ℝ) (kernel : ℝ → ℂ) : ℂ :=
  Complex.I * ∫ t in (-T)..T, F (verticalLine c t) * kernel t

theorem source_continuous_on_vertical (χ : DirichletCharacter ℂ N)
    (c : ℝ) (halfPlane : 1 < c) :
    Continuous (fun t : ℝ => -logDeriv χ.LFunction (verticalLine c t)) := by
  apply continuous_iff_continuousAt.mpr
  intro t
  have hp : verticalLine c t ≠ 1 := by
    intro same
    have hre := congrArg Complex.re same
    simp only [verticalLine_re, Complex.one_re] at hre
    linarith
  have analytic := (SourceInventories.characterContext χ).analytic (verticalLine c t) hp
  have nonzero := χ.LFunction_ne_zero_of_one_le_re (Or.inr hp)
    (by simpa only [verticalLine_re] using halfPlane.le)
  have hc : ContinuousAt (fun z => -logDeriv χ.LFunction z) (verticalLine c t) := by
    simpa only [logDeriv] using (analytic.deriv.div analytic nonzero).neg.continuousAt
  exact hc.comp (by unfold verticalLine; fun_prop)

theorem partialSum_continuous_on_vertical (χ : DirichletCharacter ℂ N) (M : ℕ) (c : ℝ) :
    Continuous (fun t : ℝ => partialSum χ M (verticalLine c t)) := by
  have ht (n : ℕ) : Continuous (fun t : ℝ => summand χ (verticalLine c t) n) := by
    by_cases zero : n = 0
    · simpa [zero, summand, LSeries.term] using
        (continuous_const : Continuous (fun _ : ℝ => (0 : ℂ)))
    · have equality : (fun t : ℝ => summand χ (verticalLine c t) n) =
          (fun t : ℝ => coefficient χ n * logPower (n : ℝ) (-verticalLine c t)) :=
        funext (fun t => summand_eq_logPower χ (verticalLine c t) n (Nat.pos_of_ne_zero zero))
      rw [equality]
      unfold logPower verticalLine
      fun_prop
  exact continuous_finset_sum _ (fun n _ => ht n)

/-- Complete arithmetic truncation on a finite vertical contour. The kernel
bound is over the whole interval, not just a finite numerical sample. -/
theorem finite_vertical_truncation_bound (χ : DirichletCharacter ℂ N) (M : ℕ)
    (cutoff : 0 < M) (c T α B : ℝ) (height : 0 ≤ T) (positive : 0 < α)
    (halfPlane : 1 + 2 * α ≤ c) (kernel : ℝ → ℂ) (continuous : Continuous kernel)
    (kernelBound : ∀ t ∈ uIcc (-T) T, ‖kernel t‖ ≤ B) :
    ‖verticalIntegral (fun s => -logDeriv χ.LFunction s) c T kernel -
      verticalIntegral (partialSum χ M) c T kernel‖ ≤
      2 * T * (decayPower α (M : ℝ) / α ^ 2) * B := by
  have hF := ((source_continuous_on_vertical χ c (by linarith)).mul continuous).
    intervalIntegrable (-T) T
  have hA := ((partialSum_continuous_on_vertical χ M c).mul continuous).
    intervalIntegrable (-T) T
  have hE : 0 ≤ decayPower α (M : ℝ) / α ^ 2 :=
    div_nonneg (decayPower_pos _ _).le (sq_nonneg α)
  calc
    _ = ‖∫ t in (-T)..T,
        (-logDeriv χ.LFunction (verticalLine c t)) * kernel t -
          partialSum χ M (verticalLine c t) * kernel t‖ := by
      rw [verticalIntegral, verticalIntegral, ← mul_sub, norm_mul,
        Complex.norm_I, one_mul, ← intervalIntegral.integral_sub hF hA]
    _ ≤ ((decayPower α (M : ℝ) / α ^ 2) * B) * |T - (-T)| := by
      apply intervalIntegral.norm_integral_le_of_norm_le_const
      intro t ht
      rw [← sub_mul, norm_mul]
      exact mul_le_mul
        (truncation_error χ M cutoff (verticalLine c t) α positive
          (by simpa only [verticalLine_re] using halfPlane))
        (kernelBound t ht) (norm_nonneg _) hE
    _ = _ := by
      rw [show T - (-T) = 2 * T by ring, abs_of_nonneg (by positivity)]
      ring

end GRWTSK.NumberTheory.Conditional.ArithmeticExplicitRemainders
