# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCompleteXiComplementConsumer.Variant5bf52684c4eb0995a66e6f7ebba5ff5a8efc2e92bb7a41ae66aa8ef0b75b45ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `365839cb747438fa34162bdc314085d5487dfb77` · SHA-256 `7db90d382e0793e357f6fd3fc49521e57de1bf2a3c479164cc427542a2f47fbd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CompleteXiComplement.Variant5ea6b54094840fdf1af0c34598809b68407f6e7e93ac90a97ed7dc94dd6d92cf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5ea6b54094840fdf1af0c34598809b68407f6e7e93ac90a97ed7dc94dd6d92cf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CompleteXiComplement.Variant5ea6b54094840fdf1af0c34598809b68407f6e7e93ac90a97ed7dc94dd6d92cf","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"5ea6b54094840fdf1af0c34598809b68407f6e7e93ac90a97ed7dc94dd6d92cf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791327256247684000/SourceCompleteXiComplementConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiPositiveBlock
import SourceActualShiftedXiDerivativeAdapter

/-!
The new finite positive margin is actually applied to the complete transformed
source. The complement includes both remaining physical intervals. A common
radius max(91,R) retains the original finite prefix through that radius. No
uniform complement witness is supplied. Direction, selection and evaluation:
grwtsk contributors. Local formal construction: OpenAI Codex assistance.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CompleteXiComplement.Variant5ea6b54094840fdf1af0c34598809b68407f6e7e93ac90a97ed7dc94dd6d92cf

set_option autoImplicit false
noncomputable section
namespace RH16CompleteXiComplement

open MeasureTheory Set
open RH16ActualXiPositiveBlock RH16ShiftedXiAdapter RH16CesaroSignedPairing
open RH16ResumeApplication RH16ResumeBudget
open FormalResearch.RiemannHypothesis.SourceActualPsiInverseSquare
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- Both complementary physical intervals, with the same complete signed source. -/
def completeXiComplement (A : ℝ) : ℝ :=
  (∫ y in 2..(13 / 2), actualTransformedXiBlockDensity A y) +
    ∫ y in 7..Real.exp (2 * A), actualTransformedXiBlockDensity A y

/-- The usable radius is fixed before quantifying the real source scale. -/
def calibratedRadius (R : ℝ) : ℝ := max 91 R

/-- Nonnegativity is imposed on the witness, not on the sharper signed residual budget. -/
def complementAtomBudget (K : ℝ) : ℝ := max 0 (K - blockMargin)

private theorem exp_scale_ge_seven (A : ℝ) (hA : 40 ≤ A) :
    (7 : ℝ) ≤ Real.exp (2 * A) := by
  have hl := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
  have h : Real.log (7 : ℝ) ≤ 2 * A := by linarith
  simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using Real.exp_le_exp.mpr h

/-- Literal closed-atom integrability on the whole finite physical support. -/
theorem actual_transformed_whole_intervalIntegrable (A : ℝ) (hA : 40 ≤ A) :
    IntervalIntegrable (actualTransformedXiBlockDensity A) volume 2 (Real.exp (2 * A)) := by
  have hp : 0 < A := by linarith
  have hc := (sourceCorrelation_contDiff A hp).continuous
  have hd := (sourceCorrelation_contDiff A hp).continuous_deriv_one
  have hw : ContinuousOn (fun y : ℝ =>
      (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
        sourceCorrelation explicitSecondDerivative A (Real.log y) / 2) /
          y ^ (3 / 2 : ℝ)) (Icc 2 (Real.exp (2 * A))) := by
    intro y hy
    have hypos : 0 < y := by linarith [hy.1]
    exact ((hd.continuousAt.comp (Real.continuousAt_log hypos.ne')).sub
      ((hc.continuousAt.comp (Real.continuousAt_log hypos.ne')).div_const 2) |>.div
        (continuousAt_id.rpow_const (Or.inl hypos.ne'))
        (Real.rpow_pos_of_pos hypos _).ne').continuousWithinAt
  have hi := shiftedActualChebyshev_mul_intervalIntegrable (Real.exp (2 * A))
    (by linarith [exp_scale_ge_seven A hA]) _ hw
  change IntervalIntegrable (fun y => RH16ActualPsiNegativeBlock.shiftedActualChebyshev y *
    (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
      sourceCorrelation explicitSecondDerivative A (Real.log y) / 2) /
        y ^ (3 / 2 : ℝ)) volume 2 (Real.exp (2 * A))
  simpa only [mul_div_assoc] using hi

/-- The actual native pairing splits into the favorable block and the COMPLETE complement. -/
theorem signed_pairing_eq_block_add_complement (A : ℝ) (hA : 40 ≤ A) :
    signedCesaroPairing A =
      (∫ y in (13 / 2)..7, actualTransformedXiBlockDensity A y) + completeXiComplement A := by
  have hX := exp_scale_ge_seven A hA
  have hw := actual_transformed_whole_intervalIntegrable A hA
  have h2X : (2 : ℝ) ≤ Real.exp (2 * A) := by linarith
  have h26 : IntervalIntegrable (actualTransformedXiBlockDensity A) volume 2 (13 / 2) := by
    apply hw.mono ?_ le_rfl
    rw [uIcc_of_le (by norm_num : (2 : ℝ) ≤ 13 / 2), uIcc_of_le h2X]
    intro y hy
    exact ⟨hy.1, by linarith [hy.2]⟩
  have h27 : IntervalIntegrable (actualTransformedXiBlockDensity A) volume 2 7 := by
    apply hw.mono ?_ le_rfl
    rw [uIcc_of_le (by norm_num : (2 : ℝ) ≤ 7), uIcc_of_le h2X]
    intro y hy
    exact ⟨hy.1, hy.2.trans hX⟩
  have h7X : IntervalIntegrable (actualTransformedXiBlockDensity A) volume 7
      (Real.exp (2 * A)) := by
    apply hw.mono ?_ le_rfl
    rw [uIcc_of_le hX, uIcc_of_le h2X]
    intro y hy
    exact ⟨by linarith [hy.1], hy.2⟩
  have h67 := actual_transformed_density_intervalIntegrable A hA
  have hfirst := intervalIntegral.integral_add_adjacent_intervals h26 h67
  have hsecond := intervalIntegral.integral_add_adjacent_intervals h27 h7X
  have he := signedCesaroPairing_eq_explicit_shiftedXi A (by linarith : 1 ≤ A)
  change signedCesaroPairing A =
    ∫ y in 2..Real.exp (2 * A), actualTransformedXiBlockDensity A y at he
  rw [he]
  unfold completeXiComplement
  linarith only [hfirst, hsecond]

/-- The new finite eta margin reduces a budget for this particular complete complement. -/
theorem signed_pairing_lower_of_complete_complement (K A : ℝ) (hA : 40 ≤ A)
    (hcomp : -K ≤ completeXiComplement A) :
    -complementAtomBudget K ≤ signedCesaroPairing A := by
  have hb := actual_transformed_block_integral_lower A hA
  have he := signed_pairing_eq_block_add_complement A hA
  have hm : K - blockMargin ≤ complementAtomBudget K := le_max_right _ _
  linarith only [hb, he, hcomp, hm]

/-- The gamma first-atom trace is handled by the existing checked source consumer. -/
theorem remaining_lower_of_complete_complement (K A : ℝ) (hA : 91 ≤ A)
    (hcomp : -K ≤ completeXiComplement A) :
    -complementAtomBudget K ≤ remainingAtomWork A := by
  exact remainingAtomWork_lower_of_signed_pairing _ A hA
    (signed_pairing_lower_of_complete_complement K A (by linarith) hcomp)

theorem complementAtomBudget_nonneg (K : ℝ) : 0 ≤ complementAtomBudget K := le_max_left _ _

/-- An actual complement witness would construct the requested atom-work witness. -/
theorem atom_witness_of_complete_complement (K R : ℝ)
    (hcomp : ∀ A : ℝ, R ≤ A → -K ≤ completeXiComplement A) :
    ∃ D : ℝ, 0 ≤ D ∧ ∃ Rstar : ℝ, 40 ≤ Rstar ∧
      ∀ A : ℝ, Rstar ≤ A → -D ≤ remainingAtomWork A := by
  refine ⟨complementAtomBudget K, complementAtomBudget_nonneg K,
    calibratedRadius R, ?_, ?_⟩
  · have h : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
    linarith
  · intro A hA
    apply remaining_lower_of_complete_complement K A
    · exact (le_max_left 91 R).trans hA
    · exact hcomp A ((le_max_right 91 R).trans hA)

/-- Every real scale below the common radius uses the ORIGINAL prefix through that radius. -/
theorem all_real_lower_of_complete_complement (K R : ℝ)
    (hcomp : ∀ A : ℝ, R ≤ A → -K ≤ completeXiComplement A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (calibratedRadius R))
        (archimedeanMultiplier 0 - 2 * (complementAtomBudget K - 3 / 8 +
          criticalBaselineCorrection (calibratedRadius R))) ≤
            sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_remaining_signed_tail
    (complementAtomBudget K) (calibratedRadius R) (by
      have h : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
      linarith)
  intro A hA
  exact remaining_lower_of_complete_complement K A ((le_max_left 91 R).trans hA)
    (hcomp A ((le_max_right 91 R).trans hA))

/-- Conditional exact #16 proof term; the uniform complete-complement premise is open. -/
theorem estimate_of_complete_complement (K R : ℝ)
    (hcomp : ∀ A : ℝ, R ≤ A → -K ≤ completeXiComplement A) :
    CorrelationAssembly.EstimateObligation := by
  exact ⟨_, all_real_lower_of_complete_complement K R hcomp⟩

end RH16CompleteXiComplement
```
