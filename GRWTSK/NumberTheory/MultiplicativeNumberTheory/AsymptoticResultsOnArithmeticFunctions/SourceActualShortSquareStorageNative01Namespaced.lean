-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualShortSquareBaseline.Variantc773eadc481e24cfa8cd5f8ca803b0d9f6e8748ad3f7bbe943ae79ed2baa2ea2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c773eadc481e24cfa8cd5f8ca803b0d9f6e8748ad3f7bbe943ae79ed2baa2ea2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualShortSquareBaseline.Variantc773eadc481e24cfa8cd5f8ca803b0d9f6e8748ad3f7bbe943ae79ed2baa2ea2","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c773eadc481e24cfa8cd5f8ca803b0d9f6e8748ad3f7bbe943ae79ed2baa2ea2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-short-square-storage/SourceActualShortSquareStorage-native01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualShortMangoldtBlock
import FormalResearch.RiemannHypothesis.SourceMangoldtStorage

/-!
The actual normalized L2 source has genuine translation-square storage. On
the complete short arithmetic inventory that storage tends to zero, although
the actual short readout is positive and linear. The full long storage and
its baseline/main compensation remain untouched; no global defect cap follows.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualShortSquareBaseline.Variantc773eadc481e24cfa8cd5f8ca803b0d9f6e8748ad3f7bbe943ae79ed2baa2ea2

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualShortSquareStorage
open ArithmeticFunction Filter
open scoped BigOperators Topology
open SourcePairing SourceMangoldtStorage SourceMangoldtInteraction
open SourceScaleL2Continuity SourceReflectionDuality SourceActualShortMangoldtBlock
open SourceFiveCancelledFactorialBudget WeightedPrimeMertens
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent EstimateMobiusSplit EstimateVaughanSource
noncomputable section

/-- Independent actual arithmetic baseline over the complete closed short inventory. -/
def actualShortSquareBaseline (A : ℝ) : ℝ :=
  finiteMangoldtBaseline (Finset.Icc 2 (vaughanCutoff A))

/-- The genuine translated L2 square storage of the actual normalized source. -/
def actualShortSquareStorage (A : ℝ) : ℝ :=
  finiteMangoldtStorage (Finset.Icc 2 (vaughanCutoff A)) (originalSourceState A)

/-- The explicit logarithmic envelope for the physical short storage. -/
def actualShortSquareStorageEnvelope (A : ℝ) : ℝ :=
  (20 * Real.log A ^ 3 + 10 * (Real.log 4 + 4) * Real.log A ^ 2) / A

private theorem coefficient_eq {n : ℕ} (hn : 0 < n) :
    mangoldtCoefficient n = (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ) := by
  have hnR : 0 < (n : ℝ) := by exact_mod_cast hn
  unfold mangoldtCoefficient
  rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hnR]
  ring

/-- The physical square reconstruction keeps the actual source normalization and both accounts. -/
theorem actualShortSquare_reconstruction {A : ℝ} (hA : 0 < A) :
    actualShortMangoldtBlock A = actualShortSquareBaseline A - actualShortSquareStorage A := by
  have h := closedPrimeMomentFixed_eq_baseline_sub_storage hA (vaughanCutoff A)
  exact h

/-- Every physical short storage term is a genuine nonnegative norm square. -/
theorem actualShortSquareStorage_nonneg (A : ℝ) : 0 ≤ actualShortSquareStorage A :=
  finiteMangoldtStorage_nonneg _ _

/-- Actual harmonic Mangoldt coefficients bound this independently fixed short baseline. -/
theorem actualShortSquareBaseline_le {A : ℝ} (hA : 1 ≤ A) :
    actualShortSquareBaseline A ≤ A * (Real.log (vaughanCutoff A : ℝ) + Real.log 4 + 4) := by
  have hp : 0 < A := by linarith
  have hU : 1 ≤ vaughanCutoff A := vaughanCutoff_pos A hA
  have hb := (weightedMangoldt_sub_log_bounds (vaughanCutoff A) hU).2
  have hpref : weightedMangoldt (vaughanCutoff A) ≤
      Real.log (vaughanCutoff A : ℝ) + Real.log 4 + 4 := by linarith
  have hsub : (∑ n ∈ Finset.Icc 2 (vaughanCutoff A), (vonMangoldt n : ℝ) / n) ≤
      weightedMangoldt (vaughanCutoff A) := by
    unfold weightedMangoldt
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro n hn
      obtain ⟨hn2, hnU⟩ := Finset.mem_Icc.mp hn
      exact Finset.mem_Ioc.mpr ⟨by omega, hnU⟩
    · intro n _ _
      exact div_nonneg vonMangoldt_nonneg (Nat.cast_nonneg _)
  unfold actualShortSquareBaseline finiteMangoldtBaseline
  calc
    _ ≤ ∑ n ∈ Finset.Icc 2 (vaughanCutoff A), A * ((vonMangoldt n : ℝ) / n) := by
      apply Finset.sum_le_sum
      intro n hn
      have hnN : 0 < n := by have := (Finset.mem_Icc.mp hn).1; omega
      have hnR : 0 < (n : ℝ) := by exact_mod_cast hnN
      have hnA : (n : ℝ) ≤ A ^ 2 :=
        (show (n : ℝ) ≤ vaughanCutoff A by exact_mod_cast (Finset.mem_Icc.mp hn).2).trans
          (Nat.floor_le (sq_nonneg A))
      have hsA : Real.sqrt (n : ℝ) ≤ A :=
        (Real.sqrt_le_sqrt hnA).trans_eq (Real.sqrt_sq hp.le)
      rw [coefficient_eq hnN]
      have heq : (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ) =
          Real.sqrt (n : ℝ) * ((vonMangoldt n : ℝ) / n) := by
        rw [show Real.sqrt (n : ℝ) * ((vonMangoldt n : ℝ) / n) =
          (vonMangoldt n : ℝ) * (Real.sqrt (n : ℝ) / n) by ring,
          Real.sqrt_div_self']
        ring
      rw [heq]
      exact mul_le_mul_of_nonneg_right hsA (div_nonneg vonMangoldt_nonneg hnR.le)
    _ = A * ∑ n ∈ Finset.Icc 2 (vaughanCutoff A), (vonMangoldt n : ℝ) / n := by
      rw [Finset.mul_sum]
    _ ≤ A * weightedMangoldt (vaughanCutoff A) :=
      mul_le_mul_of_nonneg_left hsub hp.le
    _ ≤ _ := mul_le_mul_of_nonneg_left hpref hp.le

/-- The actual short square sum has an explicit vanishing budget before any long compensation. -/
theorem actualShortSquareStorage_le_envelope {A : ℝ} (hA : 25600 ≤ A) :
    actualShortSquareStorage A ≤ actualShortSquareStorageEnvelope A := by
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  let T := Real.log (vaughanCutoff A : ℝ)
  let D := (5 / 2 : ℝ) / A ^ 2 * T ^ 2
  have hT0 : 0 ≤ T := Real.log_nonneg (by
    exact_mod_cast vaughanCutoff_pos A hA1)
  have hD0 : 0 ≤ D := by unfold D; positivity
  have hrow (n : ℕ) (hn : n ∈ Finset.Icc 2 (vaughanCutoff A)) :
      sourceSquareStorage A (Real.log n) ≤ D := by
    have hn2 : 2 ≤ n := (Finset.mem_Icc.mp hn).1
    have hnR : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
    have ht0 : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by
      exact_mod_cast (show 1 ≤ n by omega))
    have htT : Real.log (n : ℝ) ≤ T := Real.log_le_log hnR
      (by exact_mod_cast (Finset.mem_Icc.mp hn).2)
    have he := actualCorrelation_sub_one_abs_le_five (by linarith : 91 ≤ A)
      (Real.log (n : ℝ))
    rw [sourceSquareStorage_eq hp]
    calc
      _ ≤ |sourceCorrelation explicitSecondDerivative A (Real.log (n : ℝ)) - 1| := by
        linarith [neg_le_abs (sourceCorrelation explicitSecondDerivative A (Real.log n) - 1)]
      _ ≤ (5 / 2 : ℝ) / A ^ 2 * (Real.log (n : ℝ)) ^ 2 := he
      _ ≤ D := by unfold D; gcongr
  have hs : actualShortSquareStorage A ≤ D * actualShortSquareBaseline A := by
    unfold actualShortSquareStorage actualShortSquareBaseline
    unfold finiteMangoldtStorage finiteMangoldtBaseline
    rw [Finset.mul_sum]
    apply Finset.sum_le_sum
    intro n hn
    change mangoldtCoefficient n * sourceSquareStorage A (Real.log n) ≤ _
    simpa only [mul_comm] using
      mul_le_mul_of_nonneg_left (hrow n hn) (mangoldtCoefficient_nonneg n)
  have hb := actualShortSquareBaseline_le hA1
  have hl0 : 0 ≤ Real.log A := Real.log_nonneg hA1
  have hT : T ≤ 2 * Real.log A := by
    have hU0 : (0 : ℝ) < vaughanCutoff A := by
      exact_mod_cast (show 0 < vaughanCutoff A from lt_of_lt_of_le (by norm_num) (by
        exact vaughanCutoff_pos A hA1))
    have h := Real.log_le_log hU0 (Nat.floor_le (sq_nonneg A))
    rw [Real.log_pow] at h
    simpa only [Nat.cast_ofNat] using h
  have hB0 : 0 ≤ Real.log (4 : ℝ) + 4 := by positivity
  calc
    _ ≤ D * (A * (T + Real.log 4 + 4)) :=
      hs.trans (mul_le_mul_of_nonneg_left hb hD0)
    _ = ((5 / 2 : ℝ) * T ^ 2 * (T + (Real.log 4 + 4))) / A := by
      unfold D
      field_simp
      ring
    _ ≤ ((5 / 2 : ℝ) * (2 * Real.log A) ^ 2 *
        (2 * Real.log A + (Real.log 4 + 4))) / A := by
      gcongr
    _ = actualShortSquareStorageEnvelope A := by
      unfold actualShortSquareStorageEnvelope
      ring

/-- The scalar budget tends to zero on the original real scale axis. -/
theorem actualShortSquareStorageEnvelope_tendsto_zero :
    Tendsto actualShortSquareStorageEnvelope atTop (𝓝 (0 : ℝ)) := by
  have h3 : Tendsto (fun A : ℝ => Real.log A ^ 3 / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_mul, add_zero] using
      Real.tendsto_pow_log_div_mul_add_atTop 1 0 3 (by norm_num)
  have h2 : Tendsto (fun A : ℝ => Real.log A ^ 2 / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_mul, add_zero] using
      Real.tendsto_pow_log_div_mul_add_atTop 1 0 2 (by norm_num)
  have hh := (h3.const_mul 20).add (h2.const_mul (10 * (Real.log 4 + 4)))
  convert hh using 1 <;> simp only [mul_zero, add_zero]
  funext A
  unfold actualShortSquareStorageEnvelope
  ring

/-- Genuine physical short storage vanishes even through every real cutoff event. -/
theorem actualShortSquareStorage_tendsto_zero :
    Tendsto actualShortSquareStorage atTop (𝓝 (0 : ℝ)) := by
  apply squeeze_zero' (Eventually.of_forall actualShortSquareStorage_nonneg) _
    actualShortSquareStorageEnvelope_tendsto_zero
  filter_upwards [eventually_ge_atTop (25600 : ℝ)] with A hA
  exact actualShortSquareStorage_le_envelope hA

/-- The actual short physical storage surplus is negative linear; the full long surplus remains. -/
theorem actualShortSquareSurplus_eventually_negative_linear :
    ∃ R : ℝ, 25600 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      actualShortSquareStorage A - actualShortSquareBaseline A ≤ -A / 4 := by
  obtain ⟨R, hR, hshort⟩ := actualShortMangoldtBlock_eventually_linear_lower
  refine ⟨R, hR, ?_⟩
  intro A hA
  have he := actualShortSquare_reconstruction (show 0 < A by linarith)
  linarith [hshort A hA]

end
end FormalResearch.RiemannHypothesis.SourceActualShortSquareStorage
