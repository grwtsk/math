/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.ContractingResidualBudget

set_option autoImplicit false

open scoped BigOperators

/-!
# Residual evolution derived from source and model defects

For supplied source states s_n, model states x_n and a common finite gain A_n,
set d_s(n) = s_(n+1) - A_n s_n and d_x(n) = x_(n+1) - A_n x_n.
Then u_n = s_n - x_n satisfies u_(n+1) = A_n u_n + d_s(n) - d_x(n).
The forcing is derived from the two paths rather than supplied independently.

A nonzero stationary source can require a persistent injection under strict
contraction. The useful decay premise is on the DIFFERENCE of source and model
injections, not necessarily on each injection. Separate decay is a sufficient
stronger profile; exact signed cancellation is retained before taking norms.

The fixed-target consumer still requires independently established source and
model readouts, complete channel coverage, conditioned column/consumer bounds,
and vanishing net forcing. Defining a source defect does not bound it, make it
computable from admitted arithmetic data, or construct a positive model.
This fixed finite-channel profile does not implement changing channel types.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No actual Weil supplier, RH theorem,
replay result, or choice-free dependency audit is asserted.
-/

namespace GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution

open GRWTSK.Analysis.ErrorBounds
open GRWTSK.Analysis.ErrorBounds.ContractingResidualBudget

noncomputable section

variable {ι : Type*} [Fintype ι]

/-- The source minus model residual at the same stage and channel. -/
def sourceResidual (source model : ℕ → ι → ℝ) (n : ℕ) (i : ι) : ℝ :=
  source n i - model n i

/-- Exact defect of a supplied path relative to the same supplied gain. -/
def stageDefect (gain : ℕ → ι → ι → ℝ) (path : ℕ → ι → ℝ)
    (n : ℕ) (i : ι) : ℝ :=
  path (n + 1) i - ∑ j, gain n i j * path n j

/-- Net forcing: source injection minus model injection, with signs retained. -/
def residualForcing (gain : ℕ → ι → ι → ℝ) (source model : ℕ → ι → ℝ)
    (n : ℕ) (i : ι) : ℝ :=
  stageDefect gain source n i - stageDefect gain model n i

/-- Residual dynamics follow algebraically from the two actual paths. -/
theorem sourceResidual_evolution (gain : ℕ → ι → ι → ℝ)
    (source model : ℕ → ι → ℝ) (n : ℕ) (i : ι) :
    sourceResidual source model (n + 1) i =
      (∑ j, gain n i j * sourceResidual source model n j) +
        residualForcing gain source model n i := by
  unfold sourceResidual residualForcing stageDefect
  simp_rw [mul_sub, Finset.sum_sub_distrib]
  ring

/-- Two independently supplied readouts give the discrepancy on the same channels.
The source readout is not inferred from provenance labels or from model positivity. -/
theorem source_readout_difference (coefficient source model : ι → ℝ)
    (actual approximate : ℝ)
    (sourceReadout : actual = ∑ i, coefficient i * source i)
    (modelReadout : approximate = ∑ i, coefficient i * model i) :
    actual - approximate = ∑ i, coefficient i * (source i - model i) := by
  rw [sourceReadout, modelReadout]
  simp only [mul_sub, Finset.sum_sub_distrib]

/-- Safe separate-error bound. Exact cancellation may make the left side much smaller. -/
theorem channelMass_sub_le (weight left right : ι → ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i) :
    channelMass weight (fun i => left i - right i) ≤
      channelMass weight left + channelMass weight right := by
  unfold channelMass
  calc
    (∑ i, weight i * |left i - right i|) ≤
        ∑ i, weight i * (|left i| + |right i|) := by
      apply Finset.sum_le_sum
      intro i _
      apply mul_le_mul_of_nonneg_left _ (weightsNonnegative i)
      simpa only [Real.norm_eq_abs] using norm_sub_le (left i) (right i)
    _ = (∑ i, weight i * |left i|) + ∑ i, weight i * |right i| := by
      simp_rw [mul_add, Finset.sum_add_distrib]

/-- Derive the scalar recurrence using the existing weighted-column theorem. -/
theorem source_residual_budget_step (weight : ι → ℝ)
    (gain : ℕ → ι → ι → ℝ) (source model : ℕ → ι → ℝ) (r : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i)
    (columnBound : ∀ n j, (∑ i, weight i * |gain n i j|) ≤ r * weight j)
    (n : ℕ) :
    channelMass weight (sourceResidual source model (n + 1)) ≤
      r * channelMass weight (sourceResidual source model n) +
        channelMass weight (residualForcing gain source model n) :=
  channel_mass_step weight (sourceResidual source model)
    (residualForcing gain source model) gain r weightsNonnegative
    (sourceResidual_evolution gain source model) columnBound n

/-- Separately vanishing injection budgets imply vanishing net forcing.
This is optional: matching persistent source/model injections need not vanish separately. -/
theorem net_forcing_vanishes_of_separate_defects (weight : ι → ℝ)
    (gain : ℕ → ι → ι → ℝ) (source model : ℕ → ι → ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i)
    (sourceVanishes : VanishesAtInfinity
      (fun n => channelMass weight (stageDefect gain source n)))
    (modelVanishes : VanishesAtInfinity
      (fun n => channelMass weight (stageDefect gain model n))) :
    VanishesAtInfinity (fun n => channelMass weight (residualForcing gain source model n)) := by
  apply VanishesAtInfinity.of_nonnegative_bound
    (VanishesAtInfinity.add sourceVanishes modelVanishes)
  · intro n
    exact add_nonneg
      (channelMass_nonnegative weight (stageDefect gain source n) weightsNonnegative)
      (channelMass_nonnegative weight (stageDefect gain model n) weightsNonnegative)
  · intro n
    rw [abs_of_nonneg
      (channelMass_nonnegative weight (residualForcing gain source model n) weightsNonnegative)]
    exact channelMass_sub_le weight (stageDefect gain source n)
      (stageDefect gain model n) weightsNonnegative

/-- Matching the source injection leaves only the model's update error as net forcing.
Access to the source injection is a premise, not an arithmetic construction. -/
theorem matched_injection_forcing (gain : ℕ → ι → ι → ℝ)
    (source model injection updateError : ℕ → ι → ℝ)
    (sourceStep : ∀ n i, source (n + 1) i =
      (∑ j, gain n i j * source n j) + injection n i)
    (modelStep : ∀ n i, model (n + 1) i =
      (∑ j, gain n i j * model n j) + injection n i + updateError n i)
    (n : ℕ) (i : ι) :
    residualForcing gain source model n i = -updateError n i := by
  unfold residualForcing stageDefect
  rw [sourceStep n i, modelStep n i]
  ring

/-- The source-derived evolution composes with the existing fixed-witness consumer.
One actual value is retained at every n; both readouts and net-forcing decay remain premises. -/
theorem no_fixed_negative_of_source_defects
    (weight : ι → ℝ) (coefficient source model : ℕ → ι → ℝ)
    (gain : ℕ → ι → ι → ℝ) (approximate loss : ℕ → ℝ)
    (r actual strength : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i)
    (rateNonnegative : 0 ≤ r) (rateStrict : r < 1)
    (sourceReadout : ∀ n, actual = ∑ i, coefficient n i * source n i)
    (modelReadout : ∀ n, approximate n = ∑ i, coefficient n i * model n i)
    (consumerBound : ∀ n i, |coefficient n i| ≤ weight i)
    (columnBound : ∀ n j, (∑ i, weight i * |gain n i j|) ≤ r * weight j)
    (netForcingVanishes : VanishesAtInfinity
      (fun n => channelMass weight (residualForcing gain source model n)))
    (lossVanishes : VanishesAtInfinity loss)
    (strengthPositive : 0 < strength) (negative : actual ≤ -strength)
    (lower : ∀ n, -loss n ≤ approximate n) : False := by
  exact no_fixed_negative_of_weighted_channel_contraction
    weight coefficient (sourceResidual source model)
    (residualForcing gain source model) gain approximate loss r actual strength
    weightsNonnegative rateNonnegative rateStrict
    (fun n => source_readout_difference (coefficient n) (source n) (model n)
      actual (approximate n) (sourceReadout n) (modelReadout n))
    consumerBound (sourceResidual_evolution gain source model) columnBound
    netForcingVanishes lossVanishes strengthPositive negative lower

/-- A retained nonzero residual must be sustained by forcing under a strict gain bound.
Unlike an affine upper-majorant fixed point, this is a genuine necessary lower bound. -/
theorem fixed_residual_forces_defect (weight residual forcing : ι → ℝ)
    (gain : ι → ι → ℝ) (r : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i)
    (stationary : ∀ i, residual i = (∑ j, gain i j * residual j) + forcing i)
    (columnBound : ∀ j, (∑ i, weight i * |gain i j|) ≤ r * weight j) :
    (1 - r) * channelMass weight residual ≤ channelMass weight forcing := by
  have bound := channel_mass_step weight (fun _ => residual) (fun _ => forcing)
    (fun _ => gain) r weightsNonnegative (fun _ i => stationary i)
    (fun _ j => columnBound j) 0
  change channelMass weight residual ≤
    r * channelMass weight residual + channelMass weight forcing at bound
  nlinarith

/-- A nonzero retained readout also forces a quantitative injection budget. -/
theorem fixed_readout_forces_defect (weight coefficient residual forcing : ι → ℝ)
    (gain : ι → ι → ℝ) (r observed : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i) (rateStrict : r < 1)
    (readout : observed = ∑ i, coefficient i * residual i)
    (consumerBound : ∀ i, |coefficient i| ≤ weight i)
    (stationary : ∀ i, residual i = (∑ j, gain i j * residual j) + forcing i)
    (columnBound : ∀ j, (∑ i, weight i * |gain i j|) ≤ r * weight j) :
    (1 - r) * |observed| ≤ channelMass weight forcing := by
  have readoutBound : |observed| ≤ channelMass weight residual := by
    simpa only [sub_zero] using readout_error_bound weight coefficient residual
      observed 0 (by simpa only [sub_zero] using readout) consumerBound
  exact (mul_le_mul_of_nonneg_left readoutBound (by linarith : 0 ≤ 1 - r)).trans
    (fixed_residual_forces_defect weight residual forcing gain r
      weightsNonnegative stationary columnBound)

/-- One-coordinate fixed source used by the exact fixtures below. -/
def unitSource (_n : ℕ) (_i : Unit) : ℝ := 1

def zeroModel (_n : ℕ) (_i : Unit) : ℝ := 0

def halfGain (_n : ℕ) (_i _j : Unit) : ℝ := 1 / 2

/-- Halving the homogeneous term does not halve a residual held fixed at one. -/
theorem persistent_source_fixture (n : ℕ) :
    sourceResidual unitSource zeroModel n () = 1 ∧
      stageDefect halfGain unitSource n () = 1 / 2 ∧
      stageDefect halfGain zeroModel n () = 0 ∧
      residualForcing halfGain unitSource zeroModel n () = 1 / 2 := by
  norm_num [sourceResidual, stageDefect, residualForcing, unitSource, zeroModel, halfGain]

/-- The persistent source injection does not meet the separate vanishing premise. -/
theorem persistent_source_defect_not_vanishing :
    ¬ VanishesAtInfinity (fun n => stageDefect halfGain unitSource n ()) := by
  intro vanishes
  obtain ⟨N, hN⟩ := vanishes (1 / 4) (by norm_num)
  have impossible := hN N le_rfl
  norm_num [stageDefect, halfGain, unitSource] at impossible

/-- Matching persistent injections cancel exactly in the source-minus-model residual. -/
theorem matching_persistent_defects_fixture (n : ℕ) :
    stageDefect halfGain unitSource n () = 1 / 2 ∧
      residualForcing halfGain unitSource unitSource n () = 0 ∧
      channelMass (fun _ : Unit => (1 : ℝ))
        (sourceResidual unitSource unitSource n) = 0 := by
  norm_num [stageDefect, residualForcing, sourceResidual, channelMass, halfGain, unitSource]

/-- A nontrivial tracking example: persistent injection 1/2 and geometric residual.
The target one is supplied explicitly; this is not a construction of a Weil approximant. -/
theorem affine_tracking_fixture (n : ℕ) :
    1 - (1 / 2 : ℝ) ^ (n + 1) =
        (1 / 2 : ℝ) * (1 - (1 / 2 : ℝ) ^ n) + 1 / 2 ∧
      1 - (1 - (1 / 2 : ℝ) ^ n) = (1 / 2 : ℝ) ^ n := by
  constructor
  · rw [pow_succ]
    ring
  · ring

end

end GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution
