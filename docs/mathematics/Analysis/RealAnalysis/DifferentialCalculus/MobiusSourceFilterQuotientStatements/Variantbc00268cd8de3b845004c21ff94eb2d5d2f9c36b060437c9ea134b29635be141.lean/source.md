# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MobiusSourceFilterQuotientStatements.Variantbc00268cd8de3b845004c21ff94eb2d5d2f9c36b060437c9ea134b29635be141

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63739e1be8d0b0eecd650f73328a2b1d31a5243e` · SHA-256 `bc00268cd8de3b845004c21ff94eb2d5d2f9c36b060437c9ea134b29635be141`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusPoleNumerator
import FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceTransfer

/-!
Local cancellation of the actual corrected finite Möbius numerator against
the actual translated source filter. No global inverse or Hardy admission is
asserted, and the signed logarithmic normalization remains unevaluated.
-/

set_option autoImplicit false
namespace MobiusSourceFilterQuotientScratch

open Filter Set
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceFilter FixedSourceTransfer MobiusPoleNumerator

noncomputable section

/-- The unchanged translated source-filter transform used in the genuine kernel transfer. -/
def W (z : ℂ) : ℂ := Complex.exp (-z) * V z

/-- The actual translated source filter retains the prescribed zero at one half. -/
theorem W_half_zero : W (1 / 2) = 0 := by
  rw [W, V_positive_pole_zero, mul_zero]

/-- Translation contributes no extra slope term because the original filter vanishes. -/
theorem W_hasDerivAt_half : HasDerivAt W removedPoleValue (1 / 2) := by
  have he := ((hasDerivAt_id (1 / 2 : ℂ)).neg).cexp
  have h := he.mul V_hasDerivAt_positive_pole
  simpa only [W, removedPoleValue, V_positive_pole_zero, mul_zero, zero_add,
    id_eq, Pi.neg_apply] using! h

/-- The source derivative has the literal normalization and polynomial-exponential value. -/
theorem W_deriv_half : deriv W (1 / 2) =
    Complex.exp (-(1 / 2 : ℂ)) *
      ((12288 * (1001 * Real.exp (1 / 2) - 2721 * Real.exp (-1 / 2)) /
        Real.sqrt (45056 / 1105 : ℝ) : ℝ) : ℂ) := by
  simpa only [removedPoleValue, positivePoleSlope] using W_hasDerivAt_half.deriv

/-- The checked positive source slope makes this a genuine simple zero. -/
theorem W_deriv_half_ne_zero : deriv W (1 / 2) ≠ 0 := by
  rw [W_hasDerivAt_half.deriv]
  exact removedPoleValue_ne_zero

private theorem W_removed_half_limit :
    Tendsto (fun z : ℂ => W z / (z - 1 / 2)) (𝓝[≠] (1 / 2))
      (𝓝 (deriv W (1 / 2))) := by
  have h := W_hasDerivAt_half.tendsto_slope
  rw [← W_hasDerivAt_half.deriv] at h
  have hs : slope W (1 / 2) = (fun z : ℂ => W z / (z - 1 / 2)) := by
    funext z
    rw [slope_def_field, W_half_zero, sub_zero]
  rw [hs] at h
  exact h

/-- Canceling both source zeros gives the actual finite signed normalization divided by the slope. -/
theorem correctedNumerator_div_W_limit (X : ℕ) (hX : 1 ≤ X) :
    Tendsto (fun z : ℂ => correctedNumerator X z / W z) (𝓝[≠] (1 / 2))
      (𝓝 ((logNormalization X : ℂ) / deriv W (1 / 2))) := by
  have h := (correctedQuotient_tendsto_half X hX).div W_removed_half_limit
    W_deriv_half_ne_zero
  apply h.congr'
  filter_upwards [self_mem_nhdsWithin] with z hz
  exact div_div_div_cancel_right₀ (sub_ne_zero.mpr hz) _ _

end
end MobiusSourceFilterQuotientScratch

open Filter Set
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceFilter FixedSourceTransfer MobiusPoleNumerator FiniteMobiusController
open MobiusSourceFilterQuotientScratch

example (z : ℂ) : W z = Complex.exp (-z) * V z := rfl

example : W (1 / 2) = 0 := W_half_zero

example : HasDerivAt W removedPoleValue (1 / 2) := W_hasDerivAt_half

example : deriv W (1 / 2) =
    Complex.exp (-(1 / 2 : ℂ)) *
      ((12288 * (1001 * Real.exp (1 / 2) - 2721 * Real.exp (-1 / 2)) /
        Real.sqrt (45056 / 1105 : ℝ) : ℝ) : ℂ) := W_deriv_half

example : deriv W (1 / 2) ≠ 0 := W_deriv_half_ne_zero

example (X : ℕ) (hX : 1 ≤ X) :
    Tendsto (fun z : ℂ => correctedNumerator X z / W z) (𝓝[≠] (1 / 2))
      (𝓝 ((logNormalization X : ℂ) / deriv W (1 / 2))) :=
  correctedNumerator_div_W_limit X hX

example : deriv (fun z : ℂ => Complex.exp (-z) * V z) (1 / 2) ≠ 0 :=
  W_deriv_half_ne_zero

example (X : ℕ) (hX : 1 ≤ X) :
    Tendsto (fun z : ℂ =>
      ((∑ n ∈ Finset.Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
          Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ))) -
        ((∑ n ∈ Finset.Icc 1 X, (ArithmeticFunction.moebius n : ℝ) / (n : ℝ) : ℝ) : ℂ) *
          Complex.exp ((1 / 2 - z) * (Real.log (X : ℝ) : ℂ))) /
        (Complex.exp (-z) * V z)) (𝓝[≠] (1 / 2))
      (𝓝 (((∑ n ∈ Finset.Icc 1 X, (ArithmeticFunction.moebius n : ℝ) / (n : ℝ) *
          Real.log ((X : ℝ) / (n : ℝ)) : ℝ) : ℂ) /
        (Complex.exp (-(1 / 2 : ℂ)) *
          ((12288 * (1001 * Real.exp (1 / 2) - 2721 * Real.exp (-1 / 2)) /
            Real.sqrt (45056 / 1105 : ℝ) : ℝ) : ℂ)))) := by
  have h := correctedNumerator_div_W_limit X hX
  rw [W_deriv_half] at h
  exact h
```
