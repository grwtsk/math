/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.FunctionsOfAComplexVariable.CompactZeroInventory
import Mathlib.Tactic

/-!
# Complete finite zero sums, endpoint corrections and quantitative remainders

The actual compact inventory is weighted by analytic multiplicity. Retaining
some roots with approximate weights requires BOTH omitted-root and retained-
weight corrections. Signed identities precede absolute bounds. Closed, strict
and half-weight height cutoffs are different observations and their exact
endpoint correction is retained.

The circle consumer constructs its source formula from CompactZeroInventory.
An approximate integrand pays r*epsilon after normalization by 2*pi*i, with
whole-boundary error and integrability explicit. A strict normalized count gap
then excludes zeros using the integer-valued COMPLETE multiplicity count. No
sample list is presumed complete, and no all-core strict gap is constructed.

These results are finite/compact, not absolute convergence or unrestricted
reordering of infinite zero sums, Perron inversion, or an RH/GRH proof.
Primary route: finite signed decomposition, actual circle formula, contour
length and integer multiplicity. Keeping no roots charges the full omission.
AI-assisted source; compilation, kernel, axiom audit and review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set Metric
open scoped BigOperators

namespace GRWTSK.Analysis.ComplexAnalysis.ZeroSumRemainders

open CompactZeroInventory FinitePrincipalPartCircle

def fullSum (S : Finset ℂ) (m : ℂ → ℕ) (w : ℂ → ℂ) : ℂ :=
  ∑ a ∈ S, (m a : ℂ) * w a

def retained (S : Finset ℂ) (m : ℂ → ℕ) (keep : ℂ → Prop)
    [DecidablePred keep] (v : ℂ → ℂ) : ℂ :=
  ∑ a ∈ S, if keep a then (m a : ℂ) * v a else 0

def omitted (S : Finset ℂ) (m : ℂ → ℕ) (keep : ℂ → Prop)
    [DecidablePred keep] (w : ℂ → ℂ) : ℂ :=
  ∑ a ∈ S, if keep a then 0 else (m a : ℂ) * w a

def weightError (S : Finset ℂ) (m : ℂ → ℕ) (keep : ℂ → Prop)
    [DecidablePred keep] (w v : ℂ → ℂ) : ℂ :=
  ∑ a ∈ S, if keep a then (m a : ℂ) * (w a - v a) else 0

theorem complete_balance (S : Finset ℂ) (m : ℂ → ℕ) (keep : ℂ → Prop)
    [DecidablePred keep] (w v : ℂ → ℂ) :
    fullSum S m w - retained S m keep v =
      omitted S m keep w + weightError S m keep w v := by
  unfold fullSum retained omitted weightError
  rw [← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro a ha
  split_ifs <;> ring

def omittedBudget (S : Finset ℂ) (m : ℂ → ℕ) (keep : ℂ → Prop)
    [DecidablePred keep] (w : ℂ → ℂ) : ℝ :=
  ∑ a ∈ S, if keep a then 0 else (m a : ℝ) * ‖w a‖

def weightBudget (S : Finset ℂ) (m : ℂ → ℕ) (keep : ℂ → Prop)
    [DecidablePred keep] (w v : ℂ → ℂ) : ℝ :=
  ∑ a ∈ S, if keep a then (m a : ℝ) * ‖w a - v a‖ else 0

theorem omitted_bound (S : Finset ℂ) (m : ℂ → ℕ) (keep : ℂ → Prop)
    [DecidablePred keep] (w : ℂ → ℂ) :
    ‖omitted S m keep w‖ ≤ omittedBudget S m keep w := by
  unfold omitted omittedBudget
  refine (norm_sum_le _ _).trans ?_
  apply Finset.sum_le_sum
  intro a ha
  split_ifs <;> simp [norm_mul]

theorem weightError_bound (S : Finset ℂ) (m : ℂ → ℕ) (keep : ℂ → Prop)
    [DecidablePred keep] (w v : ℂ → ℂ) :
    ‖weightError S m keep w v‖ ≤ weightBudget S m keep w v := by
  unfold weightError weightBudget
  refine (norm_sum_le _ _).trans ?_
  apply Finset.sum_le_sum
  intro a ha
  split_ifs <;> simp [norm_mul]

theorem complete_error (S : Finset ℂ) (m : ℂ → ℕ) (keep : ℂ → Prop)
    [DecidablePred keep] (w v : ℂ → ℂ) :
    ‖fullSum S m w - retained S m keep v‖ ≤
      omittedBudget S m keep w + weightBudget S m keep w v := by
  rw [complete_balance]
  exact (norm_add_le _ _).trans
    (add_le_add (omitted_bound S m keep w) (weightError_bound S m keep w v))

theorem keep_all (S : Finset ℂ) (m : ℂ → ℕ) (w : ℂ → ℂ) :
    retained S m (fun _ => True) w = fullSum S m w ∧
      omitted S m (fun _ => True) w = 0 := by
  simp [retained, fullSum, omitted]

theorem keep_none (S : Finset ℂ) (m : ℂ → ℕ) (w : ℂ → ℂ) :
    retained S m (fun _ => False) w = 0 ∧
      omitted S m (fun _ => False) w = fullSum S m w := by
  simp [retained, fullSum, omitted]

/-- Exact endpoint/pole corrections cancel only when present in BOTH observations. -/
theorem corrected_error (endpoint : ℂ) (S : Finset ℂ) (m : ℂ → ℕ)
    (keep : ℂ → Prop) [DecidablePred keep] (w v : ℂ → ℂ) :
    ‖(endpoint - fullSum S m w) - (endpoint - retained S m keep v)‖ ≤
      omittedBudget S m keep w + weightBudget S m keep w v := by
  have equality : (endpoint - fullSum S m w) - (endpoint - retained S m keep v) =
      -(fullSum S m w - retained S m keep v) := by ring
  rw [equality, norm_neg]
  exact complete_error S m keep w v

/-- The complete contribution on a height endpoint, including multiplicity. -/
def heightEndpoint (S : Finset ℂ) (m : ℂ → ℕ) (w : ℂ → ℂ) (T : ℝ) : ℂ := by
  classical
  exact ∑ a ∈ S, if |a.im| = T then (m a : ℂ) * w a else 0

theorem closed_height_eq_strict_add_endpoint
    (S : Finset ℂ) (m : ℂ → ℕ) (w : ℂ → ℂ) (T : ℝ) :
    retained S m (fun a => |a.im| ≤ T) w =
      retained S m (fun a => |a.im| < T) w + heightEndpoint S m w T := by
  classical
  unfold retained heightEndpoint
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro a ha
  by_cases hlt : |a.im| < T
  · simp [hlt, hlt.le, ne_of_lt hlt]
  · by_cases heq : |a.im| = T
    · simp [hlt, heq]
    · simp [hlt, heq, le_iff_lt_or_eq]

def heightStar (S : Finset ℂ) (m : ℂ → ℕ) (w : ℂ → ℂ) (T : ℝ) : ℂ :=
  retained S m (fun a => |a.im| < T) w + heightEndpoint S m w T / 2

theorem height_endpoint_correction
    (S : Finset ℂ) (m : ℂ → ℕ) (w : ℂ → ℂ) (T : ℝ) :
    retained S m (fun a => |a.im| ≤ T) w - heightStar S m w T =
      heightEndpoint S m w T / 2 := by
  rw [closed_height_eq_strict_add_endpoint]
  unfold heightStar
  ring

def normalizedIntegral (F : ℂ → ℂ) (c : ℂ) (r : ℝ) : ℂ :=
  period⁻¹ * ∮ z in C(c, r), F z

theorem boundary_error (F G : ℂ → ℂ) (c : ℂ) (r ε : ℝ)
    (positive : 0 ≤ r) (hF : CircleIntegrable F c r) (hG : CircleIntegrable G c r)
    (bound : ∀ z ∈ sphere c r, ‖G z - F z‖ ≤ ε) :
    ‖normalizedIntegral G c r - normalizedIntegral F c r‖ ≤ r * ε := by
  have h := circleIntegral.norm_two_pi_i_inv_smul_integral_le_of_norm_le_const positive bound
  simpa only [normalizedIntegral, period, smul_eq_mul,
    circleIntegral.integral_sub hG hF, mul_sub] using h

theorem normalized_source_eq {f : ℂ → ℂ} {U : Set ℂ}
    (ctx : AnalyticContext f U) (c : ℂ) (r : ℝ) (positive : 0 < r)
    (contained : closedBall c r ⊆ U) (boundary : ∀ z ∈ sphere c r, f z ≠ 0)
    (w : ℂ → ℂ) (analytic : AnalyticOnNhd ℂ w (closedBall c r)) :
    normalizedIntegral (fun z => logDeriv f z * w z) c r =
      fullSum (ctx.zeros (closedBall c r) (isCompact_closedBall c r) contained)
        (analyticOrderNatAt f) w := by
  have h := (ctx.weighted_circle_formula c r positive contained boundary w analytic).2
  unfold normalizedIntegral fullSum
  rw [h]
  field_simp [period_ne_zero]
  <;> ring

/-- Complete inventory, approximate weights, omissions and boundary error all appear. -/
theorem approximate_circle_formula {f : ℂ → ℂ} {U : Set ℂ}
    (ctx : AnalyticContext f U) (c : ℂ) (r : ℝ) (positive : 0 < r)
    (contained : closedBall c r ⊆ U) (boundary : ∀ z ∈ sphere c r, f z ≠ 0)
    (w v : ℂ → ℂ) (analytic : AnalyticOnNhd ℂ w (closedBall c r))
    (keep : ℂ → Prop) [DecidablePred keep]
    (G : ℂ → ℂ) (integrable : CircleIntegrable G c r) (ε : ℝ)
    (error : ∀ z ∈ sphere c r, ‖G z - logDeriv f z * w z‖ ≤ ε) :
    ‖normalizedIntegral G c r -
      retained (ctx.zeros (closedBall c r) (isCompact_closedBall c r) contained)
        (analyticOrderNatAt f) keep v‖ ≤ r * ε +
      omittedBudget (ctx.zeros (closedBall c r) (isCompact_closedBall c r) contained)
        (analyticOrderNatAt f) keep w +
      weightBudget (ctx.zeros (closedBall c r) (isCompact_closedBall c r) contained)
        (analyticOrderNatAt f) keep w v := by
  have hF := (ctx.weighted_circle_formula c r positive contained boundary w analytic).1
  have hboundary := boundary_error (fun z => logDeriv f z * w z) G c r ε
    positive.le hF integrable error
  have hsum := complete_error
    (ctx.zeros (closedBall c r) (isCompact_closedBall c r) contained)
    (analyticOrderNatAt f) keep w v
  rw [← normalized_source_eq ctx c r positive contained boundary w analytic] at hsum
  exact ((norm_sub_le_norm_sub_add_norm_sub _
    (normalizedIntegral (fun z => logDeriv f z * w z) c r) _).trans
      (add_le_add hboundary hsum)).trans_eq (by ring)

/-- A passing count certificate excludes interior zeros because the COMPLETE
multiplicity count is a nonnegative integer. The strict bound is an input. -/
theorem zero_free_of_count_gap {f : ℂ → ℂ} {U : Set ℂ}
    (ctx : AnalyticContext f U) (c : ℂ) (r : ℝ) (positive : 0 < r)
    (contained : closedBall c r ⊆ U) (boundary : ∀ z ∈ sphere c r, f z ≠ 0)
    (strict : ‖normalizedIntegral (logDeriv f) c r‖ < 1) :
    ∀ z ∈ closedBall c r, f z ≠ 0 := by
  have formula := normalized_source_eq ctx c r positive contained boundary
    (fun _ => (1 : ℂ)) (fun _ _ => analyticAt_const)
  have massEq : normalizedIntegral (logDeriv f) c r =
      (ctx.mass (closedBall c r) (isCompact_closedBall c r) contained : ℂ) := by
    simpa [fullSum, CompactZeroInventory.AnalyticContext.mass] using formula
  intro z hz hzero
  have hmass := ctx.mass_pos_of_zero (closedBall c r) (isCompact_closedBall c r)
    contained z hz hzero
  have lower : (1 : ℝ) ≤ ctx.mass (closedBall c r) (isCompact_closedBall c r) contained := by
    exact_mod_cast (Nat.succ_le_iff.mpr hmass)
  rw [massEq] at strict
  simp only [Complex.norm_natCast] at strict
  linarith

/-- Boundary perturbation can certify the count, but small samples without the
whole-boundary budget do not satisfy this theorem. -/
theorem zero_free_of_boundary_approximation {f : ℂ → ℂ} {U : Set ℂ}
    (ctx : AnalyticContext f U) (c : ℂ) (r : ℝ) (positive : 0 < r)
    (contained : closedBall c r ⊆ U) (boundary : ∀ z ∈ sphere c r, f z ≠ 0)
    (G : ℂ → ℂ) (integrable : CircleIntegrable G c r) (ε : ℝ)
    (error : ∀ z ∈ sphere c r, ‖G z - logDeriv f z‖ ≤ ε)
    (strict : ‖normalizedIntegral G c r‖ + r * ε < 1) :
    ∀ z ∈ closedBall c r, f z ≠ 0 := by
  have hF : CircleIntegrable (logDeriv f) c r := by
    simpa only [mul_one] using
      (ctx.weighted_circle_formula c r positive contained boundary
        (fun _ => (1 : ℂ)) (fun _ _ => analyticAt_const)).1
  have he := boundary_error (logDeriv f) G c r ε positive.le hF integrable error
  have rev : ‖normalizedIntegral (logDeriv f) c r - normalizedIntegral G c r‖ ≤ r * ε := by
    simpa only [norm_sub_rev] using he
  apply zero_free_of_count_gap ctx c r positive contained boundary
  have triangle : ‖normalizedIntegral (logDeriv f) c r‖ ≤
      ‖normalizedIntegral (logDeriv f) c r - normalizedIntegral G c r‖ +
        ‖normalizedIntegral G c r‖ := by
    calc
      _ = ‖(normalizedIntegral (logDeriv f) c r - normalizedIntegral G c r) +
          normalizedIntegral G c r‖ := by rw [sub_add_cancel]
      _ ≤ _ := norm_add_le _ _
  linarith

end GRWTSK.Analysis.ComplexAnalysis.ZeroSumRemainders
