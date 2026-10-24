-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualTestMemLpTwo.Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualTestMemLpTwo.Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc","mathematical_subject":"Analysis.Integration","original_sha256":"f8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/ZeroSmoothingL2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingL2Core
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.MeasureTheory.Function.LpSpace.Indicator
import Mathlib.MeasureTheory.Function.LpSeminorm.LpNorm

/-!
# Full-line L² and H¹ convergence of the source smoothing

All norms here use Lebesgue measure on the whole real line and the actual
unnormalized zero extension. The H¹ error is the square root of the sum of
the two squared L² errors, using the proved global derivatives. Explicit L²
membership and square integrability prevent totalized integrals or norms
from standing in for analytic convergence.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualTestMemLpTwo.Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroSmoothingL2

open MeasureTheory Set Filter
open scoped ContDiff Topology
open ZeroSideTargets ZeroTestRegularity ZeroSmoothing ZeroSmoothingDerivative

noncomputable section

/-- The actual unnormalized test is genuinely square integrable on ℝ. -/
theorem actualTest_memLp_two (A : ℝ) (hA : 1 ≤ A) :
    MemLp (actualTest A) 2 volume :=
  (actualTest_contDiff A hA).continuous.memLp_of_hasCompactSupport
    (actualTest_hasCompactSupport A hA)

/-- The global derivative, including the support seams, is genuinely in L². -/
theorem actualTest_deriv_memLp_two (A : ℝ) (hA : 1 ≤ A) :
    MemLp (deriv (actualTest A)) 2 volume :=
  (actualTest_deriv_continuous A hA).memLp_of_hasCompactSupport
    (actualTest_deriv_hasCompactSupport A hA)

/-- Every positive-scale source smoothing is genuinely in L². -/
theorem smoothedTest_memLp_two (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    MemLp (smoothedTest A ε hε) 2 volume :=
  (smoothedTest_contDiff A ε hA hε).continuous.memLp_of_hasCompactSupport
    (smoothedTest_hasCompactSupport A ε hA hε)

/-- Every positive-scale smoothing has its actual global derivative in L². -/
theorem smoothedTest_deriv_memLp_two (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    MemLp (deriv (smoothedTest A ε hε)) 2 volume :=
  (smoothedTest_deriv_continuous A ε hA hε).memLp_of_hasCompactSupport
    (smoothedTest_deriv_hasCompactSupport A ε hA hε)

/-- The full-line value error is genuinely in L² at every positive scale. -/
theorem testError_memLp_two (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    MemLp (fun x ↦ smoothedTest A ε hε x - actualTest A x) 2 volume :=
  (smoothedTest_memLp_two A ε hA hε).sub (actualTest_memLp_two A hA)

/-- The full-line global derivative error is genuinely in L². -/
theorem derivativeError_memLp_two (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    MemLp (fun x ↦ deriv (smoothedTest A ε hε) x - deriv (actualTest A) x) 2 volume :=
  (smoothedTest_deriv_memLp_two A ε hA hε).sub (actualTest_deriv_memLp_two A hA)

/-- The squared value error has a genuine Bochner integral. -/
theorem testError_sq_integrable (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Integrable (fun x ↦ (smoothedTest A ε hε x - actualTest A x) ^ 2) volume :=
  (testError_memLp_two A ε hA hε).integrable_sq

/-- The squared derivative error has a genuine Bochner integral. -/
theorem derivativeError_sq_integrable (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Integrable (fun x ↦ (deriv (smoothedTest A ε hε) x - deriv (actualTest A) x) ^ 2)
      volume :=
  (derivativeError_memLp_two A ε hA hε).integrable_sq

/-- The source H¹ error on the whole real line, with its unscaled global derivative. -/
def h1Error (A ε : ℝ) (hε : 0 < ε) : ℝ :=
  Real.sqrt ((∫ x, (smoothedTest A ε hε x - actualTest A x) ^ 2) +
    ∫ x, (deriv (smoothedTest A ε hε) x - deriv (actualTest A) x) ^ 2)

/-- The integral representation of the genuine finite L² norm. -/
theorem lpNorm_two_eq_sqrt_integral_sq {f : ℝ → ℝ} (hf : MemLp f 2 volume) :
    lpNorm f 2 volume = Real.sqrt (∫ x, f x ^ 2) := by
  rw [lpNorm_eq_integral_norm_rpow_toReal (by norm_num) (by simp)
    hf.aestronglyMeasurable]
  simp only [ENNReal.toReal_ofNat, Real.rpow_two, Real.norm_eq_abs, sq_abs,
    Real.sqrt_eq_rpow, one_div]

/-- These real norms equal the norms of the corresponding elements of the genuine L² space. -/
theorem lpNorm_two_eq_norm_toLp {f : ℝ → ℝ} (hf : MemLp f 2 volume) :
    lpNorm f 2 volume = ‖hf.toLp f‖ := by
  rw [Lp.norm_toLp, toReal_eLpNorm hf.aestronglyMeasurable]

/-- Conversion to L² limits is used only for functions already proved to belong to L². -/
theorem tendsto_lpNorm_two_of_tendsto_integral_sq {ι : Type*} {l : Filter ι}
    {f : ι → ℝ → ℝ} (hf : ∀ i, MemLp (f i) 2 volume)
    (hlim : Tendsto (fun i ↦ ∫ x, f i x ^ 2) l (𝓝 0)) :
    Tendsto (fun i ↦ lpNorm (f i) 2 volume) l (𝓝 0) := by
  have hs := hlim.sqrt
  simpa only [← lpNorm_two_eq_sqrt_integral_sq (hf _), Real.sqrt_zero] using hs

/-- The source graph error is exactly the Euclidean combination of its genuine L² errors. -/
theorem h1Error_eq_l2_norms (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    h1Error A ε hε = Real.sqrt
      ((lpNorm (fun x ↦ smoothedTest A ε hε x - actualTest A x) 2 volume) ^ 2 +
       (lpNorm (fun x ↦ deriv (smoothedTest A ε hε) x - deriv (actualTest A) x)
         2 volume) ^ 2) := by
  rw [lpNorm_two_eq_sqrt_integral_sq (testError_memLp_two A ε hA hε),
    lpNorm_two_eq_sqrt_integral_sq (derivativeError_memLp_two A ε hA hε),
    Real.sq_sqrt (integral_nonneg fun _ ↦ sq_nonneg _),
    Real.sq_sqrt (integral_nonneg fun _ ↦ sq_nonneg _)]
  rfl

/-- The derivative error really is the global derivative of the difference. -/
theorem deriv_testError (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    deriv (fun x ↦ smoothedTest A ε hε x - actualTest A x) =
      fun x ↦ deriv (smoothedTest A ε hε) x - deriv (actualTest A) x := by
  funext x
  exact ((smoothedTest_hasDerivAt A ε hA hε x).differentiableAt.hasDerivAt.sub
    (actualTest_hasDerivAt A hA x).differentiableAt.hasDerivAt).deriv

/-- Positive radii approach zero from the right; no value at a nonpositive radius is introduced. -/
abbrev positiveScaleAtZero : Filter {ε : ℝ // 0 < ε} :=
  Filter.comap Subtype.val (𝓝[>] (0 : ℝ))

/-- The right-hand scale filter is nontrivial, so the convergence statements are not vacuous. -/
theorem positiveScaleAtZero_neBot : positiveScaleAtZero.NeBot :=
  Filter.comap_coe_neBot_of_le_principal inf_le_right

/-- The positive radius parameter tends to zero in the ordinary real topology. -/
theorem positiveScale_tendsto_zero :
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦ (ε : ℝ)) positiveScaleAtZero (𝓝 0) :=
  Filter.tendsto_comap.mono_right nhdsWithin_le_nhds

/-- The original function and its global derivative share the same fixed ambient support. -/
theorem actualTest_common_support (A : ℝ) (hA : 1 ≤ A) :
    tsupport (actualTest A) ⊆ Icc (-A - 1) (A + 1) ∧
    tsupport (deriv (actualTest A)) ⊆ Icc (-A - 1) (A + 1) := by
  have hsub : Icc (-A) A ⊆ Icc (-A - 1) (A + 1) := by
    intro x hx
    constructor <;> linarith [hx.1, hx.2]
  exact ⟨(closure_minimal (actualTest_support_subset A hA) isClosed_Icc).trans hsub,
    (actualTest_deriv_tsupport_subset A hA).trans hsub⟩

/-- Dominated convergence of the squared value error, with the full-line source test. -/
theorem testError_integral_sq_tendsto_zero {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated] (A : ℝ) (hA : 1 ≤ A)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ ∫ x, (smoothedTest A (ε i) (hε i) x - actualTest A x) ^ 2)
      l (𝓝 0) := by
  exact ZeroSmoothingL2Core.mollify_integral_sq_tendsto_zero A hA
    (actualTest_contDiff A hA).continuous (actualTest_hasCompactSupport A hA)
    (actualTest_support_subset A hA) ε hε hlim

/-- Dominated convergence uses the proved convolution identity for the global derivative. -/
theorem derivativeError_integral_sq_tendsto_zero {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated] (A : ℝ) (hA : 1 ≤ A)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ ∫ x,
      (deriv (smoothedTest A (ε i) (hε i)) x - deriv (actualTest A) x) ^ 2)
      l (𝓝 0) := by
  simp_rw [smoothedTest_deriv_eq_convolution A _ hA]
  exact ZeroSmoothingL2Core.mollify_integral_sq_tendsto_zero A hA
    (actualTest_deriv_continuous A hA) (actualTest_deriv_hasCompactSupport A hA)
    (actualTest_deriv_support_subset A hA) ε hε hlim

/-- The first genuine L² limit holds for every positive radius family tending to zero. -/
theorem testError_l2_tendsto_zero {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated] (A : ℝ) (hA : 1 ≤ A)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ lpNorm
      (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x) 2 volume) l (𝓝 0) :=
  tendsto_lpNorm_two_of_tendsto_integral_sq (fun i ↦ testError_memLp_two A (ε i) hA (hε i))
    (testError_integral_sq_tendsto_zero A hA ε hε hlim)

/-- The second genuine L² limit concerns the derivatives of the actual zero extensions. -/
theorem derivativeError_l2_tendsto_zero {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated] (A : ℝ) (hA : 1 ≤ A)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ lpNorm (fun x ↦
      deriv (smoothedTest A (ε i) (hε i)) x - deriv (actualTest A) x) 2 volume) l (𝓝 0) :=
  tendsto_lpNorm_two_of_tendsto_integral_sq
    (fun i ↦ derivativeError_memLp_two A (ε i) hA (hε i))
    (derivativeError_integral_sq_tendsto_zero A hA ε hε hlim)

/-- Both analytically proved L² limits assemble into the source H¹ graph-norm limit. -/
theorem h1Error_tendsto_zero {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated] (A : ℝ) (hA : 1 ≤ A)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ h1Error A (ε i) (hε i)) l (𝓝 0) := by
  have h := ((testError_integral_sq_tendsto_zero A hA ε hε hlim).add
    (derivativeError_integral_sq_tendsto_zero A hA ε hε hlim)).sqrt
  simpa only [h1Error, zero_add, Real.sqrt_zero] using h

/-- The complete H¹ boundary: all positive scales, genuine L² membership/integrals,
exact and common supports, and both L² limits plus their H¹ assembly as ε → 0+.
This statement supplies analytic smoothing only, not the explicit formula or zero-side descent. -/
theorem source_h1_convergence (A : ℝ) (hA : 1 ≤ A) :
    MemLp (actualTest A) 2 volume ∧
    MemLp (deriv (actualTest A)) 2 volume ∧
    (tsupport (actualTest A) ⊆ Icc (-A - 1) (A + 1) ∧
      tsupport (deriv (actualTest A)) ⊆ Icc (-A - 1) (A + 1)) ∧
    (∀ (ε : ℝ) (hε : 0 < ε),
      MemLp (smoothedTest A ε hε) 2 volume ∧
      MemLp (deriv (smoothedTest A ε hε)) 2 volume ∧
      Integrable (fun x ↦ (smoothedTest A ε hε x - actualTest A x) ^ 2) volume ∧
      Integrable (fun x ↦
        (deriv (smoothedTest A ε hε) x - deriv (actualTest A) x) ^ 2) volume ∧
      tsupport (smoothedTest A ε hε) ⊆ Icc (-A - ε) (A + ε) ∧
      tsupport (deriv (smoothedTest A ε hε)) ⊆ Icc (-A - ε) (A + ε) ∧
      (ε ≤ 1 → tsupport (smoothedTest A ε hε) ⊆ Icc (-A - 1) (A + 1) ∧
        tsupport (deriv (smoothedTest A ε hε)) ⊆ Icc (-A - 1) (A + 1))) ∧
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦ lpNorm
      (fun x ↦ smoothedTest A ε ε.property x - actualTest A x) 2 volume)
      positiveScaleAtZero (𝓝 0) ∧
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦ lpNorm
      (fun x ↦ deriv (smoothedTest A ε ε.property) x - deriv (actualTest A) x) 2 volume)
      positiveScaleAtZero (𝓝 0) ∧
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦ h1Error A ε ε.property)
      positiveScaleAtZero (𝓝 0) := by
  refine ⟨actualTest_memLp_two A hA, actualTest_deriv_memLp_two A hA,
    actualTest_common_support A hA, ?_, ?_, ?_, ?_⟩
  · intro ε hε
    exact ⟨smoothedTest_memLp_two A ε hA hε, smoothedTest_deriv_memLp_two A ε hA hε,
      testError_sq_integrable A ε hA hε, derivativeError_sq_integrable A ε hA hε,
      smoothedTest_tsupport_subset A ε hA hε, smoothedTest_deriv_tsupport_subset A ε hA hε,
      fun hε1 ↦ ⟨smoothedTest_tsupport_subset_common A ε hA hε hε1,
        smoothedTest_deriv_tsupport_subset_common A ε hA hε hε1⟩⟩
  · exact testError_l2_tendsto_zero A hA _ (fun ε ↦ ε.property) positiveScale_tendsto_zero
  · exact derivativeError_l2_tendsto_zero A hA _ (fun ε ↦ ε.property) positiveScale_tendsto_zero
  · exact h1Error_tendsto_zero A hA _ (fun ε ↦ ε.property) positiveScale_tendsto_zero

end
end ZeroSmoothingL2
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
