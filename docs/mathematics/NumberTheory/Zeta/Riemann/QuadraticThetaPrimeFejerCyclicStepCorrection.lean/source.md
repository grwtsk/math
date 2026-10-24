# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicStepCorrection

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40a4c3d9cf3af0f5ea33d1e8c07a983b3f045ee6` · SHA-256 `8d4361e20882d46d458d2c0f5a0c5fa97df9052384678ee65e98a1098c837eac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerArithmeticReduction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Positive-distance first moment of the period-4X sampled kernel. -/
def nonAliasingFejerPositiveFirstMoment
    (X N : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (2 * X),
    (d : ℝ) *
      sampledTriangularKernelAtPeriod
        (fejerOctavePeriod X) N d

/-- Safe cyclic sharp-step budget.  A signed displacement of magnitude d can
change at most 2d indicator values, and the symmetric kernel has both +d and
-d contributions.  Therefore the safe positive-distance budget carries an
absolute factor four. -/
def nonAliasingFejerCyclicStepBudget
    (X N : ℕ) : ℝ :=
  4 * nonAliasingFejerPositiveFirstMoment X N

/-- Corrected universal combinatorial frontier.  This replaces the earlier
factor-one L1 first-moment interface, which did not account for both boundary
crossings and both displacement signs. -/
def NonAliasingFejerSharpStepL1FirstMomentFourClaim : Prop :=
  ∀ X N m : ℕ,
    NonAliasingFejerCutoffRegime X N →
    2 * X ≤ m → m ≤ 4 * X →
      nonAliasingFejerSharpStepL1Error X N m ≤
        nonAliasingFejerCyclicStepBudget X N

/-- Corrected arithmetic comparison following from the safe cyclic L1 budget. -/
def NonAliasingPrimePrefixFejerFirstMomentComparisonFactorFour : Prop :=
  ∀ X N m : ℕ,
    NonAliasingFejerCutoffRegime X N →
    2 * X ≤ m → m ≤ 4 * X →
      |nonAliasingPrimePrefixFejerOperator.error X N m| ≤
        (1 + Real.log ((4 * X : ℕ) : ℝ)) *
          nonAliasingFejerCyclicStepBudget X N

/-- The corrected universal L1 statement implies the corrected arithmetic
comparison immediately through the atom-envelope reduction. -/
theorem sharpStepL1FirstMomentFour_to_arithmeticComparison
    (hL1 : NonAliasingFejerSharpStepL1FirstMomentFourClaim) :
    NonAliasingPrimePrefixFejerFirstMomentComparisonFactorFour := by
  intro X N m hreg hm0 hm1
  rcases hreg with ⟨hX, hN, hNL⟩
  have hEnvelope :
      0 ≤ 1 + Real.log ((4 * X : ℕ) : ℝ) := by
    have hlog : 0 ≤ Real.log ((4 * X : ℕ) : ℝ) := by
      apply Real.log_nonneg
      exact_mod_cast (by omega : 1 ≤ 4 * X)
    linarith
  exact
    (nonAliasingPrimePrefixFejerOperator_error_le_L1
      hX hm0 hm1).trans
      (mul_le_mul_of_nonneg_left
        (hL1 X N m ⟨hX, hN, hNL⟩ hm0 hm1)
        hEnvelope)

/-- The factor-four correction preserves the same harmonic power/logarithmic
shape already proved for the positive first moment. -/
theorem nonAliasingFejerCyclicStepBudget_le_harmonicShape
    {X N : ℕ}
    (hX : 0 < X)
    (hN : 0 < N) :
    nonAliasingFejerCyclicStepBudget X N ≤
      4 * (((X : ℝ) / (N : ℝ)) *
        (1 + Real.log ((2 * X : ℕ) : ℝ))) := by
  unfold nonAliasingFejerCyclicStepBudget
    nonAliasingFejerPositiveFirstMoment
  have h :=
    nonAliasingFejerFirstMomentHarmonicBound X N hX hN
  nlinarith

/-- Full corrected arithmetic tail shape after the safe factor-four cyclic
step budget. -/
theorem correctedFejerArithmeticTail_le_logSquaredShape
    {X N : ℕ}
    (hX : 0 < X)
    (hN : 0 < N) :
    (1 + Real.log ((4 * X : ℕ) : ℝ)) *
        nonAliasingFejerCyclicStepBudget X N
      ≤
    4 *
      (1 + Real.log ((4 * X : ℕ) : ℝ)) *
      (((X : ℝ) / (N : ℝ)) *
        (1 + Real.log ((2 * X : ℕ) : ℝ))) := by
  have hEnvelope :
      0 ≤ 1 + Real.log ((4 * X : ℕ) : ℝ) := by
    have hlog : 0 ≤ Real.log ((4 * X : ℕ) : ℝ) := by
      apply Real.log_nonneg
      exact_mod_cast (by omega : 1 ≤ 4 * X)
    linarith
  have hBudget :=
    nonAliasingFejerCyclicStepBudget_le_harmonicShape hX hN
  nlinarith

/-- Exact combinatorial dependency split for the remaining proof. -/
def NonAliasingFejerCyclicTranslationContractionClaim : Prop :=
  ∀ X N m : ℕ,
    NonAliasingFejerCutoffRegime X N →
    2 * X ≤ m → m ≤ 4 * X →
      nonAliasingFejerSharpStepL1Error X N m ≤
        nonAliasingFejerCyclicStepBudget X N

/-- The corrected universal frontier is definitionally the cyclic translation
contraction claim. -/
theorem cyclicTranslationContraction_iff_correctedL1 :
    NonAliasingFejerCyclicTranslationContractionClaim ↔
      NonAliasingFejerSharpStepL1FirstMomentFourClaim := by
  rfl

end GRWTSK.RiemannHypothesis
```
