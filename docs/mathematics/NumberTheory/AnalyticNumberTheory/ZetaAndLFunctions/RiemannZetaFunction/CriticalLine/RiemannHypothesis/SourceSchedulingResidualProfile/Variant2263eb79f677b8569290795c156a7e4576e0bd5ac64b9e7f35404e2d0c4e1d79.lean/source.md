# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSchedulingResidualProfile.Variant2263eb79f677b8569290795c156a7e4576e0bd5ac64b9e7f35404e2d0c4e1d79

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ace9bc6526295b5ac837ab1a48cee6b3e79001b` · SHA-256 `fd5b1595f5ac101c34b81a325a3de8e39a46b363bb080a731deb5d500286c7ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ResidualProfile.Variant7116581d04c3e1229efc4178ba70afb56ec08934b2dfa6c72f906d9c273c0750","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7116581d04c3e1229efc4178ba70afb56ec08934b2dfa6c72f906d9c273c0750","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ResidualProfile.Variant7116581d04c3e1229efc4178ba70afb56ec08934b2dfa6c72f906d9c273c0750","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"7116581d04c3e1229efc4178ba70afb56ec08934b2dfa6c72f906d9c273c0750","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceSchedulingResidualProfile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceSchedulingSignedProfile
import FormalResearch.RiemannHypothesis.SourceSchedulingTransport

/-!
# Finite residual profiles with retained derivative moments

CSE-RH16-20261007. grwtsk contributors supplied the direction, selection,
corrections and evaluation. OpenAI Codex supplied these finite adapters.
The first-moment coefficient in H has a negative sign; the readout uses +d*C'.
The full Lipschitz test-class supremum is not asserted here.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ResidualProfile.Variant7116581d04c3e1229efc4178ba70afb56ec08934b2dfa6c72f906d9c273c0750

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceSchedulingResidualProfile

open MeasureTheory Set SourceSchedulingTransport SourceSchedulingSignedProfile
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent
open scoped Interval

variable {ι : Type*} [Fintype ι]

/-- Closed events retain the negative derivative moment contribution. -/
def residualProfile (c b d : ι → ℝ) (t : ℝ) : ℝ :=
  ∑ i, if c i ≤ t then b i * (t - c i) - d i else 0

theorem residualProfile_intervalIntegrable (c b d : ι → ℝ) (T : ℝ) :
    IntervalIntegrable (residualProfile c b d) volume 0 T := by
  unfold residualProfile
  have hi : IntervalIntegrable
      (∑ i : ι, fun t : ℝ => if c i ≤ t then b i * (t - c i) - d i else 0)
      volume 0 T := IntervalIntegrable.sum Finset.univ (fun i _ =>
        intervalIntegrable_closed_step 0 T (c i) _
          ((by fun_prop : Continuous (fun t : ℝ => b i * (t - c i) - d i)).intervalIntegrable 0 T))
  have he : (∑ i : ι, fun t : ℝ => if c i ≤ t then b i * (t - c i) - d i else 0) =
      (fun t : ℝ => ∑ i, if c i ≤ t then b i * (t - c i) - d i else 0) := by
    funext t
    simp only [Finset.sum_apply]
  rw [he] at hi
  exact hi

/-- Both endpoint carries vanish only by the displayed test-function hypotheses. -/
theorem residualProfile_integral_eq_readout (c b d : ι → ℝ)
    (f : ℝ → ℝ) (hf : ContDiff ℝ 2 f) (T : ℝ)
    (hc : ∀ i, 0 ≤ c i ∧ c i ≤ T) (hT : f T = 0) (hT' : deriv f T = 0) :
    (∫ t in 0..T, deriv (deriv f) t * residualProfile c b d t) =
      readout c b d f (deriv f) := by
  have hfd : ContDiff ℝ 1 (deriv f) := hf.deriv'
  have hd : Continuous (deriv (deriv f)) := hfd.continuous_deriv_one
  have hi (i : ι) : IntervalIntegrable
      (fun t => if c i ≤ t then deriv (deriv f) t * (b i * (t - c i) - d i) else 0)
      volume 0 T := intervalIntegrable_closed_step 0 T (c i) _
        ((hd.mul (by fun_prop)).intervalIntegrable 0 T)
  have he : (fun t => deriv (deriv f) t * residualProfile c b d t) =
      fun t => ∑ i, if c i ≤ t then
        deriv (deriv f) t * (b i * (t - c i) - d i) else 0 := by
    funext t
    unfold residualProfile
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    by_cases ht : c i ≤ t <;> simp [ht]
  rw [he, intervalIntegral.integral_finsetSum]
  · unfold readout
    apply Finset.sum_congr rfl
    intro i _
    rw [integral_closed_step 0 T (c i) (hc i).1 (hc i).2]
    have hfun : (fun t => deriv (deriv f) t * (b i * (t - c i) - d i)) =
        fun t => b i * ((t - c i) * deriv (deriv f) t) - d i * deriv (deriv f) t := by
      funext t
      ring
    have ht : IntervalIntegrable (fun t => (t - c i) * deriv (deriv f) t)
        volume (c i) T :=
      ((by fun_prop : Continuous (fun t : ℝ => t - c i)).mul hd).intervalIntegrable (c i) T
    rw [hfun,
      intervalIntegral.integral_sub (ht.const_mul _) ((hd.intervalIntegrable _ _).const_mul _),
      intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
      second_endpoint_integral f hf (c i) T hT hT',
      intervalIntegral.integral_deriv_eq_sub
        (fun t _ => hfd.differentiable (by norm_num) t)
        (hfd.continuous_deriv_one.intervalIntegrable (c i) T), hT']
    ring
  · intro i _
    exact hi i

/-- The complete absolute profile is priced, including all signed derivative loads. -/
theorem readout_abs_le_curvature_profile (c b d : ι → ℝ)
    (f : ℝ → ℝ) (hf : ContDiff ℝ 2 f) (T L : ℝ) (hT0 : 0 ≤ T)
    (hc : ∀ i, 0 ≤ c i ∧ c i ≤ T) (hT : f T = 0) (hT' : deriv f T = 0)
    (hcurv : ∀ t ∈ Icc 0 T, |deriv (deriv f) t| ≤ L) :
    |readout c b d f (deriv f)| ≤ L * ∫ t in 0..T, |residualProfile c b d t| := by
  rw [← residualProfile_integral_eq_readout c b d f hf T hc hT hT']
  have hg : IntervalIntegrable (fun t => L * |residualProfile c b d t|) volume 0 T := by
    simpa only [Real.norm_eq_abs] using
      (residualProfile_intervalIntegrable c b d T).norm.const_mul L
  have hbound := intervalIntegral.norm_integral_le_of_norm_le
    (f := fun t => deriv (deriv f) t * residualProfile c b d t) hT0
    (Filter.Eventually.of_forall (fun t ht => ?_)) hg
  · rw [intervalIntegral.integral_const_mul] at hbound
    simpa only [Real.norm_eq_abs] using hbound
  · simp only [Real.norm_eq_abs, abs_mul]
    exact mul_le_mul_of_nonneg_right (hcurv t ⟨ht.1.le, ht.2⟩) (abs_nonneg _)

end FormalResearch.RiemannHypothesis.SourceSchedulingResidualProfile
```
