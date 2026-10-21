/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. Owners: #347 / #343 / #335 / #334 RH-E02.
-/
import GRWTSK.NumberTheory.Moebius.CompensatedCorrelationCriterion

/-!
# Every-positive-damping Mertens mean-square supplier

The existing critical Mertens-transform Cauchy estimate is independent of the
target pickup damping.  At damping `σ > 0`, any exponent `ε` with
`0 < ε ≤ 1` and `ε < σ` supplies a summable power majorant for the actual
logarithmic cell masses.

For the reciprocal damping `d_j = 2 / (j + 1)`, the canonical choice
`ε_j = d_j / 2 = 1 / (j + 1)` therefore pays the complete fixed-rate
criterion whenever the existing increment mean square is summable.  The
existing weighted Mertens-square condition supplies that increment premise.

This is a sufficient positive-majorant route.  No mean-square premise is
proved here, no new damping is paid unconditionally, and no converse from RH
or pickup energy to the weighted Mertens-square family is asserted.  All proof
scripts await exact-head elaboration and transitive trust review.
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

/-- The total existing weighted square budget for the actual Mertens-transform
increments.  Finiteness is supplied only by
`CriticalMertensIncrementMeanSquare ε`. -/
def sampleIncrementMeanSquareTotal (ε : ℝ) : ℝ :=
  ∑' j : ℕ,
    (pickupMertensPrefix j * criticalEndpointGap j) ^ 2 *
      ((j + 1 : ℕ) : ℝ) ^ (1 - ε)

theorem sampleIncrementMeanSquareTotal_nonneg (ε : ℝ) :
    0 ≤ sampleIncrementMeanSquareTotal ε := by
  unfold sampleIncrementMeanSquareTotal
  exact tsum_nonneg fun _ => mul_nonneg (sq_nonneg _) (Real.rpow_nonneg (by positivity) _)

/-- Existing weighted Cauchy--Schwarz, rewritten for the merged actual sample
`Q_n = sampleResidue n`. -/
theorem sampleResidue_sq_le_incrementMeanSquareTotal
    {ε : ℝ} (hε0 : 0 < ε) (hε1 : ε ≤ 1)
    (hs : CriticalMertensIncrementMeanSquare ε)
    {n : ℕ} (hn : 1 ≤ n) :
    sampleResidue n ^ 2 ≤
      sampleIncrementMeanSquareTotal ε * ((n : ℝ) ^ ε / ε) := by
  rw [sampleResidue_eq_criticalEndpointDefect hn,
    criticalEndpointDefect_eq_mertensTransform]
  have hq := criticalMertensTransform_sq_le_meanSquare hε0 hε1 n
  have hA : criticalMertensIncrementSquare ε n ≤
      sampleIncrementMeanSquareTotal ε := by
    simpa only [sampleIncrementMeanSquareTotal] using
      criticalMertensIncrementSquare_le_tsum hs n
  exact hq.trans
    (mul_le_mul_of_nonneg_right hA (by positivity))

/-- Cell mass in the exact endpoint-drop notation used by the older critical
modules. -/
theorem sampleCellMass_eq_exponentialLogDrop (σ : ℝ) (k : ℕ) :
    sampleCellMass σ k =
      (4 / σ) * sampleResidue (k + 1) ^ 2 *
        exponentialLogDrop σ (k + 1) := by
  unfold sampleCellMass exponentialLogDrop
  push_cast
  ring

/-- A fixed target damping is paid by any strictly smaller positive Cauchy
exponent.  Equality `ε = σ` would leave the nonsummable harmonic exponent. -/
theorem sampleCellMass_le_incrementMeanSquareMajorant
    {σ ε : ℝ} (hσ : 0 < σ) (hε0 : 0 < ε)
    (hε1 : ε ≤ 1) (hεσ : ε < σ)
    (hs : CriticalMertensIncrementMeanSquare ε) (k : ℕ) :
    sampleCellMass σ k ≤
      (4 * sampleIncrementMeanSquareTotal ε / ε) *
        (((k + 1 : ℕ) : ℝ) ^ (ε - σ - 1)) := by
  let n : ℕ := k + 1
  have hn : 1 ≤ n := by
    dsimp [n]
    omega
  have hnpos : (0 : ℝ) < (n : ℝ) := by positivity
  have hQ := sampleResidue_sq_le_incrementMeanSquareTotal
    hε0 hε1 hs hn
  have hdrop : exponentialLogDrop σ n ≤
      σ * (n : ℝ) ^ (-σ - 1) :=
    exponentialLogDrop_le_rpow hσ.le hn
  have hscale : 0 ≤ (4 / σ : ℝ) := by positivity
  have hpow : 0 ≤ σ * (n : ℝ) ^ (-σ - 1) := by positivity
  rw [sampleCellMass_eq_exponentialLogDrop]
  change (4 / σ) * sampleResidue n ^ 2 * exponentialLogDrop σ n ≤ _
  calc
    (4 / σ) * sampleResidue n ^ 2 * exponentialLogDrop σ n ≤
        (4 / σ) * sampleResidue n ^ 2 *
          (σ * (n : ℝ) ^ (-σ - 1)) := by
      exact mul_le_mul_of_nonneg_left hdrop
        (mul_nonneg hscale (sq_nonneg _))
    _ ≤ (4 / σ) *
          (sampleIncrementMeanSquareTotal ε * ((n : ℝ) ^ ε / ε)) *
          (σ * (n : ℝ) ^ (-σ - 1)) := by
      exact mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left hQ hscale) hpow
    _ = (4 * sampleIncrementMeanSquareTotal ε / ε) *
          ((n : ℝ) ^ ε * (n : ℝ) ^ (-σ - 1)) := by
      field_simp [hσ.ne', hε0.ne']
      ring
    _ = (4 * sampleIncrementMeanSquareTotal ε / ε) *
          ((n : ℝ) ^ (ε - σ - 1)) := by
      rw [← Real.rpow_add hnpos]
      congr 2
      ring

/-- The existing increment mean square supplies the actual fixed-rate cell
series whenever `0 < ε < σ` and `ε ≤ 1`. -/
theorem summable_sampleCellMass_of_incrementMeanSquare
    {σ ε : ℝ} (hσ : 0 < σ) (hε0 : 0 < ε)
    (hε1 : ε ≤ 1) (hεσ : ε < σ)
    (hs : CriticalMertensIncrementMeanSquare ε) :
    Summable (sampleCellMass σ) := by
  have hp : Summable (fun n : ℕ =>
      (n : ℝ) ^ (ε - σ - 1)) :=
    Real.summable_nat_rpow.mpr (by linarith)
  have hshift : Summable (fun k : ℕ =>
      (((k + 1 : ℕ) : ℝ) ^ (ε - σ - 1))) := by
    have h := (summable_nat_add_iff 1).2 hp
    simpa only [Nat.cast_add, Nat.cast_one] using h
  have hmajor : Summable (fun k : ℕ =>
      (4 * sampleIncrementMeanSquareTotal ε / ε) *
        (((k + 1 : ℕ) : ℝ) ^ (ε - σ - 1))) :=
    hshift.mul_left _
  apply hmajor.of_nonneg_of_le
  · exact fun k => sampleCellMass_nonneg hσ.ne' k
  · exact fun k =>
      sampleCellMass_le_incrementMeanSquareMajorant
        hσ hε0 hε1 hεσ hs k

theorem compensatedCorrelationBound_of_incrementMeanSquare
    {σ ε : ℝ} (hσ : 0 < σ) (hε0 : 0 < ε)
    (hε1 : ε ≤ 1) (hεσ : ε < σ)
    (hs : CriticalMertensIncrementMeanSquare ε) :
    CompensatedCorrelationBound σ :=
  (summable_cellMass_iff_compensatedCorrelationBound hσ).mp
    (summable_sampleCellMass_of_incrementMeanSquare
      hσ hε0 hε1 hεσ hs)

/-- A fixed-rate explicit weighted Mertens square supplies the same
compensated correlation through the already formalized increment comparison. -/
theorem compensatedCorrelationBound_of_weightedMertensSquare
    {σ ε : ℝ} (hσ : 0 < σ) (hε0 : 0 < ε)
    (hε1 : ε ≤ 1) (hεσ : ε < σ)
    (hs : CriticalWeightedMertensSquareSummable ε) :
    CompensatedCorrelationBound σ :=
  compensatedCorrelationBound_of_incrementMeanSquare
    hσ hε0 hε1 hεσ
      (incrementMeanSquare_of_weightedMertensSquare hs)

/-- The cofinal increment-mean-square family uses half of each target damping. -/
def ReciprocalIncrementMeanSquare : Prop :=
  ∀ j : ℕ,
    CriticalMertensIncrementMeanSquare
      (CofinalDamping.reciprocalDamping j / 2)

/-- The corresponding explicit positive Mertens-square family. -/
def ReciprocalWeightedMertensSquare : Prop :=
  ∀ j : ℕ,
    CriticalWeightedMertensSquareSummable
      (CofinalDamping.reciprocalDamping j / 2)

/-- An equivalent source-readable formulation quantified over every positive
weight exponent. -/
def AllPositiveWeightedMertensSquare : Prop :=
  ∀ ε : ℝ, 0 < ε →
    CriticalWeightedMertensSquareSummable ε

theorem reciprocalHalfDamping_pos (j : ℕ) :
    0 < CofinalDamping.reciprocalDamping j / 2 := by
  exact div_pos (CofinalDamping.reciprocalDamping_pos j) (by norm_num)

theorem reciprocalHalfDamping_le_one (j : ℕ) :
    CofinalDamping.reciprocalDamping j / 2 ≤ 1 := by
  have h := CofinalDamping.reciprocalDamping_antitone (Nat.zero_le j)
  rw [CofinalDamping.reciprocalDamping_zero] at h
  linarith

theorem reciprocalHalfDamping_lt_damping (j : ℕ) :
    CofinalDamping.reciprocalDamping j / 2 <
      CofinalDamping.reciprocalDamping j := by
  linarith [CofinalDamping.reciprocalDamping_pos j]

theorem reciprocalCompensatedCorrelation_of_incrementMeanSquare
    (hs : ReciprocalIncrementMeanSquare) :
    ReciprocalCompensatedCorrelation := by
  intro j
  exact compensatedCorrelationBound_of_incrementMeanSquare
    (CofinalDamping.reciprocalDamping_pos j)
    (reciprocalHalfDamping_pos j)
    (reciprocalHalfDamping_le_one j)
    (reciprocalHalfDamping_lt_damping j)
    (hs j)

theorem riemannHypothesis_of_reciprocalIncrementMeanSquare
    (hs : ReciprocalIncrementMeanSquare) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_reciprocal_compensatedCorrelation
    (reciprocalCompensatedCorrelation_of_incrementMeanSquare hs)

theorem reciprocalIncrementMeanSquare_of_weightedMertensSquare
    (hs : ReciprocalWeightedMertensSquare) :
    ReciprocalIncrementMeanSquare := by
  intro j
  exact incrementMeanSquare_of_weightedMertensSquare (hs j)

theorem riemannHypothesis_of_reciprocalWeightedMertensSquare
    (hs : ReciprocalWeightedMertensSquare) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_reciprocalIncrementMeanSquare
    (reciprocalIncrementMeanSquare_of_weightedMertensSquare hs)

/-- More damping in the positive Mertens-square weight preserves summability. -/
theorem weightedMertensSquareSummable_mono
    {ε δ : ℝ} (hεδ : ε ≤ δ)
    (hs : CriticalWeightedMertensSquareSummable ε) :
    CriticalWeightedMertensSquareSummable δ := by
  unfold CriticalWeightedMertensSquareSummable at hs ⊢
  apply hs.of_nonneg_of_le
  · intro n
    positivity
  · intro n
    have hbase : (1 : ℝ) ≤ ((n + 1 : ℕ) : ℝ) := by
      exact_mod_cast Nat.succ_le_succ (Nat.zero_le n)
    have hp :
        ((n + 1 : ℕ) : ℝ) ^ (-(1 + δ)) ≤
          ((n + 1 : ℕ) : ℝ) ^ (-(1 + ε)) :=
      Real.rpow_le_rpow_of_exponent_le hbase (by linarith)
    exact mul_le_mul_of_nonneg_left hp
      (mul_nonneg (sq_nonneg _)
        (Real.rpow_nonneg (Nat.cast_nonneg n) _))

/-- The reciprocal exponents are cofinal at zero, so they are equivalent to
the all-positive weighted Mertens-square family. -/
theorem allPositiveWeightedMertensSquare_iff_reciprocal :
    AllPositiveWeightedMertensSquare ↔
      ReciprocalWeightedMertensSquare := by
  constructor
  · intro hall j
    exact hall _ (reciprocalHalfDamping_pos j)
  · intro hrec ε hε
    obtain ⟨j, hj⟩ :=
      CofinalDamping.reciprocalDamping_cofinal
        (show 0 < 2 * ε by linarith)
    have hhalf :
        CofinalDamping.reciprocalDamping j / 2 ≤ ε := by
      linarith
    exact weightedMertensSquareSummable_mono hhalf (hrec j)

theorem riemannHypothesis_of_allPositiveWeightedMertensSquare
    (hs : AllPositiveWeightedMertensSquare) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_reciprocalWeightedMertensSquare
    (allPositiveWeightedMertensSquare_iff_reciprocal.mp hs)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
