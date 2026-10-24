# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt03.Variantcbf186d33e8c6c7f9c83694205cd5b59f266a72495cb6ec1405e3bb513ad982a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94ae0c2a41acd402737170296240746635a487ff` · SHA-256 `cbf186d33e8c6c7f9c83694205cd5b59f266a72495cb6ec1405e3bb513ad982a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualLogCellMoment
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Analysis.Calculus.SmoothSeries

/-! Genuine parameter differentiation of the actual zeta integral-series.
Research direction grwtsk contributors; focused scratch proof OpenAI Codex. -/
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
