-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FullH.Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FullH.Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844","mathematical_subject":"Analysis.Integration","original_sha256":"c5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-operator/half-line-duality-combined.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.InnerProductSpace.Adjoint
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
import Mathlib.MeasureTheory.Function.LpSeminorm.Indicator
import Mathlib.MeasureTheory.Integral.Bochner.Set

/-!
The genuine zero-extension isometry and restriction contraction between the actual
half-line Hilbert space and full-line L2. No convolution or adjoint is assumed.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.FullH.Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
noncomputable section

abbrev FullH := Lp ℂ 2 (volume : Measure ℝ)

def zeroExtensionFunction (f : H) : ℝ → ℂ := (Ioi (0 : ℝ)).indicator f

theorem zeroExtensionFunction_memLp (f : H) :
    MemLp (zeroExtensionFunction f) 2 volume := by
  exact (memLp_indicator_iff_restrict measurableSet_Ioi).mpr (Lp.memLp f)

def zeroExtensionVector (f : H) : FullH :=
  (zeroExtensionFunction_memLp f).toLp (zeroExtensionFunction f)

theorem zeroExtensionVector_ae (f : H) :
    zeroExtensionVector f =ᵐ[volume] zeroExtensionFunction f :=
  (zeroExtensionFunction_memLp f).coeFn_toLp

theorem zeroExtensionVector_norm (f : H) : ‖zeroExtensionVector f‖ = ‖f‖ := by
  rw [zeroExtensionVector, Lp.norm_toLp, zeroExtensionFunction,
    eLpNorm_indicator_eq_eLpNorm_restrict measurableSet_Ioi]
  rfl

theorem zeroExtensionVector_add (f g : H) :
    zeroExtensionVector (f + g) = zeroExtensionVector f + zeroExtensionVector g := by
  apply Lp.ext
  have hfg := (ae_restrict_iff' measurableSet_Ioi).mp (Lp.coeFn_add f g)
  filter_upwards [zeroExtensionVector_ae (f + g),
    Lp.coeFn_add (zeroExtensionVector f) (zeroExtensionVector g),
    zeroExtensionVector_ae f, zeroExtensionVector_ae g, hfg] with x hsum hout hf hg hfgx
  rw [hsum, hout, Pi.add_apply, hf, hg]
  by_cases hx : x ∈ Ioi (0 : ℝ)
  · simpa only [zeroExtensionFunction, indicator_of_mem hx, Pi.add_apply] using hfgx hx
  · simp only [zeroExtensionFunction, indicator_of_notMem hx, add_zero]

theorem zeroExtensionVector_smul (c : ℂ) (f : H) :
    zeroExtensionVector (c • f) = c • zeroExtensionVector f := by
  apply Lp.ext
  have hcf := (ae_restrict_iff' measurableSet_Ioi).mp (Lp.coeFn_smul c f)
  filter_upwards [zeroExtensionVector_ae (c • f),
    Lp.coeFn_smul c (zeroExtensionVector f), zeroExtensionVector_ae f, hcf]
      with x hsum hout hf hcfx
  rw [hsum, hout, Pi.smul_apply, hf]
  by_cases hx : x ∈ Ioi (0 : ℝ)
  · simpa only [zeroExtensionFunction, indicator_of_mem hx, Pi.smul_apply] using hcfx hx
  · simp only [zeroExtensionFunction, indicator_of_notMem hx, smul_zero]

/-- Zero extension is a complex-linear isometry of the actual AE quotient spaces. -/
def zeroExtension : H →ₗᵢ[ℂ] FullH where
  toFun := zeroExtensionVector
  map_add' := zeroExtensionVector_add
  map_smul' := zeroExtensionVector_smul
  norm_map' := zeroExtensionVector_norm

theorem zeroExtension_ae (f : H) :
    zeroExtension f =ᵐ[volume] (Ioi (0 : ℝ)).indicator f :=
  zeroExtensionVector_ae f

theorem zeroExtension_norm (f : H) : ‖zeroExtension f‖ = ‖f‖ :=
  zeroExtension.norm_map f

theorem zeroExtension_ae_halfLine (f : H) :
    zeroExtension f =ᵐ[halfLineMeasure] f := by
  change zeroExtension f =ᵐ[volume.restrict (Ioi (0 : ℝ))] f
  exact Filter.EventuallyEq.trans (ae_restrict_of_ae (zeroExtension_ae f))
    (indicator_ae_eq_restrict measurableSet_Ioi)

theorem zeroExtension_ae_nonpositive (f : H) :
    zeroExtension f =ᵐ[volume.restrict (Iic (0 : ℝ))] (fun _ => 0) := by
  filter_upwards [ae_restrict_of_ae (zeroExtension_ae f), ae_restrict_mem measurableSet_Iic]
    with x hx hnonpos
  rw [hx, indicator_of_notMem]
  change ¬0 < x
  exact not_lt.mpr (show x ≤ 0 from hnonpos)

/-- Restriction is Mathlib's genuine Lp restriction continuous linear map. -/
def restriction : FullH →L[ℂ] H := LpToLpRestrictCLM ℝ ℂ ℂ volume 2 (Ioi 0)

theorem restriction_ae (f : FullH) : restriction f =ᵐ[halfLineMeasure] f :=
  LpToLpRestrictCLM_coeFn ℂ (Ioi 0) f

theorem restriction_norm_le (f : FullH) : ‖restriction f‖ ≤ ‖f‖ :=
  norm_Lp_toLp_restrict_le (Ioi 0) f

theorem restriction_opNorm_le : ‖restriction‖ ≤ 1 := by
  refine ContinuousLinearMap.opNorm_le_bound restriction (by norm_num) ?_
  intro f
  simpa only [one_mul] using restriction_norm_le f

theorem restriction_zeroExtension (f : H) : restriction (zeroExtension f) = f := by
  exact Lp.ext ((restriction_ae (zeroExtension f)).trans (zeroExtension_ae_halfLine f))

theorem restriction_comp_zeroExtension :
    restriction.comp zeroExtension.toContinuousLinearMap = ContinuousLinearMap.id ℂ H := by
  apply ContinuousLinearMap.ext
  intro f
  exact restriction_zeroExtension f

end
end FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension


/-!
The duality between actual zero extension and restriction. This module does not
supply or assume any convolution adjoint formula.
-/

set_option autoImplicit false
namespace HalfLineDualityScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension
noncomputable section

theorem restricted_inner_integrable (f : FullH) (h : H) :
    Integrable (fun t : ℝ => inner ℂ (f t) (h t)) halfLineMeasure := by
  refine (L2.integrable_inner (𝕜 := ℂ) (restriction f) h).congr ?_
  filter_upwards [restriction_ae f] with t ht
  rw [ht]

theorem extended_inner_integrable (f : FullH) (h : H) :
    Integrable (fun t : ℝ => inner ℂ (f t) (zeroExtension h t)) volume :=
  L2.integrable_inner (𝕜 := ℂ) f (zeroExtension h)

theorem inner_restriction_zeroExtension (f : FullH) (h : H) :
    inner ℂ (restriction f) h = inner ℂ f (zeroExtension h) := by
  rw [L2.inner_def, L2.inner_def]
  calc
    _ = ∫ t : ℝ, inner ℂ (f t) (h t) ∂halfLineMeasure := by
      apply integral_congr_ae
      filter_upwards [restriction_ae f] with t ht
      rw [ht]
    _ = ∫ t : ℝ, (Ioi (0 : ℝ)).indicator (fun x => inner ℂ (f x) (h x)) t := by
      exact (integral_indicator measurableSet_Ioi).symm
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [zeroExtension_ae h] with t ht
      rw [ht]
      by_cases htpos : t ∈ Ioi (0 : ℝ)
      · simp only [indicator_of_mem htpos]
      · simp only [indicator_of_notMem htpos, inner_zero_right]

theorem zeroExtension_adjoint : zeroExtension.toContinuousLinearMap.adjoint = restriction := by
  symm
  exact (ContinuousLinearMap.eq_adjoint_iff restriction
    zeroExtension.toContinuousLinearMap).mpr inner_restriction_zeroExtension

theorem restriction_adjoint : restriction.adjoint = zeroExtension.toContinuousLinearMap := by
  rw [← zeroExtension_adjoint, ContinuousLinearMap.adjoint_adjoint]

end
end HalfLineDualityScratch
