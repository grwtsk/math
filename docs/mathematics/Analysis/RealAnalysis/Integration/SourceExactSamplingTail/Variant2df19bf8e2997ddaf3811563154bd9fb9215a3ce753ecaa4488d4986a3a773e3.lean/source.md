# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceExactSamplingTail.Variant2df19bf8e2997ddaf3811563154bd9fb9215a3ce753ecaa4488d4986a3a773e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ceec9745ec0d1e4cd1e95a1599d2ce1db4a3117b` · SHA-256 `02663f2ed1e26a90e8ebbd10561d7309eca0555464fc7bdf5426af1de7effca2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceCorrelationDerivIncrementBoundTail.Variantfbdab2acab36523f41970589fbd296abe03978a2f3d9e1258b14b51d6ef78d12","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fbdab2acab36523f41970589fbd296abe03978a2f3d9e1258b14b51d6ef78d12","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceCorrelationDerivIncrementBoundTail.Variantfbdab2acab36523f41970589fbd296abe03978a2f3d9e1258b14b51d6ef78d12","mathematical_subject":"Analysis.Integration","original_sha256":"fbdab2acab36523f41970589fbd296abe03978a2f3d9e1258b14b51d6ef78d12","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/exact-overlap-consumer/sampling-source40-replay/SourceExactSamplingTail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceExactTailEnergy
import SourceSamplingLedger

/-!
Actual whole-positive-axis sampling with the exact physical tail curvature.
All fixed source weights, below-one integrals and independent main terms are retained.
Research direction: grwtsk contributors. Native derivation: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceCorrelationDerivIncrementBoundTail.Variantfbdab2acab36523f41970589fbd296abe03978a2f3d9e1258b14b51d6ef78d12

set_option autoImplicit false
noncomputable section

namespace RH16ExactSamplingTail

open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis
open SourcePairing SourceCorrelationCurvature SourceSamplingTaylor SourcePositiveSampling
open SourceSamplingRemainder SourceFractionalQuadrature SourceSamplingCoefficients
open SourceSamplingPointwise SourceShortSamplingPointwise SourceShortSamplingInventory
open SourceSamplingLedger SourceDiagonalMainTerm RH16ExactTailEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateVaughanTranslationGate
open EstimateSourceMobiusKernel EstimatePlainKernel EstimateBetaSourceRecombination


theorem sourceCorrelation_deriv_increment_bound_tail {Q A : ℝ}
    (hQ : 1 ≤ Q) (hQA : Q ≤ A) (a y : ℝ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) (a + y) -
      deriv (sourceCorrelation explicitSecondDerivative A) a| ≤
      tailEnergyCoefficient Q / A ^ 2 * |y| := by
  have hA : 1 ≤ A := hQ.trans hQA
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have h := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (f := deriv (sourceCorrelation explicitSecondDerivative A))
    (fun x _ ↦ (sourceCorrelation_deriv_contDiff hp).differentiable (by norm_num) x)
    (fun x _ ↦ by simpa only [Real.norm_eq_abs] using
      actual_correlation_second_deriv_abs_le_tail hQ hQA x)
    convex_univ (mem_univ a) (mem_univ (a + y))
  simpa only [Real.norm_eq_abs, add_sub_cancel_left] using h

theorem sourceCorrelation_linear_taylor_bound_tail {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) (a y : ℝ) :
    |sourceCorrelation explicitSecondDerivative A (a + y) -
      sourceCorrelation explicitSecondDerivative A a -
      y * deriv (sourceCorrelation explicitSecondDerivative A) a| ≤
      tailEnergyCoefficient Q / A ^ 2 * y ^ 2 / 2 := by
  have hA : 1 ≤ A := hQ.trans hQA
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  by_cases hy : y = 0
  · subst y
    simp
  have hne : a ≠ a + y := by intro h; apply hy; linarith
  have hf := sourceCorrelation_contDiff_two hp
  obtain ⟨z, _, hz⟩ := taylor_mean_remainder_lagrange_iteratedDeriv
    (n := 1) hne hf.contDiffOn
  have ht : taylorWithinEval (sourceCorrelation explicitSecondDerivative A) 1
      (uIcc a (a + y)) a (a + y) =
      sourceCorrelation explicitSecondDerivative A a +
        y * deriv (sourceCorrelation explicitSecondDerivative A) a := by
    rw [show (1 : ℕ) = 0 + 1 from rfl, taylorWithinEval_succ]
    simp only [taylor_within_zero_eval, Nat.cast_zero, zero_add, Nat.factorial_zero,
      Nat.cast_one, mul_one, inv_one, one_mul, pow_one, smul_eq_mul,
      iteratedDerivWithin_one, add_sub_cancel_left]
    rw [((hf.differentiable (by norm_num)) a).derivWithin
      ((uniqueDiffOn_uIcc hne) a (left_mem_uIcc))]
  rw [ht] at hz
  simp only [iteratedDeriv_succ, iteratedDeriv_zero, Nat.factorial_succ,
    Nat.factorial_zero, Nat.cast_mul, mul_one,
    add_sub_cancel_left] at hz
  have heq : sourceCorrelation explicitSecondDerivative A (a + y) -
      sourceCorrelation explicitSecondDerivative A a -
      y * deriv (sourceCorrelation explicitSecondDerivative A) a =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) z * y ^ 2 / 2 := by
    linarith [hz]
  rw [heq, abs_div, abs_mul, abs_of_nonneg (sq_nonneg y)]
  rw [abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  gcongr
  exact actual_correlation_second_deriv_abs_le_tail hQ hQA z

theorem plain_derivative_difference_abs_le_tail {Q A k u : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A)
    (hk : 0 < k) (hu : 0 < u) :
    |deriv (plainProfile A k) u - plainModelDerivative A k u| ≤
      tailEnergyCoefficient Q / (A ^ 2 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
        (|Real.log u| + (Real.log u) ^ 2 / 4) := by
  have hA : 1 ≤ A := hQ.trans hQA
  have hweight : 0 ≤ 1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) := by positivity
  rw [plain_derivative_difference hA hk hu, abs_mul, abs_of_nonneg hweight]
  have hR : |correlationTaylorRemainder A (Real.log k) (Real.log u)| ≤
      tailEnergyCoefficient Q / A ^ 2 * (Real.log u) ^ 2 / 2 := by
    exact sourceCorrelation_linear_taylor_bound_tail hQ hQA (Real.log k) (Real.log u)
  have hd := sourceCorrelation_deriv_increment_bound_tail hQ hQA (Real.log k) (Real.log u)
  calc
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        (|deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
          deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)| +
          |correlationTaylorRemainder A (Real.log k) (Real.log u)| / 2) := by
      apply mul_le_mul_of_nonneg_left _ hweight
      simpa only [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] using
        abs_sub
          (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
            deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k))
          (correlationTaylorRemainder A (Real.log k) (Real.log u) / 2)
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        (tailEnergyCoefficient Q / A ^ 2 * |Real.log u| +
          (tailEnergyCoefficient Q / A ^ 2 * (Real.log u) ^ 2 / 2) / 2) := by
      gcongr
    _ = _ := by ring

theorem log_derivative_difference_abs_le_tail {Q A k u : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A)
    (hk : 0 < k) (hu : 0 < u) :
    |deriv (logProfile A k) u - logModelDerivative A k u| ≤
      tailEnergyCoefficient Q / (A ^ 2 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
        (3 / 2 * (Real.log u) ^ 2 + |Real.log u| ^ 3 / 4) := by
  have hA : 1 ≤ A := hQ.trans hQA
  have hweight : 0 ≤ 1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) := by positivity
  have hR : |correlationTaylorRemainder A (Real.log k) (Real.log u)| ≤
      tailEnergyCoefficient Q / A ^ 2 * (Real.log u) ^ 2 / 2 := by
    exact sourceCorrelation_linear_taylor_bound_tail hQ hQA (Real.log k) (Real.log u)
  have hd := sourceCorrelation_deriv_increment_bound_tail hQ hQA (Real.log k) (Real.log u)
  have hy : |1 - Real.log u / 2| ≤ 1 + |Real.log u| / 2 := by
    simpa only [abs_one, abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] using
      abs_sub (1 : ℝ) (Real.log u / 2)
  rw [log_derivative_difference hA hk hu, abs_mul, abs_of_nonneg hweight]
  calc
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        (|1 - Real.log u / 2| * |correlationTaylorRemainder A (Real.log k) (Real.log u)| +
          |Real.log u| *
            |deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
              deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)|) := by
      apply mul_le_mul_of_nonneg_left _ hweight
      simpa only [abs_mul] using abs_add_le
        ((1 - Real.log u / 2) * correlationTaylorRemainder A (Real.log k) (Real.log u))
        (Real.log u *
          (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
            deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)))
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        ((1 + |Real.log u| / 2) *
          (tailEnergyCoefficient Q / A ^ 2 * (Real.log u) ^ 2 / 2) +
          |Real.log u| * (tailEnergyCoefficient Q / A ^ 2 * |Real.log u|)) := by
      gcongr
    _ = _ := by rw [← sq_abs (Real.log u)]; ring

private theorem plain_model_integrand_eq (A k : ℝ) :
    (fun u : ℝ ↦ Int.fract u * plainModelDerivative A k u) =
      fun u ↦ 1 / Real.sqrt k *
        ((-sourceCorrelation explicitSecondDerivative A (Real.log k) / 2 +
            deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)) *
          coefficientWeight 0 u +
          (-deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) / 2) *
            coefficientWeight 1 u) := by
  funext u
  simp only [plainModelDerivative, coefficientWeight, pow_zero, pow_one]
  ring

private theorem log_model_integrand_eq (A k : ℝ) :
    (fun u : ℝ ↦ Int.fract u * logModelDerivative A k u) =
      fun u ↦ 1 / Real.sqrt k *
        (sourceCorrelation explicitSecondDerivative A (Real.log k) * coefficientWeight 0 u +
          (2 * deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) -
              sourceCorrelation explicitSecondDerivative A (Real.log k) / 2) *
            coefficientWeight 1 u +
          (-deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) / 2) *
            coefficientWeight 2 u) := by
  funext u
  simp only [logModelDerivative, coefficientWeight, pow_zero, pow_one]
  ring

private theorem plain_model_integrand_integrable (A k : ℝ) :
    IntegrableOn (fun u ↦ Int.fract u * plainModelDerivative A k u) (Ioi (0 : ℝ)) := by
  rw [plain_model_integrand_eq]
  exact (((coefficientWeight_integrable 0).const_mul _).add
    ((coefficientWeight_integrable 1).const_mul _)).const_mul _

private theorem log_model_integrand_integrable (A k : ℝ) :
    IntegrableOn (fun u ↦ Int.fract u * logModelDerivative A k u) (Ioi (0 : ℝ)) := by
  rw [log_model_integrand_eq]
  exact ((((coefficientWeight_integrable 0).const_mul _).add
    ((coefficientWeight_integrable 1).const_mul _)).add
      ((coefficientWeight_integrable 2).const_mul _)).const_mul _

private theorem fractional_derivative_integrable {f : ℝ → ℝ}
    (hf : ContDiff ℝ 1 f) (hs : HasCompactSupport f) :
    IntegrableOn (fun u ↦ Int.fract u * deriv f u) (Ioi (0 : ℝ)) := by
  have hi : Integrable (deriv f) :=
    (hf.continuous_deriv (by norm_num)).integrable_of_hasCompactSupport hs.deriv
  exact (hi.bdd_mul measurable_fract.aestronglyMeasurable
    (Eventually.of_forall (fun u ↦ by
      rw [Real.norm_eq_abs, abs_of_nonneg (Int.fract_nonneg u)]
      exact (Int.fract_lt_one u).le))).integrableOn

theorem plainProfile_sum_sub_mainTerm_abs_le_tail {Q A k : ℝ}
    (hQ : 1 ≤ Q) (hQA : Q ≤ A) (hk : 1 ≤ k) :
    |(∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), plainProfile A k n) -
      sourcePlainSamplingMainTerm A k| ≤
        16 * (tailEnergyCoefficient Q) / (A ^ 2 * Real.sqrt k) := by
  have hδ : 0 < tailEnergyCoefficient Q := tailEnergyCoefficient_pos Q
  have hA : 1 ≤ A := hQ.trans hQA
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hkp : 0 < k := lt_of_lt_of_le (by norm_num) hk
  have hquad := positive_axis_quadrature (plainProfile A k) (plainProfile_contDiff hp k)
    (plainProfile_hasCompactSupport hp k) (sourceKernelCutoff A)
    (fun u hu ↦ by simp [plainProfile, not_lt.mpr hu])
    (fun u hu ↦ plainProfile_cutoff_tail hA hk hu)
  rw [plainProfile_positive_integral_zero hA k, sub_zero] at hquad
  rw [hquad, ← plain_model_integral_eq_mainTerm,
    ← integral_sub (fractional_derivative_integrable (plainProfile_contDiff hp k)
      (plainProfile_hasCompactSupport hp k)) (plain_model_integrand_integrable A k)]
  let c : ℝ := (tailEnergyCoefficient Q) / (A ^ 2 * Real.sqrt k)
  have hc : 0 ≤ c := by dsimp [c]; positivity
  have hmaj : IntegrableOn (fun u ↦ c *
      (absoluteCoefficientWeight 1 u + absoluteCoefficientWeight 2 u / 4)) (Ioi (0 : ℝ)) :=
    ((absoluteCoefficientWeight_integrable 1).add
      ((absoluteCoefficientWeight_integrable 2).div_const 4)).const_mul c
  have hbound := norm_integral_le_of_norm_le
    (f := fun u ↦ Int.fract u * deriv (plainProfile A k) u -
      Int.fract u * plainModelDerivative A k u) hmaj (by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    rw [Real.norm_eq_abs, ← mul_sub, abs_mul, abs_of_nonneg (Int.fract_nonneg u)]
    calc
      _ ≤ Int.fract u *
          ((tailEnergyCoefficient Q) / (A ^ 2 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
            (|Real.log u| + (Real.log u) ^ 2 / 4)) :=
        mul_le_mul_of_nonneg_left (plain_derivative_difference_abs_le_tail hQ hQA hkp hu)
          (Int.fract_nonneg u)
      _ = _ := by
        dsimp [c, absoluteCoefficientWeight]
        rw [sq_abs]
        ring)
  rw [Real.norm_eq_abs] at hbound
  apply hbound.trans
  rw [integral_const_mul,
    integral_add (absoluteCoefficientWeight_integrable 1)
      ((absoluteCoefficientWeight_integrable 2).div_const 4), integral_div]
  change c * (absoluteCoefficientMoment 1 + absoluteCoefficientMoment 2 / 4) ≤ _
  have h1 := absoluteCoefficientMoment_le_factorial 1
  have h2 := absoluteCoefficientMoment_le_factorial 2
  norm_num at h1 h2
  calc
    _ ≤ c * (8 + 32 / 4) := by gcongr
    _ = _ := by dsimp [c]; ring

theorem logProfile_sum_sub_mainTerm_abs_le_tail {Q A k : ℝ}
    (hQ : 1 ≤ Q) (hQA : Q ≤ A) (hk : 1 ≤ k) :
    |(∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A k n) -
      sourceLogSamplingMainTerm A k| ≤ 96 * (tailEnergyCoefficient Q) / (A ^ 2 * Real.sqrt k) := by
  have hδ : 0 < tailEnergyCoefficient Q := tailEnergyCoefficient_pos Q
  have hA : 1 ≤ A := hQ.trans hQA
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hkp : 0 < k := lt_of_lt_of_le (by norm_num) hk
  have hquad := positive_axis_quadrature (logProfile A k) (logProfile_contDiff hp k)
    (logProfile_hasCompactSupport hp k) (sourceKernelCutoff A)
    (fun u hu ↦ by simp [logProfile, not_lt.mpr hu])
    (fun u hu ↦ logProfile_cutoff_tail hA hk hu)
  rw [logProfile_positive_integral_zero hA k, sub_zero] at hquad
  rw [hquad, ← log_model_integral_eq_mainTerm,
    ← integral_sub (fractional_derivative_integrable (logProfile_contDiff hp k)
      (logProfile_hasCompactSupport hp k)) (log_model_integrand_integrable A k)]
  let c : ℝ := (tailEnergyCoefficient Q) / (A ^ 2 * Real.sqrt k)
  have hc : 0 ≤ c := by dsimp [c]; positivity
  have hmaj : IntegrableOn (fun u ↦ c *
      (3 / 2 * absoluteCoefficientWeight 2 u + absoluteCoefficientWeight 3 u / 4))
      (Ioi (0 : ℝ)) :=
    (((absoluteCoefficientWeight_integrable 2).const_mul (3 / 2 : ℝ)).add
      ((absoluteCoefficientWeight_integrable 3).div_const 4)).const_mul c
  have hbound := norm_integral_le_of_norm_le
    (f := fun u ↦ Int.fract u * deriv (logProfile A k) u -
      Int.fract u * logModelDerivative A k u) hmaj (by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    rw [Real.norm_eq_abs, ← mul_sub, abs_mul, abs_of_nonneg (Int.fract_nonneg u)]
    calc
      _ ≤ Int.fract u *
          ((tailEnergyCoefficient Q) / (A ^ 2 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
            (3 / 2 * (Real.log u) ^ 2 + |Real.log u| ^ 3 / 4)) :=
        mul_le_mul_of_nonneg_left (log_derivative_difference_abs_le_tail hQ hQA hkp hu)
          (Int.fract_nonneg u)
      _ = _ := by
        dsimp [c, absoluteCoefficientWeight]
        rw [sq_abs]
        ring)
  rw [Real.norm_eq_abs] at hbound
  apply hbound.trans
  rw [integral_const_mul,
    integral_add ((absoluteCoefficientWeight_integrable 2).const_mul (3 / 2 : ℝ))
      ((absoluteCoefficientWeight_integrable 3).div_const 4),
    integral_const_mul, integral_div]
  change c * (3 / 2 * absoluteCoefficientMoment 2 + absoluteCoefficientMoment 3 / 4) ≤ _
  have h2 := absoluteCoefficientMoment_le_factorial 2
  have h3 := absoluteCoefficientMoment_le_factorial 3
  norm_num at h2 h3
  calc
    _ ≤ c * (3 / 2 * 32 + 192 / 4) := by gcongr
    _ = _ := by dsimp [c]; ring


/-- The literal closed plain kernel uses every admitted positive product shift. -/
theorem sourcePlainKernel_sub_mainTerm_abs_le_tail {Q A k : ℝ}
    (hQ : 1 ≤ Q) (hQA : Q ≤ A) (hk : 1 ≤ k) :
    |sourcePlainKernel A k - sourcePlainSamplingMainTerm A k| ≤
      16 * tailEnergyCoefficient Q / (A ^ 2 * Real.sqrt k) := by
  rw [← plainProfile_sum_eq_sourcePlainKernel A (lt_of_lt_of_le (by norm_num) hk)]
  exact plainProfile_sum_sub_mainTerm_abs_le_tail hQ hQA hk

/-- The literal Mobius logarithmic kernel keeps the whole positive axis. -/
theorem sourceMobiusKernel_sub_mainTerm_abs_le_tail {Q A k : ℝ}
    (hQ : 1 ≤ Q) (hQA : Q ≤ A) (hk : 1 ≤ k) :
    |sourceMobiusKernel A k - sourceLogSamplingMainTerm A k| ≤
      96 * tailEnergyCoefficient Q / (A ^ 2 * Real.sqrt k) := by
  rw [← logProfile_sum_eq_sourceMobiusKernel A (lt_of_lt_of_le (by norm_num) hk)]
  exact logProfile_sum_sub_mainTerm_abs_le_tail hQ hQA hk

/-- Exact application to the genuine signed short-divisor inventory. -/
theorem actual_shortLog_error_tail {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |shortLogSource A - shortLogMainTerm A (sourceLogSamplingMainTerm A)| ≤
      192 * tailEnergyCoefficient Q / A := by
  have hδ : 0 < tailEnergyCoefficient Q := tailEnergyCoefficient_pos Q
  have h := shortLog_error_le_of_sampling_error (hQ.trans hQA)
    (show 0 ≤ 96 * tailEnergyCoefficient Q by positivity)
    (sourceLogSamplingMainTerm A) (fun d hd ↦ by
      exact sourceMobiusKernel_sub_mainTerm_abs_le_tail hQ hQA
        (by exact_mod_cast (Finset.mem_Icc.mp hd).1))
  convert h using 1
  ring

/-- The doubly short Mangoldt inventory uses its sharper plain coefficient. -/
theorem actual_shortPlain_error_tail {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |shortPlainSource A - shortPlainMainTerm A (sourcePlainSamplingMainTerm A)| ≤
      64 * (Real.log 4 + 4) * tailEnergyCoefficient Q := by
  have hδ : 0 < tailEnergyCoefficient Q := tailEnergyCoefficient_pos Q
  have h := shortPlain_error_uniform_le_of_sampling_error (hQ.trans hQA)
    (show 0 ≤ 16 * tailEnergyCoefficient Q by positivity)
    (sourcePlainSamplingMainTerm A) (fun d hd m hm ↦ by
      exact sourcePlainKernel_sub_mainTerm_abs_le_tail hQ hQA (by
        have hd1 : 1 ≤ d := (Finset.mem_Icc.mp hd).1
        have hm1 : 1 ≤ m := (Finset.mem_Icc.mp hm).1
        exact_mod_cast Nat.mul_le_mul hd1 hm1))
  convert h using 1
  ring

/-- Full original ledger cancellation precedes the improved tail budgets. -/
theorem actual_ledger_tail_error {Q : ℝ} (hQ : 1 ≤ Q) :
    ∃ C_D : ℝ, 0 ≤ C_D ∧ ∀ A : ℝ, Q ≤ A →
      |betaMainLedger A + independentMainTerm A| ≤
        C_D + 192 * tailEnergyCoefficient Q / Q +
          64 * (Real.log 4 + 4) * tailEnergyCoefficient Q := by
  have hδ : 0 < tailEnergyCoefficient Q := tailEnergyCoefficient_pos Q
  obtain ⟨C_D, hD0, hD⟩ :=
    VaughanDiagonalMainTermReview.actual_diagonal_main_term_error
  refine ⟨C_D, hD0, ?_⟩
  intro A hQA
  have hA : 1 ≤ A := hQ.trans hQA
  have hlog := actual_shortLog_error_tail hQ hQA
  have hplain := actual_shortPlain_error_tail hQ hQA
  have hmon : 192 * tailEnergyCoefficient Q / A ≤
      192 * tailEnergyCoefficient Q / Q :=
    div_le_div_of_nonneg_left (by positivity) (by linarith) hQA
  rw [independentMainTerm, ledger_plus_coefficientMainTerm]
  have hd := hD A hA
  change |EstimateVaughanTranslationGate.typeTwoDiagonal A +
    diagonalMainCoefficient A * A - Real.log (vaughanCutoff A : ℝ)| ≤ C_D at hd
  have hlog' : |shortLogSource A -
      shortLogMainTerm A (logLinearMain A samplingAlpha1 samplingAlpha2)| ≤
        192 * tailEnergyCoefficient Q / Q := by
    exact hlog.trans hmon
  have hplain' : |shortPlainSource A -
      shortPlainMainTerm A (plainLinearMain A samplingAlpha0 samplingAlpha1)| ≤
        64 * (Real.log 4 + 4) * tailEnergyCoefficient Q := by
    exact hplain
  have h₁ := abs_add_le
    (typeTwoDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : ℝ))
    (shortLogSource A - shortLogMainTerm A (logLinearMain A samplingAlpha1 samplingAlpha2))
  have h₂ := abs_sub
    ((typeTwoDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : ℝ)) +
      (shortLogSource A - shortLogMainTerm A (logLinearMain A samplingAlpha1 samplingAlpha2)))
    (shortPlainSource A - shortPlainMainTerm A (plainLinearMain A samplingAlpha0 samplingAlpha1))
  linarith

end RH16ExactSamplingTail
```
