-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CorrectedNativeHead.Variant9d9a06538f167e2b003f7abac25579f7bfac0eb72c4f39ca436711f43716137c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d9a06538f167e2b003f7abac25579f7bfac0eb72c4f39ca436711f43716137c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CorrectedNativeHead.Variant9d9a06538f167e2b003f7abac25579f7bfac0eb72c4f39ca436711f43716137c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"9d9a06538f167e2b003f7abac25579f7bfac0eb72c4f39ca436711f43716137c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/consumers/SourceNativeSignedBudgetApplications.attempt02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceNativeConstantCompensation
import SourceNativeMellinLeadingPropagation
import SourceResidualBudget

/-!
# Exact native signed budgets at each receiving radius

Apply the literal native c=2 readout to the original real finite prefix and
sharp leading consumer. Finite compensated heads retain their source mass.
Every signed arithmetic upper witness and literal mass-defect bound remains an
explicit hypothesis. Research direction: grwtsk contributors.
Formal construction and local verification: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CorrectedNativeHead.Variant9d9a06538f167e2b003f7abac25579f7bfac0eb72c4f39ca436711f43716137c

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceNativeSignedBudgetApplications

open SourcePairing SourceNativeDirichlet SourceNativeAngularTail SourceNativeMertensTransfer
open SourceNativeConstantCompensation SourceNativeMellinLeadingPropagation
open SourceLeadingCesaroPropagation SourceLeadingTailBudget RH16ResumeBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

noncomputable section

/-- The literal finite compensated head plus its complete finite mass correction. -/
def correctedNativeHead (A T : ℝ) : ℂ :=
  compensatedAngularHead A T + (rightLineMajorant 2 : ℂ) * (nativeHeadMass A T - 1)

theorem correctedNativeHead_eq_head_sub_constant (A T : ℝ) (hA : 1 ≤ A) :
    correctedNativeHead A T = angularHead A T - (rightLineMajorant 2 : ℂ) := by
  rw [angularHead_eq_mass_add_compensated A T hA]
  unfold correctedNativeHead
  ring

/-- Constant shifting preserves the actual integrated growing-tail norm. -/
theorem correctedNativeHead_growing_tail_norm (A : ℝ) (hA : 1 ≤ A) :
    ‖((mertensResidual A : ℂ) - (rightLineMajorant 2 : ℂ)) -
      correctedNativeHead A (growingHeight A)‖ ≤ twoLineTailConstant / A ^ 9 := by
  rw [correctedNativeHead_eq_head_sub_constant A _ hA]
  convert mertensResidual_growing_tail_bound A hA using 1
  congr 1
  ring

theorem correctedNativeHead_growing_tail_abs (A : ℝ) (hA : 1 ≤ A) :
    |(mertensResidual A - rightLineMajorant 2) -
      (correctedNativeHead A (growingHeight A)).re| ≤ twoLineTailConstant / A ^ 9 := by
  have h := (Complex.abs_re_le_norm
    (((mertensResidual A : ℂ) - (rightLineMajorant 2 : ℂ)) -
      correctedNativeHead A (growingHeight A))).trans
    (correctedNativeHead_growing_tail_norm A hA)
  simpa using h

private theorem tail_constant_nonneg : 0 ≤ twoLineTailConstant := by
  unfold twoLineTailConstant
  have hD := rightLineMajorant_nonneg 2
  positivity

private theorem tail_cost_antitone (R A : ℝ) (hR : 1 ≤ R) (hA : R ≤ A) :
    twoLineTailConstant / A ^ 9 ≤ twoLineTailConstant / R ^ 9 := by
  have hRp : 0 < R := by linarith
  exact div_le_div_of_nonneg_left tail_constant_nonneg (by positivity)
    (pow_le_pow_left₀ hRp.le hA 9)

/-- The original prefix and arithmetic tail use exactly the supplied radius. -/
theorem all_real_lower_of_native_head (K R : ℝ) (hR : 1 ≤ R)
    (hhead : ∀ A : ℝ, R ≤ A → (angularHead A (growingHeight A)).re ≤ K) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (K + twoLineTailConstant / R ^ 9)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail _ R hR
  intro A hA
  exact mertensResidual_upper_of_signed_head hR hhead A hA

/-- Recompute the analytic tail at the actual sharp-leading receiving radius. -/
theorem leading_of_native_head_at_receiving_radius (K R : ℝ) (hR : 1 ≤ R)
    (hhead : ∀ A : ℝ, R ≤ A → (angularHead A (growingHeight A)).re ≤ K) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ K + twoLineTailConstant / (max 25600 R) ^ 9 -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  apply mertensResidual_upper_of_signed_head (le_trans hR (le_max_right _ _)) _ A hA
  intro B hB
  exact hhead B ((le_max_right _ _).trans hB)

/-- Whole-line compensation has no analytic truncation or endpoint charge. -/
theorem all_real_lower_of_native_compensated (K R : ℝ) (hR : 1 ≤ R)
    (hcomp : ∀ A : ℝ, R ≤ A → (compensatedAngularContour A).re ≤ K) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (rightLineMajorant 2 + K)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail _ R hR
  intro A hA
  exact mertensResidual_upper_of_compensated hR hcomp A hA

/-- Reuse the previously checked whole-line sharp-leading application unchanged. -/
theorem leading_of_native_compensated (K R : ℝ) (hR : 1 ≤ R)
    (hcomp : ∀ A : ℝ, R ≤ A → (compensatedAngularContour A).re ≤ K) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ rightLineMajorant 2 + K -
        (riemannZeta (1 / 2)).re + 3103 / 50 :=
  leading_tail_of_native_compensated_contour K R hR hcomp

theorem residual_upper_of_correctedNativeHead {K R : ℝ} (hR : 1 ≤ R)
    (hhead : ∀ A : ℝ, R ≤ A →
      (correctedNativeHead A (growingHeight A)).re ≤ K)
    (A : ℝ) (hA : R ≤ A) :
    mertensResidual A ≤ rightLineMajorant 2 + K + twoLineTailConstant / R ^ 9 := by
  have he := (abs_le.mp (correctedNativeHead_growing_tail_abs A (hR.trans hA))).2
  have hk := hhead A hA
  have ht := tail_cost_antitone R A hR hA
  linarith

theorem all_real_lower_of_correctedNativeHead (K R : ℝ) (hR : 1 ≤ R)
    (hhead : ∀ A : ℝ, R ≤ A →
      (correctedNativeHead A (growingHeight A)).re ≤ K) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 -
          2 * (rightLineMajorant 2 + K + twoLineTailConstant / R ^ 9)) ≤
            sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail _ R hR
  intro A hA
  exact residual_upper_of_correctedNativeHead hR hhead A hA

theorem leading_of_correctedNativeHead_at_receiving_radius (K R : ℝ) (hR : 1 ≤ R)
    (hhead : ∀ A : ℝ, R ≤ A →
      (correctedNativeHead A (growingHeight A)).re ≤ K) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ rightLineMajorant 2 + K +
        twoLineTailConstant / (max 25600 R) ^ 9 -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  apply residual_upper_of_correctedNativeHead (le_trans hR (le_max_right _ _)) _ A hA
  intro B hB
  exact hhead B ((le_max_right _ _).trans hB)

theorem estimate_of_correctedNativeHead (K R : ℝ) (hR : 1 ≤ R)
    (hhead : ∀ A : ℝ, R ≤ A →
      (correctedNativeHead A (growingHeight A)).re ≤ K) :
    CorrelationAssembly.EstimateObligation :=
  ⟨min (originalPrefixLower R)
      (archimedeanMultiplier 0 -
        2 * (rightLineMajorant 2 + K + twoLineTailConstant / R ^ 9)),
    all_real_lower_of_correctedNativeHead K R hR hhead⟩

/-- The literal compensated head requires its separate weighted mass-defect premise. -/
theorem residual_upper_of_literal_compensated_head {K R : ℝ} (hR : 1 ≤ R)
    (hhead : ∀ A : ℝ, R ≤ A → (compensatedAngularHead A (growingHeight A)).re ≤ K)
    (hmass : ∀ A : ℝ, R ≤ A →
      ‖(rightLineMajorant 2 : ℂ) * (nativeHeadMass A (growingHeight A) - 1)‖ ≤
        twoLineTailConstant / A ^ 9)
    (A : ℝ) (hA : R ≤ A) :
    mertensResidual A ≤ rightLineMajorant 2 + K + 2 * twoLineTailConstant / R ^ 9 := by
  have he := (abs_le.mp (correctedNativeHead_growing_tail_abs A (hR.trans hA))).2
  have hd := (le_abs_self
    (((rightLineMajorant 2 : ℂ) * (nativeHeadMass A (growingHeight A) - 1)).re)).trans
    ((Complex.abs_re_le_norm _).trans (hmass A hA))
  have hk := hhead A hA
  have ht := tail_cost_antitone R A hR hA
  simp only [correctedNativeHead, Complex.add_re] at he
  rw [mul_div_assoc]
  linarith

theorem all_real_lower_of_literal_compensated_head (K R : ℝ) (hR : 1 ≤ R)
    (hhead : ∀ A : ℝ, R ≤ A → (compensatedAngularHead A (growingHeight A)).re ≤ K)
    (hmass : ∀ A : ℝ, R ≤ A →
      ‖(rightLineMajorant 2 : ℂ) * (nativeHeadMass A (growingHeight A) - 1)‖ ≤
        twoLineTailConstant / A ^ 9) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 -
          2 * (rightLineMajorant 2 + K + 2 * twoLineTailConstant / R ^ 9)) ≤
            sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail _ R hR
  intro A hA
  exact residual_upper_of_literal_compensated_head hR hhead hmass A hA

theorem leading_of_literal_compensated_head_at_receiving_radius (K R : ℝ) (hR : 1 ≤ R)
    (hhead : ∀ A : ℝ, R ≤ A → (compensatedAngularHead A (growingHeight A)).re ≤ K)
    (hmass : ∀ A : ℝ, R ≤ A →
      ‖(rightLineMajorant 2 : ℂ) * (nativeHeadMass A (growingHeight A) - 1)‖ ≤
        twoLineTailConstant / A ^ 9) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ rightLineMajorant 2 + K +
        2 * twoLineTailConstant / (max 25600 R) ^ 9 -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  apply residual_upper_of_literal_compensated_head (le_trans hR (le_max_right _ _)) _ _ A hA
  · intro B hB
    exact hhead B ((le_max_right _ _).trans hB)
  · intro B hB
    exact hmass B ((le_max_right _ _).trans hB)

end
end FormalResearch.RiemannHypothesis.SourceNativeSignedBudgetApplications
