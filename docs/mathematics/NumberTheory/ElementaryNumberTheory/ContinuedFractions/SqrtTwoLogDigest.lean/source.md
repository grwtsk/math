# Complete source: GRWTSK.NumberTheory.ContinuedFractions.SqrtTwoLogDigest

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b290af8fb37a5d76ce532c3567f7621d9c4527a5` · SHA-256 `7beb3dff286ec93c007723ab71cf6045269f0a7e7eee29d3955bc9d09458af8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
These declarations have not been elaborated or kernel checked in the current
environment.  They expose exact hypotheses and are intentionally not imported
by `GRWTSK.lean` pending the verification issues associated with this change.
-/
import GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators

/-!
# Square-root-of-two continuants and finite logarithmic digests

The constant partial quotient `2` gives the denominator stream for the native
continued fraction `[0; 2, 2, ...]`, equivalently the denominator stream used
by `[1; 2, 2, ...] = sqrt 2`.  The file records its exact recurrence and zero
arithmetic exponent in the repository's existing logarithmic-rate sense.

`finiteLogCorrelation` is deliberately only a finite, reciprocal-stage-weighted
correlation sampled on this denominator stream.  It is a Sarnak-style interface,
not a Möbius-disjointness or asymptotic cancellation theorem.
-/

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.ContinuedFractions.SqrtTwoLogDigest

open Filter
open scoped BigOperators Topology
open GRWTSK.RiemannHypothesis.BranchSequenceRealization

/-- Constant partial quotient stream for the square-root-of-two expansion. -/
def sqrtTwoPartialQuotient : ℕ → ℕ := fun _ => 2

/-- Denominators `1, 2, 5, 12, ...`. -/
def sqrtTwoDenominator : ℕ → ℕ :=
  denominator sqrtTwoPartialQuotient

@[simp] theorem sqrtTwoDenominator_zero : sqrtTwoDenominator 0 = 1 := rfl
@[simp] theorem sqrtTwoDenominator_one : sqrtTwoDenominator 1 = 2 := rfl

/-- Pell recurrence for the square-root-of-two denominator stream. -/
theorem sqrtTwoDenominator_recurrence (n : ℕ) :
    sqrtTwoDenominator (n + 2) =
      2 * sqrtTwoDenominator (n + 1) + sqrtTwoDenominator n := rfl

/-- Every square-root-of-two denominator is positive. -/
theorem sqrtTwoDenominator_pos (n : ℕ) : 0 < sqrtTwoDenominator n :=
  denominator_pos sqrtTwoPartialQuotient (fun _ => by norm_num [sqrtTwoPartialQuotient]) n

/-- The denominator stream diverges. -/
theorem sqrtTwoDenominator_tendsto :
    Tendsto sqrtTwoDenominator atTop atTop :=
  denominator_tendsto sqrtTwoPartialQuotient (fun _ => by norm_num [sqrtTwoPartialQuotient])

/-- The square-root-of-two denominator stream has zero arithmetic exponent in
the existing `log(q[n+1]) / q[n]` limsup regime. -/
theorem sqrtTwoDenominator_arithmeticExponent_zero :
    arithmeticExponent sqrtTwoDenominator = 0 := by
  apply arithmeticExponent_zero_of_bounded_ratio sqrtTwoDenominator
    sqrtTwoDenominator_pos sqrtTwoDenominator_tendsto (C := 3) (by norm_num)
  intro n
  cases n with
  | zero => norm_num [sqrtTwoDenominator, sqrtTwoPartialQuotient, denominator]
  | succ n =>
      have hle : sqrtTwoDenominator n ≤ sqrtTwoDenominator (n + 1) :=
        denominator_le_succ sqrtTwoPartialQuotient (fun _ => by norm_num [sqrtTwoPartialQuotient]) n
      have hrec := sqrtTwoDenominator_recurrence n
      have hnat : sqrtTwoDenominator (n + 2) ≤
          3 * sqrtTwoDenominator (n + 1) := by
        omega
      have hreal : (sqrtTwoDenominator (n + 2) : ℝ) ≤
          3 * (sqrtTwoDenominator (n + 1) : ℝ) := by
        exact_mod_cast hnat
      simpa [Nat.succ_eq_add_one, Nat.add_assoc] using hreal

/-- Reciprocal stage weight used by finite logarithmic averages. -/
def reciprocalStageWeight (n : ℕ) : ℝ :=
  ((n + 1 : ℕ) : ℝ)⁻¹

/-- Finite logarithmic digest of an observable sampled at square-root-of-two
denominators. -/
def finiteLogDigest (N : ℕ) (observable : ℕ → ℝ) : ℝ :=
  ∑ n ∈ Finset.range N,
    reciprocalStageWeight n * observable (sqrtTwoDenominator n)

@[simp] theorem finiteLogDigest_zero (N : ℕ) :
    finiteLogDigest N (fun _ => 0) = 0 := by
  simp [finiteLogDigest]

/-- Exact additivity of the finite logarithmic digest. -/
theorem finiteLogDigest_add (N : ℕ) (u v : ℕ → ℝ) :
    finiteLogDigest N (fun m => u m + v m) =
      finiteLogDigest N u + finiteLogDigest N v := by
  simp [finiteLogDigest, mul_add, Finset.sum_add_distrib]

/-- Finite reciprocal-stage-weighted correlation, with the orbit observable
sampled at square-root-of-two denominators. No limiting claim is built in. -/
def finiteLogCorrelation (N : ℕ)
    (arithmeticWeight orbitObservable : ℕ → ℝ) : ℝ :=
  ∑ n ∈ Finset.range N,
    reciprocalStageWeight n * arithmeticWeight (n + 1) *
      orbitObservable (sqrtTwoDenominator n)

@[simp] theorem finiteLogCorrelation_zero_right
    (N : ℕ) (arithmeticWeight : ℕ → ℝ) :
    finiteLogCorrelation N arithmeticWeight (fun _ => 0) = 0 := by
  simp [finiteLogCorrelation]

/-- Exact linearity in the sampled observable. -/
theorem finiteLogCorrelation_add_right
    (N : ℕ) (arithmeticWeight u v : ℕ → ℝ) :
    finiteLogCorrelation N arithmeticWeight (fun m => u m + v m) =
      finiteLogCorrelation N arithmeticWeight u +
        finiteLogCorrelation N arithmeticWeight v := by
  simp [finiteLogCorrelation, mul_add, Finset.sum_add_distrib]

/-- Finite harmonic normalizer. -/
def harmonicNormalizer (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range N, reciprocalStageWeight n

/-- A normalized finite correlation. The horizon is `N+1`, so the denominator
contains at least its positive stage-zero term. -/
def normalizedLogCorrelation (N : ℕ)
    (arithmeticWeight orbitObservable : ℕ → ℝ) : ℝ :=
  finiteLogCorrelation (N + 1) arithmeticWeight orbitObservable /
    harmonicNormalizer (N + 1)

end GRWTSK.NumberTheory.ContinuedFractions.SqrtTwoLogDigest
```
