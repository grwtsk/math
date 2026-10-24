-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.JointAddWorkExact.Variant163991e7cb0cd4e732c0b72a1e3168dcaa10e2321dc0b73ab58286bb245bdf9c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"163991e7cb0cd4e732c0b72a1e3168dcaa10e2321dc0b73ab58286bb245bdf9c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.JointAddWorkExact.Variant163991e7cb0cd4e732c0b72a1e3168dcaa10e2321dc0b73ab58286bb245bdf9c","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"163991e7cb0cd4e732c0b72a1e3168dcaa10e2321dc0b73ab58286bb245bdf9c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle5/mangoldt-ledger/SourceMangoldtLedgerBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import SourceDivisorGramRefinement

/-!
# Full-Mangoldt work and the literal compensated arithmetic readout

The signed work is the independently defined actual full weighted Mangoldt
prefix interaction. Both original centered axes, the physical deleted diagonal,
the global baseline and every divisor counterterm are retained. The bounded
ledger error supplies an exact comparison, without a signed-work witness.

AI attribution: developed with OpenAI Codex; Lean checks proof terms.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.JointAddWorkExact.Variant163991e7cb0cd4e732c0b72a1e3168dcaa10e2321dc0b73ab58286bb245bdf9c

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceMangoldtLedgerBridge

open SourceMangoldtAbel SourceFirstPrimeAbel SourceDivisorGramRefinement
open SourceDivisorCounterterms SourceCompensatedReadout SourceVaughanHankel SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual EstimateBetaSourceRecombination

noncomputable section

/-- Full signed arithmetic compensation differs from negative work by the original ledger error. -/
theorem joint_add_work_exact (A : ℝ) (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A +
      criticalMangoldtWork A =
        criticalContinuousMoment A - (betaMainLedger A + independentMainTerm A) := by
  have h := actual_residual_decomposition A hA
  rw [mertensResidual_eq_continuous_sub_Mangoldt_work A hA] at h
  linarith

/-- The original operator state retains its full diagonal and independent compensation. -/
theorem arithmeticReadout_add_work_exact (A : ℝ) (hA : 1 ≤ A) :
    arithmeticReadout A hA + criticalMangoldtWork A =
      criticalContinuousMoment A - (betaMainLedger A + independentMainTerm A) := by
  rw [arithmeticReadout_eq_joint]
  exact joint_add_work_exact A hA

/-- All attained disclosure blocks, including mixed sectors, reconstruct the same signed work. -/
theorem classifiedReadout_add_work_exact (A : ℝ) (hA : 1 ≤ A) (S : Finset ℕ) :
    classifiedReadout A hA S + criticalMangoldtWork A =
      criticalContinuousMoment A - (betaMainLedger A + independentMainTerm A) := by
  rw [classifiedReadout_eq_covariance]
  exact joint_add_work_exact A hA

/-- The disclosed divisor remainders retain the independent global baseline. -/
theorem divisor_remainders_add_work_exact (A : ℝ) (hA : 1 ≤ A) :
    -globalBaseline A +
      ∑ d ∈ Finset.Icc 1 (EstimateVaughanSource.vaughanCutoff A),
        EstimateMertensAbel.realMoebius d * divisorRemainder A d +
      criticalMangoldtWork A =
        criticalContinuousMoment A - (betaMainLedger A + independentMainTerm A) := by
  rw [← jointSignedRemainder_eq_divisor_remainders A hA,
    jointSignedRemainder_eq_covariance A hA]
  exact joint_add_work_exact A hA

/-- Every compensation term stays inside the exact quarter-energy signed comparison. -/
theorem energy_surplus_add_work_exact (A : ℝ) (hA : 1 ≤ A) :
    sourceEnergySurplus A / 4 + criticalMangoldtWork A =
      criticalContinuousMoment A - (betaMainLedger A + independentMainTerm A) := by
  rw [sourceEnergySurplus_eq_four_joint_remainder A hA]
  have h := joint_add_work_exact A hA
  linarith

/-- A ledger budget gives a quantitative uniform comparison, not a work estimate. -/
theorem joint_add_work_abs_le (C_F A : ℝ) (hA : 1 ≤ A)
    (hF : |betaMainLedger A + independentMainTerm A| ≤ C_F) :
    |VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A +
      criticalMangoldtWork A| ≤ 2 + C_F := by
  rw [joint_add_work_exact A hA]
  calc
    _ ≤ |criticalContinuousMoment A| + |betaMainLedger A + independentMainTerm A| := by
      simpa only [sub_eq_add_neg, abs_neg] using
        abs_add_le (criticalContinuousMoment A) (-(betaMainLedger A + independentMainTerm A))
    _ ≤ 2 + C_F := add_le_add (criticalContinuousMoment_abs_le_two A hA) hF

/-- The independently proved bounded ledger error supplies an actual comparison witness. -/
theorem actual_joint_add_work_uniform_error :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A →
      |VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A +
        criticalMangoldtWork A| ≤ C := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨2 + C_F, by linarith, ?_⟩
  intro A hA
  exact joint_add_work_abs_le C_F A hA (hF A hA)

/-- Complete classification has the same witnessed error budget for every inspected divisor set. -/
theorem actual_classified_add_work_uniform_error :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, ∀ hA : 1 ≤ A, ∀ S : Finset ℕ,
      |classifiedReadout A hA S + criticalMangoldtWork A| ≤ C := by
  obtain ⟨C, hC0, hC⟩ := actual_joint_add_work_uniform_error
  refine ⟨C, hC0, ?_⟩
  intro A hA S
  rw [classifiedReadout_eq_covariance]
  exact hC A hA

/-- An actual work lower bound would feed the existing signed readout upper target. -/
theorem joint_upper_of_work_lower (C C_F A : ℝ) (hA : 1 ≤ A)
    (hW : -C ≤ criticalMangoldtWork A)
    (hF : |betaMainLedger A + independentMainTerm A| ≤ C_F) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤
      C + 2 + C_F := by
  have h := (abs_le.mp (joint_add_work_abs_le C_F A hA hF)).2
  linarith

/-- Conversely, readout upper control still requires the complete signed work lower control. -/
theorem work_lower_of_joint_upper (D C_F A : ℝ) (hA : 1 ≤ A)
    (hT : VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D)
    (hF : |betaMainLedger A + independentMainTerm A| ≤ C_F) :
    -(D + 2 + C_F) ≤ criticalMangoldtWork A := by
  have h := (abs_le.mp (joint_add_work_abs_le C_F A hA hF)).1
  linarith

/-- The actual remaining signed covariance estimate is exactly the full-Mangoldt work target. -/
theorem joint_tail_iff_mangoldt_work :
    VaughanOperatorReview.JointMainTermTailUpperBound independentMainTerm ↔
      MangoldtWorkTailLowerBound :=
  independentMainTerm_tail_iff_mertensResidualTail.trans
    mangoldt_work_tail_iff_residual_tail.symm

/-- Full physical operator compensation is retained in this equivalent open target. -/
theorem arithmeticReadout_tail_iff_mangoldt_work :
    ArithmeticReadoutTailUpperBound ↔ MangoldtWorkTailLowerBound :=
  arithmeticReadout_tail_iff_joint.trans joint_tail_iff_mangoldt_work

/-- The actual signed energy surplus has the same open one-sided work target. -/
theorem energy_surplus_tail_iff_mangoldt_work :
    SourceEnergySurplusTailUpperBound ↔ MangoldtWorkTailLowerBound :=
  energy_surplus_tail_iff_joint_remainder.trans joint_tail_iff_mangoldt_work

/-- Original divisor counterterms and global baseline remain in the equivalent work target. -/
theorem divisorRemainder_tail_iff_mangoldt_work :
    DivisorRemainderTailUpperBound ↔ MangoldtWorkTailLowerBound :=
  divisorRemainder_tail_iff_original_target.trans joint_tail_iff_mangoldt_work

end
end FormalResearch.RiemannHypothesis.SourceMangoldtLedgerBridge
