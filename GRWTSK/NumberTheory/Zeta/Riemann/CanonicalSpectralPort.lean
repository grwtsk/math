/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentAtomStage
import GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerQuadraticPort
import Mathlib.Tactic

set_option autoImplicit false

open Filter Topology
open scoped BigOperators

/-!
# Canonical signed spectral correction as a fixed positive Gram

The canonical square-tent explicit formula and the source-faithful
square-root atom stage are combined at exactly the same arithmetic stage.

For each square stage, the signed pole + nontrivial-zero + trivial-zero
correction is exactly the square-tent von Mangoldt source, hence exactly the
finite nonnegative prime-power Gram.

The only remaining quartic hypothesis is therefore a scale/error comparison
for this fixed source family. No stage or test may be selected after seeing
the candidate zero.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort

open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentLedger
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentAtomStage
open GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerQuadraticPort
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Chebyshev.CanonicalTentExplicitFormula
open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.Analysis.Real.TentRationalCorrection
open GRWTSK.Polynomial.ConjugateQuartic

/-- The signed spectral side of the selected complete square-tent explicit
formula: pole/main + complete nontrivial divisor + actual trivial-zero
correction. -/
noncomputable def spectralCorrection (n : ℕ) : ℂ :=
  (squareRadius n : ℂ) +
    fullZeroTerm n +
    (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ)

/-- The complete explicit formula identifies the signed spectral correction
with the arithmetic square-tent source. -/
theorem spectralCorrection_eq_squareTentMangoldt
    (n : ℕ) (hn : 2 ≤ n) :
    spectralCorrection n = (squareTentMangoldt n : ℂ) := by
  unfold spectralCorrection fullZeroTerm
  rw [canonical_square_source_eq_tsum n hn]
  ring

/-- Consequently the signed spectral correction is real. -/
theorem spectralCorrection_im_zero
    (n : ℕ) (hn : 2 ≤ n) :
    (spectralCorrection n).im = 0 := by
  rw [spectralCorrection_eq_squareTentMangoldt n hn]
  simp

/-- Real form of the same signed spectral correction. -/
noncomputable def spectralCorrectionReal (n : ℕ) : ℝ :=
  (spectralCorrection n).re

theorem spectralCorrectionReal_eq_squareTentMangoldt
    (n : ℕ) (hn : 2 ≤ n) :
    spectralCorrectionReal n = squareTentMangoldt n := by
  rw [spectralCorrectionReal, spectralCorrection_eq_squareTentMangoldt n hn]
  simp

/-- The canonical signed spectral correction is exactly the positive finite
Gram constructed from the source-faithful prime-power stage. -/
theorem stageEnergy_eq_spectralCorrectionReal
    (n : ℕ) (hn : 2 ≤ n) :
    stageEnergy (squareAtomStage n) (squareRootAmplitude n) =
      spectralCorrectionReal n := by
  rw [stageEnergy_squareRootAmplitude_eq,
    spectralCorrectionReal_eq_squareTentMangoldt n hn]

/-- Finite-stage nonnegativity of the signed spectral correction follows from
the independently positive prime-power Gram. This is not global Weil
positivity. -/
theorem spectralCorrectionReal_nonneg
    (n : ℕ) (hn : 2 ≤ n) :
    0 ≤ spectralCorrectionReal n := by
  rw [← stageEnergy_eq_spectralCorrectionReal n hn]
  exact stageEnergy_nonneg (squareAtomStage n) (squareRootAmplitude n)

/-- Canonical stage sequence starts at square stage two so every inherited
square-tent explicit-formula theorem is in scope. -/
noncomputable def canonicalStage (n : ℕ) :=
  squareAtomStage (n + 2)

/-- Fixed square-root amplitude at the canonical stage. -/
noncomputable def canonicalAmplitude (n : ℕ) : ℝ → ℝ :=
  squareRootAmplitude (n + 2)

/-- Fixed real spectral correction at the canonical stage. -/
noncomputable def canonicalCorrection (n : ℕ) : ℝ :=
  spectralCorrectionReal (n + 2)

theorem canonicalStageEnergy_eq_correction (n : ℕ) :
    stageEnergy (canonicalStage n) (canonicalAmplitude n) =
      canonicalCorrection n := by
  unfold canonicalStage canonicalAmplitude canonicalCorrection
  exact stageEnergy_eq_spectralCorrectionReal (n + 2) (by omega)

/-- A quartic comparison whose arithmetic stage and positive test are fixed
in advance by the canonical square-tent source. Only the comparison scale and
error remain supplied data. -/
structure CanonicalQuarticComparison (α γ : ℝ) where
  weight : ℕ → ℝ
  error : ℕ → ℝ
  limitWeight : ℝ
  limitWeight_pos : 0 < limitWeight
  identity : ∀ n,
    canonicalCorrection n =
      weight n * witnessTrace α γ + error n
  weight_tendsto : Tendsto weight atTop (𝓝 limitWeight)
  error_tendsto : Tendsto error atTop (𝓝 0)

namespace CanonicalQuarticComparison

/-- A fixed canonical comparison supplies the earlier generic extraction
record without changing its stage or test as a function of the target zero. -/
noncomputable def toQuarticExtraction
    {α γ : ℝ} (comparison : CanonicalQuarticComparison α γ) :
    QuarticExtraction α γ where
  stage := canonicalStage
  test := canonicalAmplitude
  weight := comparison.weight
  error := comparison.error
  limitWeight := comparison.limitWeight
  limitWeight_pos := comparison.limitWeight_pos
  identity := by
    intro n
    rw [canonicalStageEnergy_eq_correction n]
    exact comparison.identity n
  weight_tendsto := comparison.weight_tendsto
  error_tendsto := comparison.error_tendsto

/-- The fixed-family comparison forces the signed quartic horizontal
displacement to vanish. -/
theorem horizontal_displacement_eq_zero
    {α γ : ℝ} (comparison : CanonicalQuarticComparison α γ) :
    α = 0 :=
  horizontal_displacement_eq_zero_of_quarticExtraction
    comparison.toQuarticExtraction

end CanonicalQuarticComparison

/-- RH-facing endpoint for the fixed canonical stage family. The sole missing
supplier is a canonical scale/error comparison for every actual nontrivial
zero. -/
theorem riemannHypothesis_of_canonicalSpectralComparison
    (hcompare :
      ∀ s : ℂ, NontrivialZetaZero s →
        CanonicalQuarticComparison (s.re - 1 / 2) s.im) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_primePowerGramExtraction
  intro s hs
  exact (hcompare s hs).toQuarticExtraction

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort
