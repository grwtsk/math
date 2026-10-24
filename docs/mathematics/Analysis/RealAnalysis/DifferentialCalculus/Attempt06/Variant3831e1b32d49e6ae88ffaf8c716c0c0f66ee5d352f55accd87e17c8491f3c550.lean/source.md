# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt06.Variant3831e1b32d49e6ae88ffaf8c716c0c0f66ee5d352f55accd87e17c8491f3c550

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a9e84fa1acbcece9352cf741ff74412100b4d48` · SHA-256 `df286795eafda26d9ece01889a4d5c658c6e6549b34289e7d230cca9587a67dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CellKernel.Variant94031374158ec20aa6fc546c2a338fc47c9a60f8d33c823c8065d130229165cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94031374158ec20aa6fc546c2a338fc47c9a60f8d33c823c8065d130229165cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.CellKernel.Variant94031374158ec20aa6fc546c2a338fc47c9a60f8d33c823c8065d130229165cc","mathematical_subject":"Analysis.Calculus","original_sha256":"94031374158ec20aa6fc546c2a338fc47c9a60f8d33c823c8065d130229165cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass21/stieltjes_derivative/attempt06.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualLogCellMoment
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Analysis.Calculus.SmoothSeries

/-! Genuine parameter differentiation of the actual zeta integral-series.
Research direction grwtsk contributors; focused scratch proof OpenAI Codex. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CellKernel.Variant94031374158ec20aa6fc546c2a338fc47c9a60f8d33c823c8065d130229165cc

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualStieltjesParameter
open MeasureTheory Set Filter Topology
open ContinuousResearch.ActualLogCellMoment

def cellKernel (n : ℕ) (s x : ℝ) : ℝ := (x-n)/x^(s+1)
def cellDerivative (n : ℕ) (s x : ℝ) : ℝ := -((x-n)*Real.log x/x^(s+1))
def derivativeMajorant (n : ℕ) : ℝ := Real.log (n+1)/(n:ℝ)^((3:ℝ)/2)

theorem cellKernel_integrable {n : ℕ} (hn : 0 < n) (s : ℝ) :
    IntegrableOn (cellKernel n s) (Ioc (n:ℝ) (n+1)) := by
  have hc : ContinuousOn (cellKernel n s) (Icc (n:ℝ) (n+1)) := by
    apply continuousOn_of_forall_continuousAt
    intro x hx
    have hp : 0 < x := (show (0:ℝ)<n by exact_mod_cast hn).trans_le hx.1
    exact (continuousAt_id.sub_const (n:ℝ)).div
      (continuousAt_id.rpow_const (Or.inl hp.ne')) (Real.rpow_pos_of_pos hp _).ne'
  exact hc.integrableOn_Icc.mono_set Ioc_subset_Icc_self

theorem cellDerivative_integrable {n : ℕ} (hn : 0 < n) (s : ℝ) :
    IntegrableOn (cellDerivative n s) (Ioc (n:ℝ) (n+1)) := by
  have hc : ContinuousOn (cellDerivative n s) (Icc (n:ℝ) (n+1)) := by
    apply continuousOn_of_forall_continuousAt
    intro x hx
    have hp : 0 < x := (show (0:ℝ)<n by exact_mod_cast hn).trans_le hx.1
    exact (((continuousAt_id.sub_const (n:ℝ)).mul
      (Real.continuousAt_log hp.ne')).div
      (continuousAt_id.rpow_const (Or.inl hp.ne')) (Real.rpow_pos_of_pos hp _).ne').neg
  exact hc.integrableOn_Icc.mono_set Ioc_subset_Icc_self

theorem cellKernel_hasDerivAt (n : ℕ) (s : ℝ) {x : ℝ} (hx : 0 < x) :
    HasDerivAt (fun u : ℝ => cellKernel n u x) (cellDerivative n s x) s := by
  have h := ((((hasDerivAt_id s).add_const 1).mul_const (Real.log x)).exp).inv
    (Real.exp_pos ((s+1)*Real.log x)).ne'
  have hm := h.const_mul (x-n)
  have he : (fun u : ℝ => cellKernel n u x) =
      (fun u : ℝ => (x-n)*(Real.exp ((u+1)*Real.log x))⁻¹) := by
    funext u
    simp only [cellKernel,Real.rpow_def_of_pos hx,div_eq_mul_inv,mul_comm]
  rw [he]
  apply hm.congr_deriv
  simp only [cellDerivative,Real.rpow_def_of_pos hx,id_eq,one_mul]
  rw [mul_comm (Real.log x) (s+1)]
  field_simp [(Real.exp_pos ((s+1)*Real.log x)).ne']

theorem cellDerivative_bound {n : ℕ} (hn : 0 < n) {s x : ℝ} (hs : (1:ℝ)/2 < s)
    (hx : x ∈ Ioc (n:ℝ) (n+1)) : |cellDerivative n s x| ≤ derivativeMajorant n := by
  have hn1 : (1:ℝ) ≤ n := by exact_mod_cast (show 1≤n by omega)
  have hp : 0 < x := (show (0:ℝ)<n by exact_mod_cast hn).trans hx.1
  have hl0 : 0 ≤ Real.log x := Real.log_nonneg (hn1.trans hx.1.le)
  have hn0 : 0 < (n:ℝ) := by exact_mod_cast hn
  have hlog : Real.log x ≤ Real.log (n+1:ℝ) := Real.log_le_log hp hx.2
  have hden : (n:ℝ)^((3:ℝ)/2) ≤ x^(s+1) := by
    calc
      _ ≤ (n:ℝ)^(s+1) := Real.rpow_le_rpow_of_exponent_le hn1 (by linarith)
      _ ≤ _ := Real.rpow_le_rpow hn0.le hx.1.le (by linarith)
  have hxsub : 0 ≤ x-n := sub_nonneg.mpr hx.1.le
  have hxone : x-n ≤ 1 := by linarith [hx.2]
  unfold cellDerivative derivativeMajorant
  rw [abs_neg,abs_of_nonneg (by positivity)]
  apply (div_le_div_of_nonneg_left (by positivity : 0≤(x-n)*Real.log x)
    (Real.rpow_pos_of_pos hn0 _) hden).trans
  apply div_le_div_of_nonneg_right _ (Real.rpow_pos_of_pos hn0 _).le
  exact (mul_le_of_le_one_left hl0 hxone).trans hlog

theorem term_hasDerivAt {n : ℕ} (hn : 0 < n) {s : ℝ} (hs : (1:ℝ)/2 < s) :
    HasDerivAt (ZetaAsymptotics.term n)
      (∫ x : ℝ in (n:ℝ)..(n+1), cellDerivative n s x) s := by
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (μ:=volume.restrict (Ioc (n:ℝ) (n+1)))
    (F:=fun u x : ℝ => cellKernel n u x) (F':=fun u x : ℝ => cellDerivative n u x)
    (bound:=fun _ : ℝ => derivativeMajorant n)
    (Ioi_mem_nhds hs)
    (Eventually.of_forall (fun u => (cellKernel_integrable hn u).aestronglyMeasurable))
    (cellKernel_integrable hn s)
    (cellDerivative_integrable hn s).aestronglyMeasurable
    (by
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
      intro u hu
      simpa only [Real.norm_eq_abs] using cellDerivative_bound hn hu hx)
    (integrableOn_const (C:=derivativeMajorant n) (by simp))
    (by
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
      intro u _
      exact cellKernel_hasDerivAt n u ((show (0:ℝ)<n by exact_mod_cast hn).trans hx.1))
  convert! h.2 using 1
  · funext u
    exact intervalIntegral.integral_of_le (by linarith : (n:ℝ) ≤ n+1)
  · exact intervalIntegral.integral_of_le (by linarith : (n:ℝ) ≤ n+1)

theorem term_hasDerivAt_one {n : ℕ} (hn : 0 < n) :
    HasDerivAt (ZetaAsymptotics.term n) (-logCell n) 1 := by
  convert! term_hasDerivAt hn (by norm_num : (1:ℝ)/2 < 1) using 1
  simp only [cellDerivative,one_add_one_eq_two,←Nat.cast_two (R:=ℝ),Real.rpow_natCast,
    intervalIntegral.integral_neg,logCell]

theorem derivativeMajorant_nonneg (n : ℕ) : 0 ≤ derivativeMajorant n := by
  unfold derivativeMajorant
  have hl : 0 ≤ Real.log (n+1:ℝ) := Real.log_nonneg (by exact_mod_cast (show 1≤n+1 by omega))
  positivity

theorem derivativeMajorant_le_pSeries {n : ℕ} (hn : 0 < n) :
    derivativeMajorant n ≤ 5/(n:ℝ)^((5:ℝ)/4) := by
  have hn0 : 0 < (n:ℝ) := by exact_mod_cast hn
  have hn1 : (1:ℝ) ≤ n := by exact_mod_cast (show 1≤n by omega)
  have hlog := Real.log_natCast_le_rpow_div n (by norm_num : (0:ℝ)<1/4)
  have hq : 1 ≤ (n:ℝ)^((1:ℝ)/4) := Real.one_le_rpow hn1 (by norm_num)
  have hl2 : Real.log (2:ℝ) ≤ 1 := by
    simpa using Real.log_le_sub_one_of_pos (by norm_num : (0:ℝ)<2)
  have hl : Real.log (n+1:ℝ) ≤ 5*(n:ℝ)^((1:ℝ)/4) := by
    have hc : Real.log (n+1:ℝ) ≤ Real.log (2*(n:ℝ)) :=
      Real.log_le_log (by positivity) (by linarith)
    rw [Real.log_mul (by norm_num) hn0.ne'] at hc
    norm_num at hlog
    nlinarith
  unfold derivativeMajorant
  calc
    _ ≤ (5*(n:ℝ)^((1:ℝ)/4))/(n:ℝ)^((3:ℝ)/2) :=
      div_le_div_of_nonneg_right hl (Real.rpow_pos_of_pos hn0 _).le
    _ = 5/(n:ℝ)^((5:ℝ)/4) := by
      rw [show (3:ℝ)/2=1/4+5/4 by norm_num,Real.rpow_add hn0]
      field_simp [(Real.rpow_pos_of_pos hn0 ((1:ℝ)/4)).ne']

theorem derivativeMajorant_summable : Summable (fun n : ℕ => derivativeMajorant (n+1)) := by
  have hp : Summable (fun n : ℕ => 1/(n:ℝ)^((5:ℝ)/4)) :=
    summable_one_div_nat_rpow.mpr (by norm_num)
  have hs : Summable (fun n : ℕ => 5/(n:ℝ)^((5:ℝ)/4)) := by
    simpa only [mul_one_div] using hp.mul_left 5
  exact Summable.of_nonneg_of_le (fun n => derivativeMajorant_nonneg (n+1))
    (fun n => derivativeMajorant_le_pSeries (by omega)) ((summable_nat_add_iff 1).mpr hs)

def termDerivValue (n : ℕ) (s : ℝ) : ℝ :=
  ∫ x : ℝ in (n:ℝ)..(n+1), cellDerivative n s x

theorem termDerivValue_bound {n : ℕ} (hn : 0 < n) {s : ℝ} (hs : (1:ℝ)/2 < s) :
    ‖termDerivValue n s‖ ≤ derivativeMajorant n := by
  have h := intervalIntegral.norm_integral_le_of_norm_le_const
    (f:=cellDerivative n s) (a:=(n:ℝ)) (b:=n+1) (C:=derivativeMajorant n) (by
      intro x hx
      rw [uIoc_of_le (by linarith : (n:ℝ) ≤ n+1)] at hx
      simpa only [Real.norm_eq_abs] using cellDerivative_bound hn hs hx)
  simpa only [termDerivValue,add_sub_cancel_left,abs_one,mul_one] using h

theorem termDerivValue_one (n : ℕ) : termDerivValue n 1 = -logCell n := by
  simp only [termDerivValue,cellDerivative,one_add_one_eq_two,←Nat.cast_two (R:=ℝ),
    Real.rpow_natCast,intervalIntegral.integral_neg,logCell]

theorem termTSum_hasDerivAt {s : ℝ} (hs : (1:ℝ)/2 < s) :
    HasDerivAt ZetaAsymptotics.termTSum (∑' n : ℕ, termDerivValue (n+1) s) s := by
  exact hasDerivAt_tsum_of_isPreconnected derivativeMajorant_summable
    isOpen_Ioi isPreconnected_Ioi
    (fun n y hy => term_hasDerivAt (by omega) hy)
    (fun n y hy => termDerivValue_bound (by omega) hy)
    (by norm_num : (1:ℝ)∈Ioi ((1:ℝ)/2)) ZetaAsymptotics.term_tsum_one.summable hs

theorem termTSum_hasDerivAt_one :
    HasDerivAt ZetaAsymptotics.termTSum
      (Real.eulerMascheroniConstant+
        ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant-1) 1 := by
  have h := termTSum_hasDerivAt (by norm_num : (1:ℝ)/2 < 1)
  simp_rw [termDerivValue_one] at h
  rw [tsum_neg,logCell_tsum] at h
  convert! h using 1
  ring

end ContinuousResearch.ActualStieltjesParameter
```
