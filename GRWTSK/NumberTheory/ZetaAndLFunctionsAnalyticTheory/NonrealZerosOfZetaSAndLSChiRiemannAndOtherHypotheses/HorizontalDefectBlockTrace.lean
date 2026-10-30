/- Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.HorizontalDefectCriterion
import Mathlib.LinearAlgebra.Matrix.Trace

set_option autoImplicit false

/-!
# The horizontal RH defect as an exact finite sum of multiplicity-block traces

For every actual nontrivial zeta zero `z`, the analytic multiplicity from
`CanonicalZeroDivisor` supplies a finite coordinate fibre

```text
Fin (multiplicity z).
```

On that fibre this module places the diagonal scalar

```text
test (signedHeight z) * centeredOffset z ^ 2.
```

The trace of the block is therefore the analytic multiplicity times the same
nonnegative horizontal contribution. Summing the block traces over the complete
canonical closed height head recovers `HeightCollisionLift.horizontalDefect`
exactly. At constant test one it recovers
`HorizontalDefectCriterion.unitHorizontalDefect`, so its finite, all-height,
and cofinal RH consumers transfer without changing the zero divisor.

This is an elementary finite-dimensional realization of the already fixed
spectral-side observable. It is not a Selberg trace formula, an automorphic
operator identification, a primitive-orbit expansion, a determinant limit, a
continuous-spectrum regularization, a prism, or a prismatic comparison. The
geometric identity and sign estimates required to annihilate the trace remain
independent mathematical obligations.

Analytical disposition:

* Actual objects: exact nontrivial zero points, source analytic multiplicity,
  signed ordinate, centered real offset, finite diagonal matrices, and their
  ordinary matrix traces.
* Primary argument: the trace of a constant diagonal matrix is its scalar times
  the cardinality of the multiplicity fibre.
* Comparison: the complete block-trace sum is proved equal to the existing
  horizontal defect, not merely assigned the same notation.
* Hostile boundaries: a repeated root stays at one complex point and enlarges
  only its multiplicity fibre; a negative cutoff remains the empty head;
  reflection pairs cannot cancel after squaring the centered offset.
* Consumer and return: exact finite trace vanishing gives bounded critical-line
  control, and cofinal trace vanishing or independently sourced signed trace
  balances return the unchanged Mathlib `RiemannHypothesis` proposition.
* Missing supplier: no geometric term, correction term, sign theorem, Selberg
  normalization, or prismatic cohomological vanishing is constructed here.

SOURCE_ONLY / STATIC_SOURCE_REVIEW_ONLY / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

namespace GRWTSK.RiemannHypothesis.HorizontalDefectBlockTrace

open scoped BigOperators

noncomputable section

/-- Reuse the exact source point type. Point identity and analytic multiplicity
remain separate. -/
abbrev ZeroPoint := HeightCollisionLift.ZeroPoint

/-- The finite fibre recording the actual analytic multiplicity of one zero. -/
abbrev MultiplicityIndex (z : ZeroPoint) :=
  Fin (CanonicalZeroDivisor.multiplicity z)

/-- The multiplicity fibre has exactly the source analytic multiplicity. -/
@[simp]
theorem multiplicityIndex_card (z : ZeroPoint) :
    Fintype.card (MultiplicityIndex z) =
      CanonicalZeroDivisor.multiplicity z := by
  simp [MultiplicityIndex]

/-- The diagonal `f(H) X²` block at one actual zero, with the multiplicity
coordinate retained as matrix dimension rather than encoded as a free weight. -/
def horizontalEnergyBlock (test : ℝ → ℝ) (z : ZeroPoint) :
    Matrix (MultiplicityIndex z) (MultiplicityIndex z) ℝ :=
  Matrix.diagonal fun _ =>
    test (HeightCollisionLift.signedHeight z) *
      HeightCollisionLift.centeredOffset z ^ 2

/-- The trace of one block is its horizontal contribution with the source
analytic multiplicity. -/
@[simp]
theorem trace_horizontalEnergyBlock (test : ℝ → ℝ) (z : ZeroPoint) :
    Matrix.trace (horizontalEnergyBlock test z) =
      (CanonicalZeroDivisor.multiplicity z : ℝ) *
        (test (HeightCollisionLift.signedHeight z) *
          HeightCollisionLift.centeredOffset z ^ 2) := by
  classical
  simp [horizontalEnergyBlock, MultiplicityIndex, Finset.sum_const,
    nsmul_eq_mul, mul_assoc]

/-- Sum the ordinary traces of all multiplicity blocks in the complete
canonical closed absolute-height head. -/
def weightedBlockTraceSum (T : ℝ) (test : ℝ → ℝ) : ℝ :=
  ∑ z ∈ CanonicalZeroDivisor.heightHead T,
    Matrix.trace (horizontalEnergyBlock test z)

/-- The block-trace sum returns exactly the previously fixed finite horizontal
defect. No new zero inventory, test normalization, or multiplicity convention
is introduced. -/
@[simp]
theorem weightedBlockTraceSum_eq_horizontalDefect
    (T : ℝ) (test : ℝ → ℝ) :
    weightedBlockTraceSum T test =
      HeightCollisionLift.horizontalDefect T test := by
  classical
  simp [weightedBlockTraceSum, HeightCollisionLift.horizontalDefect, mul_assoc]

/-- Nonnegative tests give a nonnegative block-trace sum. -/
theorem weightedBlockTraceSum_nonneg
    (T : ℝ) (test : ℝ → ℝ) (htest : ∀ t, 0 ≤ test t) :
    0 ≤ weightedBlockTraceSum T test := by
  rw [weightedBlockTraceSum_eq_horizontalDefect]
  exact HeightCollisionLift.horizontalDefect_nonneg T test htest

/-- The constant-test block trace used by the exact finite RH criterion. -/
def unitBlockTraceSum (T : ℝ) : ℝ :=
  weightedBlockTraceSum T (fun _ => (1 : ℝ))

/-- Constant-test block trace and constant-test horizontal defect are the same
source quantity. -/
@[simp]
theorem unitBlockTraceSum_eq_unitHorizontalDefect (T : ℝ) :
    unitBlockTraceSum T =
      HorizontalDefectCriterion.unitHorizontalDefect T := by
  unfold unitBlockTraceSum
  rw [weightedBlockTraceSum_eq_horizontalDefect]
  exact HorizontalDefectCriterion.horizontalDefect_one T

/-- The constant-test block trace is nonnegative. -/
theorem unitBlockTraceSum_nonneg (T : ℝ) :
    0 ≤ unitBlockTraceSum T := by
  rw [unitBlockTraceSum_eq_unitHorizontalDefect]
  exact HorizontalDefectCriterion.unitHorizontalDefect_nonneg T

/-- Enlarging the closed height head can only add nonnegative block traces. -/
theorem unitBlockTraceSum_mono {T V : ℝ} (hTV : T ≤ V) :
    unitBlockTraceSum T ≤ unitBlockTraceSum V := by
  simpa only [unitBlockTraceSum_eq_unitHorizontalDefect] using
    HorizontalDefectCriterion.unitHorizontalDefect_mono hTV

/-- A negative cutoff has no canonical zero blocks and hence zero trace sum. -/
theorem unitBlockTraceSum_eq_zero_of_neg {T : ℝ} (hT : T < 0) :
    unitBlockTraceSum T = 0 := by
  simpa only [unitBlockTraceSum_eq_unitHorizontalDefect] using
    HorizontalDefectCriterion.unitHorizontalDefect_eq_zero_of_neg hT

/-- Exact finite trace criterion: the trace sum vanishes exactly when every
actual nontrivial zero in the complete closed head lies on the critical line. -/
theorem unitBlockTraceSum_eq_zero_iff_criticalLineThroughHeight (T : ℝ) :
    unitBlockTraceSum T = 0 ↔
      HorizontalDefectCriterion.CriticalLineThroughHeight T := by
  rw [unitBlockTraceSum_eq_unitHorizontalDefect]
  exact
    HorizontalDefectCriterion.unitHorizontalDefect_eq_zero_iff_criticalLineThroughHeight T

/-- Vanishing of the exact finite block trace at every real cutoff is equivalent
to the unchanged canonical Riemann hypothesis. -/
theorem riemannHypothesis_iff_unitBlockTraceSum_zero_all :
    _root_.RiemannHypothesis ↔
      ∀ T : ℝ, unitBlockTraceSum T = 0 := by
  rw [HorizontalDefectCriterion.riemannHypothesis_iff_unitHorizontalDefect_zero_all]
  constructor
  · intro zeroDefect T
    rw [unitBlockTraceSum_eq_unitHorizontalDefect]
    exact zeroDefect T
  · intro zeroTrace T
    rw [← unitBlockTraceSum_eq_unitHorizontalDefect]
    exact zeroTrace T

/-- Exact trace vanishing on any cofinal family of cutoffs implies canonical
RH. This uses cofinality for complete finite heads, not the affine-coverage
hypothesis of the separate endpoint-growth route. -/
theorem riemannHypothesis_of_cofinal_unitBlockTraceSum_zero
    (cutoff : ℕ → ℝ)
    (cofinal : ∀ t : ℝ, ∃ n : ℕ, t ≤ cutoff n)
    (zeroTrace : ∀ n : ℕ, unitBlockTraceSum (cutoff n) = 0) :
    _root_.RiemannHypothesis := by
  apply
    HorizontalDefectCriterion.riemannHypothesis_of_cofinal_unitHorizontalDefect_zero
      cutoff cofinal
  intro n
  rw [← unitBlockTraceSum_eq_unitHorizontalDefect]
  exact zeroTrace n

/-- Convert an independently proved signed balance for the exact block-trace
sum into the existing finite trace sign certificate. This is a source-return
adapter only: every balance and sign premise remains visible. -/
def finiteTraceSignCertificate_of_blockTraceBalance
    {T : ℝ}
    (continuousTerm cuspTerm boundaryTerm geometricTerm : ℝ)
    (balance :
      unitBlockTraceSum T + continuousTerm + cuspTerm + boundaryTerm =
        geometricTerm)
    (continuous_nonneg : 0 ≤ continuousTerm)
    (cusp_nonneg : 0 ≤ cuspTerm)
    (boundary_nonneg : 0 ≤ boundaryTerm)
    (geometric_nonpos : geometricTerm ≤ 0) :
    HorizontalDefectCriterion.FiniteTraceSignCertificate T where
  continuousTerm := continuousTerm
  cuspTerm := cuspTerm
  boundaryTerm := boundaryTerm
  geometricTerm := geometricTerm
  balance := by
    simpa only [unitBlockTraceSum_eq_unitHorizontalDefect] using balance
  continuous_nonneg := continuous_nonneg
  cusp_nonneg := cusp_nonneg
  boundary_nonneg := boundary_nonneg
  geometric_nonpos := geometric_nonpos

/-- One independently sourced signed block-trace balance forces the exact
finite trace to vanish. -/
theorem unitBlockTraceSum_eq_zero_of_blockTraceBalance
    {T : ℝ}
    {continuousTerm cuspTerm boundaryTerm geometricTerm : ℝ}
    (balance :
      unitBlockTraceSum T + continuousTerm + cuspTerm + boundaryTerm =
        geometricTerm)
    (continuous_nonneg : 0 ≤ continuousTerm)
    (cusp_nonneg : 0 ≤ cuspTerm)
    (boundary_nonneg : 0 ≤ boundaryTerm)
    (geometric_nonpos : geometricTerm ≤ 0) :
    unitBlockTraceSum T = 0 := by
  let certificate :=
    finiteTraceSignCertificate_of_blockTraceBalance continuousTerm cuspTerm
      boundaryTerm geometricTerm balance continuous_nonneg cusp_nonneg
      boundary_nonneg geometric_nonpos
  have zeroDefect :=
    HorizontalDefectCriterion.unitHorizontalDefect_eq_zero_of_finiteTraceSignCertificate
      certificate
  rw [unitBlockTraceSum_eq_unitHorizontalDefect]
  exact zeroDefect

/-- Cofinal independently sourced block-trace balances with the displayed signs
would imply canonical RH. This theorem supplies only the exact consumer; it does
not construct any geometric, Selberg, or prismatic supplier. -/
theorem riemannHypothesis_of_cofinal_blockTraceBalances
    (cutoff : ℕ → ℝ)
    (continuousTerm cuspTerm boundaryTerm geometricTerm : ℕ → ℝ)
    (cofinal : ∀ t : ℝ, ∃ n : ℕ, t ≤ cutoff n)
    (balance : ∀ n,
      unitBlockTraceSum (cutoff n) + continuousTerm n + cuspTerm n +
          boundaryTerm n = geometricTerm n)
    (continuous_nonneg : ∀ n, 0 ≤ continuousTerm n)
    (cusp_nonneg : ∀ n, 0 ≤ cuspTerm n)
    (boundary_nonneg : ∀ n, 0 ≤ boundaryTerm n)
    (geometric_nonpos : ∀ n, geometricTerm n ≤ 0) :
    _root_.RiemannHypothesis := by
  apply
    HorizontalDefectCriterion.riemannHypothesis_of_cofinal_finiteTraceSignCertificates
      cutoff cofinal
  intro n
  exact
    finiteTraceSignCertificate_of_blockTraceBalance
      (continuousTerm n) (cuspTerm n) (boundaryTerm n) (geometricTerm n)
      (balance n) (continuous_nonneg n) (cusp_nonneg n)
      (boundary_nonneg n) (geometric_nonpos n)

end
end GRWTSK.RiemannHypothesis.HorizontalDefectBlockTrace
