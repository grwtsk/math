import SourceCompleteOmegaPeanoAssembly
import SourceStrictComplementaryEarlyBudget
import SourceJointWorkConsumer

/-!
Source-faithful one-sided hyperbola transfer. The actual four signed kappa
jets and every strict complementary divisor remain together. The known early
closed-floor contribution supplies a linear negative budget; a hypothetical
upper bound for the retained signed pair is transported at the same real
radius through the existing original residual/finite-prefix consumer.
No uniform arithmetic upper witness is asserted.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceHyperbolaSignedCancellation
open SourcePeanoSignedShortJet SourceCompleteOmegaReconstruction
open SourceCompleteOmegaPeanoAssembly SourceFullDivisorLogInventory
open SourceStrictComplementaryLocalization SourceStrictComplementaryEarlyBudget
open ContinuousResearch.ActualIntegerInventory
open ContinuousResearch.ActualArithmeticCalibration
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual
open SourceStrictColumnInterior SourceSamplingLedger SourceJointWorkConsumer
noncomputable section

/-- Both cancellation-dependent source regions, with all four short jets. -/
def jointHyperbolaTail (A : ℝ) : ℝ :=
  actualSignedPeanoKappaShortSector A + complementarySignedTail A

/-- The proved early floor budget is subtracted only after joining both regions. -/
def compensatedJointHyperbolaTail (A : ℝ) : ℝ :=
  jointHyperbolaTail A - (5 / 128 : ℝ) * A

/-- Exact complete Omega, including its independently defined early floor term. -/
theorem completeOmega_eq_joint_add_early (A : ℝ) (hA : 1 ≤ A) :
    completeOmega A = jointHyperbolaTail A + complementaryEarlyBaseline A := by
  rw [completeOmega_eq_actual_signed_Peano_kappa A hA]
  have hL := literal_L_sub_plain_eq_early_add_tail A hA
  unfold jointHyperbolaTail
  linarith

/-- One-sided complete-source estimate with the genuine linear negative compensation. -/
theorem completeOmega_le_compensated_joint (A : ℝ) (hA : 25600 ≤ A) :
    completeOmega A ≤ compensatedJointHyperbolaTail A := by
  rw [completeOmega_eq_joint_add_early A (by linarith)]
  have he := complementaryEarlyBaseline_le_neg_linear hA
  unfold compensatedJointHyperbolaTail
  linarith

/-- Exact quantitative source calibration, retaining the independent zeta constant. -/
theorem residual_sub_completeOmega_sub_zeta_abs_le (A : ℝ) (hA : 91 ≤ A) :
    |mertensResidual A - completeOmega A - (riemannZeta (1 / 2)).re| ≤
      260 / A ^ 2 + 21440 / A ^ 3 := by
  have hc := actual_calibration_260 (by linarith : 1 ≤ A)
  have he := integerJ_sub_completeOmega_abs_le A hA
  have ht := abs_add_le
    (mertensResidual A - integerJ A - (riemannZeta (1 / 2)).re)
    (integerJ A - completeOmega A)
  have hid : mertensResidual A - completeOmega A - (riemannZeta (1 / 2)).re =
      (mertensResidual A - integerJ A - (riemannZeta (1 / 2)).re) +
        (integerJ A - completeOmega A) := by ring
  rw [← hid] at ht
  norm_num at he
  linarith

/-- The quantitative error decreases on the literal real radius domain. -/
theorem reconstruction_error_le_at_radius {A R : ℝ} (hR : 91 ≤ R) (hRA : R ≤ A) :
    260 / A ^ 2 + 21440 / A ^ 3 ≤ 260 / R ^ 2 + 21440 / R ^ 3 := by
  have hRp : 0 < R := by linarith
  exact add_le_add
    (div_le_div_of_nonneg_left (by norm_num) (pow_pos hRp 2)
      (pow_le_pow_left₀ hRp.le hRA 2))
    (div_le_div_of_nonneg_left (by norm_num) (pow_pos hRp 3)
      (pow_le_pow_left₀ hRp.le hRA 3))

/-- A fixed complete-Omega upper witness gives its sharper same-radius residual constant. -/
theorem residual_le_of_completeOmega_tail {K R : ℝ} (hR : 91 ≤ R)
    (hOmega : ∀ A : ℝ, R ≤ A → completeOmega A ≤ K) :
    ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ K + (riemannZeta (1 / 2)).re +
        260 / R ^ 2 + 21440 / R ^ 3 := by
  intro A hRA
  have he := (abs_le.mp
    (residual_sub_completeOmega_sub_zeta_abs_le A (hR.trans hRA))).2
  have hr := reconstruction_error_le_at_radius hR hRA
  have ho := hOmega A hRA
  linarith

/-- The sharper quantitative constant composes the existing all-real finite-prefix receiver. -/
theorem estimate_of_completeOmega_tail_sharp {K R : ℝ} (hR : 91 ≤ R)
    (hOmega : ∀ A : ℝ, R ≤ A → completeOmega A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_mertens_residual_tail
  refine ⟨max 0 (K + (riemannZeta (1 / 2)).re + 260 / R ^ 2 + 21440 / R ^ 3),
    le_max_left _ _, R, (by linarith), ?_⟩
  intro A hRA
  exact (residual_le_of_completeOmega_tail hR hOmega A hRA).trans (le_max_right _ _)

/-- The joint signed inequality permits linear growth offset by the actual early floor term. -/
theorem residual_le_of_joint_linear_tail {K R : ℝ} (hR : 25600 ≤ R)
    (hjoint : ∀ A : ℝ, R ≤ A → jointHyperbolaTail A ≤ K + (5 / 128 : ℝ) * A) :
    ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ K + (riemannZeta (1 / 2)).re +
        260 / R ^ 2 + 21440 / R ^ 3 := by
  apply residual_le_of_completeOmega_tail (by linarith : 91 ≤ R)
  intro A hRA
  have he := completeOmega_le_compensated_joint A (hR.trans hRA)
  have hj := hjoint A hRA
  unfold compensatedJointHyperbolaTail at he
  linarith

/-- One fixed signed joint arithmetic inequality suffices for the unchanged original estimate. -/
theorem estimate_of_joint_linear_tail {K R : ℝ} (hR : 25600 ≤ R)
    (hjoint : ∀ A : ℝ, R ≤ A → jointHyperbolaTail A ≤ K + (5 / 128 : ℝ) * A) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_completeOmega_tail_sharp (K := K) (by linarith : 91 ≤ R)
  intro A hRA
  have he := completeOmega_le_compensated_joint A (hR.trans hRA)
  have hj := hjoint A hRA
  unfold compensatedJointHyperbolaTail at he
  linarith

/-- Return to the literal strict interior with the proved ledger and endpoint costs once. -/
theorem strict_upper_of_joint_linear_tail {K R C_F : ℝ} (hR : 25600 ≤ R)
    (hjoint : ∀ A : ℝ, R ≤ A → jointHyperbolaTail A ≤ K + (5 / 128 : ℝ) * A)
    (hledger : ∀ A : ℝ, 1 ≤ A →
      |EstimateBetaSourceRecombination.betaMainLedger A + independentMainTerm A| ≤ C_F) :
    ∀ A : ℝ, R ≤ A →
      strictColumnInterior A ≤
        K + (riemannZeta (1 / 2)).re + 260 / R ^ 2 + 21440 / R ^ 3 + C_F + 3 := by
  intro A hRA
  have hA1 : 1 ≤ A := by linarith
  have hr := residual_le_of_joint_linear_tail hR hjoint A hRA
  have hd := actual_residual_decomposition A hA1
  have hf := (abs_le.mp (hledger A hA1)).1
  have ht : VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤
      K + (riemannZeta (1 / 2)).re + 260 / R ^ 2 + 21440 / R ^ 3 + C_F := by
    linarith
  exact (strictColumnInterior_pointwise_upper_transfers_three A _ hA1).1 ht

/-- A hypothetical source-faithful joint upper witness reaches the primary strict frontier. -/
theorem strict_tail_of_joint_linear_tail {K R : ℝ} (hR : 25600 ≤ R)
    (hjoint : ∀ A : ℝ, R ≤ A → jointHyperbolaTail A ≤ K + (5 / 128 : ℝ) * A) :
    ∃ D : ℝ, 0 ≤ D ∧ ∀ A : ℝ, R ≤ A → strictColumnInterior A ≤ D := by
  obtain ⟨C_F, _hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨max 0 (K + (riemannZeta (1 / 2)).re + 260 / R ^ 2 + 21440 / R ^ 3 + C_F + 3),
    le_max_left _ _, ?_⟩
  intro A hRA
  exact (strict_upper_of_joint_linear_tail hR hjoint hF A hRA).trans (le_max_right _ _)

end
end FormalResearch.RiemannHypothesis.SourceHyperbolaSignedCancellation
