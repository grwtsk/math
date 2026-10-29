-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Multiplier.Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Multiplier.Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123","mathematical_subject":"Topology.GeneralTopology","original_sha256":"c8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/ZeroSmoothingMultiplier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingL2

/-!
# The smoothing multiplier on the full source zero strip

The bilateral multiplier is the genuine complex integral of the prescribed
nonnegative mass-one kernel. Its support gives the all-complex bound
`exp (ε * |z.re|)`, hence the source bound `exp (ε / 2)` everywhere in the
closed half-width strip. The occurrence specialization uses only the original
open-strip predicate and retains every analytic-multiplicity slot. No critical
line or Riemann Hypothesis assumption is made.
-/


namespace GRWTSK.Topology.GeneralTopology.Multiplier.Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroSmoothingMultiplier

open MeasureTheory Set Filter
open scoped Convolution Topology
open ZeroSmoothing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject

noncomputable section

/-- The actual bilateral transform of the prescribed smoothing kernel. -/
def multiplier (ε : ℝ) (hε : 0 < ε) (z : ℂ) : ℂ :=
  ∫ y : ℝ, (mollifier ε hε y : ℂ) * Complex.exp (z * (y : ℂ))

/-- The multiplier integrand is continuous for every complex argument. -/
theorem multiplier_integrand_continuous (ε : ℝ) (hε : 0 < ε) (z : ℂ) :
    Continuous (fun y : ℝ ↦ (mollifier ε hε y : ℂ) * Complex.exp (z * (y : ℂ))) := by
  have hk : Continuous (mollifier ε hε) := (mollifier_contDiff ε hε).continuous
  fun_prop

/-- The exponential twist leaves the kernel's compact support intact. -/
theorem multiplier_integrand_hasCompactSupport (ε : ℝ) (hε : 0 < ε) (z : ℂ) :
    HasCompactSupport
      (fun y : ℝ ↦ (mollifier ε hε y : ℂ) * Complex.exp (z * (y : ℂ))) := by
  have hk : HasCompactSupport (fun y : ℝ ↦ (mollifier ε hε y : ℂ)) :=
    (mollifier_hasCompactSupport ε hε).comp_left (g := Complex.ofReal) (by simp)
  exact hk.mul_right

/-- This is a genuine Lebesgue integral for every complex argument, without a strip premise. -/
theorem multiplier_integrand_integrable (ε : ℝ) (hε : 0 < ε) (z : ℂ) :
    Integrable (fun y : ℝ ↦ (mollifier ε hε y : ℂ) * Complex.exp (z * (y : ℂ))) volume :=
  (multiplier_integrand_continuous ε hε z).integrable_of_hasCompactSupport
    (multiplier_integrand_hasCompactSupport ε hε z)

/-- Compact kernel support controls the real exponent at every integration point. -/
theorem multiplier_integrand_norm_le (ε : ℝ) (hε : 0 < ε) (z : ℂ) (y : ℝ) :
    ‖(mollifier ε hε y : ℂ) * Complex.exp (z * (y : ℂ))‖ ≤
      mollifier ε hε y * Real.exp (ε * |z.re|) := by
  simp only [norm_mul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (mollifier_nonneg ε hε y), Complex.norm_exp,
    Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero]
  by_cases hy : y ∈ Function.support (mollifier ε hε)
  · rw [mollifier_support ε hε] at hy
    have habs : |y| ≤ ε := abs_le.mpr ⟨hy.1.le, hy.2.le⟩
    have he : z.re * y ≤ ε * |z.re| := by
      calc
        z.re * y ≤ |z.re * y| := le_abs_self _
        _ = |z.re| * |y| := abs_mul _ _
        _ ≤ |z.re| * ε := mul_le_mul_of_nonneg_left habs (abs_nonneg _)
        _ = ε * |z.re| := mul_comm _ _
    exact mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr he) (mollifier_nonneg ε hε y)
  · have hk : mollifier ε hε y = 0 := Function.notMem_support.mp hy
    simp only [hk, zero_mul, le_refl]

/-- Unit mass converts the pointwise exponent envelope into the exact integral bound. -/
theorem multiplier_norm_le (ε : ℝ) (hε : 0 < ε) (z : ℂ) :
    ‖multiplier ε hε z‖ ≤ Real.exp (ε * |z.re|) := by
  calc
    ‖multiplier ε hε z‖ ≤
        ∫ y : ℝ, ‖(mollifier ε hε y : ℂ) * Complex.exp (z * (y : ℂ))‖ :=
      norm_integral_le_integral_norm _
    _ ≤ ∫ y : ℝ, mollifier ε hε y * Real.exp (ε * |z.re|) :=
      integral_mono (multiplier_integrand_integrable ε hε z).norm
        ((mollifier_integrable ε hε).mul_const _) (multiplier_integrand_norm_le ε hε z)
    _ = Real.exp (ε * |z.re|) := by
      rw [integral_mul_const, mollifier_integral, one_mul]

/-- The source multiplier estimate holds on the full half-width strip, including its boundary. -/
theorem multiplier_norm_le_strip (ε : ℝ) (hε : 0 < ε) (z : ℂ)
    (hz : |z.re| ≤ 1 / 2) : ‖multiplier ε hε z‖ ≤ Real.exp (ε / 2) := by
  refine (multiplier_norm_le ε hε z).trans (Real.exp_le_exp.mpr ?_)
  calc
    ε * |z.re| ≤ ε * (1 / 2) := mul_le_mul_of_nonneg_left hz hε.le
    _ = ε / 2 := by ring

/-- Every original zero occurrence satisfies the bound by its strip predicate alone. -/
theorem multiplier_norm_le_zeroOccurrence (ε : ℝ) (hε : 0 < ε) (o : ZeroOccurrence) :
    ‖multiplier ε hε (shiftedValue o)‖ ≤ Real.exp (ε / 2) :=
  multiplier_norm_le_strip ε hε (shiftedValue o)
    (abs_le.mpr ⟨(shiftedValue_strip o).1.le, (shiftedValue_strip o).2.le⟩)

/-- At zero the genuine multiplier integral is exactly the kernel's mass one. -/
theorem multiplier_zero (ε : ℝ) (hε : 0 < ε) : multiplier ε hε 0 = 1 := by
  simp only [multiplier, zero_mul, Complex.exp_zero, mul_one, integral_complex_ofReal,
    mollifier_integral, Complex.ofReal_one]

/-- A reflected exponential makes the plus-sign bilateral convention a convolution at zero. -/
theorem multiplier_eq_convolution (ε : ℝ) (hε : 0 < ε) (z : ℂ) :
    multiplier ε hε z =
      (mollifier ε hε ⋆[ContinuousLinearMap.lsmul ℝ ℝ, volume]
        (fun x : ℝ ↦ Complex.exp (-(z * (x : ℂ))))) 0 := by
  unfold multiplier convolution
  apply integral_congr_ae
  exact Eventually.of_forall fun y ↦ by
    simp only [ContinuousLinearMap.lsmul_apply, zero_sub, Complex.ofReal_neg,
      mul_neg, neg_neg, Complex.real_smul]

/-- At every fixed complex argument, shrinking the prescribed positive kernels
gives multiplier one. -/
theorem multiplier_tendsto_one {ι : Type*} {l : Filter ι} (z : ℂ)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ multiplier (ε i) (hε i) z) l (𝓝 1) := by
  simp_rw [multiplier_eq_convolution]
  have hg : Continuous (fun x : ℝ ↦ Complex.exp (-(z * (x : ℂ)))) := by fun_prop
  simpa only [mollifier, Complex.ofReal_zero, mul_zero, neg_zero, Complex.exp_zero] using
    (ContDiffBump.convolution_tendsto_right_of_continuous
      (φ := fun i ↦ smoothingBump (ε i) (hε i)) (μ := volume) hlim hg 0)

end
end ZeroSmoothingMultiplier
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
