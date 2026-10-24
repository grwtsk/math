# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentFiniteHeadGram

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c73b42d61be39e040ff7e6a4e1e318c6f0514cf7` · SHA-256 `d3e34a56279beaaf9ddce4013161874255de29d69604caf06acbf8a5ea61a899`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort
import Mathlib.Tactic

set_option autoImplicit false

open scoped BigOperators

/-!
# The canonical prime-power Gram against a finite zeta-zero head

The test is the source-fixed square-tent amplitude, not a fitted zero-dependent
test.  The signed correction uses exactly the pole, finite nontrivial-zero
head (with actual multiplicities), and the canonical rational/trivial-zero
term.  No additional Archimedean integral or endpoint term is inserted in
this normalization.

The difference from the independently constructed positive prime-power Gram
is *exactly* the existing finite-head residual, whose norm is controlled by
the existing canonical divisor-tail theorem.

This is a finite-height comparison for one scalar family.  It does not
define a Weil quadratic form, prove global Weil positivity, supply the
quartic scale/error comparison, or prove the Riemann Hypothesis.

SOURCE_DRAFT; elaboration, kernel checking, and trust audit not established.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentFiniteHeadGram

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentLedger
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Chebyshev.CanonicalTentAbsolute
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.Analysis.Real.TentRationalCorrection

/-- The canonical stage `n` means square stage `n+2`, so the lower
square-tent parameter bound holds by arithmetic alone. This is the finite
nontrivial-zero head with the complete pole and trivial-zero correction.
It is complex-valued: no unproved finite-head reality is assumed. -/
noncomputable def finiteHeadCorrection (n : ℕ) (height : ℝ) : ℂ :=
  (squareRadius (n + 2) : ℂ) -
    (∑ z ∈ heightHead height, (multiplicity z : ℂ) *
      tentKernel (squareCenter (n + 2)) (squareRadius (n + 2)) z.1) +
    (rationalTentCorrection (squareCenter (n + 2))
      (squareRadius (n + 2)) : ℂ)

/-- Exact signed comparison, including the full omitted-height residual;
the identity is derived from the repository's actual arithmetic and
finite-head objects, not made a field of a new assumed record. -/
theorem finiteHeadCorrection_sub_canonicalCorrection_eq
    (n : ℕ) (height : ℝ) :
    finiteHeadCorrection n height - (canonicalCorrection n : ℂ) =
      finiteHeadBalance (n + 2) height := by
  have hcanonical :
      canonicalCorrection n = squareTentMangoldt (n + 2) := by
    change spectralCorrectionReal (n + 2) = squareTentMangoldt (n + 2)
    exact spectralCorrectionReal_eq_squareTentMangoldt (n + 2) (by omega)
  rw [hcanonical]
  unfold finiteHeadCorrection finiteHeadBalance
  ring

/-- Flipping the source sign changes the residual by twice the actual
arithmetic stage value. This algebraic defect is NOT part of the divisor-tail
budget, and no false nonzero/decay assertion is made about it. -/
theorem wrong_sign_defect
    (n : ℕ) (height : ℝ) :
    finiteHeadCorrection n height + (canonicalCorrection n : ℂ) =
      finiteHeadBalance (n + 2) height +
        2 * (canonicalCorrection n : ℂ) := by
  calc
    finiteHeadCorrection n height + (canonicalCorrection n : ℂ) =
        (finiteHeadCorrection n height - (canonicalCorrection n : ℂ)) +
          2 * (canonicalCorrection n : ℂ) := by ring
    _ = _ := by rw [finiteHeadCorrection_sub_canonicalCorrection_eq]

/-- Certified finite-height comparison, conditional only on the hypotheses
of the imported canonical explicit-formula and tail theorems. The bound is
not a zero-count certificate or a numerical enclosure. -/
theorem norm_finiteHeadCorrection_sub_canonicalCorrection_le
    (n : ℕ) (height : ℝ) (hheight : 2 ≤ height) :
    ‖finiteHeadCorrection n height - (canonicalCorrection n : ℂ)‖ ≤
      canonicalTailBudget (squareCenter (n + 2))
        (squareRadius (n + 2)) height := by
  rw [finiteHeadCorrection_sub_canonicalCorrection_eq]
  exact norm_finiteHeadBalance_le (n + 2) (by omega) height hheight

/-- The same bound explicitly names the independently source-constructed
finite nonnegative Gram. Its amplitude is fixed before any zero is chosen.
The transformation uses an existing exact Gram/source theorem, not
positivity of the spectral target. -/
theorem norm_finiteHeadCorrection_sub_sourceGram_le
    (n : ℕ) (height : ℝ) (hheight : 2 ≤ height) :
    ‖finiteHeadCorrection n height -
        (stageEnergy (canonicalStage n) (canonicalAmplitude n) : ℂ)‖ ≤
      canonicalTailBudget (squareCenter (n + 2))
        (squareRadius (n + 2)) height := by
  rw [canonicalStageEnergy_eq_correction n]
  exact norm_finiteHeadCorrection_sub_canonicalCorrection_le n height hheight

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentFiniteHeadGram
```
