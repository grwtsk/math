# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.982c3b2f8d76b7108afb753d1fbab44d6ed58ab89fa8718461a89b729621712aSourceKapitzaRec.Variant05c9fc33a826e6e306116e7e93ab7ee350c5b70f8f433bdd378d1a66afe8833b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d490fca8218694b6ef94ce679ce6169633acf747` · SHA-256 `3a4373c458f9cb95153038cc144d1e05849d1af698e2f6230847083fbdbf65cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.NormalizedPsiError.Variant982c3b2f8d76b7108afb753d1fbab44d6ed58ab89fa8718461a89b729621712a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"982c3b2f8d76b7108afb753d1fbab44d6ed58ab89fa8718461a89b729621712a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.NormalizedPsiError.Variant982c3b2f8d76b7108afb753d1fbab44d6ed58ab89fa8718461a89b729621712a","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"982c3b2f8d76b7108afb753d1fbab44d6ed58ab89fa8718461a89b729621712a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/98/982c3b2f8d76b7108afb753d1fbab44d6ed58ab89fa8718461a89b729621712a--SourceKapitzaReconstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy

/-!
# Exact source join for the Kapitza corrector task

grwtsk contributors supplied the originating dynamic-stabilization direction,
selection and evaluation. His earlier proposal date is unverified; this recovery
is dated 2026-10-07, task RH16-KAPITZA-20261007. OpenAI Codex supplied this specific
finite-step source reconstruction and formalization. No signed arithmetic cap
or RH conclusion is supplied.

Return destination:
https://chatgpt.com/g/g-p-6abfd4d5cba0819187bc5ffdb6641342-riemann/c/6ac66887-fbd4-83e8-be38-1248b35f5e37

The discrepancy `normalizedPsiError` is the original closed Chebyshev source,
not the weighted logarithmic discrepancy used in `SourceMangoldtAbel`.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.NormalizedPsiError.Variant982c3b2f8d76b7108afb753d1fbab44d6ed58ab89fa8718461a89b729621712a

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction

open MeasureTheory Set
open scoped Interval
open SourcePairing SourceFirstPrimeAbel SourceMangoldtAbel SourceContinuousHalfEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation PrimePowerDescent
open EstimatePrimeSmoothDefect EstimateMertensResidual

/-- Closed, complete prime-power discrepancy, exactly e^-s(psi(e^s)-e^s). -/
def normalizedPsiError (s : ℝ) : ℝ :=
  Real.exp (-s) * chebyshevError (Real.exp s)

/-- The actual normalized correlation kernel's signed derivative combination. -/
def kapitzaKernel (A s : ℝ) : ℝ :=
  sourceCorrelation explicitSecondDerivative A s / 2 -
    deriv (sourceCorrelation explicitSecondDerivative A) s

/-- The literal weighted kernel on the source interval. -/
def kapitzaWeight (A s : ℝ) : ℝ := Real.exp (s / 2) * kapitzaKernel A s

/-- The upper endpoint uses the closed prefix, including a touching atom. -/
def endpointValue (A : ℝ) : ℝ := normalizedPsiError (2 * A)

def endpointSlope (A : ℝ) : ℝ :=
  normalizedPsiError (2 * A - 1) - normalizedPsiError (2 * A)

def affineTrend (A s : ℝ) : ℝ := endpointValue A + endpointSlope A * (2 * A - s)

/-- z_A is distinct from the native bump g_A. -/
def nonaffineDiscrepancy (A s : ℝ) : ℝ := normalizedPsiError s - affineTrend A s

def kernelMomentZero (A : ℝ) : ℝ := ∫ s in 0..2 * A, kapitzaWeight A s

def kernelMomentOne (A : ℝ) : ℝ := ∫ s in 0..2 * A, kapitzaWeight A s * (2 * A - s)

def trendValue (A : ℝ) : ℝ :=
  endpointValue A * kernelMomentZero A + endpointSlope A * kernelMomentOne A

/-- The full original arithmetic nonaffine readout. No upper bound is assumed. -/
def nonaffineWork (A : ℝ) : ℝ :=
  ∫ s in 0..2 * A, kapitzaWeight A s * nonaffineDiscrepancy A s

def continuousDefect (A : ℝ) : ℝ :=
  (272 * A ^ 2 + 14688) / (7 * A ^ 4 + 272 * A ^ 2 + 7344)

theorem normalizedPsiError_zero : normalizedPsiError 0 = -1 := by
  simp [normalizedPsiError, chebyshevError, chebyshevPrimePower]

theorem nonaffineDiscrepancy_upper (A : ℝ) : nonaffineDiscrepancy A (2 * A) = 0 := by
  simp [nonaffineDiscrepancy, affineTrend, endpointValue]

theorem normalizedPsiError_eq_prefix (s : ℝ) :
    normalizedPsiError s = Real.exp (-s) * chebyshevPrimePower (Real.exp s) - 1 := by
  rw [normalizedPsiError, chebyshevError, mul_sub, ← Real.exp_add]
  simp

/-- Complete finite closed steps supply actual integrability, before linearity. -/
theorem chebyshev_mul_continuous_intervalIntegrable (a b : ℝ) (hab : a ≤ b)
    (F : ℝ → ℝ) (hF : Continuous F) :
    IntervalIntegrable (fun s => chebyshevPrimePower (Real.exp s) * F s) volume a b := by
  have hi : IntervalIntegrable (∑ n ∈ primePowerInventory b,
      fun s : ℝ => ArithmeticFunction.vonMangoldt n *
        (if Real.log n ≤ s then F s else 0)) volume a b :=
    IntervalIntegrable.sum (primePowerInventory b) (fun n _ =>
      (intervalIntegrable_closed_step a b (Real.log n) F
        (hF.intervalIntegrable a b)).const_mul (ArithmeticFunction.vonMangoldt n))
  have heq : (∑ n ∈ primePowerInventory b,
      fun s : ℝ => ArithmeticFunction.vonMangoldt n *
        (if Real.log n ≤ s then F s else 0)) =
      (fun s => ∑ n ∈ primePowerInventory b, ArithmeticFunction.vonMangoldt n *
        (if Real.log n ≤ s then F s else 0)) := by
    funext s
    simp only [Finset.sum_apply]
  rw [heq] at hi
  apply hi.congr
  intro s hs
  exact (chebyshev_mul_eq_steps b s (F s) ((uIoc_of_le hab ▸ hs).2)).symm

theorem normalizedPsiError_intervalIntegrable (a b : ℝ) (hab : a ≤ b) :
    IntervalIntegrable normalizedPsiError volume a b := by
  have he : Continuous (fun s : ℝ => Real.exp (-s)) := by fun_prop
  have hi := (chebyshev_mul_continuous_intervalIntegrable a b hab _ he).sub
    ((continuous_const : Continuous (fun _ : ℝ => (1 : ℝ))).intervalIntegrable a b)
  convert hi using 1
  funext s
  rw [normalizedPsiError_eq_prefix]
  ring

theorem kapitzaWeight_continuous (A : ℝ) (hA : 0 < A) : Continuous (kapitzaWeight A) := by
  exact (by fun_prop : Continuous (fun s : ℝ => Real.exp (s / 2))).mul
    ((sourceCorrelation_contDiff A hA).continuous.div_const 2 |>.sub
      (sourceCorrelation_contDiff A hA).continuous_deriv_one)

theorem weightedPsiError_intervalIntegrable (A : ℝ) (hA : 0 < A) :
    IntervalIntegrable (fun s => kapitzaWeight A s * normalizedPsiError s) volume 0 (2 * A) := by
  simpa only [mul_comm] using
    (normalizedPsiError_intervalIntegrable 0 (2 * A) (by linarith)).mul_continuousOn
      (kapitzaWeight_continuous A hA).continuousOn

/-- The +1 unit trace is explicit; upper source trace is exactly zero. -/
theorem kernelMomentZero_eq (A : ℝ) (hA : 1 ≤ A) :
    kernelMomentZero A = 1 + criticalContinuousMoment A := by
  have hp : 0 < A := by linarith
  have hc := criticalPrimeTest_contDiff A hp
  have hi := hc.continuous.intervalIntegrable (μ := volume) 0 (2 * A)
  have hd := hc.continuous_deriv_one.intervalIntegrable (μ := volume) 0 (2 * A)
  have hf : kapitzaWeight A = fun s => criticalPrimeTest A s - deriv (criticalPrimeTest A) s := by
    funext s
    rw [criticalPrimeTest_deriv A s hp]
    unfold kapitzaWeight kapitzaKernel criticalPrimeTest
    ring
  have ht := intervalIntegral.integral_deriv_eq_sub
    (fun s _ => hc.differentiable (by norm_num) s) hd
  rw [criticalPrimeTest_at_upper A hp, criticalPrimeTest_at_zero A hA] at ht
  rw [kernelMomentZero, hf, intervalIntegral.integral_sub hi hd, ht]
  change criticalContinuousMoment A - (0 - 1) = _
  ring

/-- Native join of the original closed arithmetic source to the normalized Psi discrepancy. -/
theorem mertensResidual_eq_weightedPsi (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = kernelMomentZero A +
      ∫ s in 0..2 * A, kapitzaWeight A s * normalizedPsiError s := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  let F := exponentialTest C
  have hc : ContDiff ℝ 1 C := sourceCorrelation_contDiff A hp
  have hF : ContDiff ℝ 1 F := exponentialTest_contDiff C hc
  have hstep := integral_finite_steps_deriv 0 (2 * A) (primePowerInventory (2 * A))
    (fun n => Real.log n) ArithmeticFunction.vonMangoldt
    (fun n hn => mangoldtInventory_log_bounds (2 * A) n hn) F hF
  have hraw : (∫ s in 0..2 * A, chebyshevPrimePower (Real.exp s) * deriv F s) =
      -closedPrimeMoment A := by
    have he : (∫ s in 0..2 * A, chebyshevPrimePower (Real.exp s) * deriv F s) =
        ∫ s in 0..2 * A, ∑ n ∈ primePowerInventory (2 * A),
          ArithmeticFunction.vonMangoldt n * (if Real.log n ≤ s then deriv F s else 0) := by
      apply intervalIntegral.integral_congr
      intro s hs
      exact chebyshev_mul_eq_steps (2 * A) s (deriv F s)
        ((uIcc_of_le (by linarith : 0 ≤ 2 * A) ▸ hs).2)
    rw [he, hstep]
    have hu : F (2 * A) = 0 := by
      dsimp [F, exponentialTest, C]
      rw [sourceCorrelation_upper_endpoint A hp, mul_zero]
    simp_rw [hu, zero_sub, mul_neg]
    rw [Finset.sum_neg_distrib]
    rfl
  have hi := chebyshev_mul_continuous_intervalIntegrable 0 (2 * A)
    (by linarith) (deriv F) hF.continuous_deriv_one
  have hw := (kapitzaWeight_continuous A hp).intervalIntegrable (μ := volume) 0 (2 * A)
  have he : (fun s => kapitzaWeight A s * normalizedPsiError s) =
      fun s => -(chebyshevPrimePower (Real.exp s) * deriv F s) - kapitzaWeight A s := by
    funext s
    rw [normalizedPsiError_eq_prefix]
    dsimp only [F]
    rw [exponentialTest_deriv C hc]
    have hex : Real.exp (s / 2) * Real.exp (-s) = Real.exp (-s / 2) := by
      rw [← Real.exp_add]
      congr 1
      ring
    dsimp only [kapitzaWeight, kapitzaKernel, C]
    calc
      _ = (Real.exp (s / 2) * Real.exp (-s)) *
          chebyshevPrimePower (Real.exp s) *
          (sourceCorrelation explicitSecondDerivative A s / 2 -
            deriv (sourceCorrelation explicitSecondDerivative A) s) -
          Real.exp (s / 2) * (sourceCorrelation explicitSecondDerivative A s / 2 -
            deriv (sourceCorrelation explicitSecondDerivative A) s) := by ring
      _ = _ := by rw [hex]; ring
  have hint := intervalIntegral.integral_sub hi.neg hw
  simp only [Pi.neg_apply] at hint
  rw [he, hint, intervalIntegral.integral_neg, hraw,
    neg_neg, mertensResidual_eq_closedPrimeMoment A hA]
  unfold kernelMomentZero
  ring

/-- Exact reconstruction of the task's nonaffine readout, including both actual endpoint samples. -/
theorem mertensResidual_eq_affine_nonaffine (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = (1 + criticalContinuousMoment A) + trendValue A + nonaffineWork A := by
  have hp : 0 < A := by linarith
  have hw := (kapitzaWeight_continuous A hp).intervalIntegrable (μ := volume) 0 (2 * A)
  have hwi : IntervalIntegrable (fun s : ℝ => kapitzaWeight A s * (2 * A - s))
      volume 0 (2 * A) := by
    convert ((kapitzaWeight_continuous A hp).mul
      (by fun_prop : Continuous (fun s : ℝ => 2 * A - s))).intervalIntegrable
        (μ := volume) 0 (2 * A) using 1
    funext s
    rfl
  have hz : IntervalIntegrable (fun s => kapitzaWeight A s * nonaffineDiscrepancy A s)
      volume 0 (2 * A) := by
    have he : (fun s => kapitzaWeight A s * nonaffineDiscrepancy A s) =
        fun s => kapitzaWeight A s * normalizedPsiError s -
          (endpointValue A * kapitzaWeight A s +
            endpointSlope A * (kapitzaWeight A s * (2 * A - s))) := by
      funext s
      unfold nonaffineDiscrepancy affineTrend
      ring
    rw [he]
    exact (weightedPsiError_intervalIntegrable A hp).sub
      ((hw.const_mul _).add (hwi.const_mul _))
  have he : (fun s => kapitzaWeight A s * normalizedPsiError s) =
      fun s => (endpointValue A * kapitzaWeight A s +
        endpointSlope A * (kapitzaWeight A s * (2 * A - s))) +
          kapitzaWeight A s * nonaffineDiscrepancy A s := by
    funext s
    unfold nonaffineDiscrepancy affineTrend
    ring
  have hint := intervalIntegral.integral_add
    ((hw.const_mul (endpointValue A)).add (hwi.const_mul (endpointSlope A))) hz
  have hint2 := intervalIntegral.integral_add
    (hw.const_mul (endpointValue A)) (hwi.const_mul (endpointSlope A))
  rw [mertensResidual_eq_weightedPsi A hA, he, hint, hint2,
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
    kernelMomentZero_eq A hA]
  unfold trendValue nonaffineWork kernelMomentZero kernelMomentOne
  ring

/-- The printed rational defect uses the independently evaluated continuous source term. -/
theorem one_add_continuous_eq_defect (A : ℝ) (hA : 1 ≤ A) :
    1 + criticalContinuousMoment A = -1 + continuousDefect A := by
  rw [criticalContinuousMoment_eq_rational hA]
  have hd : 7 * A ^ 4 + 272 * A ^ 2 + 7344 ≠ 0 := by positivity
  unfold continuousDefect
  field_simp
  ring

/-- Original arithmetic reconstruction in the exact form requested by K1. -/
theorem mertensResidual_eq_defect_trend_nonaffine (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = -1 + continuousDefect A + trendValue A + nonaffineWork A := by
  rw [mertensResidual_eq_affine_nonaffine A hA, one_add_continuous_eq_defect A hA]


/-- The exact defect decreases on the nonnegative arithmetic-scale domain. -/
theorem continuousDefect_antitone {R A : ℝ} (hR : 0 ≤ R) (hRA : R ≤ A) :
    continuousDefect A ≤ continuousDefect R := by
  have hA : 0 ≤ A := hR.trans hRA
  have hdA : 0 < 7 * A ^ 4 + 272 * A ^ 2 + 7344 := by positivity
  have hdR : 0 < 7 * R ^ 4 + 272 * R ^ 2 + 7344 := by positivity
  have hs : 0 ≤ A ^ 2 - R ^ 2 := by nlinarith
  have ht : 0 ≤ 1904 * A ^ 2 * R ^ 2 + 102816 * (A ^ 2 + R ^ 2) + 1997568 := by
    positivity
  have hm := mul_nonneg hs ht
  unfold continuousDefect
  apply (div_le_div_iff₀ hdA hdR).mpr
  nlinarith only [hm]

/-- Exactly the finite-prefix expression used by `EstimateTailReduction.bounded_radius_lower`. -/
def originalPrefixFloor (R : ℝ) : ℝ :=
  archimedeanMultiplier 0 - 2 * ∑ n ∈ EstimateTailReduction.primeIndices R,
    |ArithmeticFunction.vonMangoldt n / Real.sqrt n|

theorem originalPrefixFloor_le (R A : ℝ) (hA : 1 ≤ A) (hAR : A ≤ R) :
    originalPrefixFloor R ≤ sourceQuadraticValue explicitSecondDerivative A := by
  have hp := EstimateTailReduction.prime_contribution_le_finite_budget A R hA hAR
  have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
  unfold originalPrefixFloor sourceQuadraticValue
  linarith

/-- A supplied cap is transported with its actual defect and trend losses. -/
theorem residual_le_of_nonaffine_cap {R A B epsilon : ℝ}
    (hR : 1 ≤ R) (hRA : R ≤ A) (hU : nonaffineWork A ≤ B)
    (hTrend : |trendValue A| ≤ epsilon) :
    mertensResidual A ≤ B + epsilon - 1 + continuousDefect R := by
  rw [mertensResidual_eq_defect_trend_nonaffine A (hR.trans hRA)]
  have hd := continuousDefect_antitone (by linarith : 0 ≤ R) hRA
  have ht := (abs_le.mp hTrend).2
  linarith

/-- Literal all-real consumer with the original finite-prefix supplier and exact constant. -/
theorem original_lower_of_nonaffine_cap (R B epsilon : ℝ) (hR : 1 ≤ R)
    (hU : ∀ A : ℝ, R ≤ A → nonaffineWork A ≤ B)
    (hTrend : ∀ A : ℝ, R ≤ A → |trendValue A| ≤ epsilon) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixFloor R)
        (archimedeanMultiplier 0 + 2 - 2 * B - 2 * epsilon - 2 * continuousDefect R) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hRA : R ≤ A
  · have hr := residual_le_of_nonaffine_cap hR hRA (hU A hRA) (hTrend A hRA)
    have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
    have hp : primePowerContribution explicitSecondDerivative A = mertensResidual A := by
      rw [primePowerContribution_eq_closedPrimeMoment A hA,
        mertensResidual_eq_closedPrimeMoment A hA]
    apply (min_le_right _ _).trans
    unfold sourceQuadraticValue
    rw [hp]
    linarith
  · exact (min_le_left _ _).trans
      (originalPrefixFloor_le R A hA (le_of_not_ge hRA))

/-- #16 itself is a conditional consumer; the actual arithmetic cap remains the premise. -/
theorem estimate_of_nonaffine_cap (R B epsilon : ℝ) (hR : 1 ≤ R)
    (hU : ∀ A : ℝ, R ≤ A → nonaffineWork A ≤ B)
    (hTrend : ∀ A : ℝ, R ≤ A → |trendValue A| ≤ epsilon) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, original_lower_of_nonaffine_cap R B epsilon hR hU hTrend⟩

/-- The recorded maximum retains the original R>=91 wrapper domain. -/
def consumerRadius (R_B R_epsilon : ℝ) : ℝ := max 91 (max R_B R_epsilon)

/-- Separate genuine radii are combined without replacing either all-real provider. -/
theorem original_lower_of_separate_nonaffine_caps (R_B R_epsilon B epsilon : ℝ)
    (hU : ∀ A : ℝ, R_B ≤ A → nonaffineWork A ≤ B)
    (hTrend : ∀ A : ℝ, R_epsilon ≤ A → |trendValue A| ≤ epsilon) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixFloor (consumerRadius R_B R_epsilon))
        (archimedeanMultiplier 0 + 2 - 2 * B - 2 * epsilon -
          2 * continuousDefect (consumerRadius R_B R_epsilon)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply original_lower_of_nonaffine_cap
  · exact (by norm_num : (1 : ℝ) ≤ 91).trans (le_max_left _ _)
  · intro A hA
    exact hU A ((le_max_left R_B R_epsilon).trans ((le_max_right _ _).trans hA))
  · intro A hA
    exact hTrend A ((le_max_right R_B R_epsilon).trans ((le_max_right _ _).trans hA))

end FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction
```
