-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualRieszContinuousRamp.Variantb1ab2b3f87c98f092033988851eb86c6562ee5c30525e85b585dff36ba66a2f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1ab2b3f87c98f092033988851eb86c6562ee5c30525e85b585dff36ba66a2f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualRieszContinuousRamp.Variantb1ab2b3f87c98f092033988851eb86c6562ee5c30525e85b585dff36ba66a2f0","mathematical_subject":"Analysis.Calculus","original_sha256":"b1ab2b3f87c98f092033988851eb86c6562ee5c30525e85b585dff36ba66a2f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-riesz-centered-reconstruction/SourceActualRieszCenteredReconstruction-native03.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
import FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
import SourceFiveCancelledFactorialBudget

/-!
The literal closed Mangoldt ramp primitive reconstructs the original residual
by two finite integrations. Both support traces and every prime-power atom are
retained. The independently evaluated continuous moment fixes the linear
center; no uniform signed or absolute-area arithmetic bound is asserted.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualRieszContinuousRamp.Variantb1ab2b3f87c98f092033988851eb86c6562ee5c30525e85b585dff36ba66a2f0

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualRieszCenteredReconstruction
open MeasureTheory Set
open scoped BigOperators
open SourcePairing SourceFirstPrimeAbel SourceMangoldtAbel SourceMangoldtInteraction
open SourceCorrelationCurvature SourceContinuousHalfEnergy SourceLeadingFullKappaReduction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateMertensResidual EstimatePrimeSmoothDefect
open PrimePowerDescent EstimateSourceMobiusDerivative BridgeAdmissibility

/-- The genuine continuous ramp, with both lower traces zero. -/
def actualRieszContinuousRamp (t : ℝ) : ℝ := 4 * (Real.exp (t / 2) - 1 - t / 2)

/-- All closed actual Mangoldt atoms, without a prime-only filter or cutoff proxy. -/
def actualMangoldtRieszPrimitive (t : ℝ) : ℝ :=
  (∑ n ∈ primePowerInventory t,
    ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * (t - Real.log n)) -
      actualRieszContinuousRamp t

/-- Independently prescribed positive rational continuous-moment magnitude. -/
def actualRieszContinuousMagnitude (A : ℝ) : ℝ :=
  (14 * A^4 + 272 * A^2) / (7 * A^4 + 272 * A^2 + 7344)

private theorem ramp_continuous (a : ℝ) : Continuous (fun t : ℝ => max 0 (t - a)) :=
  continuous_const.max (continuous_id.sub continuous_const)

/-- The moving closed inventory is a fixed finite ramp sum on every bounded interval. -/
theorem actualMangoldtRieszPrimitive_eq_fixed_ramps {b t : ℝ} (ht : t ≤ b) :
    actualMangoldtRieszPrimitive t =
      (∑ n ∈ primePowerInventory b,
        ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * max 0 (t - Real.log n)) -
          actualRieszContinuousRamp t := by
  classical
  have heq : (∑ n ∈ primePowerInventory b,
      ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * max 0 (t - Real.log n)) =
      ∑ n ∈ (primePowerInventory b).filter (fun n : ℕ => Real.log n ≤ t),
        ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * (t - Real.log n) := by
    rw [Finset.sum_filter]
    apply Finset.sum_congr rfl
    intro n hn
    by_cases hl : Real.log (n : ℝ) ≤ t
    · rw [if_pos hl, max_eq_right (by linarith)]
    · rw [if_neg hl, max_eq_left (by linarith), mul_zero]
  rw [primePowerInventory_filter_log b t ht] at heq
  unfold actualMangoldtRieszPrimitive
  rw [heq]

private theorem continuousRamp_contDiff : ContDiff ℝ 2 actualRieszContinuousRamp := by
  unfold actualRieszContinuousRamp
  fun_prop

private theorem continuousRamp_deriv (t : ℝ) :
    HasDerivAt actualRieszContinuousRamp (2 * Real.exp (t / 2) - 2) t := by
  unfold actualRieszContinuousRamp
  convert (((Real.hasDerivAt_exp (t / 2)).comp t ((hasDerivAt_id t).div_const 2)).sub_const 1
    |>.sub ((hasDerivAt_id t).div_const 2) |>.const_mul 4) using 1 <;> first | rfl | ring

private theorem continuousRamp_first_deriv (t : ℝ) :
    HasDerivAt (fun t : ℝ => 2 * Real.exp (t / 2) - 2) (Real.exp (t / 2)) t := by
  convert (((Real.hasDerivAt_exp (t / 2)).comp t
    ((hasDerivAt_id t).div_const 2)).const_mul 2).sub_const 2 using 1 <;> first | rfl | ring

/-- Genuine continuity includes newborn closed atoms, whose ramp value is zero. -/
theorem actualMangoldtRieszPrimitive_continuousOn (b : ℝ) :
    ContinuousOn actualMangoldtRieszPrimitive (Icc 0 b) := by
  have hc : Continuous (fun t : ℝ =>
      (∑ n ∈ primePowerInventory b,
        ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * max 0 (t - Real.log n)) -
          actualRieszContinuousRamp t) := by
    apply Continuous.sub _ continuousRamp_contDiff.continuous
    exact continuous_finsetSum _ (fun n _ => (ramp_continuous (Real.log n)).const_mul _)
  apply hc.continuousOn.congr
  intro t ht
  exact (actualMangoldtRieszPrimitive_eq_fixed_ramps ht.2)

/-- The true lower anchor retains the zero Mangoldt unit and empty original inventory. -/
theorem actualMangoldtRieszPrimitive_zero : actualMangoldtRieszPrimitive 0 = 0 := by
  simp [actualMangoldtRieszPrimitive, primePowerInventory, actualRieszContinuousRamp]

/-- Every actual finite Riesz pairing has proved interval integrability. -/
theorem actualMangoldtRiesz_pairing_intervalIntegrable {A : ℝ} (hA : 0 < A) :
    IntervalIntegrable (fun t => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualMangoldtRieszPrimitive t) volume 0 (2 * A) := by
  apply ContinuousOn.intervalIntegrable
  rw [uIcc_of_le (by linarith : 0 ≤ 2 * A)]
  exact ((sourceCorrelation_deriv_contDiff hA).continuous_deriv_one.continuousOn).mul
    (actualMangoldtRieszPrimitive_continuousOn (2 * A))

private theorem ramp_integral {A a : ℝ} (hA : 0 < A) (ha : 0 ≤ a) (hab : a ≤ 2 * A) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      max 0 (t - a)) = sourceCorrelation explicitSecondDerivative A a := by
  let C := sourceCorrelation explicitSecondDerivative A
  have hC : ContDiff ℝ 1 C := sourceCorrelation_contDiff A hA
  have hC' : ContDiff ℝ 1 (deriv C) := sourceCorrelation_deriv_contDiff hA
  have hi : ∀ x y, IntervalIntegrable (fun t => deriv (deriv C) t * max 0 (t - a))
      volume x y := fun x y =>
    (hC'.continuous_deriv_one.mul (ramp_continuous a)).intervalIntegrable x y
  have hleft : (∫ t in 0..a, deriv (deriv C) t * max 0 (t - a)) = 0 := by
    calc
      _ = ∫ t in 0..a, (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro t ht
        dsimp only
        rw [uIcc_of_le ha] at ht
        rw [max_eq_left (by linarith [ht.2]), mul_zero]
      _ = 0 := by simp
  have hright : (∫ t in a..2 * A, deriv (deriv C) t * max 0 (t - a)) =
      ∫ t in a..2 * A, (t - a) * deriv (deriv C) t := by
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    rw [uIcc_of_le hab] at ht
    rw [max_eq_right (by linarith [ht.1]), mul_comm]
  have hp := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := fun t : ℝ => t - a) (u' := fun _ => (1 : ℝ)) (v := deriv C)
    (v' := deriv (deriv C)) (fun t _ => (hasDerivAt_id t).sub_const a)
    (fun t _ => (hC'.differentiable (by norm_num) t).hasDerivAt)
    (continuous_const.intervalIntegrable a (2 * A))
    (hC'.continuous_deriv_one.intervalIntegrable a (2 * A))
  have hf := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => (hC.differentiable (by norm_num) t).hasDerivAt)
    (hC'.continuous.intervalIntegrable a (2 * A))
  have hz : C (2 * A) = 0 := sourceCorrelation_eq_zero_of_two_mul_le_abs A _ hA
    (by rw [abs_of_nonneg (by linarith : 0 ≤ 2 * A)])
  have hz' : deriv C (2 * A) = 0 :=
    sourceCorrelation_deriv_zero_of_two_mul_le A _ hA le_rfl
  simp only [one_mul, sub_self, zero_mul, hz, hz', mul_zero, zero_sub] at hp hf
  rw [← intervalIntegral.integral_add_adjacent_intervals (hi 0 a) (hi a (2 * A)),
    hleft, hright, zero_add]
  linarith

private theorem continuousRamp_pairing {A : ℝ} (hA : 0 < A) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualRieszContinuousRamp t) = criticalContinuousMoment A := by
  let C := sourceCorrelation explicitSecondDerivative A
  let Q' := fun t : ℝ => 2 * Real.exp (t / 2) - 2
  have hC : ContDiff ℝ 1 C := sourceCorrelation_contDiff A hA
  have hC' : ContDiff ℝ 1 (deriv C) := sourceCorrelation_deriv_contDiff hA
  have hQ' : Continuous Q' := by fun_prop
  have hp := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := actualRieszContinuousRamp) (u' := Q') (v := deriv C)
    (v' := deriv (deriv C)) (fun t _ => continuousRamp_deriv t)
    (fun t _ => (hC'.differentiable (by norm_num) t).hasDerivAt)
    (hQ'.intervalIntegrable 0 (2 * A)) (hC'.continuous_deriv_one.intervalIntegrable 0 (2 * A))
  have hq := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := Q') (u' := fun t => Real.exp (t / 2)) (v := C) (v' := deriv C)
    (fun t _ => continuousRamp_first_deriv t)
    (fun t _ => (hC.differentiable (by norm_num) t).hasDerivAt)
    ((Real.continuous_exp.comp (continuous_id.div_const 2)).intervalIntegrable 0 (2 * A))
    (hC'.continuous.intervalIntegrable 0 (2 * A))
  have hz : C (2 * A) = 0 := sourceCorrelation_eq_zero_of_two_mul_le_abs A _ hA
    (by rw [abs_of_nonneg (by linarith : 0 ≤ 2 * A)])
  have hz' : deriv C (2 * A) = 0 :=
    sourceCorrelation_deriv_zero_of_two_mul_le A _ hA le_rfl
  have hq0 : Q' 0 = 0 := by simp [Q']
  have hQ0 : actualRieszContinuousRamp 0 = 0 := by simp [actualRieszContinuousRamp]
  rw [hz', hQ0, mul_zero, zero_mul, zero_sub] at hp
  rw [hz, hq0, mul_zero, zero_mul, zero_sub] at hq
  have hc : (∫ t in 0..2 * A, deriv (deriv C) t * actualRieszContinuousRamp t) =
      ∫ t in 0..2 * A, actualRieszContinuousRamp t * deriv (deriv C) t := by
    apply intervalIntegral.integral_congr
    intro t _
    ring
  rw [hc]
  change _ = ∫ t in 0..2 * A, Real.exp (t / 2) * C t
  linarith

private theorem coefficient_transport {A : ℝ} {n : ℕ} (hn : 0 < n) :
    ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
        sourceCorrelation explicitSecondDerivative A (Real.log n) =
      ArithmeticFunction.vonMangoldt n * exponentialTest
        (sourceCorrelation explicitSecondDerivative A) (Real.log n) := by
  have hnR : 0 < (n : ℝ) := by exact_mod_cast hn
  unfold exponentialTest
  rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hnR]
  ring

/-- Exact reconstruction of the original residual from the literal closed Riesz primitive. -/
theorem actualMangoldtRiesz_reconstruction {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = criticalContinuousMoment A +
      ∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
        actualMangoldtRieszPrimitive t := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  let S := fun t => ∑ n ∈ primePowerInventory (2 * A),
    ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * max 0 (t - Real.log n)
  have hC'' := (sourceCorrelation_deriv_contDiff hp).continuous_deriv_one
  have hS : Continuous S := by
    exact continuous_finsetSum _ (fun n _ => (ramp_continuous (Real.log n)).const_mul _)
  have he : (∫ t in 0..2 * A, deriv (deriv C) t * actualMangoldtRieszPrimitive t) =
      (∫ t in 0..2 * A, deriv (deriv C) t * S t) -
        (∫ t in 0..2 * A, deriv (deriv C) t * actualRieszContinuousRamp t) := by
    rw [← intervalIntegral.integral_sub
      (f := fun t => deriv (deriv C) t * S t)
      (g := fun t => deriv (deriv C) t * actualRieszContinuousRamp t)
      ((hC''.mul hS).intervalIntegrable 0 (2 * A))
      ((hC''.mul continuousRamp_contDiff.continuous).intervalIntegrable 0 (2 * A))]
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    rw [uIcc_of_le (by linarith : 0 ≤ 2 * A)] at ht
    rw [actualMangoldtRieszPrimitive_eq_fixed_ramps ht.2]
    change _ = deriv (deriv C) t * S t - _
    ring
  have hs : (∫ t in 0..2 * A, deriv (deriv C) t * S t) = closedPrimeMoment A := by
    have heq : (fun t => deriv (deriv C) t * S t) =
        ∑ n ∈ primePowerInventory (2 * A), fun t =>
          (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
            (deriv (deriv C) t * max 0 (t - Real.log n)) := by
      funext t
      simp only [S, Finset.sum_apply, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n _
      ring
    rw [heq]
    change (∫ t in 0..2 * A, ∑ n ∈ primePowerInventory (2 * A),
      (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
        (deriv (deriv C) t * max 0 (t - Real.log n))) = closedPrimeMoment A
    rw [intervalIntegral.integral_finsetSum]
    · unfold closedPrimeMoment
      apply Finset.sum_congr rfl
      intro n hn
      rw [intervalIntegral.integral_const_mul,
        ramp_integral hp (mangoldtInventory_log_bounds _ _ hn).1
          (mangoldtInventory_log_bounds _ _ hn).2]
      exact coefficient_transport (by have hn' := Finset.mem_Icc.mp hn; omega)
    · intro n _
      exact ((hC''.mul (ramp_continuous (Real.log n))).const_mul _).intervalIntegrable 0 (2 * A)
  rw [he, hs, continuousRamp_pairing hp, mertensResidual_eq_closedPrimeMoment A hA]
  ring

/-- The actual positive rational center is evaluated independently of the residual. -/
theorem actualRiesz_continuousMoment_eq_neg_magnitude {A : ℝ} (hA : 1 ≤ A) :
    criticalContinuousMoment A = -actualRieszContinuousMagnitude A := by
  rw [criticalContinuousMoment_eq_rational hA]
  unfold actualRieszContinuousMagnitude
  ring

/-- Both original closed support seams and the unit correlation are explicit. -/
theorem actualCorrelation_Riesz_endpoint_ledger {A : ℝ} (hA : 1 ≤ A) :
    sourceCorrelation explicitSecondDerivative A 0 = 1 ∧
      deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 ∧
      sourceCorrelation explicitSecondDerivative A (2 * A) = 0 ∧
      deriv (sourceCorrelation explicitSecondDerivative A) (2 * A) = 0 := by
  have hp : 0 < A := by linarith
  refine ⟨EstimateCorrelation.actual_correlation_at_zero A hA,
    (actualCorrelation_odd_jets_zero hp).1, ?_,
    sourceCorrelation_deriv_zero_of_two_mul_le A _ hp le_rfl⟩
  exact sourceCorrelation_eq_zero_of_two_mul_le_abs A _ hp
    (by rw [abs_of_nonneg (by linarith : 0 ≤ 2 * A)])

/-- Genuine FTC supplies zero constant payment and unit linear payment. -/
theorem actualCorrelation_Riesz_curvature_moments {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t) = 0 ∧
      (∫ t in 0..2 * A, t * deriv (deriv
        (sourceCorrelation explicitSecondDerivative A)) t) = 1 := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  have hC : ContDiff ℝ 1 C := sourceCorrelation_contDiff A hp
  have hC' : ContDiff ℝ 1 (deriv C) := sourceCorrelation_deriv_contDiff hp
  have he := actualCorrelation_Riesz_endpoint_ledger hA
  have hz : C (2 * A) = 0 := he.2.2.1
  have hz' : deriv C (2 * A) = 0 := he.2.2.2
  have hzero : C 0 = 1 := he.1
  have hzero' : deriv C 0 = 0 := he.2.1
  have hf := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => (hC.differentiable (by norm_num) t).hasDerivAt)
    (hC'.continuous.intervalIntegrable 0 (2 * A))
  have hf' := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => (hC'.differentiable (by norm_num) t).hasDerivAt)
    (hC'.continuous_deriv_one.intervalIntegrable 0 (2 * A))
  have hb := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := fun t : ℝ => t) (u' := fun _ => (1 : ℝ)) (v := deriv C)
    (v' := deriv (deriv C)) (fun t _ => hasDerivAt_id t)
    (fun t _ => (hC'.differentiable (by norm_num) t).hasDerivAt)
    (continuous_const.intervalIntegrable 0 (2 * A))
    (hC'.continuous_deriv_one.intervalIntegrable 0 (2 * A))
  simp only [hz, hz', hzero, hzero', one_mul, zero_mul, mul_zero] at hf hf' hb
  exact ⟨by simpa only [sub_self] using hf', by linarith⟩

/-- The prescribed center includes the authentic quarter-digamma archimedean anchor. -/
def actualRieszLinearCenter (A : ℝ) : ℝ :=
  archimedeanMultiplier 0 / 2 + actualRieszContinuousMagnitude A

/-- Literal actual centered primitive; the free constant does not remove any atom. -/
def actualCenteredMangoldtRieszPrimitive (A b t : ℝ) : ℝ :=
  actualMangoldtRieszPrimitive t - actualRieszLinearCenter A * t - b

/-- Finite centered source integrability is proved, without an opaque input field. -/
theorem actualCenteredMangoldtRiesz_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) (b : ℝ) :
    IntervalIntegrable (actualCenteredMangoldtRieszPrimitive A b) volume 0 (2 * A) := by
  apply ContinuousOn.intervalIntegrable
  rw [uIcc_of_le (by linarith : 0 ≤ 2 * A)]
  exact ((actualMangoldtRieszPrimitive_continuousOn (2 * A)).sub
    (continuous_const.mul continuous_id).continuousOn).sub continuous_const.continuousOn

/-- The actual centered signed integral equals the unchanged residual minus its arch anchor. -/
theorem actualCenteredMangoldtRiesz_readout {A : ℝ} (hA : 1 ≤ A) (b : ℝ) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualCenteredMangoldtRieszPrimitive A b t) =
        mertensResidual A - archimedeanMultiplier 0 / 2 := by
  have hp : 0 < A := by linarith
  let C'' := deriv (deriv (sourceCorrelation explicitSecondDerivative A))
  have hc : Continuous C'' := (sourceCorrelation_deriv_contDiff hp).continuous_deriv_one
  have hH := actualMangoldtRiesz_pairing_intervalIntegrable hp
  have he : (fun t => C'' t * actualCenteredMangoldtRieszPrimitive A b t) =
      (fun t => C'' t * actualMangoldtRieszPrimitive t -
        actualRieszLinearCenter A * (t * C'' t) - b * C'' t) := by
    funext t
    unfold actualCenteredMangoldtRieszPrimitive
    ring
  rw [he, intervalIntegral.integral_sub
    (hH.sub (((continuous_id.mul hc).const_mul _).intervalIntegrable 0 (2 * A)))
    ((hc.const_mul _).intervalIntegrable 0 (2 * A)),
    intervalIntegral.integral_sub hH
    (((continuous_id.mul hc).const_mul _).intervalIntegrable 0 (2 * A)),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul]
  have hm := actualCorrelation_Riesz_curvature_moments hA
  rw [show (∫ t in 0..2 * A, t * C'' t) = 1 from hm.2,
    show (∫ t in 0..2 * A, C'' t) = 0 from hm.1, mul_one, mul_zero, sub_zero]
  have hr := actualMangoldtRiesz_reconstruction hA
  rw [actualRiesz_continuousMoment_eq_neg_magnitude hA] at hr
  unfold actualRieszLinearCenter
  linarith

/-- The actual five-curvature budget contracts the literal finite absolute centered area. -/
theorem actualCenteredMangoldtRiesz_area_bound {A : ℝ} (hA : 91 ≤ A) (b : ℝ) :
    |mertensResidual A - archimedeanMultiplier 0 / 2| ≤
      (5 / A^2) * ∫ t in 0..2 * A, |actualCenteredMangoldtRieszPrimitive A b t| := by
  have hA1 : 1 ≤ A := by linarith
  have hi := (actualCenteredMangoldtRiesz_intervalIntegrable hA1 b).abs.const_mul (5 / A^2)
  have hb := intervalIntegral.norm_integral_le_of_norm_le (by linarith : 0 ≤ 2 * A)
    (f := fun t => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualCenteredMangoldtRieszPrimitive A b t)
    (g := fun t => (5 / A^2) * |actualCenteredMangoldtRieszPrimitive A b t|)
    (Filter.Eventually.of_forall fun t _ => by
      rw [Real.norm_eq_abs, abs_mul]
      exact mul_le_mul_of_nonneg_right
        (RH16FiveCesaro.actualCorrelation_second_abs_le_five hA t) (abs_nonneg _)) hi
  rw [actualCenteredMangoldtRiesz_readout hA1 b, Real.norm_eq_abs,
    intervalIntegral.integral_const_mul] at hb
  exact hb

end FormalResearch.RiemannHypothesis.SourceActualRieszCenteredReconstruction
