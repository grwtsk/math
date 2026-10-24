-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.NegativeSmoothMoment.Variant3d9ab93d98e9bd1b4089cadc7121fde023547f1dcd44c30c2f5effd29ec8bd7a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3d9ab93d98e9bd1b4089cadc7121fde023547f1dcd44c30c2f5effd29ec8bd7a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.NegativeSmoothMoment.Variant3d9ab93d98e9bd1b4089cadc7121fde023547f1dcd44c30c2f5effd29ec8bd7a","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"3d9ab93d98e9bd1b4089cadc7121fde023547f1dcd44c30c2f5effd29ec8bd7a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh-target-sufficiency/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/EstimateMertensResidual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment

/-!
# RH estimate: exact Mertens residual frontier

The finite Möbius-to-Mertens transport is complete.  This module removes the
remaining smooth exponential companion from the arithmetic obstruction by
proving that it is uniformly bounded for the actual source.

The prime-smooth defect is then exactly a sign-sensitive Mertens residual minus
this uniformly bounded smooth term.  Hence eventual upper boundedness of the
two quantities is equivalent.

No Mertens estimate is proved here.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.NegativeSmoothMoment.Variant3d9ab93d98e9bd1b4089cadc7121fde023547f1dcd44c30c2f5effd29ec8bd7a

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open EstimatePrimeSmoothDefect EstimateTailReduction
open EstimateMobiusSplit EstimateMertensAbel EstimateSourceMobiusKernel
open EstimateMobiusIntegerTransport
open Realization

noncomputable section

/-- The negative exponential half-moment on the full positive support. -/
def negativeSmoothMoment (A : ℝ) : ℝ :=
  ∫ t in 0..2 * A,
    Real.exp (-t / 2) *
      sourceCorrelation explicitSecondDerivative A t

/-- The short positive exponential interval below the prime-two endpoint. -/
def initialPositiveMoment (A : ℝ) : ℝ :=
  ∫ t in 0..lowerEndpoint,
    Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t

/-- The negative exponential moment is at most two. -/
theorem negativeSmoothMoment_upper
    (A : ℝ) (hA : 1 ≤ A) :
    negativeSmoothMoment A ≤ 2 := by
  have hc :=
    (CorrelationRegularity.sourceCorrelation_contDiff A
      (by linarith)).continuous
  have he : Continuous (fun t : ℝ ↦ Real.exp (-t / 2)) := by
    fun_prop
  have h :=
    intervalIntegral.integral_mono_on
      (μ := volume)
      (by linarith : (0 : ℝ) ≤ 2 * A)
      ((he.mul hc).intervalIntegrable _ _)
      (he.intervalIntegrable _ _)
      (fun t _ ↦ by
        have ht :=
          (abs_le.mp
            (EstimateCorrelation.actual_correlation_abs_le_one
              A t hA)).2
        exact
          mul_le_mul_of_nonneg_left ht
            (Real.exp_pos (-t / 2)).le)
  have hp :
      (∫ t in 0..2 * A, Real.exp (-t / 2)) =
        2 - 2 * Real.exp (-A) := by
    have hd (t : ℝ) :
        HasDerivAt
          (fun x : ℝ ↦ -2 * Real.exp (-x / 2))
          (Real.exp (-t / 2)) t := by
      apply
        ((((hasDerivAt_id t).neg.div_const 2).exp)
          .const_mul (-2)).congr_deriv
      simp only [Pi.neg_apply, id_eq]
      ring
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t _ ↦ hd t) (he.intervalIntegrable _ _)]
    simp only [neg_zero, zero_div, Real.exp_zero, mul_one]
    rw [show -(2 * A) / 2 = -A by ring]
    ring
  unfold negativeSmoothMoment
  rw [hp] at h
  linarith [Real.exp_pos (-A)]

/-- The negative exponential moment is at least minus two. -/
theorem negativeSmoothMoment_lower
    (A : ℝ) (hA : 1 ≤ A) :
    -2 ≤ negativeSmoothMoment A := by
  have h :=
    SourceCorrectionEstimate.first_correction_lower A hA
  unfold negativeSmoothMoment
  linarith

theorem negativeSmoothMoment_abs_le
    (A : ℝ) (hA : 1 ≤ A) :
    |negativeSmoothMoment A| ≤ 2 :=
  abs_le.mpr
    ⟨negativeSmoothMoment_lower A hA,
      negativeSmoothMoment_upper A hA⟩

/-- The short positive endpoint interval is at most
\`2 * (sqrt 2 - 1)\`. -/
theorem initialPositiveMoment_upper
    (A : ℝ) (hA : 1 ≤ A) :
    initialPositiveMoment A ≤
      2 * (Real.sqrt 2 - 1) := by
  have hc :=
    (CorrelationRegularity.sourceCorrelation_contDiff A
      (by linarith)).continuous
  have he : Continuous (fun t : ℝ ↦ Real.exp (t / 2)) := by
    fun_prop
  have h :=
    intervalIntegral.integral_mono_on
      (μ := volume)
      (by
        exact
          (Real.log_nonneg (by norm_num) :
            0 ≤ Real.log 2) :
        0 ≤ lowerEndpoint)
      ((he.mul hc).intervalIntegrable _ _)
      (he.intervalIntegrable _ _)
      (fun t _ ↦ by
        have ht :=
          (abs_le.mp
            (EstimateCorrelation.actual_correlation_abs_le_one
              A t hA)).2
        exact
          mul_le_mul_of_nonneg_left ht
            (Real.exp_pos (t / 2)).le)
  have hp :
      (∫ t in 0..lowerEndpoint, Real.exp (t / 2)) =
        2 * (Real.sqrt 2 - 1) := by
    have hd (t : ℝ) :
        HasDerivAt
          (fun x : ℝ ↦ 2 * Real.exp (x / 2))
          (Real.exp (t / 2)) t := by
      apply
        ((((hasDerivAt_id t).div_const 2).exp)
          .const_mul 2).congr_deriv
      simp only [id_eq]
      ring
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t _ ↦ hd t) (he.intervalIntegrable _ _)]
    simp only [zero_div, Real.exp_zero, mul_one,
      lowerEndpoint, Real.exp_half,
      Real.exp_log (by norm_num : (0 : ℝ) < 2)]
    ring
  unfold initialPositiveMoment
  rwa [hp] at h

/-- The short positive endpoint interval has the symmetric lower bound. -/
theorem initialPositiveMoment_lower
    (A : ℝ) (hA : 1 ≤ A) :
    -2 * (Real.sqrt 2 - 1) ≤
      initialPositiveMoment A := by
  have h :=
    SourceCorrectionEstimate.second_correction_lower A hA
  unfold initialPositiveMoment
  linarith

theorem initialPositiveMoment_abs_le
    (A : ℝ) (hA : 1 ≤ A) :
    |initialPositiveMoment A| ≤
      2 * (Real.sqrt 2 - 1) := by
  apply abs_le.mpr
  exact
    ⟨initialPositiveMoment_lower A hA,
      initialPositiveMoment_upper A hA⟩

/-- Exact decomposition of the smooth moment using the pole-annihilating
correlation identity. -/
theorem smoothMoment_eq_neg_negative_sub_initial
    (A : ℝ) (hA : 1 ≤ A) :
    smoothMoment A =
      -negativeSmoothMoment A -
        initialPositiveMoment A := by
  have hc :=
    (CorrelationRegularity.sourceCorrelation_contDiff A
      (by linarith)).continuous
  have he : Continuous (fun t : ℝ ↦ Real.exp (t / 2)) := by
    fun_prop
  have hsplit :=
    intervalIntegral.integral_add_adjacent_intervals
      (a := (0 : ℝ))
      (b := lowerEndpoint)
      (c := 2 * A)
      ((he.mul hc).intervalIntegrable _ _)
      ((he.mul hc).intervalIntegrable _ _)
  have hpole :=
    CorrelationMoment.pole_correlation_certificate A hA
  unfold smoothMoment negativeSmoothMoment initialPositiveMoment
  linarith

/-- The exact smooth exponential companion is uniformly bounded. -/
theorem smoothMoment_abs_le
    (A : ℝ) (hA : 1 ≤ A) :
    |smoothMoment A| ≤ 2 * Real.sqrt 2 := by
  have hn :=
    negativeSmoothMoment_abs_le A hA
  have hi :=
    initialPositiveMoment_abs_le A hA
  have heq :=
    smoothMoment_eq_neg_negative_sub_initial A hA
  rw [heq]
  calc
    |-negativeSmoothMoment A -
        initialPositiveMoment A| ≤
        |negativeSmoothMoment A| +
          |initialPositiveMoment A| := by
      simpa only [abs_neg] using
        abs_add
          (-negativeSmoothMoment A)
          (-initialPositiveMoment A)
    _ ≤
        2 + 2 * (Real.sqrt 2 - 1) := by
      gcongr
    _ = 2 * Real.sqrt 2 := by ring

/-- The exact arithmetic residual after substituting the completed
large-divisor Mertens identity. -/
def mertensResidual (A : ℝ) : ℝ :=
  smallDivisorMobiusMoment A +
    mertensKernelIntegral A (sourceMobiusKernel A) -
    mertens (sourceLower A) *
      sourceMobiusKernel A (sourceLower A)

/-- The residual is exactly the independently defined closed prime moment. -/
theorem mertensResidual_eq_closedPrimeMoment
    (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = closedPrimeMoment A := by
  rw [closedPrimeMoment_eq_small_add_large,
    largeDivisorMobiusMoment_eq_mertens A hA]
  unfold mertensResidual
  ring

/-- The prime-smooth discrepancy is the Mertens residual minus the uniformly
bounded smooth companion. -/
theorem primeSmoothDefect_eq_mertensResidual_sub_smooth
    (A : ℝ) (hA : 1 ≤ A) :
    primeSmoothDefect A =
      mertensResidual A - smoothMoment A := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  rfl

/-- Eventual constant upper control of the complete sign-sensitive Mertens
residual. -/
def MertensResidualTailUpperBound : Prop :=
  ∃ D : ℝ, 0 ≤ D ∧
    ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A →
        mertensResidual A ≤ D

/-- Residual upper control gives the earlier prime-smooth defect bound. -/
theorem prime_smooth_tail_of_mertens_residual_tail
    (h : MertensResidualTailUpperBound) :
    PrimeSmoothDefectTailUpperBound := by
  obtain ⟨D, hD, R, hR, hres⟩ := h
  refine
    ⟨D + 2 * Real.sqrt 2, by positivity,
      R, hR, ?_⟩
  intro A hRA
  have hA : 1 ≤ A := hR.trans hRA
  have hs :=
    (abs_le.mp (smoothMoment_abs_le A hA)).1
  rw [primeSmoothDefect_eq_mertensResidual_sub_smooth A hA]
  linarith [hres A hRA]

/-- Conversely, a prime-smooth defect bound gives residual upper control
because the smooth companion is uniformly bounded. -/
theorem mertens_residual_tail_of_prime_smooth_tail
    (h : PrimeSmoothDefectTailUpperBound) :
    MertensResidualTailUpperBound := by
  obtain ⟨D, hD, R, hR, hdef⟩ := h
  refine
    ⟨D + 2 * Real.sqrt 2, by positivity,
      R, hR, ?_⟩
  intro A hRA
  have hA : 1 ≤ A := hR.trans hRA
  have hs :=
    (abs_le.mp (smoothMoment_abs_le A hA)).2
  have heq :=
    primeSmoothDefect_eq_mertensResidual_sub_smooth A hA
  linarith [hdef A hRA]

/-- After all exact source transports, the previous prime-smooth obstruction
and the complete Mertens residual obstruction are equivalent. -/
theorem prime_smooth_tail_iff_mertens_residual_tail :
    PrimeSmoothDefectTailUpperBound ↔
      MertensResidualTailUpperBound :=
  ⟨mertens_residual_tail_of_prime_smooth_tail,
    prime_smooth_tail_of_mertens_residual_tail⟩

/-- The signed-pairing tail obstruction is therefore exactly equivalent to the
Mertens residual tail obstruction. -/
theorem signed_pairing_tail_iff_mertens_residual_tail :
    SignedPairingTailLowerBound ↔
      MertensResidualTailUpperBound :=
  EstimatePrimeSmoothDefect.signed_pairing_tail_iff_prime_smooth_defect_tail.trans
    prime_smooth_tail_iff_mertens_residual_tail

/-- This exact sign-sensitive residual bound is sufficient for the unchanged
all-scale estimate target. -/
theorem estimate_of_mertens_residual_tail
    (h : MertensResidualTailUpperBound) :
    CorrelationAssembly.EstimateObligation :=
  EstimatePrimeSmoothDefect.estimate_of_prime_smooth_defect_tail
    (prime_smooth_tail_of_mertens_residual_tail h)

/-- Current exact post-transport frontier. -/
def MertensResidualCheckpoint : Prop :=
  (∀ A : ℝ, 1 ≤ A →
    |smoothMoment A| ≤ 2 * Real.sqrt 2) ∧
  (∀ A : ℝ, 1 ≤ A →
    mertensResidual A = closedPrimeMoment A) ∧
  (SignedPairingTailLowerBound ↔
    MertensResidualTailUpperBound) ∧
  (MertensResidualTailUpperBound →
    CorrelationAssembly.EstimateObligation)

theorem mertens_residual_checkpoint :
    MertensResidualCheckpoint :=
  ⟨smoothMoment_abs_le,
    mertensResidual_eq_closedPrimeMoment,
    signed_pairing_tail_iff_mertens_residual_tail,
    estimate_of_mertens_residual_tail⟩

end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual
