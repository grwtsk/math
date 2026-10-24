# Complete source: GRWTSK.Topology.GeneralTopology.FixedLaplaceBoundaryFragment.Variant0e480b036baa46c619b5926d3a87efd393a523f9c2acdd457d30f51253f223ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7bfa1f5266f85b1316578ed3eb1a176b76c7684` · SHA-256 `781daa1bef32746b121a52c4b7e8038a3fdce2ec68cf6a4c1bf8903f1983c172`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.VContinuous.Variantfd700af4a70468c35c4e2e8aade21689f2dbe541f018e30b80e6a76eb1d59c8a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd700af4a70468c35c4e2e8aade21689f2dbe541f018e30b80e6a76eb1d59c8a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.VContinuous.Variantfd700af4a70468c35c4e2e8aade21689f2dbe541f018e30b80e6a76eb1d59c8a","mathematical_subject":"Topology.GeneralTopology","original_sha256":"fd700af4a70468c35c4e2e8aade21689f2dbe541f018e30b80e6a76eb1d59c8a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/FixedLaplaceBoundaryFragment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-! Genuine boundary values of the actual source Laplace transform. -/

namespace GRWTSK.Topology.GeneralTopology.VContinuous.Variantfd700af4a70468c35c4e2e8aade21689f2dbe541f018e30b80e6a76eb1d59c8a

set_option autoImplicit false
namespace FixedLaplaceBoundaryScratch
open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedSourceFilter FixedSourceTransfer FixedKernelLaplace
open FixedLaplaceContinuation MobiusSourceFilterQuotient
open SourceBumpMomentsScratch SourceBumpAdapterScratch SourceBumpGlobalScratch
noncomputable section

/-- The original source transform is continuous at every complex parameter, including zero. -/
theorem V_continuous : Continuous V := by
  have h : V = fun z : ℂ => (z ^ 2 - 1 / 4) * bumpMoment 0 z /
      (Real.sqrt (45056 / 1105 : ℝ) : ℂ) := funext V_eq_bumpMoment
  rw [h]
  exact (((continuous_id.pow 2).sub continuous_const).mul
    (bumpMoment_continuous 0)).div_const _

/-- The actual closed-half-plane Laplace integral is continuous by its genuine L1 majorant. -/
theorem actualLaplace_continuousOn_closed :
    ContinuousOn actualLaplace {z : ℂ | 0 ≤ z.re} := by
  intro z _hz
  apply tendsto_integral_filter_of_dominated_convergence (fun t : ℝ => |fixedKernel t|)
  · exact Eventually.of_forall (fun w =>
      fixedKernel_measurable.complex_ofReal.aestronglyMeasurable.mul (by fun_prop))
  · filter_upwards [self_mem_nhdsWithin] with w hw
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    have he : ‖Complex.exp ((-w) * (t : ℂ))‖ ≤ 1 := by
      rw [Complex.norm_exp]
      apply Real.exp_le_one_iff.mpr
      simp only [Complex.mul_re, Complex.neg_re, Complex.ofReal_re,
        Complex.neg_im, Complex.ofReal_im, mul_zero, sub_zero]
      exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hw) ht.le
    calc
      ‖(fixedKernel t : ℂ) * Complex.exp ((-w) * (t : ℂ))‖ =
          |fixedKernel t| * ‖Complex.exp ((-w) * (t : ℂ))‖ := by
        rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
      _ ≤ |fixedKernel t| * 1 := mul_le_mul_of_nonneg_left he (abs_nonneg _)
      _ = _ := mul_one _
  · exact FixedKernelAdmission.fixedKernel_integrableOn_Ioi.abs
  · filter_upwards [] with t
    exact (show Continuous (fun w : ℂ =>
      (fixedKernel t : ℂ) * Complex.exp ((-w) * (t : ℂ))) by fun_prop).continuousWithinAt

/-- The unchanged arithmetic product is continuous away from its original zeta pole. -/
theorem sourceProduct_continuousAt (z : ℂ) (hz : z ≠ 1 / 2) :
    ContinuousAt (fun w : ℂ => W w * riemannZeta (1 / 2 + w)) z := by
  have hp : (1 / 2 : ℂ) + z ≠ 1 := by
    intro h
    apply hz
    linear_combination h
  have hW : Continuous W := by
    exact (Complex.continuous_exp.comp continuous_neg).mul V_continuous
  exact hW.continuousAt.mul
    ((differentiableAt_riemannZeta hp).continuousAt.comp
      (continuous_const.add continuous_id).continuousAt)

/-- DCT extends the actual open-half-plane identity to the closed half-plane away from the pole. -/
theorem actualLaplace_eq_product_closed (z : ℂ) (hz : 0 ≤ z.re) (hzp : z ≠ 1 / 2) :
    actualLaplace z = W z * riemannZeta (1 / 2 + z) := by
  let ε : ℕ → ℝ := fun n => 1 / ((n : ℝ) + 1)
  let a : ℕ → ℂ := fun n => z + (ε n : ℂ)
  have heps : Tendsto ε atTop (nhds 0) := tendsto_one_div_add_atTop_nhds_zero_nat
  have ha : Tendsto a atTop (nhds z) := by
    simpa [a] using tendsto_const_nhds.add
      (Complex.continuous_ofReal.tendsto 0 |>.comp heps)
  have hapos (n : ℕ) : 0 < (a n).re := by
    dsimp [a, ε]
    have hε : 0 < 1 / ((n : ℝ) + 1) := by positivity
    linarith
  have haw : Tendsto a atTop (nhdsWithin z {w : ℂ | 0 ≤ w.re}) :=
    tendsto_nhdsWithin_iff.mpr ⟨ha, Eventually.of_forall (fun n => (hapos n).le)⟩
  have hL := Filter.Tendsto.comp (actualLaplace_continuousOn_closed z hz) haw
  have hR := (sourceProduct_continuousAt z hzp).tendsto.comp ha
  have hneq : ∀ᶠ n : ℕ in atTop, a n ≠ 1 / 2 :=
    ha.eventually (isOpen_compl_singleton.mem_nhds hzp)
  have heq : (fun n => actualLaplace (a n)) =ᶠ[atTop]
      (fun n => W (a n) * riemannZeta (1 / 2 + a n)) := by
    filter_upwards [hneq] with n hn
    rw [actualLaplace_eq_repairedTransfer _ (hapos n), repairedTransfer_eq_product _ hn, W]
    ring
  exact tendsto_nhds_unique hL ((tendsto_congr' heq).mpr hR)

/-- Every imaginary-axis boundary value is the actual W times the unchanged zeta value. -/
theorem actualLaplace_boundary (t : ℝ) :
    actualLaplace ((t : ℂ) * Complex.I) =
      W ((t : ℂ) * Complex.I) * riemannZeta (1 / 2 + (t : ℂ) * Complex.I) := by
  apply actualLaplace_eq_product_closed
  · simp
  · intro h
    have hr := congrArg Complex.re h
    norm_num at hr

end
end FixedLaplaceBoundaryScratch
```
