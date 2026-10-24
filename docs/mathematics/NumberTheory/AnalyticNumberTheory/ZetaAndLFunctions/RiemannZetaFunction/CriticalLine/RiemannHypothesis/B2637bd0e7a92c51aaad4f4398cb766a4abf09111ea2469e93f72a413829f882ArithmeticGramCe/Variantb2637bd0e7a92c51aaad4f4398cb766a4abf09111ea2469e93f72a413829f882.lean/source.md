# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.B2637bd0e7a92c51aaad4f4398cb766a4abf09111ea2469e93f72a413829f882ArithmeticGramCe.Variantb2637bd0e7a92c51aaad4f4398cb766a4abf09111ea2469e93f72a413829f882

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55c8ecc0e4de4dbf1ea5ecc973431d920b177826` · SHA-256 `b2637bd0e7a92c51aaad4f4398cb766a4abf09111ea2469e93f72a413829f882`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit
namespace FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit
open MeasureTheory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimePowerPhaseDefect
open FullQuadraticOperator
open MultiplicativePhase

/-- A positive measure gives a nonnegative translation difference-square Fourier energy. -/
noncomputable def translationGramForm (μ : Measure ℝ) (f : Hilbert) : ℝ :=
  ∫ y, ∫ ξ, Complex.normSq ((chi ξ (Real.exp y) - 1) * f ξ) ∂μ

theorem translation_gram_form_nonneg (μ : Measure ℝ) (f : Hilbert) :
    0 ≤ translationGramForm μ f :=
  integral_nonneg (fun _ ↦ integral_nonneg (fun _ ↦ Complex.normSq_nonneg _))

/-- No positive translation energy with a correction bounded below by one radius-independent
multiple of Hilbert mass can represent the full form on its entire Gamma domain. -/
theorem no_uniform_translation_gram_certificate :
    ¬ ∃ (K : ℝ) (μ : ℝ → Measure ℝ) (E : ℝ → Hilbert → ℝ),
      (∀ A, 1 ≤ A → ∀ f, GammaFormDomain f →
        -K * ‖f‖ ^ 2 ≤ E A f) ∧
      (∀ A, 1 ≤ A → ∀ f, GammaFormDomain f →
        fullQuadraticForm A f = translationGramForm (μ A) f + E A f) := by
  rintro ⟨K, μ, E, hE, he⟩
  obtain ⟨A, hA, f, hnorm, hdom, hneg⟩ :=
    FullQuadraticObstruction.full_form_unit_values_unbounded_below (-K)
  have hc := hE A hA f hdom
  rw [hnorm] at hc
  have hp := translation_gram_form_nonneg (μ A) f
  rw [he A hA f hdom] at hneg
  nlinarith

end FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit
```
