/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. Owners: #343 / #335 / #334 RH-E02.
-/
import GRWTSK.NumberTheory.Moebius.LogarithmicPickupSeries
import GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare
import Mathlib.Analysis.PSeries
import Mathlib.Topology.Algebra.InfiniteSum.Real

/-!
# Terminally compensated correlation for the actual sampled Möbius pickup

This module names the exact signed correlation already present in the finite
cell-mass telescope. Its negative terminal square is retained. The separately
nonnegative increment diagonal is paid by a shifted p-series. Consequently,
at every fixed positive damping, boundedness above of the compensated
correlation is equivalent to summability of the existing actual cell masses.

The reciprocal family is then equivalent to the existing zero energy
abscissa, and hence conditionally implies the literal Riemann hypothesis.
No compensated-correlation bound is constructed here. The specialization at
damping one is reconciled with the older critical endpoint-defect route rather
than creating a second arithmetic source.

All proof scripts await exact-head elaboration and transitive trust review.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open MeasureTheory Set
open scoped BigOperators

open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence
open GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare
open GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare

/-- The paid nonnegative square-increment contribution at one damping. -/
def sampleWeightedDiagonal (σ : ℝ) (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.range N,
    (sampleResidue (k + 2) - sampleResidue (k + 1)) ^ 2 *
      Real.exp (-σ * Real.log (k + 2 : ℕ))

/-- The complete signed mixed correlation, including its terminal subtraction. -/
def sampleCompensatedCorrelation (σ : ℝ) (N : ℕ) : ℝ :=
  2 * ∑ k ∈ Finset.range N,
    sampleResidue (k + 1) *
      (sampleResidue (k + 2) - sampleResidue (k + 1)) *
      Real.exp (-σ * Real.log (k + 2 : ℕ)) -
    sampleResidue (N + 1) ^ 2 *
      Real.exp (-σ * Real.log (N + 1 : ℕ))

/-- Pointwise p-series majorant for the weighted increment diagonal. -/
def sampleDiagonalMajorant (σ : ℝ) (k : ℕ) : ℝ :=
  (1 / 4 : ℝ) *
    (Real.exp (-σ * Real.log (k + 2 : ℕ)) / ((k : ℝ) + 2))

/-- The complete finite diagonal budget. Its finiteness is proved for `σ > 0`. -/
def sampleDiagonalBudget (σ : ℝ) : ℝ :=
  ∑' k : ℕ, sampleDiagonalMajorant σ k

/-- The exact fixed-rate arithmetic supplier left after paying the diagonal. -/
def CompensatedCorrelationBound (σ : ℝ) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ N : ℕ, sampleCompensatedCorrelation σ N ≤ C

/-- The same supplier at a cofinal family of positive dampings. -/
def ReciprocalCompensatedCorrelation : Prop :=
  ∀ j : ℕ,
    CompensatedCorrelationBound
      (CofinalDamping.reciprocalDamping j)

theorem sampleWeightedDiagonal_nonneg (σ : ℝ) (N : ℕ) :
    0 ≤ sampleWeightedDiagonal σ N := by
  unfold sampleWeightedDiagonal
  exact Finset.sum_nonneg fun k _ =>
    mul_nonneg (sq_nonneg _) (Real.exp_pos _).le

theorem sampleDiagonalMajorant_nonneg (σ : ℝ) (k : ℕ) :
    0 ≤ sampleDiagonalMajorant σ k := by
  unfold sampleDiagonalMajorant
  positivity

theorem sampleDiagonalMajorant_eq_rpow (σ : ℝ) (k : ℕ) :
    sampleDiagonalMajorant σ k =
      (1 / 4 : ℝ) * (((k : ℝ) + 2) ^ (-(σ + 1))) := by
  have hk : (0 : ℝ) < (k : ℝ) + 2 := by positivity
  have hinv : ((k : ℝ) + 2)⁻¹ =
      Real.exp (-Real.log ((k : ℝ) + 2)) := by
    rw [Real.exp_neg, Real.exp_log hk]
  simp only [sampleDiagonalMajorant, Nat.cast_add, Nat.cast_ofNat, div_eq_mul_inv]
  rw [hinv, ← Real.exp_add,
    Real.rpow_def_of_pos hk]
  congr 2
  ring

/-- The deterministic diagonal budget is finite at every positive damping. -/
theorem summable_sampleDiagonalMajorant {σ : ℝ} (hσ : 0 < σ) :
    Summable (sampleDiagonalMajorant σ) := by
  have hs : Summable (fun n : ℕ =>
      (n : ℝ) ^ (-(σ + 1))) :=
    Real.summable_nat_rpow.mpr (by linarith)
  have hshift : Summable (fun k : ℕ =>
      (((k : ℝ) + 2) ^ (-(σ + 1)))) := by
    have hinj : Function.Injective (fun k : ℕ => k + 2) := by
      intro a b hab
      exact Nat.add_right_cancel hab
    have h := hs.comp_injective hinj
    simpa only [Function.comp_def, Nat.cast_add, Nat.cast_ofNat] using h
  exact (hshift.mul_left (1 / 4 : ℝ)).congr
    (fun k => (sampleDiagonalMajorant_eq_rpow σ k).symm)

theorem sampleDiagonalBudget_nonneg (σ : ℝ) :
    0 ≤ sampleDiagonalBudget σ := by
  unfold sampleDiagonalBudget
  exact tsum_nonneg (sampleDiagonalMajorant_nonneg σ)

/-- The source diagonal is bounded by one finite p-series constant. -/
theorem sampleWeightedDiagonal_le_budget {σ : ℝ} (hσ : 0 < σ) (N : ℕ) :
    sampleWeightedDiagonal σ N ≤ sampleDiagonalBudget σ := by
  calc
    sampleWeightedDiagonal σ N ≤
        ∑ k ∈ Finset.range N, sampleDiagonalMajorant σ k := by
      unfold sampleWeightedDiagonal sampleDiagonalMajorant
      simpa only [Finset.mul_sum] using
        sampleResidue_weighted_diagonal_le σ N
    _ ≤ ∑' k : ℕ, sampleDiagonalMajorant σ k :=
      (summable_sampleDiagonalMajorant hσ).sum_le_tsum
        (Finset.range N)
        (fun k _ => sampleDiagonalMajorant_nonneg σ k)
    _ = sampleDiagonalBudget σ := rfl

/-- The merged finite identity, now split into its signed and diagonal parts. -/
theorem sampleCellMass_partial_sum_eq_compensated_add_diagonal
    {σ : ℝ} (hσ : σ ≠ 0) (N : ℕ) :
    (∑ k ∈ Finset.range N, sampleCellMass σ k) =
      (4 / σ) *
        (sampleCompensatedCorrelation σ N +
          sampleWeightedDiagonal σ N) := by
  rw [sampleCellMass_partial_sum hσ]
  unfold sampleCompensatedCorrelation sampleWeightedDiagonal
  simp_rw [add_mul]
  rw [Finset.sum_add_distrib]
  have hmix : (∑ k ∈ Finset.range N,
      2 * sampleResidue (k + 1) *
        (sampleResidue (k + 2) - sampleResidue (k + 1)) *
        Real.exp (-σ * Real.log (k + 2 : ℕ))) =
      2 * ∑ k ∈ Finset.range N,
        sampleResidue (k + 1) *
          (sampleResidue (k + 2) - sampleResidue (k + 1)) *
          Real.exp (-σ * Real.log (k + 2 : ℕ)) := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  rw [hmix]
  ring

/-- At a fixed positive damping, the compensated signed upper bound is exactly
the remaining arithmetic premise. The nonnegative diagonal has already been
paid and no totalized integral is used as a finiteness certificate. -/
theorem summable_cellMass_iff_compensatedCorrelationBound
    {σ : ℝ} (hσ : 0 < σ) :
    Summable (sampleCellMass σ) ↔ CompensatedCorrelationBound σ := by
  constructor
  · intro hs
    let S : ℝ := ∑' k : ℕ, sampleCellMass σ k
    have hS : 0 ≤ S := by
      dsimp [S]
      exact tsum_nonneg (sampleCellMass_nonneg hσ.ne')
    refine ⟨(σ / 4) * S, mul_nonneg (by positivity) hS, ?_⟩
    intro N
    have hpartial :
        (∑ k ∈ Finset.range N, sampleCellMass σ k) ≤ S := by
      dsimp [S]
      exact hs.sum_le_tsum (Finset.range N)
        (fun k _ => sampleCellMass_nonneg hσ.ne' k)
    have hdiag := sampleWeightedDiagonal_nonneg σ N
    have heq := sampleCellMass_partial_sum_eq_compensated_add_diagonal
      hσ.ne' N
    have hscale :
        sampleCompensatedCorrelation σ N +
            sampleWeightedDiagonal σ N =
          (σ / 4) *
            (∑ k ∈ Finset.range N, sampleCellMass σ k) := by
      rw [heq]
      field_simp [hσ.ne']
    calc
      sampleCompensatedCorrelation σ N ≤
          sampleCompensatedCorrelation σ N +
            sampleWeightedDiagonal σ N :=
        le_add_of_nonneg_right hdiag
      _ = (σ / 4) *
          (∑ k ∈ Finset.range N, sampleCellMass σ k) := hscale
      _ ≤ (σ / 4) * S :=
        mul_le_mul_of_nonneg_left hpartial (by positivity)
  · rintro ⟨C, hC, hbound⟩
    apply summable_of_sum_range_le
      (fun k => sampleCellMass_nonneg hσ.ne' k)
    intro N
    rw [sampleCellMass_partial_sum_eq_compensated_add_diagonal
      hσ.ne' N]
    exact mul_le_mul_of_nonneg_left
      (add_le_add (hbound N)
        (sampleWeightedDiagonal_le_budget hσ N))
      (by positivity)

-- Retain the published named parameter without changing the interface.
set_option linter.unusedVariables false in
/-- The complete cell-mass sum inherits an explicit fixed-rate bound from a
compensated-correlation witness and the deterministic diagonal budget. -/
theorem sampleCellMass_tsum_le_of_compensatedCorrelation
    {σ C : ℝ} (hσ : 0 < σ) (hC : 0 ≤ C)
    (hbound : ∀ N : ℕ, sampleCompensatedCorrelation σ N ≤ C) :
    (∑' k : ℕ, sampleCellMass σ k) ≤
      (4 / σ) * (C + sampleDiagonalBudget σ) := by
  apply Real.tsum_le_of_sum_range_le
    (fun k => sampleCellMass_nonneg hσ.ne' k)
  intro N
  rw [sampleCellMass_partial_sum_eq_compensated_add_diagonal
    hσ.ne' N]
  exact mul_le_mul_of_nonneg_left
    (add_le_add (hbound N)
      (sampleWeightedDiagonal_le_budget hσ N))
    (by positivity)

/-- Quantitative return to the actual pickup, with every paid constant visible. -/
theorem actual_energy_le_of_compensatedCorrelation
    {σ C : ℝ} (hσ : 0 < σ) (hC : 0 ≤ C)
    (hbound : ∀ N : ℕ, sampleCompensatedCorrelation σ N ≤ C) :
    (∫ u in Ici (0 : ℝ),
      Real.exp (-σ * u) * wholePickup u ^ 2) ≤
      (8 / σ) * (C + sampleDiagonalBudget σ) +
        2 / (σ + 1) := by
  have hcorr : CompensatedCorrelationBound σ :=
    ⟨C, hC, hbound⟩
  have hs : Summable (sampleCellMass σ) :=
    (summable_cellMass_iff_compensatedCorrelationBound hσ).mpr hcorr
  have hsum := sampleCellMass_tsum_le_of_compensatedCorrelation
    hσ hC hbound
  calc
    (∫ u in Ici (0 : ℝ),
        Real.exp (-σ * u) * wholePickup u ^ 2) ≤
        2 * (∑' k : ℕ, sampleCellMass σ k) +
          2 / (σ + 1) :=
      actual_energy_le_cellMass_tsum hσ hs
    _ ≤ 2 * ((4 / σ) *
          (C + sampleDiagonalBudget σ)) +
          2 / (σ + 1) :=
      add_le_add
        (mul_le_mul_of_nonneg_left hsum (by norm_num : (0 : ℝ) ≤ 2)) le_rfl
    _ = (8 / σ) * (C + sampleDiagonalBudget σ) +
          2 / (σ + 1) := by ring

theorem abscissa_zero_iff_reciprocal_compensatedCorrelation :
    pickupEnergyAbscissa = 0 ↔
      ReciprocalCompensatedCorrelation := by
  rw [abscissa_zero_iff_reciprocal_cellMass]
  constructor
  · intro hs j
    exact (summable_cellMass_iff_compensatedCorrelationBound
      (CofinalDamping.reciprocalDamping_pos j)).mp (hs j)
  · intro hcorr j
    exact (summable_cellMass_iff_compensatedCorrelationBound
      (CofinalDamping.reciprocalDamping_pos j)).mpr (hcorr j)

/-- Existing exact RH endpoint; the universal compensated-correlation premise
is still the unproved source-specific arithmetic supplier. -/
theorem riemannHypothesis_of_reciprocal_compensatedCorrelation
    (hcorr : ReciprocalCompensatedCorrelation) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupEnergyAbscissa_zero
    (abscissa_zero_iff_reciprocal_compensatedCorrelation.mpr hcorr)

/-! ## Compatibility with the existing critical boundary route -/

/-- The newer sample residue is literally the older endpoint defect. -/
theorem sampleResidue_eq_criticalEndpointDefect {n : ℕ} (hn : 1 ≤ n) :
    sampleResidue n = criticalEndpointDefect n := by
  rw [criticalEndpointDefect_eq_half_wholePickup hn,
    wholePickup_log_eq_sampleResidue hn]
  ring

/-- Damping one is exactly four times the shifted endpoint-defect energy. -/
theorem sampleCellMass_one_eq_endpointDefectEnergy (k : ℕ) :
    sampleCellMass 1 k =
      4 * criticalEndpointDefectEnergy (k + 1) := by
  unfold sampleCellMass criticalEndpointDefectEnergy exponentialLogDrop
  rw [sampleResidue_eq_criticalEndpointDefect (by omega : 1 ≤ k + 1)]
  push_cast
  ring

theorem summable_sampleCellMass_one_iff_endpointDefectSummable :
    Summable (sampleCellMass 1) ↔
      CriticalEndpointDefectSummable := by
  unfold CriticalEndpointDefectSummable
  constructor
  · intro hs
    have hscaled := hs.mul_left (1 / 4 : ℝ)
    have hshift :
        Summable (fun k : ℕ =>
          criticalEndpointDefectEnergy (k + 1)) := by
      refine hscaled.congr ?_
      intro k
      rw [sampleCellMass_one_eq_endpointDefectEnergy]
      ring
    exact (summable_nat_add_iff 1).mp hshift
  · intro hs
    have hshift :
        Summable (fun k : ℕ =>
          criticalEndpointDefectEnergy (k + 1)) :=
      (summable_nat_add_iff 1).mpr hs
    have hscaled := hshift.mul_left (4 : ℝ)
    refine hscaled.congr ?_
    intro k
    exact (sampleCellMass_one_eq_endpointDefectEnergy k).symm

/-- The fixed-rate compensated correlation at damping one is the already
existing critical-boundary criterion, not a new critical object. -/
theorem compensatedCorrelationBound_one_iff_criticalBoundary :
    CompensatedCorrelationBound 1 ↔
      CriticalBoundaryVerticalLineUniform :=
  (summable_cellMass_iff_compensatedCorrelationBound
      (by norm_num : (0 : ℝ) < 1)).symm.trans
    (summable_sampleCellMass_one_iff_endpointDefectSummable.trans
      criticalBoundary_iff_endpointDefectSummable.symm)

/-- The same damping-one condition is also the existing smoothed Mertens
transform square-summability criterion. -/
theorem compensatedCorrelationBound_one_iff_mertensTransformSummable :
    CompensatedCorrelationBound 1 ↔
      CriticalMertensTransformSummable :=
  compensatedCorrelationBound_one_iff_criticalBoundary.trans
    criticalBoundary_iff_mertensTransformSummable

/-- Existing increment mean-square suppliers can therefore be read directly
as suppliers of the compensated correlation at damping one. -/
theorem compensatedCorrelationBound_one_of_incrementMeanSquare
    {ε : ℝ} (hε0 : 0 < ε) (hε1 : ε < 1)
    (hs : CriticalMertensIncrementMeanSquare ε) :
    CompensatedCorrelationBound 1 :=
  compensatedCorrelationBound_one_iff_criticalBoundary.mpr
    (criticalBoundary_of_incrementMeanSquare hε0 hε1 hs)

/-- Existing explicit weighted Mertens-square suppliers feed the same
damping-one compensated correlation, with their premise retained. -/
theorem compensatedCorrelationBound_one_of_weightedMertensSquare
    {ε : ℝ} (hε0 : 0 < ε) (hε1 : ε < 1)
    (hs : CriticalWeightedMertensSquareSummable ε) :
    CompensatedCorrelationBound 1 :=
  compensatedCorrelationBound_one_iff_criticalBoundary.mpr
    (criticalBoundary_of_weightedMertensSquare hε0 hε1 hs)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
