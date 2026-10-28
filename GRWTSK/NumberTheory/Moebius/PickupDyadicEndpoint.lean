/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential
import GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-!
# The explicit dyadic signed endpoint problem and its existing RH return

Construct coverage, prove the exact integer cutoff, remove the zero-width
terminal cell, and expose the actual finite signed arithmetic expression.
The all-positive-rate estimate is named below, NOT asserted. These proofs
reduce the arithmetic task without introducing another analytic premise.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupCellQuadratic
open GRWTSK.NumberTheory.Moebius.PickupRefinementCriterion
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.ErrorBounds.ExponentialQuadraticIntegral
open GRWTSK.Analysis.ErrorBounds.ExponentialQuadraticChord
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential

def dyadicTime (j : ℕ) : ℝ := time (Real.log 2) j

def dyadicScales : Set ℝ := scales (Real.log 2)

theorem log_two_positive : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)

theorem dyadicTime_nonnegative (j : ℕ) : 0 ≤ dyadicTime j :=
  time_nonnegative log_two_positive.le j

theorem dyadic_coverage : AffineFrequent dyadicScales :=
  affineFrequent_scales log_two_positive

/-- The closed source cutoff is an exact natural power, not a rounding heuristic. -/
theorem exp_dyadicTime (j : ℕ) : Real.exp (dyadicTime j) = ((2 ^ j : ℕ) : ℝ) := by
  unfold dyadicTime time
  rw [mul_comm, Real.exp_mul, Real.exp_log (by norm_num : (0 : ℝ) < 2),
    Real.rpow_natCast]
  norm_cast

theorem dyadic_cutoff (j : ℕ) : ⌊Real.exp (dyadicTime j)⌋₊ = 2 ^ j := by
  rw [exp_dyadicTime]
  simp

theorem log_dyadic_cutoff (j : ℕ) : Real.log ((2 ^ j : ℕ) : ℝ) = dyadicTime j := by
  apply Real.exp_injective
  rw [Real.exp_log (by positivity), exp_dyadicTime]

/-- The exponent is delta*j in base two, and delta*T in physical time. -/
theorem dyadic_rate (δ : ℝ) (j : ℕ) :
    Real.exp (δ * dyadicTime j) = (2 : ℝ) ^ (δ * (j : ℝ)) := by
  rw [Real.rpow_def_of_pos (by norm_num : (0 : ℝ) < 2)]
  congr 1
  unfold dyadicTime time
  ring

theorem cellChord_self (N : ℕ) (u : ℝ) : cellChord N u u = 0 := by
  simp [cellChord, chordValue, value, weight0, weight1, weight2]

theorem birth_log_width {N : ℕ} (hN : 1 ≤ N) :
    Real.log ((N + 1 : ℕ) : ℝ) - Real.log (N : ℝ) =
      Real.log (1 + 1 / (N : ℝ)) := by
  have hpos : (0 : ℝ) < N := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
  rw [← Real.log_div (by positivity : ((N + 1 : ℕ) : ℝ) ≠ 0) hpos.ne']
  congr 1
  push_cast
  field_simp [hpos.ne']
  <;> ring

/-- Literal five-moment endpoint expression. The product of inverse square roots
is kept factored; no surrogate coefficients or absolute-value replacement. -/
def birthExpression (N : ℕ) : ℝ :=
  (coefficient0 N - coefficient2 N * (Real.sqrt (N : ℝ))⁻¹ *
    (Real.sqrt ((N + 1 : ℕ) : ℝ))⁻¹) * Real.log (1 + 1 / (N : ℝ)) +
  2 * (coefficient1 N + coefficient2 N *
    ((Real.sqrt (N : ℝ))⁻¹ + (Real.sqrt ((N + 1 : ℕ) : ℝ))⁻¹)) *
    ((Real.sqrt (N : ℝ))⁻¹ - (Real.sqrt ((N + 1 : ℕ) : ℝ))⁻¹)

theorem full_birth_formula {N : ℕ} (hN : 1 ≤ N) :
    cellChord N (Real.log (N : ℝ)) (Real.log ((N + 1 : ℕ) : ℝ)) =
      birthExpression N := by
  have hnext : 1 ≤ N + 1 := by omega
  simp only [cellChord, chordValue, value, weight0, weight1, mul_zero, add_zero,
    node, pickup_exp_negative_log_half hN, pickup_exp_negative_log_half hnext,
    birth_log_width hN, birthExpression]
  ring

/-- Exactly the positive births below 2^j; j=0 gives the empty sum. -/
def dyadicBirthSum (j : ℕ) : ℝ :=
  ∑ k ∈ Finset.range (2 ^ j - 1), birthExpression (k + 1)

/-- All cutoff, clipping and zero-terminal-cell obligations are discharged here. -/
theorem endpoint_dyadic_eq_birthSum (j : ℕ) :
    endpointSum (dyadicTime j) = dyadicBirthSum j := by
  let M : ℕ := 2 ^ j
  let T : ℝ := dyadicTime j
  let f : ℕ → ℝ := fun k => cellChord (k + 1) (eventCut T k) (eventCut T (k + 1))
  have hM : 0 < M := by dsimp [M]; positivity
  have hsize : M - 1 + 1 = M := by omega
  have hfloor : ⌊Real.exp T⌋₊ = M := dyadic_cutoff j
  have hlog : Real.log (M : ℝ) = T := log_dyadic_cutoff j
  have hlast : eventCut T M = T := by
    simpa only [hfloor] using eventCut_last T
  have hterminal : f (M - 1) = 0 := by
    have hleft := eventCut_at_active (T := T) (k := M - 1)
      (by rw [hfloor]; omega)
    dsimp only [f]
    rw [hleft, hsize, hlog, hlast, cellChord_self]
  have hsplit : (∑ k ∈ Finset.range M, f k) =
      (∑ k ∈ Finset.range (M - 1), f k) + f (M - 1) := by
    have h := Finset.sum_range_succ f (M - 1)
    rw [hsize] at h
    exact h
  change (∑ k ∈ Finset.range ⌊Real.exp T⌋₊, f k) = dyadicBirthSum j
  rw [hfloor, hsplit, hterminal, add_zero]
  change (∑ k ∈ Finset.range (M - 1), f k) =
    ∑ k ∈ Finset.range (M - 1), birthExpression (k + 1)
  apply Finset.sum_congr rfl
  intro k hk
  have hk' := Finset.mem_range.mp hk
  have hleft := eventCut_at_active (T := T) (k := k) (by rw [hfloor]; omega)
  have hright := eventCut_at_active (T := T) (k := k + 1) (by rw [hfloor]; omega)
  dsimp only [f]
  rw [hleft, hright]
  exact full_birth_formula (by omega)

/-- The explicit arithmetic obligation, not an axiom or a constructed witness. -/
def DyadicEndpointBound : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ, endpointSum (dyadicTime j) ≤ C * (2 : ℝ) ^ (δ * (j : ℝ))

def DyadicBirthBound : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ, dyadicBirthSum j ≤ C * (2 : ℝ) ^ (δ * (j : ℝ))

theorem dyadicBirthBound_iff_endpoint : DyadicBirthBound ↔ DyadicEndpointBound := by
  simp only [DyadicBirthBound, DyadicEndpointBound, endpoint_dyadic_eq_birthSum]

theorem dyadicEndpointBound_iff_good_scales :
    DyadicEndpointBound ↔ SubexponentialOn endpointSum dyadicScales := by
  constructor
  · intro h
    apply (allGridUpper_iff_subexponentialOn log_two_positive).mp
    intro δ hδ
    obtain ⟨C, hC, hb⟩ := h δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    change endpointSum (dyadicTime j) ≤ C * Real.exp (δ * dyadicTime j)
    rw [dyadic_rate]
    exact hb j
  · intro h
    have hg := (allGridUpper_iff_subexponentialOn log_two_positive).mpr h
    intro δ hδ
    obtain ⟨C, hC, hb⟩ := hg δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← dyadic_rate]
    exact hb j

/-- A rate-dependent finite initial segment is paid by the explicit grid allowance. -/
theorem dyadicBirthBound_of_eventual
    (h : ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j : ℕ, j₀ ≤ j → dyadicBirthSum j ≤ C * (2 : ℝ) ^ (δ * (j : ℝ))) :
    DyadicBirthBound := by
  apply dyadicBirthBound_iff_endpoint.mpr
  apply dyadicEndpointBound_iff_good_scales.mpr
  apply (allGridUpper_iff_subexponentialOn log_two_positive).mp
  apply allGridUpper_of_eventual log_two_positive.le
  intro δ hδ
  obtain ⟨C, hC, j₀, hb⟩ := h δ hδ
  refine ⟨C, hC, j₀, ?_⟩
  intro j hj
  change endpointSum (dyadicTime j) ≤ C * Real.exp (δ * dyadicTime j)
  rw [endpoint_dyadic_eq_birthSum, dyadic_rate]
  exact hb j hj

theorem energyAbscissa_zero_of_dyadicBirthBound (h : DyadicBirthBound) :
    pickupEnergyAbscissa = 0 :=
  energyAbscissa_zero_of_cross_good_scales dyadic_coverage
    (endpoint_subexponential_iff.mp
      (dyadicEndpointBound_iff_good_scales.mp (dyadicBirthBound_iff_endpoint.mp h)))

/-- Apply the unchanged analytic return to canonical Mathlib RH. -/
theorem riemannHypothesis_of_dyadicBirthBound (h : DyadicBirthBound) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupEnergyAbscissa_zero (energyAbscissa_zero_of_dyadicBirthBound h)

end GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
