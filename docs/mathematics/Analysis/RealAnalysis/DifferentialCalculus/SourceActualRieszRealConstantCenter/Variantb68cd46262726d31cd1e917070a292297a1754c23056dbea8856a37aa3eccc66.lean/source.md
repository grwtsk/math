# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualRieszRealConstantCenter.Variantb68cd46262726d31cd1e917070a292297a1754c23056dbea8856a37aa3eccc66

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `680ed6b8aa2c3e4acf40c71654bb3e4a9d4d8085` · SHA-256 `b68cd46262726d31cd1e917070a292297a1754c23056dbea8856a37aa3eccc66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualRieszCriticalCenter
import Mathlib.Analysis.Calculus.Deriv.Star
import Mathlib.NumberTheory.Harmonic.ZetaAsymp

/-!
The actual local constant center is real by genuine global zeta conjugation and
its derivative symmetry. This identifies a real intercept for the literal
Riesz primitive; it supplies no critical integral or signed upper bound.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualRieszRealConstantCenter
open Complex
open scoped ComplexConjugate
open SourceActualRieszCriticalCenter

private theorem actualZeta_deriv_conj (z : ℂ) :
    deriv riemannZeta (conj z) = conj (deriv riemannZeta z) := by
  have heq : (conj ∘ riemannZeta ∘ conj) = riemannZeta := by
    ext w
    simp only [Function.comp_apply, riemannZeta_conj, conj_conj]
  have hd := congrFun (deriv_conj_conj (f := riemannZeta)) (conj z)
  rw [heq] at hd
  simpa only [Function.comp_apply, conj_conj] using hd

private theorem actualZeta_logDeriv_conj (z : ℂ) :
    logDeriv riemannZeta (conj z) = conj (logDeriv riemannZeta z) := by
  simp only [logDeriv_apply, actualZeta_deriv_conj, riemannZeta_conj, map_div₀]

/-- Literal numerator symmetry includes the genuine zeta derivative. -/
theorem actualRieszCriticalNumerator_conj (z : ℂ) :
    actualRieszCriticalNumerator (conj z) = conj (actualRieszCriticalNumerator z) := by
  have hs : (1 / 2 : ℂ) + conj z = conj ((1 / 2 : ℂ) + z) := by
    simp only [map_add, map_div₀, map_one, map_ofNat]
  unfold actualRieszCriticalNumerator
  rw [hs, actualZeta_logDeriv_conj]
  simp only [map_sub, map_neg, map_div₀, map_one, map_ofNat]

/-- The real intercept uses the actual complex derivative, not an auxiliary center. -/
def actualRieszRealConstantCenter : ℝ := actualRieszLocalConstantCenter.re

/-- The genuine local derivative center equals the cast of this real intercept. -/
theorem actualRieszLocalConstantCenter_eq_real :
    (actualRieszRealConstantCenter : ℂ) = actualRieszLocalConstantCenter := by
  have heq : (conj ∘ actualRieszCriticalNumerator ∘ conj) =
      actualRieszCriticalNumerator := by
    ext w
    simp only [Function.comp_apply, actualRieszCriticalNumerator_conj, conj_conj]
  have hd := congrFun (deriv_conj_conj (f := actualRieszCriticalNumerator)) 0
  rw [heq] at hd
  simp only [Function.comp_apply, map_zero] at hd
  exact conj_eq_iff_re.mp hd.symm

/-- The local quotient extension has two authentic real centers away from zero. -/
theorem actualRieszCriticalRegularization_eq_real_centers {z : ℂ} (hz : z ≠ 0) :
    actualRieszCriticalRegularization z =
      (actualRieszCriticalNumerator z - (actualRieszLimitingLinearCenter : ℂ) -
        (actualRieszRealConstantCenter : ℂ) * z) / z ^ 2 := by
  rw [actualRieszLocalConstantCenter_eq_real]
  exact actualRieszCriticalRegularization_eq hz

end FormalResearch.RiemannHypothesis.SourceActualRieszRealConstantCenter
```
