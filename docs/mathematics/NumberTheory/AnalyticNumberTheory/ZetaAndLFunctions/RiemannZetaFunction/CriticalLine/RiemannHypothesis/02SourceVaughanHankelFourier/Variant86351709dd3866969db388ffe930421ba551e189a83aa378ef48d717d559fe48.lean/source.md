# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.02SourceVaughanHankelFourier.Variant86351709dd3866969db388ffe930421ba551e189a83aa378ef48d717d559fe48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7418a4095cd1e5a5b0e231020f37471dda9a33e` · SHA-256 `56f1eef205c9ff107e1a60126e0af586f2770f1cd2639e4d566324956730bd6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MangoldtPolynomial.Variant3503179f21bcc3ea72c93377de7c045eb6b15a6b29ddf311b28798de7549691c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3503179f21bcc3ea72c93377de7c045eb6b15a6b29ddf311b28798de7549691c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.MangoldtPolynomial.Variant3503179f21bcc3ea72c93377de7c045eb6b15a6b29ddf311b28798de7549691c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3503179f21bcc3ea72c93377de7c045eb6b15a6b29ddf311b28798de7549691c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/actual-vaughan-hankel-storage-prerequisite-assessment-20261007T061827Z/source-captures/02-SourceVaughanHankelFourier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceVaughanHankel
import FormalResearch.RiemannHypothesis.SourceHankelFourier
import FormalResearch.RiemannHypothesis.StateScaledOperatorError

/-!
# Literal centered Hankel interaction in Fourier and deformation coordinates

Review-only adapters over the recorded unchanged Vaughan inventory. The two
same-phase Fourier polynomials retain the actual centered beta row. The optional
bounded-operator error interface acts on the actual changing L² states and does
not assert a quantitative deformation or a joint arithmetic bound.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MangoldtPolynomial.Variant3503179f21bcc3ea72c93377de7c045eb6b15a6b29ddf311b28798de7549691c

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceVaughanHankelFourier

open MeasureTheory
open SourceVaughanHankel SourceHankelFourier SourceHankelReflection
open SourceSamplingLedger StateScaledOperatorError
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering EstimateVaughanSource
open scoped InnerProductSpace

noncomputable section

/-- The exact long Mangoldt row in the source's positive angular-frequency convention. -/
def mangoldtPolynomial (A ξ : ℝ) : ℂ :=
  arithmeticPolynomial (longInventory A)
    (fun m ↦ ArithmeticFunction.vonMangoldt m / Real.sqrt (m : ℝ)) ξ

/-- The original centered beta row remains inside its signed arithmetic polynomial. -/
def centeredBetaPolynomial (A ξ : ℝ) : ℂ :=
  arithmeticPolynomial (longInventory A)
    (fun n ↦ centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ)) ξ

/-- The joint real product has the full unchanged normalized source Fourier mass. -/
def actualJointFourierIntegrand (A ξ : ℝ) : ℝ :=
  (mangoldtPolynomial A ξ * centeredBetaPolynomial A ξ).re * sourceFourierSquare A ξ

/-- Literal finite row adapters are exactly the maintained signed Fourier interaction. -/
theorem actualJointFourierIntegrand_eq (A : ℝ) :
    actualJointFourierIntegrand A = jointFourierIntegrand A (longInventory A) (longInventory A)
      (fun m ↦ ArithmeticFunction.vonMangoldt m / Real.sqrt (m : ℝ))
      (fun n ↦ centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ)) := rfl

/-- Every frequency integral is genuine, rather than the total-integral default. -/
theorem actualJointFourierIntegrand_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (actualJointFourierIntegrand A) := by
  rw [actualJointFourierIntegrand_eq]
  exact jointFourierIntegrand_integrable hA _ _ _ _

/-- Exact reflected source pairing with its joint real product and factor 1/(2π). -/
theorem sourceHankelPairing_fourier (A : ℝ) (hA : 1 ≤ A) :
    sourceHankelPairing A =
      (1 / (2 * Real.pi)) * ∫ ξ, actualJointFourierIntegrand A ξ := by
  unfold sourceHankelPairing mangoldtForwardProfile centeredMobiusReflectedProfile
  rw [actualJointFourierIntegrand_eq]
  exact finite_hankel_fourier hA _ _ _ _
    (fun m hm ↦ longInventory_pos A hm) (fun n hn ↦ longInventory_pos A hn)

/-- The same centered deleted diagonal and independent main term are subtracted on the Fourier side. -/
theorem joint_remainder_fourier (A : ℝ) (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A =
      (1 / (2 * Real.pi)) * (∫ ξ, actualJointFourierIntegrand A ξ) -
        centeredDeletedDiagonal A - independentMainTerm A := by
  rw [covarianceOperator_half_eq_pairing_sub_diagonal A hA, sourceHankelPairing_fourier A hA]

/-- The signed energy surplus is the exact normalized joint Fourier interaction. -/
theorem sourceEnergySurplus_fourier (A : ℝ) (hA : 1 ≤ A) :
    sourceEnergySurplus A =
      4 * ((1 / (2 * Real.pi)) * (∫ ξ, actualJointFourierIntegrand A ξ) -
        centeredDeletedDiagonal A - independentMainTerm A) := by
  rw [sourceEnergySurplus_eq_four_joint_remainder A hA, joint_remainder_fourier A hA]

/-- The quantitative state budget contains the two actual growing arithmetic states. -/
def arithmeticStateNormBudget (A : ℝ) (hA : 1 ≤ A) : ℝ :=
  ‖mangoldtL2 A hA‖ ^ 2 + ‖centeredMobiusReflectedL2 A hA‖ ^ 2

/-- The budget is literally the sum of the source-profile square integrals. -/
theorem arithmeticStateNormBudget_eq_integrals (A : ℝ) (hA : 1 ≤ A) :
    arithmeticStateNormBudget A hA =
      (∫ x : ℝ, (mangoldtForwardProfile A x) ^ 2) +
      ∫ x : ℝ, (centeredMobiusReflectedProfile A x) ^ 2 := by
  unfold arithmeticStateNormBudget mangoldtL2 centeredMobiusReflectedL2
  rw [forwardL2_norm_sq_eq_integral, reflectedL2_norm_sq_eq_integral]
  rfl

/-- A supplied bounded deformation acts on the same two literal arithmetic states. -/
def deformedSourcePairing (A : ℝ) (hA : 1 ≤ A)
    (K : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ)) : ℝ :=
  polarizedQuadraticValue K (mangoldtL2 A hA) (centeredMobiusReflectedL2 A hA)

/-- The identity model recovers the actual source interaction, with no arithmetic estimate. -/
theorem deformedSourcePairing_id (A : ℝ) (hA : 1 ≤ A) :
    deformedSourcePairing A hA (ContinuousLinearMap.id ℝ _) = sourceHankelPairing A := by
  rw [deformedSourcePairing, polarizedQuadraticValue_id, sourceHankelPairing_eq_l2_inner A hA]

/-- Quantitative error must pay for the actual changing arithmetic state budget. -/
theorem deformedSourcePairing_error (A : ℝ) (hA : 1 ≤ A)
    (K L : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ))
    {δ : ℝ} (hδ : ‖K - L‖ ≤ δ) :
    |deformedSourcePairing A hA K - deformedSourcePairing A hA L| ≤
      δ / 2 * arithmeticStateNormBudget A hA :=
  polarized_difference_abs_le K L _ _ hδ

end
end FormalResearch.RiemannHypothesis.SourceVaughanHankelFourier
```
