# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualXiPntAtOne.Variantd35369807142d7457464ca10a4d5098c3cf5e711e8a7f3f68018cfe796538d1f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1afeb79f7cff3d2a06b4194580c13694568ec50` · SHA-256 `d35369807142d7457464ca10a4d5098c3cf5e711e8a7f3f68018cfe796538d1f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualPsiPntTimeDecay

/-!
Actual prime-source PNT supplies genuine inverse-square Xi integrability at
Mellin parameter one. The prescribed gamma shift and closed prime powers
are retained. No critical half-plane continuation or signed upper witness
is inferred from this integrability prerequisite.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualXiPntAtOne
open MeasureTheory Set Filter
open scoped Interval Topology
open SourceActualPsiPntTimeDecay RH16ActualPsiNegativeBlock
noncomputable section

/-- Literal actual shifted-psi inverse-square density in logarithmic coordinates. -/
def actualXiInverseSquareTimeDensity (t : ℝ) : ℝ :=
  shiftedActualChebyshev (Real.exp t) * Real.exp (-t)

/-- The entire prescribed gamma shift remains after the actual relative psi error. -/
theorem actualXiInverseSquareTimeDensity_eq_relative (t : ℝ) :
    actualXiInverseSquareTimeDensity t = actualRelativePsiTimeError t +
      2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) * Real.exp (-t) := by
  unfold actualXiInverseSquareTimeDensity actualRelativePsiTimeError shiftedActualChebyshev
  ring

/-- Actual PNT gives genuine full logarithmic L1 beyond the closed-seven anchor. -/
theorem actualXiInverseSquareTimeDensity_integrableOn :
    IntegrableOn actualXiInverseSquareTimeDensity (Ioi (Real.log 7)) := by
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have hd : IntegrableOn actualRelativePsiTimeError (Ioi (Real.log 7)) :=
    actualRelativePsiTimeError_integrableOn.mono_set (by
      intro t ht
      exact ha.trans (le_of_lt ht))
  have he := (integrableOn_exp_neg_Ioi (Real.log (7 : ℝ))).const_mul
    (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2))
  exact (hd.add he).congr_fun (fun t _ =>
    (actualXiInverseSquareTimeDensity_eq_relative t).symm) measurableSet_Ioi

/-- The actual shifted relative error tends to zero, without a critical exponential rate. -/
theorem actualXiInverseSquareTimeDensity_tendsto_zero :
    Tendsto actualXiInverseSquareTimeDensity atTop (𝓝 0) := by
  have he : Tendsto (fun t : ℝ => Real.exp (-t)) atTop (𝓝 0) :=
    Real.tendsto_exp_atBot.comp tendsto_neg_atTop_atBot
  have hh := actualRelativePsiTimeError_tendsto_zero.add
    (he.const_mul (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)))
  simpa only [mul_zero, add_zero, ← actualXiInverseSquareTimeDensity_eq_relative] using hh

private theorem inverse_square_exp (t : ℝ) :
    Real.exp t * (shiftedActualChebyshev (Real.exp t) / (Real.exp t) ^ 2) =
      actualXiInverseSquareTimeDensity t := by
  unfold actualXiInverseSquareTimeDensity
  rw [Real.exp_neg]
  field_simp

/-- The genuine actual physical inverse-square Xi integral converges at parameter one. -/
theorem actualXiInverseSquarePhysical_integrableOn :
    IntegrableOn (fun y : ℝ => shiftedActualChebyshev y / y ^ 2) (Ioi 7) := by
  have ht : IntegrableOn
      (fun t : ℝ => Real.exp t *
        (shiftedActualChebyshev (Real.exp t) / (Real.exp t) ^ 2))
          (Ioi (Real.log 7)) :=
    actualXiInverseSquareTimeDensity_integrableOn.congr_fun
      (fun t _ => (inverse_square_exp t).symm) measurableSet_Ioi
  have hc := (integrableOn_comp_exp_Ioi
    (fun y : ℝ => shiftedActualChebyshev y / y ^ 2) (Real.log 7)).mp ht
  simpa only [smul_eq_mul, Real.exp_log (by norm_num : (0 : ℝ) < 7)] using hc

/-- Genuine exponential substitution identifies the whole signed convergent integral. -/
theorem actualXiInverseSquarePhysical_integral_eq_time :
    (∫ y in Ioi (7 : ℝ), shiftedActualChebyshev y / y ^ 2) =
      ∫ t in Ioi (Real.log 7), actualXiInverseSquareTimeDensity t := by
  have h := integral_comp_exp_Ioi
    (fun y : ℝ => shiftedActualChebyshev y / y ^ 2) (Real.log 7)
  simp only [smul_eq_mul, Real.exp_log (by norm_num : (0 : ℝ) < 7)] at h
  rw [setIntegral_congr_fun measurableSet_Ioi (fun t _ => inverse_square_exp t)] at h
  exact h.symm

end
end FormalResearch.RiemannHypothesis.SourceActualXiPntAtOne
```
