# Complete source: GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fba2b5e6a7489233821d323ad897eff83fc10234` · SHA-256 `e932bb64370c608cbdbdacc42048f15c2f5bd908944762ac3698f1fe28c13fc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Factorization of the finite Goldbach progression model

The canonical progression circle model separates exactly into

* a finite arithmetic coefficient attached to the reduced rational center, and
* a finite oscillatory kernel in the local coordinate.

The signed contribution of each clipped rational arc therefore factors into
that arithmetic coefficient times an exact clipped singular integral. Summing
these identities gives an exact coefficient-weighted expression for the
finite progression-model major sum.

No arithmetic coefficient is replaced by an Euler product here, and the
clipped singular integral is not evaluated or asserted to be independent of
the numerator. No progression estimate, singular-integral asymptotic,
minor-arc bound, or Goldbach theorem is supplied.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization

open scoped BigOperators Real ENNReal
open Set MeasureTheory
open GRWTSK.Analysis.Fourier.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
open GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcModelBoundary

noncomputable section

/-- The complete finite oscillatory kernel that remains after the rational
center coefficient is removed from the canonical progression circle model. -/
def goldbachFiniteSingularKernel (N : ℕ) (β : ℝ) : ℂ :=
  goldbachIntegerExponentialKernel N β *
    goldbachIntegerExponentialKernel N β *
      unitCharacter (-(N : ℤ)) β

/-- The complete arithmetic coefficient attached to one reduced rational
center. The negative target phase remains part of this coefficient. -/
def goldbachProgressionArithmeticCoefficient
    (N a q : ℕ) : ℂ :=
  goldbachNormalizedRamanujanCoefficient a q *
    goldbachNormalizedRamanujanCoefficient a q *
      unitCharacter (-(N : ℤ))
        (goldbachRationalArcCenter a q)

/-- Exact pointwise separation of the canonical progression circle kernel into
its arithmetic and local-coordinate factors. -/
theorem goldbachProgressionCircleKernel_factor
    (N a q : ℕ) (β : ℝ) :
    goldbachProgressionCircleKernel N a q β =
      goldbachProgressionArithmeticCoefficient N a q *
        goldbachFiniteSingularKernel N β := by
  unfold goldbachProgressionCircleKernel
    goldbachProgressionExponentialModel
    goldbachProgressionArithmeticCoefficient
    goldbachFiniteSingularKernel
  ring

/-- The exact clipped singular integral attached to one indexed rational arc.
It is deliberately left numerator-dependent: endpoint clipping and
periodization have not yet been removed by a change-of-variables theorem. -/
def goldbachProgressionArcSingularIntegral
    (Q N : ℕ) (aq : ℕ × ℕ) : ℂ :=
  ∫ x in goldbachClippedRationalArc Q N aq,
    goldbachFiniteSingularKernel N
      (goldbachRationalArcOffset aq.1 aq.2 x)

/-- The finite singular kernel is continuous. -/
@[continuity, fun_prop]
theorem continuous_goldbachFiniteSingularKernel (N : ℕ) :
    Continuous (goldbachFiniteSingularKernel N) := by
  unfold goldbachFiniteSingularKernel
    goldbachIntegerExponentialKernel
  fun_prop

/-- The finite singular kernel has the elementary pointwise norm budget
`(N + 1)^2`. -/
theorem norm_goldbachFiniteSingularKernel_le
    (N : ℕ) (β : ℝ) :
    ‖goldbachFiniteSingularKernel N β‖ ≤
      ((N + 1 : ℝ) ^ 2) := by
  unfold goldbachFiniteSingularKernel
  rw [norm_mul, norm_mul, norm_unitCharacter, mul_one]
  have hV :=
    norm_goldbachIntegerExponentialKernel_le N β
  nlinarith [norm_nonneg
    (goldbachIntegerExponentialKernel N β),
    show 0 ≤ (N + 1 : ℝ) by positivity]

/-- Every indexed arithmetic coefficient has norm at most one. -/
theorem norm_goldbachProgressionArithmeticCoefficient_le_one
    {Q N a q : ℕ}
    (haq : (a, q) ∈ goldbachRationalArcIndices Q) :
    ‖goldbachProgressionArithmeticCoefficient N a q‖ ≤ 1 := by
  have hq : 0 < q :=
    (mem_goldbachRationalArcIndices.1 haq).2.2.1
  have hA :=
    norm_goldbachNormalizedRamanujanCoefficient_le_one
      (a := a) (q := q) hq
  unfold goldbachProgressionArithmeticCoefficient
  rw [norm_mul, norm_mul, norm_unitCharacter, mul_one]
  nlinarith [norm_nonneg
    (goldbachNormalizedRamanujanCoefficient a q),
    show 0 ≤ (1 : ℝ) by norm_num]

/-- The signed canonical model contribution on one clipped arc factors exactly
as the arithmetic coefficient times the clipped singular integral. -/
theorem goldbachProgressionArcModelContribution_factor
    (Q N : ℕ) (aq : ℕ × ℕ) :
    goldbachArcModelContribution Q N aq
        (goldbachProgressionArcModel N) =
      goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
        goldbachProgressionArcSingularIntegral Q N aq := by
  unfold goldbachArcModelContribution
    goldbachProgressionArcModel
    goldbachProgressionCircleModel
    goldbachProgressionArcSingularIntegral
  rw [← integral_const_mul]
  apply setIntegral_congr_fun
    (measurable_goldbachClippedRationalArc Q N aq)
  intro x hx
  exact goldbachProgressionCircleKernel_factor
    N aq.1 aq.2
      (goldbachRationalArcOffset aq.1 aq.2 x)

/-- The coefficient-weighted finite expression for the canonical
progression-model major sum. -/
def goldbachProgressionFactoredMajorSum
    (Q N : ℕ) : ℂ :=
  ∑ aq ∈ goldbachRationalArcIndices Q,
    goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
      goldbachProgressionArcSingularIntegral Q N aq

/-- Exact factorization of the complete finite progression-model major sum. -/
theorem goldbachProgressionArcModelMajorSum_eq_factored
    (Q N : ℕ) :
    goldbachProgressionArcModelMajorSum Q N =
      goldbachProgressionFactoredMajorSum Q N := by
  unfold goldbachProgressionArcModelMajorSum
    goldbachArcModelMajorSum
    goldbachProgressionFactoredMajorSum
  apply Finset.sum_congr rfl
  intro aq haq
  exact goldbachProgressionArcModelContribution_factor Q N aq

/-- The singular integral on one clipped arc has the coarse bound obtained by
combining the elementary kernel budget with the inherited six-radius measure
bound. -/
theorem norm_goldbachProgressionArcSingularIntegral_le
    (Q N : ℕ) (aq : ℕ × ℕ) :
    ‖goldbachProgressionArcSingularIntegral Q N aq‖ ≤
      ((N + 1 : ℝ) ^ 2) *
        (6 * goldbachRationalArcRadius Q N aq.2) := by
  have hmeasure :
      volume (goldbachClippedRationalArc Q N aq) < ∞ := by
    exact
      (measure_mono Set.inter_subset_left).trans_lt
        measure_Ioc_lt_top
  unfold goldbachProgressionArcSingularIntegral
  calc
    ‖∫ x in goldbachClippedRationalArc Q N aq,
        goldbachFiniteSingularKernel N
          (goldbachRationalArcOffset aq.1 aq.2 x)‖ ≤
      ((N + 1 : ℝ) ^ 2) *
        volume.real
          (goldbachClippedRationalArc Q N aq) := by
      exact norm_setIntegral_le_of_norm_le_const hmeasure
        (fun x hx =>
          norm_goldbachFiniteSingularKernel_le N
            (goldbachRationalArcOffset aq.1 aq.2 x))
    _ ≤
      ((N + 1 : ℝ) ^ 2) *
        (6 * goldbachRationalArcRadius Q N aq.2) := by
      exact mul_le_mul_of_nonneg_left
        (measureReal_goldbachClippedRationalArc_le Q N aq)
        (sq_nonneg (N + 1 : ℝ))

end
end GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization
```
