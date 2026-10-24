# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt01.Variant373febc20f761fbbb3decf3b96700822206f407743e1054f1c35d42a4fadf391

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0cfec710f7dc53d86855e0ea23a13bd0b43af40` · SHA-256 `373febc20f761fbbb3decf3b96700822206f407743e1054f1c35d42a4fadf391`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualPhysicalPeriodicPrimitive

/-!
The genuine physical periodic Abel estimate uses the full positive-column
decay moment. Both finite endpoints are retained; no independent main sector
or signed period mean is replaced.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualFarPeriodicBudget
open MeasureTheory Set
open scoped Interval
noncomputable section

private theorem physical_decay_hasDerivAt {x : ℝ} (hx : 0 < x) :
    HasDerivAt (fun x : ℝ => (-2 / 3 : ℝ) * Real.exp (-3 * Real.log x / 2))
      (Real.exp (-5 * Real.log x / 2)) x := by
  have hd := ((((Real.hasDerivAt_log hx.ne').const_mul (-3)).div_const 2).exp).
    const_mul (-2 / 3 : ℝ)
  have he : Real.exp (-5 * Real.log x / 2) =
      Real.exp (-3 * Real.log x / 2) * x⁻¹ := by
    rw [← Real.exp_log hx, ← Real.exp_neg, ← Real.exp_add]
    congr 1
    ring
  rw [he]
  convert hd using 1 <;> try rfl
  ring

private theorem physical_decay_integral {l b : ℝ} (hl : 0 < l) (hlb : l ≤ b) :
    (∫ x in l..b, Real.exp (-5 * Real.log x / 2)) =
      (2 / 3 : ℝ) * (Real.exp (-3 * Real.log l / 2) -
        Real.exp (-3 * Real.log b / 2)) := by
  have hp (x : ℝ) (hx : x ∈ uIcc l b) : 0 < x := by
    rw [uIcc_of_le hlb] at hx
    exact hl.trans_le hx.1
  have hc : ContinuousOn (fun x : ℝ => Real.exp (-5 * Real.log x / 2)) (uIcc l b) :=
    (((Real.continuousOn_log.mono (fun x hx => (hp x hx).ne')).const_mul (-5)).
      div_const 2).exp
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x hx => physical_decay_hasDerivAt (hp x hx)) hc.intervalIntegrable
  rw [he]
  ring

private theorem physical_decay_integral_le {l b : ℝ} (hl : 0 < l) (hlb : l ≤ b) :
    (∫ x in l..b, Real.exp (-5 * Real.log x / 2)) ≤
      (2 / 3 : ℝ) * Real.exp (-3 * Real.log l / 2) := by
  rw [physical_decay_integral hl hlb]
  nlinarith [Real.exp_pos (-3 * Real.log b / 2)]

end
end FormalResearch.RiemannHypothesis.SourceActualFarPeriodicBudget
```
