# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt03.Varianta56c080322727f6eaada7fce73b0b33b05d1107ebfc6127f0a9aa5a68ea82708

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0988537b924f948a9d22ca8b1e1426e8a14ce1b` · SHA-256 `3470847d8cde6df87a86dd4b62f5850ed30a83ce23362f095f5781814bec15fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CellKernel.Varianta5c30aa93c424cca8109d913342333b12e99a95ba406e2aa8577fe3fb4a7f4b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5c30aa93c424cca8109d913342333b12e99a95ba406e2aa8577fe3fb4a7f4b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.CellKernel.Varianta5c30aa93c424cca8109d913342333b12e99a95ba406e2aa8577fe3fb4a7f4b5","mathematical_subject":"Analysis.Calculus","original_sha256":"a5c30aa93c424cca8109d913342333b12e99a95ba406e2aa8577fe3fb4a7f4b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass21/stieltjes_derivative/attempt03.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualLogCellMoment
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Analysis.Calculus.SmoothSeries

/-! Genuine parameter differentiation of the actual zeta integral-series.
Research direction grwtsk contributors; focused scratch proof OpenAI Codex. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CellKernel.Varianta5c30aa93c424cca8109d913342333b12e99a95ba406e2aa8577fe3fb4a7f4b5

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

end ContinuousResearch.ActualStieltjesParameter
```
