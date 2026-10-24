# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.QuotientBudgetLiteralSnippet.Variant16a1809eab50525b6e31e2620ada712808c6047ac36fa08490a73e2f5c81ccc3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00aadfc53e2a9dbfd36962c8745149d82ba4318d` · SHA-256 `16a1809eab50525b6e31e2620ada712808c6047ac36fa08490a73e2f5c81ccc3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

namespace CorrectedQuotientBudgetLiteral
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open FiniteMobiusController MobiusPoleNumerator CorrectedQuotientBudgetScratch
noncomputable section
example (X : ℕ) (w : ℂ) : quotientIntegral X w =
    ∫ x : ℝ in Set.Ioc 1 (X : ℝ), (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ) := rfl
example (X : ℕ) (w : ℂ) :
    IntegrableOn (fun x : ℝ => (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ)) (Set.Ioc 1 (X : ℝ)) :=
  quotient_integrand_integrable X w
example (X : ℕ) : Continuous (quotientIntegral X) := quotientIntegral_continuous X
example (X : ℕ) (w : ℂ) : correctedQuotient X w =
    ∫ x : ℝ in Set.Ioc 1 (X : ℝ), (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ) :=
  correctedQuotient_eq_integral X w
example (N : ℕ) : |mobiusReciprocalSum N| ≤ (harmonic N : ℝ) :=
  mobiusReciprocalSum_abs_le_harmonic N
example (x : ℝ) (hx : 1 ≤ x) :
    |mobiusReciprocalSum ⌊x⌋₊| ≤ 1 + Real.log x := mobiusReciprocalSum_floor_abs_le x hx
example (X : ℕ) (w : ℂ) (hw : 0 ≤ w.re) (x : ℝ) (hx : x ∈ Set.Ioc 1 (X : ℝ)) :
    ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ)‖ ≤
        (1 + Real.log (X : ℝ)) / Real.sqrt x := quotient_integrand_norm_le X w hw x hx
example (X : ℕ) (hX : 1 ≤ X) (w : ℂ) (hw : 0 ≤ w.re) :
    ‖correctedQuotient X w‖ ≤ 2 * Real.sqrt (X : ℝ) * (1 + Real.log (X : ℝ)) :=
  correctedQuotient_norm_le X hX w hw
example (X : ℕ) (hX : 1 ≤ X) : quotientIntegral X (1 / 2) = (logNormalization X : ℂ) :=
  (correctedQuotient_eq_integral X (1 / 2)).symm.trans (correctedQuotient_half X hX)
end
end CorrectedQuotientBudgetLiteral
```
