# Complete source: GRWTSK.Analysis.MeasureTheory.SourceActualXiPrimitiveTransportAttempt02.Variantfc18d5371bfef8336b41d90ef50b9f7381c9f2b94f417bdeb53883b7c7d6813e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4692603930cdd10a126024686fd166a37d3fb974` · SHA-256 `fc18d5371bfef8336b41d90ef50b9f7381c9f2b94f417bdeb53883b7c7d6813e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualShiftedXiDerivativeAdapter
import SourceFullXiSignedPrimitiveCost
import Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts

/-!
Actual closed-Chebyshev logarithmic density and its anchored absolutely
continuous primitive. No derivative of psi at prime-power jumps and no uniform
arithmetic bound are assumed. Direction: grwtsk contributors.
Formal source transport: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualXiPrimitiveTransport
open MeasureTheory Set
open RH16ActualPsiNegativeBlock RH16ShiftedXiAdapter
open SourceFullXiCellBudgetObstruction SourceFullXiSignedPrimitiveCost
open SourcePositiveSampling SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

def actualXiLogDensity (t : ℝ) : ℝ :=
  Real.exp (-t / 2) * shiftedActualChebyshev (Real.exp t)

def actualXiLogPrimitive (u : ℝ) : ℝ :=
  ∫ t in Real.log 2..u, actualXiLogDensity t

theorem actualXiLogDensity_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable actualXiLogDensity volume a b := by
  have hpsi : IntervalIntegrable (fun t => Chebyshev.psi (Real.exp t)) volume a b :=
    (Chebyshev.psi_mono.comp Real.exp_monotone).intervalIntegrable
  have hxi := (hpsi.sub (Real.continuous_exp.intervalIntegrable a b)).add
    ((continuous_const : Continuous (fun _ : ℝ =>
      2 * (Real.eulerMascheroniConstant + 1 - Real.log 2))).intervalIntegrable a b)
  have he : Continuous (fun t : ℝ => Real.exp (-t / 2)) :=
    Real.continuous_exp.comp ((continuous_id : Continuous (fun t : ℝ => t)).neg.div_const 2)
  change IntervalIntegrable (fun t => Real.exp (-t / 2) *
    (Chebyshev.psi (Real.exp t) - Real.exp t +
      2 * (Real.eulerMascheroniConstant + 1 - Real.log 2))) volume a b
  exact hxi.continuousOn_mul he.continuousOn

theorem actualXiLogPrimitive_at_anchor : actualXiLogPrimitive (Real.log 2) = 0 := by
  simp [actualXiLogPrimitive]

theorem actualXiLogPrimitive_absolutelyContinuous (b : ℝ) :
    AbsolutelyContinuousOnInterval actualXiLogPrimitive (Real.log 2) b := by
  have hi := actualXiLogDensity_intervalIntegrable (Real.log 2) b
  exact hi.absolutelyContinuousOnInterval_intervalIntegral (by simp)

theorem actualXiLogPrimitive_ae_hasDerivAt (b : ℝ) :
    ∀ᵐ t : ℝ, t ∈ uIcc (Real.log 2) b →
      HasDerivAt actualXiLogPrimitive (actualXiLogDensity t) t := by
  have hi := actualXiLogDensity_intervalIntegrable (Real.log 2) b
  filter_upwards [hi.ae_hasDerivAt_integral] with t ht
  intro hmem
  exact ht hmem (Real.log 2) (by simp)

theorem actual_logarithmic_substitution (A : ℝ) (hA : 1 ≤ A) :
    (∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) =
      ∫ t in Real.log 2..2 * A, actualXiLogDensity t * fullXiLogWeight A t := by
  have hs := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    (f := Real.exp) (f' := Real.exp)
    (g := fun y => shiftedActualChebyshev y * deriv (plainProfile A 1) y)
    (a := Real.log 2) (b := 2 * A) Real.continuous_exp.continuousOn
    (fun t _ => Real.hasDerivAt_exp t) (fun t _ => (Real.exp_pos t).le)
  rw [Real.exp_log (by norm_num : (0 : ℝ) < 2)] at hs
  rw [← hs]
  apply intervalIntegral.integral_congr
  intro t _
  dsimp only [Function.comp_apply]
  rw [(plainProfile_hasDerivAt (by linarith : 0 < A) 1 (Real.exp_pos t)).deriv]
  simp only [Real.log_one, zero_add, Real.log_exp]
  unfold actualXiLogDensity fullXiLogWeight
  field_simp

end FormalResearch.RiemannHypothesis.SourceActualXiPrimitiveTransport
```
