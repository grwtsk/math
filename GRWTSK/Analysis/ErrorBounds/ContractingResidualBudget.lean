/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.FixedWitnessBudget
import GRWTSK.Analysis.ErrorBounds.FiniteResidualTelescope
import Mathlib.Analysis.SpecificLimits.Basic

set_option autoImplicit false

open scoped BigOperators Topology
open Filter

/-!
# Contracting residual budgets with varying forcing and mixed channels

The elementary convergence notion is reused from `FiniteResidualTelescope`.
A nonnegative budget with B(n+1) <= r B(n) + c(n), 0 <= r < 1, vanishes
when the independently supplied forcing c vanishes. A restart bound retains
all error accumulated before the forcing becomes small.

The finite-channel adapter derives this recurrence from an exact signed
linear evolution. It retains channel mixing and uses WEIGHTED COLUMN sums
of absolute gains for its weighted l1 budget. Row bounds alone do not suffice.
An exact readout identity attaches the budget to the same fixed real target
at every stage. Consumer coefficients, source identity, conditioning, tails,
and the complete list of channels must be supplied by the application.

This does not construct a Weil residual evolution, prove its gain or forcing
bounds, or identify any finite model with zeta. No recurrence is obtained from
symbol cleanup alone. All declarations are source-only, NOT_RUN and
NOT_KERNEL_AUDITED. The imported axiom closure has not been audited for choice.
-/

namespace GRWTSK.Analysis.ErrorBounds.ContractingResidualBudget

open GRWTSK.Analysis.ErrorBounds
open GRWTSK.Analysis.ErrorBounds.FixedWitnessBudget

noncomputable section

/-- Exact finite forcing history, specified recursively without choosing an orbit. -/
def forcingResponse (r : ℝ) (forcing : ℕ → ℝ) : ℕ → ℝ
  | 0 => 0
  | n + 1 => r * forcingResponse r forcing n + forcing n

/-- Finite majorant retaining every forcing contribution, including early large errors. -/
theorem variable_budget_majorant (B forcing : ℕ → ℝ) (r : ℝ)
    (rateNonnegative : 0 ≤ r)
    (step : ∀ n, B (n + 1) ≤ r * B n + forcing n) (n : ℕ) :
    B n ≤ r ^ n * B 0 + forcingResponse r forcing n := by
  induction n with
  | zero => simp [forcingResponse]
  | succ n ih =>
      calc
        B (n + 1) ≤ r * B n + forcing n := step n
        _ ≤ r * (r ^ n * B 0 + forcingResponse r forcing n) + forcing n :=
          add_le_add_left (mul_le_mul_of_nonneg_left ih rateNonnegative) _
        _ = r ^ (n + 1) * B 0 + forcingResponse r forcing (n + 1) := by
          simp only [forcingResponse, pow_succ]
          ring

/-- Restart at N only after a tail bound is supplied; B N retains the entire prefix. -/
theorem restart_budget_majorant (B forcing : ℕ → ℝ) (r delta : ℝ)
    (rateNonnegative : 0 ≤ r)
    (step : ∀ n, B (n + 1) ≤ r * B n + forcing n)
    (N : ℕ) (tail : ∀ n, N ≤ n → forcing n ≤ (1 - r) * delta) (k : ℕ) :
    B (N + k) ≤ delta + r ^ k * (B N - delta) := by
  have shiftedStep : ∀ j,
      B (N + (j + 1)) ≤ r * B (N + j) + (1 - r) * delta := by
    intro j
    have bound := (step (N + j)).trans
      (add_le_add_right (tail (N + j) (by omega)) (r * B (N + j)))
    simpa only [Nat.add_assoc] using bound
  have bound := affine_budget_majorant (fun j => B (N + j)) r
    ((1 - r) * delta) delta rateNonnegative (by ring) shiftedStep k
  simpa only [Nat.add_zero] using bound

/-- Varying forcing tending to zero is enough; summability of the forcing is not assumed.
Nonnegativity of B is essential because an upper recurrence alone does not control |B|. -/
theorem variable_budget_vanishes (B forcing : ℕ → ℝ) (r : ℝ)
    (rateNonnegative : 0 ≤ r) (rateStrict : r < 1)
    (budgetNonnegative : ∀ n, 0 ≤ B n)
    (step : ∀ n, B (n + 1) ≤ r * B n + forcing n)
    (forcingVanishes : VanishesAtInfinity forcing) : VanishesAtInfinity B := by
  intro epsilon epsilonPositive
  have halfPositive : 0 < epsilon / 2 := by linarith
  have tolerancePositive : 0 < (1 - r) * (epsilon / 2) :=
    mul_pos (by linarith) halfPositive
  obtain ⟨N, hN⟩ := forcingVanishes ((1 - r) * (epsilon / 2)) tolerancePositive
  have tail : ∀ n, N ≤ n → forcing n ≤ (1 - r) * (epsilon / 2) := by
    intro n hn
    exact (le_abs_self (forcing n)).trans (hN n hn)
  have geometric : Tendsto (fun k : ℕ => r ^ k * (B N - epsilon / 2))
      atTop (𝓝 (0 : ℝ)) := by
    simpa only [zero_mul] using
      (tendsto_pow_atTop_nhds_zero_of_lt_one rateNonnegative rateStrict).mul_const
        (B N - epsilon / 2)
  have eventuallySmall : ∀ᶠ k : ℕ in atTop,
      r ^ k * (B N - epsilon / 2) < epsilon / 2 :=
    geometric.eventually (gt_mem_nhds halfPositive)
  obtain ⟨K, hK⟩ := Filter.eventually_atTop.1 eventuallySmall
  refine ⟨N + K, ?_⟩
  intro n hn
  have offset : N + (n - N) = n := by omega
  have bound := restart_budget_majorant B forcing r (epsilon / 2)
    rateNonnegative step N tail (n - N)
  rw [offset] at bound
  have small := hK (n - N) (by omega)
  rw [abs_of_nonneg (budgetNonnegative n)]
  linarith

/-- One fixed negative target cannot coexist with a vanishing complete error and loss.
The target and strength do not vary with the approximation stage. -/
theorem no_fixed_negative_of_variable_forcing
    (B forcing approximate loss : ℕ → ℝ) (r actual strength : ℝ)
    (rateNonnegative : 0 ≤ r) (rateStrict : r < 1)
    (budgetNonnegative : ∀ n, 0 ≤ B n)
    (step : ∀ n, B (n + 1) ≤ r * B n + forcing n)
    (forcingVanishes : VanishesAtInfinity forcing)
    (lossVanishes : VanishesAtInfinity loss)
    (strengthPositive : 0 < strength) (negative : actual ≤ -strength)
    (lower : ∀ n, -loss n ≤ approximate n)
    (comparison : ∀ n, |actual - approximate n| ≤ B n) : False := by
  have budgetVanishes := variable_budget_vanishes B forcing r rateNonnegative
    rateStrict budgetNonnegative step forcingVanishes
  have totalVanishes := VanishesAtInfinity.add lossVanishes budgetVanishes
  obtain ⟨N, hN⟩ := totalVanishes (strength / 2) (by linarith)
  have floorBound := witness_forces_budget negative (lower N) (comparison N)
  have upperBound := (le_abs_self (loss N + B N)).trans (hN N le_rfl)
  linarith

section Channels

variable {ι : Type*} [Fintype ι]

/-- Weighted absolute residuals in common terminal units; weights are supplied, not chosen. -/
def channelMass (weight residual : ι → ℝ) : ℝ :=
  ∑ i, weight i * |residual i|

theorem channelMass_nonnegative (weight residual : ι → ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i) : 0 ≤ channelMass weight residual := by
  exact Finset.sum_nonneg fun i _ =>
    mul_nonneg (weightsNonnegative i) (abs_nonneg (residual i))

/-- An exact source-to-model readout and consumer bounds justify the complete budget.
Changing the channel set or omitting a residual requires a new exact readout identity. -/
theorem readout_error_bound (weight coefficient residual : ι → ℝ)
    (actual approximate : ℝ)
    (readout : actual - approximate = ∑ i, coefficient i * residual i)
    (consumerBound : ∀ i, |coefficient i| ≤ weight i) :
    |actual - approximate| ≤ channelMass weight residual := by
  rw [readout]
  calc
    |∑ i, coefficient i * residual i| ≤ ∑ i, |coefficient i * residual i| := by
      simpa only [Real.norm_eq_abs] using
        (norm_sum_le Finset.univ (fun i => coefficient i * residual i))
    _ = ∑ i, |coefficient i| * |residual i| := by simp only [abs_mul]
    _ ≤ channelMass weight residual := by
      exact Finset.sum_le_sum fun i _ =>
        mul_le_mul_of_nonneg_right (consumerBound i) (abs_nonneg (residual i))

/-- Signed channel evolution yields a weighted l1 recurrence through COLUMN bounds.
Absolute values retain sign-changing and off-diagonal mixing without claiming cancellation. -/
theorem channel_mass_step (weight : ι → ℝ)
    (residual forcing : ℕ → ι → ℝ) (gain : ℕ → ι → ι → ℝ) (r : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i)
    (evolution : ∀ n i, residual (n + 1) i =
      (∑ j, gain n i j * residual n j) + forcing n i)
    (columnBound : ∀ n j, (∑ i, weight i * |gain n i j|) ≤ r * weight j)
    (n : ℕ) :
    channelMass weight (residual (n + 1)) ≤
      r * channelMass weight (residual n) + channelMass weight (forcing n) := by
  have each (i : ι) : |residual (n + 1) i| ≤
      (∑ j, |gain n i j| * |residual n j|) + |forcing n i| := by
    rw [evolution n i]
    calc
      |(∑ j, gain n i j * residual n j) + forcing n i| ≤
          |∑ j, gain n i j * residual n j| + |forcing n i| := abs_add_le _ _
      _ ≤ (∑ j, |gain n i j * residual n j|) + |forcing n i| := by
        apply add_le_add_left
        simpa only [Real.norm_eq_abs] using
          (norm_sum_le Finset.univ (fun j => gain n i j * residual n j))
      _ = (∑ j, |gain n i j| * |residual n j|) + |forcing n i| := by
        simp only [abs_mul]
  unfold channelMass
  calc
    (∑ i, weight i * |residual (n + 1) i|) ≤
        ∑ i, weight i * ((∑ j, |gain n i j| * |residual n j|) + |forcing n i|) :=
      Finset.sum_le_sum fun i _ =>
        mul_le_mul_of_nonneg_left (each i) (weightsNonnegative i)
    _ = (∑ i, ∑ j, weight i * (|gain n i j| * |residual n j|)) +
        ∑ i, weight i * |forcing n i| := by
      simp_rw [mul_add, Finset.sum_add_distrib, Finset.mul_sum]
    _ = (∑ j, ∑ i, weight i * (|gain n i j| * |residual n j|)) +
        ∑ i, weight i * |forcing n i| := by rw [Finset.sum_comm]
    _ = (∑ j, (∑ i, weight i * |gain n i j|) * |residual n j|) +
        ∑ i, weight i * |forcing n i| := by
      simp only [Finset.sum_mul, mul_assoc]
    _ ≤ (∑ j, (r * weight j) * |residual n j|) +
        ∑ i, weight i * |forcing n i| := by
      apply add_le_add_left
      exact Finset.sum_le_sum fun j _ =>
        mul_le_mul_of_nonneg_right (columnBound n j) (abs_nonneg (residual n j))
    _ = r * (∑ j, weight j * |residual n j|) +
        ∑ i, weight i * |forcing n i| := by
      simp only [Finset.mul_sum, mul_assoc]

/-- Complete mixed-channel specialization. The arithmetic readout, exact evolution,
weighted gain bound, and forcing decay remain independent application obligations. -/
theorem no_fixed_negative_of_weighted_channel_contraction
    (weight : ι → ℝ) (coefficient residual forcing : ℕ → ι → ℝ)
    (gain : ℕ → ι → ι → ℝ) (approximate loss : ℕ → ℝ)
    (r actual strength : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i)
    (rateNonnegative : 0 ≤ r) (rateStrict : r < 1)
    (readout : ∀ n, actual - approximate n = ∑ i, coefficient n i * residual n i)
    (consumerBound : ∀ n i, |coefficient n i| ≤ weight i)
    (evolution : ∀ n i, residual (n + 1) i =
      (∑ j, gain n i j * residual n j) + forcing n i)
    (columnBound : ∀ n j, (∑ i, weight i * |gain n i j|) ≤ r * weight j)
    (forcingVanishes : VanishesAtInfinity (fun n => channelMass weight (forcing n)))
    (lossVanishes : VanishesAtInfinity loss)
    (strengthPositive : 0 < strength) (negative : actual ≤ -strength)
    (lower : ∀ n, -loss n ≤ approximate n) : False := by
  exact no_fixed_negative_of_variable_forcing
    (fun n => channelMass weight (residual n))
    (fun n => channelMass weight (forcing n)) approximate loss r actual strength
    rateNonnegative rateStrict
    (fun n => channelMass_nonnegative weight (residual n) weightsNonnegative)
    (channel_mass_step weight residual forcing gain r weightsNonnegative evolution columnBound)
    forcingVanishes lossVanishes strengthPositive negative lower
    (fun n => readout_error_bound weight (coefficient n) (residual n)
      actual (approximate n) (readout n) (consumerBound n))

end Channels

/-- A persistent forcing channel cannot satisfy the required vanishing premise. -/
theorem constant_one_not_vanishing :
    ¬ VanishesAtInfinity (fun _ : ℕ => (1 : ℝ)) := by
  intro vanishes
  obtain ⟨N, hN⟩ := vanishes (1 / 2) (by norm_num)
  have impossible := hN N le_rfl
  norm_num at impossible

/-- Exact nonconstant forcing fixture: B(0)=0 and c(n)=(1/4)^n. -/
theorem geometric_forcing_recurrence (n : ℕ) :
    4 * ((1 / 2 : ℝ) ^ (n + 1) - (1 / 4 : ℝ) ^ (n + 1)) =
      (1 / 2 : ℝ) * (4 * ((1 / 2 : ℝ) ^ n - (1 / 4 : ℝ) ^ n)) +
        (1 / 4 : ℝ) ^ n := by
  simp only [pow_succ]
  ring

/-- A strict finite margin is distinguishable from an asymptotic convergence assertion. -/
theorem geometric_forcing_stage_four :
    4 * ((1 / 2 : ℝ) ^ 4 - (1 / 4 : ℝ) ^ 4) = 15 / 64 ∧
      (15 / 64 : ℝ) < 1 / 2 := by
  norm_num

/-- Two rows each have mass 3/4, but their common input column has mass 3/2. -/
def rowBoundCounterexample (_i j : Fin 2) : ℝ :=
  if j = 0 then 3 / 4 else 0

/-- Row control cannot replace the weighted column hypothesis in an l1 budget. -/
theorem row_bounds_do_not_give_column_contraction :
    (∀ i : Fin 2, (∑ j : Fin 2, |rowBoundCounterexample i j|) = 3 / 4) ∧
      (∑ i : Fin 2, |rowBoundCounterexample i 0|) = 3 / 2 := by
  constructor
  · intro i
    norm_num [rowBoundCounterexample, Fin.sum_univ_two]
  · norm_num [rowBoundCounterexample, Fin.sum_univ_two]

end

end GRWTSK.Analysis.ErrorBounds.ContractingResidualBudget
