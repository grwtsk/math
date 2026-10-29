-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LogSamplingTerm.Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.LogSamplingTerm.Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a","mathematical_subject":"Analysis.Calculus","original_sha256":"a265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/EstimateLogSampling.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMomentReflection

/-!
# RH estimate: logarithmic sampling specialization

This module specializes the finite sampling core to the exact logarithmic
kernel used by the Möbius source.

The sample is kept in the same exponential form as the actual source kernel:

  log(u) * exp(-(log x + log u)/2) * F(log x + log u).

For positive x and u this equals the archived
  log(u) / sqrt(xu) * F(log x + log u)
form.  Its exact derivative is computed and bounded pointwise from abstract
uniform bounds on F and F'.

No arithmetic estimate is introduced.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LogSamplingTerm.Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSampling

open MeasureTheory Set
open EstimateTwoMomentSampling EstimateMomentReflection
open EstimateSourceMobiusKernel PrimePowerDescent
open FormalResearch.RiemannHypothesis.SourcePairing

noncomputable section

/-- Logarithmic sample of `F` at `log x + log u`, weighted by
`log u * exp (-(log x + log u) / 2)`. -/
def logSamplingTerm (F : ℝ → ℝ) (x u : ℝ) : ℝ :=
  Real.log u *
    Real.exp (-(Real.log x + Real.log u) / 2) *
    F (Real.log x + Real.log u)

/-- Explicit derivative expression for `logSamplingTerm`, identified for
continuously differentiable profiles and positive `x` and `u` below. -/
def logSamplingDerivative (F : ℝ → ℝ) (x u : ℝ) : ℝ :=
  Real.exp (-(Real.log x + Real.log u) / 2) / u *
    ((1 - Real.log u / 2) *
        F (Real.log x + Real.log u) +
      Real.log u *
        deriv F (Real.log x + Real.log u))

theorem logSamplingTerm_contDiffOn_pos
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (_hx : 0 < x) :
    ContDiffOn ℝ 1 (logSamplingTerm F x) (Ioi 0) := by
  unfold logSamplingTerm
  have hlogu :
      ContDiffOn ℝ 1 Real.log (Ioi (0 : ℝ)) := by
    apply Real.contDiffOn_log.mono
    intro u hu
    simp only [mem_compl_iff, mem_singleton_iff]
    exact ne_of_gt hu
  have hshift :
      ContDiffOn ℝ 1
        (fun u : ℝ => Real.log x + Real.log u)
        (Ioi 0) :=
    contDiffOn_const.add hlogu
  have hexp :
      ContDiffOn ℝ 1
        (fun u : ℝ =>
          Real.exp (-(Real.log x + Real.log u) / 2))
        (Ioi 0) := by
    fun_prop
  have hcomp :
      ContDiffOn ℝ 1
        (fun u : ℝ => F (Real.log x + Real.log u))
        (Ioi 0) := by
    simpa only [Function.comp_def] using
      hF.comp_contDiffOn hshift
  exact (hlogu.mul hexp).mul hcomp

theorem logSamplingTerm_hasDerivAt
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x u : ℝ} (_hx : 0 < x) (hu : 0 < u) :
    HasDerivAt (logSamplingTerm F x)
      (logSamplingDerivative F x u) u := by
  have hlog :
      HasDerivAt Real.log u⁻¹ u :=
    Real.hasDerivAt_log (ne_of_gt hu)
  have hshift :
      HasDerivAt
        (fun v : ℝ => Real.log x + Real.log v)
        u⁻¹ u :=
    hlog.const_add (Real.log x)
  have hnegdiv :
      HasDerivAt
        (fun v : ℝ =>
          -(Real.log x + Real.log v) / 2)
        (-u⁻¹ / 2) u :=
    hshift.neg.div_const 2
  have hexp :
      HasDerivAt
        (fun v : ℝ =>
          Real.exp (-(Real.log x + Real.log v) / 2))
        (Real.exp (-(Real.log x + Real.log u) / 2) *
          (-u⁻¹ / 2)) u :=
    hnegdiv.exp
  have hF' :
      HasDerivAt F
        (deriv F (Real.log x + Real.log u))
        (Real.log x + Real.log u) :=
    (hF.differentiable (by norm_num)
      (Real.log x + Real.log u)).hasDerivAt
  have hcomp :=
    hF'.comp u hshift
  have h :=
    (hlog.mul hexp).mul hcomp
  apply h.congr_deriv
  dsimp only [logSamplingDerivative, Pi.mul_apply, Function.comp_apply]
  ring

@[simp]
theorem deriv_logSamplingTerm
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x u : ℝ} (hx : 0 < x) (hu : 0 < u) :
    deriv (logSamplingTerm F x) u =
      logSamplingDerivative F x u :=
  (logSamplingTerm_hasDerivAt hF hx hu).deriv

/-- At positive integer samples, the generic logarithmic term is exactly the
source-kernel term when F is the actual source correlation. -/
theorem logSamplingTerm_source_eq
    (A x : ℝ) (k : ℕ)
    (hx : 0 < x) (hk : 1 ≤ k) :
    logSamplingTerm
        (sourceCorrelation Realization.explicitSecondDerivative A)
        x k =
      sourceKernelTerm A k x := by
  have hkpos : 0 < (k : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk)
  unfold logSamplingTerm sourceKernelTerm exponentialTest
  rw [Real.log_mul (ne_of_gt hx) (ne_of_gt hkpos)]
  ring

theorem leftSampleSum_source_eq
    (A x : ℝ) (N : ℕ)
    (hx : 0 < x) :
    leftSampleSum
        (logSamplingTerm
          (sourceCorrelation Realization.explicitSecondDerivative A) x)
        N =
      ∑ k ∈ Finset.Icc 1 N,
        sourceKernelTerm A k x := by
  unfold leftSampleSum
  apply Finset.sum_congr rfl
  intro k hk
  exact logSamplingTerm_source_eq
    A x k hx (Finset.mem_Icc.mp hk).1

/-- Abstract sup bounds used by the logarithmic derivative estimate. -/
def ProfileSupBounds
    (F : ℝ → ℝ) (B0 B1 : ℝ) : Prop :=
  0 ≤ B0 ∧ 0 ≤ B1 ∧
  (∀ t : ℝ, |F t| ≤ B0) ∧
  (∀ t : ℝ, |deriv F t| ≤ B1)

/-- Candidate absolute derivative bound from the profile bounds `B0` and `B1`,
used on the half-line `u ≥ 1`. -/
def logSamplingDerivativeMajorant
    (x B0 B1 u : ℝ) : ℝ :=
  Real.exp (-Real.log x / 2) *
    Real.exp (-Real.log u / 2) / u *
    ((1 + Real.log u / 2) * B0 +
      Real.log u * B1)

/-- Pointwise derivative majorant on u >= 1. -/
theorem abs_logSamplingDerivative_le
    {F : ℝ → ℝ} {x u B0 B1 : ℝ}
    (_hx : 0 < x) (hu : 1 ≤ u)
    (hB : ProfileSupBounds F B0 B1) :
    |logSamplingDerivative F x u| ≤
      logSamplingDerivativeMajorant x B0 B1 u := by
  have hu0 : 0 < u := lt_of_lt_of_le zero_lt_one hu
  have hlogu : 0 ≤ Real.log u :=
    Real.log_nonneg hu
  have hexpfac :
      Real.exp (-(Real.log x + Real.log u) / 2) =
        Real.exp (-Real.log x / 2) *
          Real.exp (-Real.log u / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  unfold logSamplingDerivative
  rw [hexpfac, abs_mul, abs_div,
    abs_of_pos hu0]
  have hE0 :
      0 ≤ Real.exp (-Real.log x / 2) *
        Real.exp (-Real.log u / 2) := by
    positivity
  have hinner :
      |(1 - Real.log u / 2) *
          F (Real.log x + Real.log u) +
        Real.log u *
          deriv F (Real.log x + Real.log u)| ≤
        (1 + Real.log u / 2) * B0 +
          Real.log u * B1 := by
    calc
      |(1 - Real.log u / 2) *
          F (Real.log x + Real.log u) +
        Real.log u *
          deriv F (Real.log x + Real.log u)| ≤
          |1 - Real.log u / 2| *
              |F (Real.log x + Real.log u)| +
            |Real.log u| *
              |deriv F (Real.log x + Real.log u)| := by
        simpa [abs_mul] using
          abs_add_le
            ((1 - Real.log u / 2) *
              F (Real.log x + Real.log u))
            (Real.log u *
              deriv F (Real.log x + Real.log u))
      _ ≤
          (1 + Real.log u / 2) * B0 +
            Real.log u * B1 := by
        have hcoef :
            |1 - Real.log u / 2| ≤
              1 + Real.log u / 2 := by
          rw [abs_le]
          constructor <;> linarith
        rw [abs_of_nonneg hlogu]
        exact add_le_add
          (mul_le_mul hcoef (hB.2.2.1 _) (abs_nonneg _) (by positivity))
          (mul_le_mul_of_nonneg_left (hB.2.2.2 _) hlogu)
  unfold logSamplingDerivativeMajorant
  have hdiv0 : 0 ≤
      Real.exp (-Real.log x / 2) *
        Real.exp (-Real.log u / 2) / u := by
    positivity
  rw [abs_of_nonneg hE0]
  exact mul_le_mul_of_nonneg_left hinner hdiv0

/-- Pointwise logarithmic specialization checkpoint. -/
def LogSamplingCheckpoint : Prop :=
  (∀ A x : ℝ, ∀ k : ℕ,
    0 < x → 1 ≤ k →
      logSamplingTerm
        (sourceCorrelation Realization.explicitSecondDerivative A)
        x k =
      sourceKernelTerm A k x) ∧
  (∀ F : ℝ → ℝ, ContDiff ℝ 1 F →
    ∀ x u B0 B1 : ℝ,
      0 < x → 1 ≤ u →
      ProfileSupBounds F B0 B1 →
      |logSamplingDerivative F x u| ≤
        logSamplingDerivativeMajorant x B0 B1 u)

theorem log_sampling_checkpoint :
    LogSamplingCheckpoint :=
  ⟨fun A x k hx hk =>
      logSamplingTerm_source_eq A x k hx hk,
    fun F _hF x u B0 B1 hx hu hB =>
      abs_logSamplingDerivative_le (F := F) (x := x) (u := u)
        (B0 := B0) (B1 := B1) hx hu hB⟩

end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSampling
