-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SmoothingBump.Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SmoothingBump.Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b","mathematical_subject":"Analysis.Integration","original_sha256":"e92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/ZeroSmoothing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTestRegularity
import Mathlib.Analysis.Calculus.BumpFunction.Convolution

/-!
# Source-faithful smoothing of the actual zero-side test

The kernel is a real, even, nonnegative smooth bump of integral one and support
inside `[-ε, ε]`. It is convolved with the unchanged unnormalized `actualTest A`
from RH-0010, equation (16). This supplies concrete smooth compact tests and
pointwise approximation, not the still-required H¹ or logarithmic-norm
convergence, smooth explicit formula, or dominated zero-side descent.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.SmoothingBump.Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroSmoothing

open MeasureTheory Set Filter
open scoped ContDiff Convolution Topology Pointwise

noncomputable section

/-- A centered smooth bump with outer radius exactly the source smoothing scale. -/
def smoothingBump (ε : ℝ) (hε : 0 < ε) : ContDiffBump (0 : ℝ) where
  rIn := ε / 2
  rOut := ε
  rIn_pos := half_pos hε
  rIn_lt_rOut := half_lt_self hε

/-- The source smoothing kernel, normalized by its genuine positive Lebesgue integral. -/
def mollifier (ε : ℝ) (hε : 0 < ε) : ℝ → ℝ :=
  (smoothingBump ε hε).normed volume

/-- The source kernel has no negative mass. -/
theorem mollifier_nonneg (ε : ℝ) (hε : 0 < ε) (x : ℝ) :
    0 ≤ mollifier ε hε x :=
  (smoothingBump ε hε).nonneg_normed x

/-- Reflection preserves the real kernel exactly. -/
theorem mollifier_even (ε : ℝ) (hε : 0 < ε) : Function.Even (mollifier ε hε) :=
  (smoothingBump ε hε).normed_neg

/-- Smoothness holds at every point, including the support boundary. -/
theorem mollifier_contDiff (ε : ℝ) (hε : 0 < ε) :
    ContDiff ℝ ∞ (mollifier ε hε) :=
  (smoothingBump ε hε).contDiff_normed

/-- The integral defining the mass is genuinely convergent. -/
theorem mollifier_integrable (ε : ℝ) (hε : 0 < ε) :
    Integrable (mollifier ε hε) volume :=
  (smoothingBump ε hε).integrable_normed

/-- The exact mass-one normalization is independent of the smoothing scale. -/
theorem mollifier_integral (ε : ℝ) (hε : 0 < ε) :
    (∫ x, mollifier ε hε x) = 1 :=
  (smoothingBump ε hε).integral_normed

/-- The kernel vanishes at and outside both source support endpoints. -/
theorem mollifier_support (ε : ℝ) (hε : 0 < ε) :
    Function.support (mollifier ε hε) = Ioo (-ε) ε := by
  simpa only [mollifier, smoothingBump, Real.ball_eq_Ioo, zero_sub, zero_add] using
    (smoothingBump ε hε).support_normed_eq (μ := volume)

/-- Its topological support is exactly the prescribed closed interval. -/
theorem mollifier_tsupport (ε : ℝ) (hε : 0 < ε) :
    tsupport (mollifier ε hε) = Icc (-ε) ε := by
  simpa only [mollifier, smoothingBump, Real.closedBall_eq_Icc, zero_sub, zero_add] using
    (smoothingBump ε hε).tsupport_normed_eq (μ := volume)

/-- Every kernel in the family has compact support. -/
theorem mollifier_hasCompactSupport (ε : ℝ) (hε : 0 < ε) :
    HasCompactSupport (mollifier ε hε) :=
  (smoothingBump ε hε).hasCompactSupport_normed

/-- Convolution uses the actual unnormalized source test, with real multiplication. -/
def smoothedTest (A ε : ℝ) (hε : 0 < ε) : ℝ → ℝ :=
  mollifier ε hε ⋆[ContinuousLinearMap.lsmul ℝ ℝ, volume] ZeroSideTargets.actualTest A

/-- The displayed real integral fixes the orientation and normalization of smoothing. -/
theorem smoothedTest_eq_integral (A ε : ℝ) (hε : 0 < ε) (x : ℝ) :
    smoothedTest A ε hε x =
      ∫ y, mollifier ε hε y * ZeroSideTargets.actualTest A (x - y) := rfl

/-- Each smoothing integral is genuinely integrable at every source point. -/
theorem smoothing_integrand_integrable (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (x : ℝ) :
    Integrable (fun y ↦ mollifier ε hε y * ZeroSideTargets.actualTest A (x - y)) volume := by
  exact (mollifier_hasCompactSupport ε hε).convolutionExists_left
    (ContinuousLinearMap.lsmul ℝ ℝ) (mollifier_contDiff ε hε).continuous
    (ZeroTestRegularity.actualTest_integrable A hA).locallyIntegrable x

/-- Compact convolution upgrades the actual test to smoothness of every order. -/
theorem smoothedTest_contDiff (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    ContDiff ℝ ∞ (smoothedTest A ε hε) :=
  (mollifier_hasCompactSupport ε hε).contDiff_convolution_left
    (ContinuousLinearMap.lsmul ℝ ℝ) (mollifier_contDiff ε hε)
    (ZeroTestRegularity.actualTest_integrable A hA).locallyIntegrable

/-- The actual even source test and even kernel give an even smooth test. -/
theorem smoothedTest_even (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Function.Even (smoothedTest A ε hε) := by
  intro x
  exact convolution_neg_of_neg_eq
    (ContinuousLinearMap.lsmul ℝ ℝ)
    (Eventually.of_forall (mollifier_even ε hε))
    (Eventually.of_forall (ZeroTestRegularity.actualTest_even A hA))

/-- Smoothing enlarges the source support by at most its prescribed radius. -/
theorem smoothedTest_support_subset (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Function.support (smoothedTest A ε hε) ⊆ Icc (-A - ε) (A + ε) := by
  intro x hx
  obtain ⟨y, hy, z, hz, rfl⟩ :=
    support_convolution_subset (ContinuousLinearMap.lsmul ℝ ℝ) hx
  rw [mollifier_support ε hε] at hy
  have hz' := ZeroTestRegularity.actualTest_support_subset A hA hz
  constructor <;> linarith [hy.1, hy.2, hz'.1, hz'.2]

/-- The support bound also holds after closure. -/
theorem smoothedTest_tsupport_subset (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    tsupport (smoothedTest A ε hε) ⊆ Icc (-A - ε) (A + ε) :=
  closure_minimal (smoothedTest_support_subset A ε hA hε) isClosed_Icc

/-- The smooth source tests are compactly supported. -/
theorem smoothedTest_hasCompactSupport (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    HasCompactSupport (smoothedTest A ε hε) :=
  isCompact_Icc.of_isClosed_subset isClosed_closure (smoothedTest_tsupport_subset A ε hA hε)

/-- The resulting source test has a genuine Lebesgue integral. -/
theorem smoothedTest_integrable (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Integrable (smoothedTest A ε hε) volume :=
  (smoothedTest_contDiff A ε hA hε).continuous.integrable_of_hasCompactSupport
    (smoothedTest_hasCompactSupport A ε hA hε)

/-- The source's common support for every smoothing scale at most one is preserved. -/
theorem smoothedTest_tsupport_subset_common (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε)
    (hε1 : ε ≤ 1) : tsupport (smoothedTest A ε hε) ⊆ Icc (-A - 1) (A + 1) := by
  intro x hx
  have hx' := smoothedTest_tsupport_subset A ε hA hε hx
  constructor <;> linarith [hx'.1, hx'.2]

/-- Shrinking these positive kernels recovers the actual test pointwise.
This statement is not H¹ or logarithmic-norm convergence. -/
theorem smoothedTest_tendsto {ι : Type*} {l : Filter ι} (A : ℝ) (hA : 1 ≤ A)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) (x : ℝ) :
    Tendsto (fun i ↦ smoothedTest A (ε i) (hε i) x) l
      (𝓝 (ZeroSideTargets.actualTest A x)) :=
  ContDiffBump.convolution_tendsto_right_of_continuous
    (φ := fun i ↦ smoothingBump (ε i) (hε i)) hlim
    (ZeroTestRegularity.actualTest_contDiff A hA).continuous x

end
end ZeroSmoothing
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
