# Complete source: GRWTSK.Analysis.MeasureTheory.MangoldtLaplaceIntegrabilityAttempt02.Variant54621fdaa1425050ee712e8f6b75427d1cf85466f03eeb2e7d0a9827004150cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5174f662f8bdcdd806151d0935e3785dcc29e888` · SHA-256 `54621fdaa1425050ee712e8f6b75427d1cf85466f03eeb2e7d0a9827004150cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import Mathlib.MeasureTheory.Function.Floor
import Mathlib.MeasureTheory.Integral.ExpDecay
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-! Genuine Laplace integrability of the actual closed Mangoldt discrepancy.
The actual source is closed-floor weightedMangoldt minus t, plus Euler gamma.
Research direction grwtsk contributors; focused scratch construction OpenAI Codex.
No Ramaré/PNT, unweighted L1, intercept identity or signed source witness. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.MangoldtLaplaceIntegrability
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceMangoldtAbel

/-- Actual closed-floor prefix is measurable, including every touching atom. -/
theorem mangoldtLogPrefix_measurable : Measurable mangoldtLogPrefix := by
  exact measurable_from_nat.comp (Real.measurable_exp.nat_floor)

/-- Actual error E_Lambda=A_Lambda-t is measurable on the whole real line. -/
theorem mangoldtLogError_measurable : Measurable mangoldtLogError :=
  mangoldtLogPrefix_measurable.sub measurable_id

/-- The centered actual Mertens error keeps the independent Euler constant. -/
theorem centeredMangoldtError_measurable :
    Measurable (fun t : ℝ => mangoldtLogError t+Real.eulerMascheroniConstant) :=
  mangoldtLogError_measurable.add_const _

/-- This is the actual elementary prefix bound; no decay premise is supplied. -/
theorem centeredMangoldtError_bound {t : ℝ} (ht : 0 ≤ t) :
    |mangoldtLogError t+Real.eulerMascheroniConstant| ≤
      Real.log 4+4+Real.log 2+|Real.eulerMascheroniConstant| := by
  exact (abs_add_le _ _).trans (add_le_add (mangoldtLogError_abs_le t ht) le_rfl)

/-- Genuine complex Laplace integrability for every fixed parameter in Re z>0. -/
theorem centeredMangoldtError_laplace_integrable {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun t : ℝ => Complex.exp (-z*(t:ℂ))*
      ((mangoldtLogError t+Real.eulerMascheroniConstant : ℝ):ℂ)) (Ioi 0) := by
  let B : ℝ := Real.log 4+4+Real.log 2+|Real.eulerMascheroniConstant|
  have hB : 0 ≤ B := by
    dsimp [B]
    have h4 := Real.log_nonneg (by norm_num : (1:ℝ)≤4)
    have h2 := Real.log_nonneg (by norm_num : (1:ℝ)≤2)
    positivity
  have hex : Measurable (fun t : ℝ => Complex.exp (-z*(t:ℂ))) := by fun_prop
  have hr : Measurable (fun t : ℝ =>
      ((mangoldtLogError t+Real.eulerMascheroniConstant : ℝ):ℂ)) :=
    Complex.continuous_ofReal.measurable.comp centeredMangoldtError_measurable
  refine ((exp_neg_integrableOn_Ioi 0 hz).mul_const B).mono'
    (hex.mul hr).aestronglyMeasurable ?_
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  rw [norm_mul,Complex.norm_exp]
  simp only [Complex.mul_re,Complex.neg_re,Complex.ofReal_re,Complex.ofReal_im,
    mul_zero,sub_zero,Complex.norm_real,Real.norm_eq_abs]
  exact mul_le_mul_of_nonneg_left (centeredMangoldtError_bound ht.le) (Real.exp_pos _).le

/-- Uncentered actual error is also integrable against the same genuine weight. -/
theorem mangoldtLogError_laplace_integrable {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun t : ℝ => Complex.exp (-z*(t:ℂ))*(mangoldtLogError t:ℂ))
      (Ioi 0) := by
  have h := (centeredMangoldtError_laplace_integrable hz).sub
    ((integrableOn_exp_mul_complex_Ioi (a:=-z) (by simpa using hz) 0).mul_const
      (Real.eulerMascheroniConstant:ℂ))
  convert! h using 1
  funext t
  simp only [Pi.sub_apply,Complex.ofReal_add,mul_add,add_sub_cancel_right]

/-- Below the first atom, including every negative t, the correction is gamma-t. -/
theorem centeredMangoldtError_below_first_atom {t : ℝ} (ht : t < Real.log 2) :
    mangoldtLogError t+Real.eulerMascheroniConstant = Real.eulerMascheroniConstant-t := by
  rw [mangoldtLogError_below_first_atom ht]
  ring

end ContinuousResearch.MangoldtLaplaceIntegrability
```
