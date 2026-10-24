# Complete source: GRWTSK.Topology.GeneralTopology.Attempt05.Variant6a78326e2b27c6411f4c39e0c2f4b6fa555323f275e6ed10ab5fa6a9ed3e5c3d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2676d775de445cb98d0135ebc8c8cbba12cbf73` · SHA-256 `2293a99946d2ae5a60aa9cd6e85953911eb3974f79abe10d79693f3b744184b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.P.Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.P.Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d","mathematical_subject":"Topology.GeneralTopology","original_sha256":"cb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass8/real_mode/attempt05.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.Laplace.Expansion
import Mathlib.Analysis.SpecialFunctions.Exp


namespace GRWTSK.Topology.GeneralTopology.P.Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d

set_option autoImplicit false
namespace ContinuousResearch.ActualRealMode
open Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroSideTargets
open FormalResearch.RiemannHypothesis.Laplace.Algebra
open FormalResearch.RiemannHypothesis.Laplace.Expansion
noncomputable section

def p (x : ℝ) : ℝ := x^4-10*x^3+45*x^2-105*x+105

def normalizedSquare (A z : ℝ) : ℝ :=
  ((bilateralTransform A (z : ℂ) / (Real.sqrt (sourceNormalization A) : ℂ))^2).re

theorem p_coe (x : ℝ) : transformPolynomial (x : ℂ) = (p x : ℂ) := by
  simp [p,transformPolynomial]

theorem actual_scaled_square_real (A : ℝ) (hA : 0 < A) (z : ℝ) (hz : z ≠ 0) :
  A^17 * sourceNormalization A * normalizedSquare A z =
    (384^2 * (z^2-1/4)^2/z^18) *
      (Real.exp (A*z)*p (A*z)-Real.exp (-(A*z))*p (-(A*z)))^2 := by
  have hZ : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  have hs : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 := by
    exact_mod_cast (Real.sqrt_pos.mpr hZ).ne'
  have hsq : (Real.sqrt (sourceNormalization A) : ℂ)^2 = (sourceNormalization A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hZ.le
  have he := actual_scaled_square A hA (z : ℂ) (by exact_mod_cast hz)
  have hc : ((A^17 * sourceNormalization A : ℝ) : ℂ) *
      (bilateralTransform A (z : ℂ) / (Real.sqrt (sourceNormalization A) : ℂ))^2 =
      ((384^2*(z^2-1/4)^2/z^18) *
        (Real.exp (A*z)*p (A*z)-Real.exp (-(A*z))*p (-(A*z)))^2 : ℝ) := by
    calc
      _ = (A : ℂ)^17 * bilateralTransform A (z : ℂ)^2 := by
        push_cast; rw [div_pow,hsq]; field_simp [show (sourceNormalization A : ℂ) ≠ 0 by exact_mod_cast hZ.ne']
      _ = _ := he
      _ = _ := by
        unfold modeCoefficient
        rw [← Complex.ofReal_mul,← Complex.ofReal_neg,← Complex.ofReal_exp,
          ← Complex.ofReal_exp,p_coe,p_coe]
        push_cast; rfl
  have hr := congrArg Complex.re hc
  simpa only [normalizedSquare, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero] using hr

theorem p_ratio (A z : ℝ) (hA : A ≠ 0) :
    p (A*z)/A^4 = z^4-10*z^3/A+45*z^2/A^2-105*z/A^3+105/A^4 := by
  unfold p; field_simp

theorem p_ratio_tendsto (z : ℝ) :
    Tendsto (fun A : ℝ => p (A*z)/A^4) atTop (𝓝 (z^4)) := by
  have h1 : Tendsto (fun A : ℝ => 1/A) atTop (𝓝 0) := by
    simpa only [one_div] using (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0))
  have h2 := h1.pow 2
  have h3 := h1.pow 3
  have h4 := h1.pow 4
  have hc : Tendsto (fun _ : ℝ => z^4) atTop (𝓝 (z^4)) := tendsto_const_nhds
  have ht := (((hc.sub (h1.const_mul (10*z^3))).add
    (h2.const_mul (45*z^2))).sub (h3.const_mul (105*z))).add (h4.const_mul 105)
  have he : (fun A : ℝ => p (A*z)/A^4) =ᶠ[atTop]
    (fun A : ℝ => z^4-(10*z^3)*(1/A)+(45*z^2)*(1/A)^2-(105*z)*(1/A)^3+105*(1/A)^4) := by
    filter_upwards [eventually_gt_atTop (0 : ℝ)] with A hA
    rw [p_ratio A z hA.ne']; field_simp; ring
  apply Tendsto.congr' he.symm
  simpa using ht

theorem normalization_tendsto : Tendsto sourceNormalization atTop (𝓝 (4096/109395 : ℝ)) := by
  have h1 : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0) := tendsto_inv_atTop_zero
  have hc : Tendsto (fun _ : ℝ => (4096/109395 : ℝ)) atTop (𝓝 (4096/109395 : ℝ)) := tendsto_const_nhds
  have h := (hc.add ((h1.pow 2).const_mul (65536/45045 : ℝ))).add
    ((h1.pow 4).const_mul (196608/5005 : ℝ))
  convert h using 1
  · ext A; unfold sourceNormalization; simp only [inv_pow]; ring
  · norm_num

theorem exp_scaled_neg_tendsto (z : ℝ) (hz : 0 < z) :
    Tendsto (fun A : ℝ => Real.exp (-2*A*z)) atTop (𝓝 0) := by
  have h := Real.tendsto_exp_neg_atTop_nhds_zero.comp (tendsto_id.const_mul_atTop (show 0 < 2*z by positivity))
  convert h using 1; ext A; simp only [Function.comp_apply, id_eq]; congr 1; ring

theorem exp_square_rescale (x u v : ℝ) :
    Real.exp (-2*x)*(Real.exp x*u-Real.exp (-x)*v)^2 =
      (u-Real.exp (-2*x)*v)^2 := by
  have he : Real.exp (-2*x) = Real.exp (-x)^2 := by
    rw [sq,← Real.exp_add]; congr 1; ring
  have hp : Real.exp (-x)*Real.exp x=1 := by rw [← Real.exp_add,neg_add_cancel,Real.exp_zero]
  rw [he,← mul_pow, mul_sub, ← mul_assoc, hp,one_mul]
  congr 2; ring

theorem scaled_square_exact (A : ℝ) (hA : 0 < A) (z : ℝ) (hz : z ≠ 0) :
    A^9*Real.exp (-2*A*z)*normalizedSquare A z =
      (384^2*(z^2-1/4)^2/z^18) *
        (p (A*z)/A^4-Real.exp (-2*A*z)*p (-(A*z))/A^4)^2/sourceNormalization A := by
  have hZ : sourceNormalization A ≠ 0 := by unfold sourceNormalization; positivity
  have ha := hA.ne'
  have hs := actual_scaled_square_real A hA z hz
  have he := exp_square_rescale (A*z) (p (A*z)) (p (-(A*z)))
  have he' : Real.exp (-2*A*z)*(Real.exp (A*z)*p (A*z)-Real.exp (-(A*z))*p (-(A*z)))^2 =
    (p (A*z)-Real.exp (-2*A*z)*p (-(A*z)))^2 := by convert he using 1 <;> congr 1 <;> ring
  have hs' : A^17*sourceNormalization A*Real.exp (-2*A*z)*normalizedSquare A z =
      (384^2*(z^2-1/4)^2/z^18)*(p (A*z)-Real.exp (-2*A*z)*p (-(A*z)))^2 := by
    calc
      _ = Real.exp (-2*A*z)*(A^17*sourceNormalization A*normalizedSquare A z) := by ring
      _ = _ := by rw [hs]; rw [mul_left_comm,← mul_assoc,he']
  rw [← sub_div,div_pow]
  apply (eq_div_iff hZ).mpr
  apply (eq_div_iff (pow_ne_zero 8 ha)).mpr
  convert hs' using 1 <;> ring

theorem scaled_square_tendsto (z : ℝ) (hz : 0 < z) :
    Tendsto (fun A : ℝ => A^9*Real.exp (-2*A*z)*normalizedSquare A z) atTop
      (𝓝 (384^2*(z^2-1/4)^2/((4096/109395 : ℝ)*z^10))) := by
  have hp := p_ratio_tendsto z
  have hn := p_ratio_tendsto (-z)
  have he := exp_scaled_neg_tendsto z hz
  have ht := ((hp.sub (he.mul hn)).pow 2).const_mul (384^2*(z^2-1/4)^2/z^18)
  have hd := ht.div normalization_tendsto (by norm_num : (4096/109395 : ℝ) ≠ 0)
  have heq : (fun A : ℝ => A^9*Real.exp (-2*A*z)*normalizedSquare A z) =ᶠ[atTop]
    (fun A : ℝ => (384^2*(z^2-1/4)^2/z^18) *
      (p (A*z)/A^4-Real.exp (-2*A*z)*(p (A*(-z))/A^4))^2/sourceNormalization A) := by
    filter_upwards [eventually_gt_atTop (0 : ℝ)] with A hA
    rw [scaled_square_exact A hA z hz.ne']; congr 2; congr 1 <;> ring
  apply Tendsto.congr' heq.symm
  have hv : (384^2*(z^2-1/4)^2/z^18)*(z^4-0*(-z)^4)^2/(4096/109395 : ℝ) =
      384^2*(z^2-1/4)^2/((4096/109395 : ℝ)*z^10) := by
    norm_num; field_simp [hz.ne']; ring
  rw [← hv]
  exact hd

theorem quarter_scaled_limit :
    Tendsto (fun A : ℝ => A^9*Real.exp (-A/2)*normalizedSquare A (1/4)) atTop
      (𝓝 (145178542080 : ℝ)) := by
  have h := scaled_square_tendsto (1/4) (by norm_num)
  norm_num at h
  convert h using 1
  ext A; congr 2; ring

#check actual_scaled_square_real
#print axioms actual_scaled_square_real
#check p_ratio_tendsto
#print axioms p_ratio_tendsto
#check normalization_tendsto
#print axioms normalization_tendsto
#check exp_scaled_neg_tendsto
#print axioms exp_scaled_neg_tendsto
#check scaled_square_exact
#print axioms scaled_square_exact
#check scaled_square_tendsto
#print axioms scaled_square_tendsto
#check quarter_scaled_limit
#print axioms quarter_scaled_limit
end
end ContinuousResearch.ActualRealMode
```
