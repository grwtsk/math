-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualComplementCriticalRelativeMain.Variantaaa57509bd546d0d7ba293a23c817ff52e626d4f73ee691e96e051dbeb37dba7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aaa57509bd546d0d7ba293a23c817ff52e626d4f73ee691e96e051dbeb37dba7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualComplementCriticalRelativeMain.Variantaaa57509bd546d0d7ba293a23c817ff52e626d4f73ee691e96e051dbeb37dba7","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"aaa57509bd546d0d7ba293a23c817ff52e626d4f73ee691e96e051dbeb37dba7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/SourceActualComplementCriticalRelative-Native02/SourceActualComplementCriticalRelative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualNearCriticalRelative
import SourceShortSamplingInventory

/-!
The actual complementary relative-Psi interval retains the complete signed
long Mangoldt inventory and the closed square-cutoff Psi trace. Genuine
Chebyshev half-density improves the short replacement before normalization.
No upper bound for the whole complementary or original pairing is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualComplementCriticalRelativeMain.Variantaaa57509bd546d0d7ba293a23c817ff52e626d4f73ee691e96e051dbeb37dba7

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualComplementCriticalRelative

open MeasureTheory Set Filter ArithmeticFunction
open scoped Interval Topology BigOperators
open SourcePairing SourceActualXiErrorConvolution SourceActualShortMangoldtBlock
open SourceActualNearCriticalRelative SourceActualShortMangoldtAsymptotic
open SourceFiveCancelledFactorialBudget SourceShortSamplingInventory
open SourceCriticalRelativeCompensation SourceFirstPrimeAbel
open OmegaResearch.CriticalRelativePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateVaughanSource EstimatePrimeSmoothDefect
open PrimePowerDescent EstimateMertensResidual

/-- The whole long inventory keeps the artificial closed-Psi boundary and compensation. -/
def actualComplementCriticalRelativeMain (A : ℝ) : ℝ :=
  actualLongMangoldtBlock A + Chebyshev.psi (A ^ 2) / A + A -
    (2 + criticalContinuousMoment A)

private theorem halfPrefix_square_eq_sum {A : ℝ} (hA : 1 ≤ A) :
    actualMangoldtHalfClosedPrefix (2 * Real.log A) =
      ∑ n ∈ Finset.Icc 2 (vaughanCutoff A), (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ) := by
  have hp : 0 < A := by linarith
  have hex : Real.exp (2 * Real.log A) = A ^ 2 := by
    rw [show 2 * Real.log A = Real.log A + Real.log A by ring,
      Real.exp_add, Real.exp_log hp]
    ring
  have hU := vaughanCutoff_pos A hA
  have hI : Finset.Ioc 0 (vaughanCutoff A) =
      insert 1 (Finset.Icc 2 (vaughanCutoff A)) := by
    ext n
    simp only [Finset.mem_Ioc, Finset.mem_insert, Finset.mem_Icc]
    omega
  unfold actualMangoldtHalfClosedPrefix
  rw [hex, show Nat.floor (A ^ 2) = vaughanCutoff A from rfl, hI]
  simp

private theorem halfPrefix_square_le {A : ℝ} (hA : 1 ≤ A) :
    actualMangoldtHalfClosedPrefix (2 * Real.log A) ≤ 2 * (Real.log 4 + 4) * A := by
  rw [halfPrefix_square_eq_sum hA]
  have hsum : (∑ n ∈ Finset.Icc 2 (vaughanCutoff A),
      (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)) ≤
      ∑ n ∈ Finset.Icc 1 (vaughanCutoff A),
        (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ) := by
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro n hn
      exact Finset.mem_Icc.mpr ⟨by have := (Finset.mem_Icc.mp hn).1; omega,
        (Finset.mem_Icc.mp hn).2⟩
    · intro n _ _
      exact div_nonneg vonMangoldt_nonneg (Real.sqrt_nonneg _)
  exact hsum.trans ((sum_vonMangoldt_div_sqrt_le (vaughanCutoff A)).trans
    (mul_le_mul_of_nonneg_left (sqrt_vaughanCutoff_le A hA) (by positivity)))

/-- The genuine closed half-density gives a vanishing unscaled short replacement. -/
theorem actualShortMangoldtBlock_sub_halfPrefix_log_square_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualShortMangoldtBlock A - actualMangoldtHalfClosedPrefix (2 * Real.log A)| ≤
      20 * (Real.log 4 + 4) * (Real.log A) ^ 2 / A := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hhalf := halfPrefix_square_le hA1
  have hsum : |actualShortMangoldtBlock A -
      actualMangoldtHalfClosedPrefix (2 * Real.log A)| ≤
      (10 * (Real.log A) ^ 2 / A ^ 2) *
        actualMangoldtHalfClosedPrefix (2 * Real.log A) := by
    rw [halfPrefix_square_eq_sum hA1]
    unfold actualShortMangoldtBlock
    rw [← Finset.sum_sub_distrib, Finset.mul_sum]
    refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum ?_)
    intro n hn
    have hn2 := (Finset.mem_Icc.mp hn).1
    have hn0 : 0 < n := by omega
    have hnR : 0 < (n : ℝ) := by exact_mod_cast hn0
    have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast (show 1 ≤ n by omega)
    have hnA : (n : ℝ) ≤ A ^ 2 :=
      (show (n : ℝ) ≤ vaughanCutoff A by exact_mod_cast (Finset.mem_Icc.mp hn).2).trans
        (Nat.floor_le (sq_nonneg A))
    have hlog : Real.log (n : ℝ) ≤ 2 * Real.log A := by
      have hh := Real.log_le_log hnR hnA
      simpa only [Real.log_pow, Nat.cast_ofNat] using hh
    have hln := Real.log_nonneg hn1
    have hlogs : (Real.log (n : ℝ)) ^ 2 ≤ 4 * (Real.log A) ^ 2 := by
      nlinarith [Real.log_nonneg hA1]
    have hc := actualCorrelation_sub_one_abs_le_five hA (Real.log (n : ℝ))
    have hcn : |sourceCorrelation explicitSecondDerivative A (Real.log n) - 1| ≤
        10 * (Real.log A) ^ 2 / A ^ 2 := by
      calc
        _ ≤ (5 / 2 : ℝ) / A ^ 2 * (Real.log (n : ℝ)) ^ 2 := hc
        _ ≤ (5 / 2 : ℝ) / A ^ 2 * (4 * (Real.log A) ^ 2) :=
          mul_le_mul_of_nonneg_left hlogs (by positivity)
        _ = _ := by ring
    have hw : vonMangoldt n * closedPrimeWeight A n -
        vonMangoldt n / Real.sqrt (n : ℝ) =
        (vonMangoldt n / Real.sqrt (n : ℝ)) *
          (sourceCorrelation explicitSecondDerivative A (Real.log n) - 1) := by
      unfold closedPrimeWeight
      rw [exponentialTest_log _ _ hn0]
      ring
    rw [hw, abs_mul, abs_of_nonneg (div_nonneg vonMangoldt_nonneg (Real.sqrt_nonneg _))]
    calc
      _ ≤ (vonMangoldt n / Real.sqrt (n : ℝ)) *
          (10 * (Real.log A) ^ 2 / A ^ 2) :=
        mul_le_mul_of_nonneg_left hcn (div_nonneg vonMangoldt_nonneg (Real.sqrt_nonneg _))
      _ = _ := by ring
  calc
    _ ≤ (10 * (Real.log A) ^ 2 / A ^ 2) *
        actualMangoldtHalfClosedPrefix (2 * Real.log A) := hsum
    _ ≤ (10 * (Real.log A) ^ 2 / A ^ 2) * (2 * (Real.log 4 + 4) * A) :=
      mul_le_mul_of_nonneg_left hhalf (by positivity)
    _ = _ := by field_simp; ring

/-- The entire complementary interval has a paid closed-arithmetic readout, not a cap. -/
theorem actualComplementCriticalRelative_sub_main_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualComplementCriticalRelativePairing A - actualComplementCriticalRelativeMain A| ≤
      10 * (3 * Real.log 4 + 11) * (Real.log A) ^ 2 / A := by
  have hA1 : 1 ≤ A := by linarith
  have hr := actualResidual_eq_short_add_long hA1
  have hj := mertensResidual_eq_criticalRelative_add_baseline hA1
  have hs := actualCriticalRelative_eq_near_add_complement hA
  have he : actualComplementCriticalRelativePairing A - actualComplementCriticalRelativeMain A =
      (actualShortMangoldtBlock A - actualMangoldtHalfClosedPrefix (2 * Real.log A)) -
        (actualNearCriticalRelativePairing A - actualNearCriticalRelativeMain A) := by
    unfold actualComplementCriticalRelativeMain actualNearCriticalRelativeMain
    linarith only [hr, hj, hs]
  rw [he]
  calc
    _ ≤ |actualShortMangoldtBlock A - actualMangoldtHalfClosedPrefix (2 * Real.log A)| +
        |actualNearCriticalRelativePairing A - actualNearCriticalRelativeMain A| := abs_sub _ _
    _ ≤ 20 * (Real.log 4 + 4) * (Real.log A) ^ 2 / A +
        10 * (Real.log 4 + 3) * (Real.log A) ^ 2 / A :=
      add_le_add (actualShortMangoldtBlock_sub_halfPrefix_log_square_abs_le hA)
        (actualNearCriticalRelative_sub_main_abs_le hA)
    _ = _ := by ring

/-- This closed-boundary substitution error tends to zero before normalization. -/
theorem actualComplementCriticalRelative_sub_main_tendsto_zero :
    Tendsto (fun A : ℝ => actualComplementCriticalRelativePairing A -
      actualComplementCriticalRelativeMain A) atTop (𝓝 0) := by
  have ht : Tendsto (fun A : ℝ => (Real.log A) ^ 2 / A) atTop (𝓝 0) := by
    simpa using Real.tendsto_pow_log_div_mul_add_atTop 1 0 2 one_ne_zero
  have hh := ht.const_mul (10 * (3 * Real.log 4 + 11))
  simp only [mul_zero] at hh
  apply squeeze_zero_norm' ?_ hh
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  simpa only [Real.norm_eq_abs, mul_div_assoc] using
    actualComplementCriticalRelative_sub_main_abs_le hA

end FormalResearch.RiemannHypothesis.SourceActualComplementCriticalRelative
