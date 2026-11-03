/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupOptimizationGap
import Mathlib.Tactic

/-!
# Rate-dependent dyadic windows for the ORIGINAL signed Mobius pickup

The previous DyadicBirthBound demands the signed endpoint sum at *every*
index j, with an exponent-dependent constant but a fixed dyadic scale set.
The strictly more flexible conditional criterion here requires at least one
favorable original birth sum at an index k in [j, 2*j+1] for each j. The
selected k may depend on the requested positive rate; no single good-scale
set, uniform arithmetic modulus, or fictitious sign-free source is assumed.

The proof uses only (i) the ACTUAL signed endpoint/quadrature quarter-error,
(ii) the ACTUAL nonnegative diagonal's subexponential allowance, (iii) the
ACTUAL monotone cumulative square energy and its analytic return to Mathlib RH.
The original all-positive-rate arithmetic estimate is still an OPEN input.
Finite experiments, graph ranks, fixed-zero-height validation and the
original proof-term candidate are not promoted to an RH proof.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupAdaptiveDyadicWindow

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.NumberTheory.Moebius.PickupOptimizationGap
open GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential

/-- Unlike `SubexponentialOn`, the favorable future time can depend on the
requested rate. This is applied only to a MONOTONE quantity. -/
def AdaptiveFutureUpper (f : ℝ → ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
    ∀ T : ℝ, R ≤ T → ∃ S : ℝ, T ≤ S ∧
      f S ≤ C * Real.exp (ε * T)

/-- For a nonnegative-time monotone function, moving the *witness* time
forward cannot conceal a spike. No uniform set of witness times is required. -/
theorem subexponentialUpper_of_adaptiveFutureUpper
    {f : ℝ → ℝ} (hmono : MonotoneOn f (Set.Ici 0))
    (h : AdaptiveFutureUpper f) : SubexponentialUpper f := by
  intro ε hε
  obtain ⟨C, R, hC, hR, hfuture⟩ := h ε hε
  let D : ℝ := max 0 (f R) + C
  have hD : 0 ≤ D := add_nonneg (le_max_left _ _) hC
  refine ⟨D, hD, ?_⟩
  intro T hT
  by_cases hlarge : R ≤ T
  · obtain ⟨S, hTS, hCS⟩ := hfuture T hlarge
    have hCD : C ≤ D := by
      dsimp [D]
      exact le_add_of_nonneg_left (le_max_left (0 : ℝ) (f R))
    calc
      f T ≤ f S := hmono hT (hT.trans hTS) hTS
      _ ≤ C * Real.exp (ε * T) := hCS
      _ ≤ D * Real.exp (ε * T) :=
        mul_le_mul_of_nonneg_right hCD (Real.exp_pos _).le
  · have hTR : T ≤ R := (lt_of_not_ge hlarge).le
    have hRbound : f R ≤ D := by
      dsimp [D]
      have hmax := le_max_right (0 : ℝ) (f R)
      linarith
    have hexp : (1 : ℝ) ≤ Real.exp (ε * T) :=
      Real.one_le_exp_iff.mpr (mul_nonneg hε.le hT)
    calc
      f T ≤ f R := hmono hT hR hTR
      _ ≤ D := hRbound
      _ ≤ D * Real.exp (ε * T) := le_mul_of_one_le_right hD hexp

/-- This characterization is generic. The RH use below is source-specific. -/
theorem adaptiveFutureUpper_iff_subexponentialUpper_of_monotone
    {f : ℝ → ℝ} (hmono : MonotoneOn f (Set.Ici 0)) :
    AdaptiveFutureUpper f ↔ SubexponentialUpper f := by
  constructor
  · exact subexponentialUpper_of_adaptiveFutureUpper hmono
  · intro hf ε hε
    obtain ⟨C, hC, hb⟩ := hf ε hε
    exact ⟨C, 0, hC, le_rfl, fun T hT => ⟨T, le_rfl, hb T hT⟩⟩

/-- A rate-dependent favorable time is allowed inside a fixed affine
window. Only the ORIGINAL signed endpoint is required to be small there. -/
def AdaptiveEndpointWindow (b : ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
    ∀ T : ℝ, R ≤ T → ∃ S : ℝ,
      T ≤ S ∧ S ≤ 2 * T + b ∧
        endpointSum S ≤ C * Real.exp (ε * T)

/-- All quadratic diagonal growth and the exact quarter-unit curvature
allowance are paid, while the favorable endpoint time may depend on ε. -/
theorem pickupEnergySubexp_of_adaptiveEndpointWindow (b : ℝ)
    (hwindow : AdaptiveEndpointWindow b) : PickupEnergySubexp := by
  apply subexponentialUpper_of_adaptiveFutureUpper pickupEnergy_monotoneOn_nonnegative
  intro ε hε
  let δ : ℝ := ε / 2
  have hδ : 0 < δ := div_pos hε (by norm_num)
  have hδle : δ ≤ ε := by dsimp [δ]; linarith
  obtain ⟨C, R, hC, hR, hwindowBound⟩ := hwindow δ hδ
  obtain ⟨D, hD, hdiag⟩ := pickupDiagonal_subexponential δ hδ
  let K : ℝ := C + 1 / 4 + D * Real.exp (δ * b)
  have hK : 0 ≤ K := by
    dsimp [K]
    positivity
  refine ⟨K, R, hK, hR, ?_⟩
  intro T hRT
  obtain ⟨S, hTS, hSupper, hEndpoint⟩ := hwindowBound T hRT
  refine ⟨S, hTS, ?_⟩
  have hT0 : 0 ≤ T := hR.trans hRT
  have hS0 : 0 ≤ S := hT0.trans hTS
  have hExpT : Real.exp (δ * T) ≤ Real.exp (ε * T) :=
    Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_right hδle hT0)
  have hExpS : Real.exp (δ * S) ≤
      Real.exp (δ * b) * Real.exp (ε * T) := by
    calc
      Real.exp (δ * S) ≤ Real.exp (δ * (2 * T + b)) :=
        Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left hSupper hδ.le)
      _ = Real.exp (δ * b) * Real.exp (ε * T) := by
        have heq : δ * (2 * T + b) = δ * b + ε * T := by
          dsimp [δ]
          ring
        rw [heq, Real.exp_add]
  have hCost : endpointSum S ≤ C * Real.exp (ε * T) :=
    hEndpoint.trans (mul_le_mul_of_nonneg_left hExpT hC)
  have hDiagCost : pickupDiagonal S ≤
      (D * Real.exp (δ * b)) * Real.exp (ε * T) := by
    calc
      pickupDiagonal S ≤ D * Real.exp (δ * S) := hdiag S hS0
      _ ≤ D * (Real.exp (δ * b) * Real.exp (ε * T)) :=
        mul_le_mul_of_nonneg_left hExpS hD
      _ = (D * Real.exp (δ * b)) * Real.exp (ε * T) := by ring
  have hQuarter : (1 / 4 : ℝ) ≤ (1 / 4) * Real.exp (ε * T) := by
    have hOne : (1 : ℝ) ≤ Real.exp (ε * T) :=
      Real.one_le_exp_iff.mpr (mul_nonneg hε.le hT0)
    nlinarith
  have hCross : pickupCross S ≤ endpointSum S + 1 / 4 := by
    have herr := (abs_le.mp (endpointSum_error hS0)).1
    linarith
  have hEnergy : pickupEnergy S ≤ endpointSum S + 1 / 4 + pickupDiagonal S := by
    rw [pickupEnergy_eq_diagonal_add_cross hS0]
    linarith
  calc
    pickupEnergy S ≤ endpointSum S + 1 / 4 + pickupDiagonal S := hEnergy
    _ ≤ C * Real.exp (ε * T) + (1 / 4) * Real.exp (ε * T) +
        (D * Real.exp (δ * b)) * Real.exp (ε * T) :=
      add_le_add (add_le_add hCost hQuarter) hDiagCost
    _ = K * Real.exp (ε * T) := by dsimp [K]; ring

/-- This is an RH implication for the original source, NOT a proof that its
new arithmetic premise is true. -/
theorem riemannHypothesis_of_adaptiveEndpointWindow (b : ℝ)
    (hwindow : AdaptiveEndpointWindow b) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupEnergySubexp
    (pickupEnergySubexp_of_adaptiveEndpointWindow b hwindow)

/-- On each logarithmic index window [j,2j+1], it is enough to find ONE
favorable original signed birth sum. The favorable index may depend on ε.
Unlike the previous DyadicBirthBound, this does NOT bound every j. -/
def DyadicWindowBirthBound : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ, ∃ k : ℕ, j ≤ k ∧ k ≤ 2 * j + 1 ∧
      dyadicBirthSum k ≤ C * Real.exp (ε * dyadicTime j)

/-- The original all-index dyadic arithmetic target is sufficient for the
weaker adaptive-window target; no RH theorem is used in this direction. -/
theorem dyadicWindow_of_all_dyadic (h : DyadicBirthBound) :
    DyadicWindowBirthBound := by
  intro ε hε
  obtain ⟨C, hC, hb⟩ := h ε hε
  refine ⟨C, hC, ?_⟩
  intro j
  refine ⟨j, le_rfl, by omega, ?_⟩
  rw [dyadic_rate]
  exact hb j

/-- Every requested T has a following exact power-of-two birth index j.
A favorable k in [j,2j+1] is at most 2*T+3*log(2) in physical time. -/
theorem adaptiveEndpointWindow_of_dyadicWindow (h : DyadicWindowBirthBound) :
    AdaptiveEndpointWindow (3 * Real.log 2) := by
  intro ε hε
  obtain ⟨C, hC, hbound⟩ := h ε hε
  let K : ℝ := C * Real.exp (ε * Real.log 2)
  have hK : 0 ≤ K := mul_nonneg hC (Real.exp_pos _).le
  refine ⟨K, 0, hK, le_rfl, ?_⟩
  intro T hT
  let j : ℕ := ⌊T / Real.log 2⌋₊ + 1
  have hnext : T ≤ dyadicTime j ∧ dyadicTime j ≤ T + Real.log 2 :=
    next_time log_two_positive hT
  obtain ⟨k, hjk, hk, hcost⟩ := hbound j
  have hmono : dyadicTime j ≤ dyadicTime k :=
    time_monotone log_two_positive.le hjk
  have hkCast : (k : ℝ) ≤ ((2 * j + 1 : ℕ) : ℝ) := by
    exact_mod_cast hk
  have htime : dyadicTime k ≤ 2 * dyadicTime j + Real.log 2 := by
    calc
      dyadicTime k = (k : ℝ) * Real.log 2 := rfl
      _ ≤ ((2 * j + 1 : ℕ) : ℝ) * Real.log 2 :=
        mul_le_mul_of_nonneg_right hkCast log_two_positive.le
      _ = 2 * dyadicTime j + Real.log 2 := by
        simp only [dyadicTime, time, Nat.cast_add, Nat.cast_mul, Nat.cast_one]
        ring
  have hSupper : dyadicTime k ≤ 2 * T + 3 * Real.log 2 := by
    linarith [htime, hnext.2]
  have hExp : Real.exp (ε * dyadicTime j) ≤
      Real.exp (ε * Real.log 2) * Real.exp (ε * T) := by
    calc
      Real.exp (ε * dyadicTime j) ≤ Real.exp (ε * (T + Real.log 2)) :=
        Real.exp_le_exp.mpr
          (mul_le_mul_of_nonneg_left hnext.2 hε.le)
      _ = Real.exp (ε * Real.log 2) * Real.exp (ε * T) := by
        have heq : ε * (T + Real.log 2) =
            ε * Real.log 2 + ε * T := by ring
        rw [heq, Real.exp_add]
  refine ⟨dyadicTime k, hnext.1.trans hmono, hSupper, ?_⟩
  calc
    endpointSum (dyadicTime k) = dyadicBirthSum k :=
      endpoint_dyadic_eq_birthSum k
    _ ≤ C * Real.exp (ε * dyadicTime j) := hcost
    _ ≤ C * (Real.exp (ε * Real.log 2) * Real.exp (ε * T)) :=
      mul_le_mul_of_nonneg_left hExp hC
    _ = K * Real.exp (ε * T) := by dsimp [K]; ring

/-- A one-sided bound at ONE favorable dyadic index per multiplicative
index window suffices for the actual canonical Mathlib RH. The new premise
is an explicit arithmetic statement, NOT supplied by this module. -/
theorem riemannHypothesis_of_dyadicWindowBirthBound
    (h : DyadicWindowBirthBound) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_adaptiveEndpointWindow (3 * Real.log 2)
    (adaptiveEndpointWindow_of_dyadicWindow h)

/-- Equivalent convergence-abscissa consequence under the same OPEN
rate-dependent arithmetic input; this does not assert σ=0 integrability. -/
theorem energyAbscissa_zero_of_dyadicWindowBirthBound
    (h : DyadicWindowBirthBound) : pickupEnergyAbscissa = 0 := by
  apply pickupEnergyAbscissa_zero_iff_weightedEnergyAll.mpr
  apply pickupWeightedEnergyAll_of_subexp
  exact pickupEnergySubexp_of_adaptiveEndpointWindow (3 * Real.log 2)
    (adaptiveEndpointWindow_of_dyadicWindow h)

/-- A quantitative GOOD WINDOW can be proved by any independent upper
certificate U, provided that U actually dominates this source endpoint. -/
def DyadicWindowUpper (U : ℝ → ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ, ∃ k : ℕ, j ≤ k ∧ k ≤ 2 * j + 1 ∧
      U (dyadicTime k) ≤ C * Real.exp (ε * dyadicTime j)

/-- Only a source-verified comparison permits an upper certificate to
enter the RH argument. Search rank, model metadata and graph paths alone
are not such a comparison. -/
theorem riemannHypothesis_of_sourceUpper_windows (U : ℝ → ℝ)
    (hsource : ∀ T : ℝ, 0 ≤ T → endpointSum T ≤ U T)
    (hwindow : DyadicWindowUpper U) : _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_dyadicWindowBirthBound
  intro ε hε
  obtain ⟨C, hC, hw⟩ := hwindow ε hε
  refine ⟨C, hC, ?_⟩
  intro j
  obtain ⟨k, hjk, hk, hU⟩ := hw j
  refine ⟨k, hjk, hk, ?_⟩
  rw [← endpoint_dyadic_eq_birthSum]
  exact (hsource (dyadicTime k) (dyadicTime_nonnegative k)).trans hU

/-- The REAL minimum over all spin configurations is a different, source-
exact optimization from a graph's shortest path. Its original difference
is nonnegative, and the quarter curvature allowance is kept explicitly. -/
def DyadicSpinGapWindowBound : Prop :=
  DyadicWindowUpper (fun T => optimalityGap T + 1 / 4)

/-- An all-rate bound for the actual signed spin-optimality gap at one index
per window (plus the known quarter unit) also suffices for RH. -/
theorem riemannHypothesis_of_dyadicSpinGapWindow
    (h : DyadicSpinGapWindowBound) : _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_sourceUpper_windows
    (fun T => optimalityGap T + 1 / 4) ?_ h
  intro T hT
  have hErr := (abs_le.mp (endpointSum_error hT)).2
  have hCross := (cross_gap_bounds hT).1
  linarith

end GRWTSK.NumberTheory.Moebius.PickupAdaptiveDyadicWindow
