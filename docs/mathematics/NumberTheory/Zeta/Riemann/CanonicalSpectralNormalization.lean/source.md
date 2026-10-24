# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralNormalization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc59b787c0a9b13408410e8aeff6f22e70811e46` · SHA-256 `03b9281156697194cec5dfc33895ecd4631fa7342b7d640fa12279cb52e39231`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic

set_option autoImplicit false

open Filter Topology

/-!
# Radius normalization of the canonical square-tent spectral Gram

The raw canonical comparison from the previous layer forces the unnormalized
square-tent correction itself to converge to a finite scalar.  That is a
strict extra analytic premise, not something supplied by finite-stage
positivity.

This file records that finite-limit consequence as an obstruction witness and
introduces the source-geometric normalization by the positive square radius.
The normalized source remains an exact positive Gram after dividing the
canonical amplitude by the square root of the radius.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralNormalization

open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerAtoms
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentAtomStage
open GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerQuadraticPort
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.Polynomial.ConjugateQuartic

/-- Dividing a finite Gram amplitude by sqrt(r) divides the full Gram by r,
provided the scale is strictly positive. -/
theorem stageEnergy_div_sqrt
    (stage : PrimePowerWitnessStage) (f : ℝ → ℝ)
    (r : ℝ) (hr : 0 < r) :
    stageEnergy stage (fun u => f u / Real.sqrt r) =
      stageEnergy stage f / r := by
  classical
  unfold stageEnergy
  calc
    (∑ a : stage.WitnessIndex,
        atomWeight a.1 *
          (f (logLocation a.1) / Real.sqrt r) ^ 2) =
      ∑ a : stage.WitnessIndex,
        (atomWeight a.1 * (f (logLocation a.1)) ^ 2) / r := by
          apply Finset.sum_congr rfl
          intro a _
          rw [div_pow, Real.sq_sqrt hr.le]
          ring
    _ = (∑ a : stage.WitnessIndex,
        atomWeight a.1 * (f (logLocation a.1)) ^ 2) / r := by
          rw [Finset.sum_div]

/-- The source-geometric scale at canonical stage n. -/
noncomputable def canonicalRadius (n : ℕ) : ℝ :=
  squareRadius (n + 2)

theorem canonicalRadius_pos (n : ℕ) :
    0 < canonicalRadius n := by
  exact squareRadius_pos (n + 2)

/-- Fixed normalized amplitude. The scale depends only on source stage
geometry and not on any candidate zero. -/
noncomputable def radiusNormalizedAmplitude (n : ℕ) (u : ℝ) : ℝ :=
  canonicalAmplitude n u / Real.sqrt (canonicalRadius n)

/-- Radius-normalized canonical signed correction. -/
noncomputable def radiusNormalizedCorrection (n : ℕ) : ℝ :=
  canonicalCorrection n / canonicalRadius n

/-- The normalized correction remains exactly a finite positive Gram. -/
theorem radiusNormalizedStageEnergy_eq_correction (n : ℕ) :
    stageEnergy (canonicalStage n) (radiusNormalizedAmplitude n) =
      radiusNormalizedCorrection n := by
  unfold radiusNormalizedAmplitude radiusNormalizedCorrection
  rw [stageEnergy_div_sqrt
    (canonicalStage n) (canonicalAmplitude n)
    (canonicalRadius n) (canonicalRadius_pos n)]
  rw [canonicalStageEnergy_eq_correction]

/-- The normalized correction is nonnegative for every source stage. -/
theorem radiusNormalizedCorrection_nonneg (n : ℕ) :
    0 ≤ radiusNormalizedCorrection n := by
  rw [← radiusNormalizedStageEnergy_eq_correction n]
  exact stageEnergy_nonneg
    (canonicalStage n) (radiusNormalizedAmplitude n)

/-- Diagnostic consequence of the raw comparison profile: it forces the
UNNORMALIZED canonical arithmetic/spectral mass itself to converge to the
finite quartic scalar. This theorem is an obstruction witness, not a claim
that such convergence actually occurs. -/
theorem CanonicalQuarticComparison.rawCorrection_tendsto
    {α γ : ℝ} (comparison : CanonicalQuarticComparison α γ) :
    Tendsto canonicalCorrection atTop
      (𝓝 (comparison.limitWeight * witnessTrace α γ)) := by
  have h :=
    (comparison.weight_tendsto.mul_const (witnessTrace α γ)).add
      comparison.error_tendsto
  simpa only [comparison.identity] using h

/-- Preferred fixed-family comparison after source-geometric radius
normalization. Only scale/error data remain free. -/
structure RadiusNormalizedQuarticComparison (α γ : ℝ) where
  weight : ℕ → ℝ
  error : ℕ → ℝ
  limitWeight : ℝ
  limitWeight_pos : 0 < limitWeight
  identity : ∀ n,
    radiusNormalizedCorrection n =
      weight n * witnessTrace α γ + error n
  weight_tendsto : Tendsto weight atTop (𝓝 limitWeight)
  error_tendsto : Tendsto error atTop (𝓝 0)

namespace RadiusNormalizedQuarticComparison

/-- The normalized fixed-family comparison is an instance of the generic
prime-power Gram extraction, using no target-dependent stage choice. -/
noncomputable def toQuarticExtraction
    {α γ : ℝ} (comparison : RadiusNormalizedQuarticComparison α γ) :
    QuarticExtraction α γ where
  stage := canonicalStage
  test := radiusNormalizedAmplitude
  weight := comparison.weight
  error := comparison.error
  limitWeight := comparison.limitWeight
  limitWeight_pos := comparison.limitWeight_pos
  identity := by
    intro n
    rw [radiusNormalizedStageEnergy_eq_correction n]
    exact comparison.identity n
  weight_tendsto := comparison.weight_tendsto
  error_tendsto := comparison.error_tendsto

/-- A normalized canonical comparison still forces the quartic horizontal
displacement to vanish. -/
theorem horizontal_displacement_eq_zero
    {α γ : ℝ} (comparison : RadiusNormalizedQuarticComparison α γ) :
    α = 0 :=
  horizontal_displacement_eq_zero_of_quarticExtraction
    comparison.toQuarticExtraction

/-- The normalized correction necessarily converges to the selected quartic
scalar whenever a normalized comparison is supplied. -/
theorem normalizedCorrection_tendsto
    {α γ : ℝ} (comparison : RadiusNormalizedQuarticComparison α γ) :
    Tendsto radiusNormalizedCorrection atTop
      (𝓝 (comparison.limitWeight * witnessTrace α γ)) := by
  have h :=
    (comparison.weight_tendsto.mul_const (witnessTrace α γ)).add
      comparison.error_tendsto
  simpa only [comparison.identity] using h

end RadiusNormalizedQuarticComparison

/-- RH-facing endpoint for the preferred normalized fixed source family. -/
theorem riemannHypothesis_of_radiusNormalizedSpectralComparison
    (hcompare :
      ∀ s : ℂ, NontrivialZetaZero s →
        RadiusNormalizedQuarticComparison (s.re - 1 / 2) s.im) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_primePowerGramExtraction
  intro s hs
  exact (hcompare s hs).toQuarticExtraction

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralNormalization
```
