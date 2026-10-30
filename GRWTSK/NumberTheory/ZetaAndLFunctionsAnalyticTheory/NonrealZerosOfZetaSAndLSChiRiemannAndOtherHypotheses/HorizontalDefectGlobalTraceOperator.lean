/- Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.HorizontalDefectBlockTrace
import Mathlib.LinearAlgebra.Matrix.Trace

set_option autoImplicit false

/-!
# One finite global operator for the horizontal RH defect

`HorizontalDefectBlockTrace` realizes each actual nontrivial zeta zero as a
finite diagonal block whose dimension is the source analytic multiplicity. This
module assembles every block in the complete canonical closed height head into
one dependent block-diagonal matrix.

For a test function `f`, the resulting finite operator acts on the index type

```text
Sigma fun z : {z // z ∈ heightHead T} => Fin (multiplicity z).
```

Its ordinary matrix trace is proved equal to the already fixed horizontal
defect

```text
sum_z multiplicity(z) * f(signedHeight z) * centeredOffset(z)^2.
```

Thus the finite spectral object preserves the complete source zero inventory,
closed cutoff, analytic multiplicity, signed height, and horizontal coordinate.
At constant test one, exact trace vanishing through every cutoff is equivalent
to the unchanged Mathlib `RiemannHypothesis` proposition, and vanishing on a
cofinal cutoff family is sufficient.

This construction does not identify the operator with an automorphic Laplacian,
Selberg transform, scattering operator, geometric return, Fredholm determinant,
prism, or prismatic complex. It supplies a precise finite spectral-side object
for those adapters. Any geometric or cohomological supplier must still prove an
exact comparison and retain continuous, cusp, boundary, completion, and
truncation terms. A conditional signed-balance consumer is included only with
all such terms and signs explicit.

Analytical disposition:

* Actual objects: the canonical finite zero head, analytic multiplicity fibres,
  the previously proved diagonal blocks, one dependent block-diagonal matrix,
  and its ordinary matrix trace.
* Primary argument: `Matrix.trace_blockDiagonal'` reduces the global trace to
  the sum of block traces; `Finset.sum_attach` identifies the subtype sum with
  the complete canonical head; the existing block theorem returns the exact
  horizontal defect.
* Source comparison: the global index cardinality is the existing analytic
  multiplicity count, and the global trace is the existing defect. Neither is
  a free interface field.
* Hostile boundaries: a negative cutoff has an empty outer head; repeated roots
  increase one fibre dimension without creating new points or heights;
  reflection partners reinforce after the centered offset is squared.
* Consumer: finite, all-height, cofinal, and conditional signed-balance returns
  to canonical RH.
* Missing supplier: no theorem constructs the geometric/cusp/continuous terms
  or proves their signs from a Selberg or prismatic source.

SOURCE_ONLY / STATIC_SOURCE_REVIEW_ONLY / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

namespace GRWTSK.RiemannHypothesis.HorizontalDefectGlobalTraceOperator

open scoped BigOperators

noncomputable section

/-- Reuse the exact source zero-point type. Point identity and analytic
multiplicity remain separate. -/
abbrev ZeroPoint := HorizontalDefectBlockTrace.ZeroPoint

/-- The complete canonical closed height head, retained as a finite subtype. -/
abbrev HeadZero (T : ℝ) :=
  {z : ZeroPoint // z ∈ CanonicalZeroDivisor.heightHead T}

/-- One global coordinate for every analytic-multiplicity copy of every actual
zero in the complete canonical height head. -/
abbrev GlobalMultiplicityIndex (T : ℝ) :=
  Sigma fun z : HeadZero T =>
    HorizontalDefectBlockTrace.MultiplicityIndex z.1

/-- The global index has exactly the existing analytic-multiplicity count. -/
theorem globalMultiplicityIndex_card (T : ℝ) :
    Fintype.card (GlobalMultiplicityIndex T) =
      CanonicalZeroDivisor.heightCount T := by
  classical
  change
    Fintype.card
        (Sigma fun z : HeadZero T =>
          HorizontalDefectBlockTrace.MultiplicityIndex z.1) =
      CanonicalZeroDivisor.heightCount T
  rw [Fintype.card_sigma]
  simp_rw [HorizontalDefectBlockTrace.multiplicityIndex_card]
  unfold CanonicalZeroDivisor.heightCount
  simpa [HeadZero, Finset.attach_eq_univ] using
    (Finset.sum_attach (CanonicalZeroDivisor.heightHead T)
      (fun z : ZeroPoint => CanonicalZeroDivisor.multiplicity z))

/-- The already proved multiplicity block, restricted to a member of the
canonical height head. -/
def headBlock (T : ℝ) (test : ℝ → ℝ) (z : HeadZero T) :
    Matrix
      (HorizontalDefectBlockTrace.MultiplicityIndex z.1)
      (HorizontalDefectBlockTrace.MultiplicityIndex z.1) ℝ :=
  HorizontalDefectBlockTrace.horizontalEnergyBlock test z.1

/-- The single finite block-diagonal operator carrying every included zero and
all of its analytic multiplicity copies. -/
def horizontalEnergyOperator (T : ℝ) (test : ℝ → ℝ) :
    Matrix (GlobalMultiplicityIndex T) (GlobalMultiplicityIndex T) ℝ :=
  Matrix.blockDiagonal' (headBlock T test)

/-- The subtype-indexed sum of all ordinary block traces. -/
def headBlockTraceSum (T : ℝ) (test : ℝ → ℝ) : ℝ :=
  ∑ z : HeadZero T, Matrix.trace (headBlock T test z)

/-- Passing from the finite subtype to the original canonical finset loses no
zero point and changes no block. -/
theorem headBlockTraceSum_eq_weightedBlockTraceSum
    (T : ℝ) (test : ℝ → ℝ) :
    headBlockTraceSum T test =
      HorizontalDefectBlockTrace.weightedBlockTraceSum T test := by
  classical
  simpa [headBlockTraceSum, headBlock,
    HorizontalDefectBlockTrace.weightedBlockTraceSum,
    HeadZero, Finset.attach_eq_univ] using
      (Finset.sum_attach (CanonicalZeroDivisor.heightHead T)
        (fun z : ZeroPoint =>
          Matrix.trace
            (HorizontalDefectBlockTrace.horizontalEnergyBlock test z)))

/-- The ordinary trace of the global block-diagonal operator is the complete
subtype-indexed block-trace sum. -/
@[simp]
theorem trace_horizontalEnergyOperator_eq_headBlockTraceSum
    (T : ℝ) (test : ℝ → ℝ) :
    Matrix.trace (horizontalEnergyOperator T test) =
      headBlockTraceSum T test := by
  classical
  unfold horizontalEnergyOperator
  rw [Matrix.trace_blockDiagonal']
  rfl

/-- Main source-return theorem: the ordinary trace of one finite global operator
is exactly the previously fixed horizontal defect. -/
@[simp]
theorem trace_horizontalEnergyOperator
    (T : ℝ) (test : ℝ → ℝ) :
    Matrix.trace (horizontalEnergyOperator T test) =
      HeightCollisionLift.horizontalDefect T test := by
  calc
    Matrix.trace (horizontalEnergyOperator T test) =
        headBlockTraceSum T test :=
      trace_horizontalEnergyOperator_eq_headBlockTraceSum T test
    _ = HorizontalDefectBlockTrace.weightedBlockTraceSum T test :=
      headBlockTraceSum_eq_weightedBlockTraceSum T test
    _ = HeightCollisionLift.horizontalDefect T test :=
      HorizontalDefectBlockTrace.weightedBlockTraceSum_eq_horizontalDefect T test

/-- Nonnegative tests give a nonnegative ordinary trace. -/
theorem trace_horizontalEnergyOperator_nonneg
    (T : ℝ) (test : ℝ → ℝ) (htest : ∀ t, 0 ≤ test t) :
    0 ≤ Matrix.trace (horizontalEnergyOperator T test) := by
  rw [trace_horizontalEnergyOperator]
  exact HeightCollisionLift.horizontalDefect_nonneg T test htest

/-- Constant-test global operator used by the exact RH criterion. -/
def unitHorizontalEnergyOperator (T : ℝ) :
    Matrix (GlobalMultiplicityIndex T) (GlobalMultiplicityIndex T) ℝ :=
  horizontalEnergyOperator T (fun _ => (1 : ℝ))

/-- The constant-test global trace is exactly the source-fixed unit horizontal
defect. -/
@[simp]
theorem trace_unitHorizontalEnergyOperator (T : ℝ) :
    Matrix.trace (unitHorizontalEnergyOperator T) =
      HorizontalDefectCriterion.unitHorizontalDefect T := by
  unfold unitHorizontalEnergyOperator
  rw [trace_horizontalEnergyOperator]
  exact HorizontalDefectCriterion.horizontalDefect_one T

/-- The constant-test global trace is nonnegative. -/
theorem trace_unitHorizontalEnergyOperator_nonneg (T : ℝ) :
    0 ≤ Matrix.trace (unitHorizontalEnergyOperator T) := by
  rw [trace_unitHorizontalEnergyOperator]
  exact HorizontalDefectCriterion.unitHorizontalDefect_nonneg T

/-- Exact finite operator criterion: its trace vanishes exactly when every
actual nontrivial zero in the complete closed head lies on the critical line. -/
theorem trace_unitHorizontalEnergyOperator_eq_zero_iff_criticalLineThroughHeight
    (T : ℝ) :
    Matrix.trace (unitHorizontalEnergyOperator T) = 0 ↔
      HorizontalDefectCriterion.CriticalLineThroughHeight T := by
  rw [trace_unitHorizontalEnergyOperator]
  exact
    HorizontalDefectCriterion.unitHorizontalDefect_eq_zero_iff_criticalLineThroughHeight T

/-- Exact all-height operator-trace criterion for canonical RH. -/
theorem riemannHypothesis_iff_trace_unitHorizontalEnergyOperator_zero_all :
    _root_.RiemannHypothesis ↔
      ∀ T : ℝ, Matrix.trace (unitHorizontalEnergyOperator T) = 0 := by
  constructor
  · intro hRH T
    rw [trace_unitHorizontalEnergyOperator]
    exact
      HorizontalDefectCriterion.unitHorizontalDefect_eq_zero_of_riemannHypothesis hRH T
  · intro zeroTrace
    apply
      (HorizontalDefectCriterion.riemannHypothesis_iff_unitHorizontalDefect_zero_all).2
    intro T
    rw [← trace_unitHorizontalEnergyOperator]
    exact zeroTrace T

/-- Exact trace vanishing on any cofinal family of complete finite heads implies
canonical RH. Cofinality here is not the affine-coverage premise of the separate
endpoint-growth route. -/
theorem riemannHypothesis_of_cofinal_operatorTrace_zero
    (cutoff : ℕ → ℝ)
    (cofinal : ∀ t : ℝ, ∃ n : ℕ, t ≤ cutoff n)
    (zeroTrace : ∀ n : ℕ,
      Matrix.trace (unitHorizontalEnergyOperator (cutoff n)) = 0) :
    _root_.RiemannHypothesis := by
  apply
    HorizontalDefectCriterion.riemannHypothesis_of_cofinal_unitHorizontalDefect_zero
      cutoff cofinal
  intro n
  rw [← trace_unitHorizontalEnergyOperator]
  exact zeroTrace n

/-- Convert an independently proved signed balance for the ordinary trace of the
actual global operator into the existing finite sign certificate. Every
correction term and sign remains an explicit premise. -/
def finiteTraceSignCertificate_of_operatorTraceBalance
    {T : ℝ}
    (continuousTerm cuspTerm boundaryTerm geometricTerm : ℝ)
    (balance :
      Matrix.trace (unitHorizontalEnergyOperator T) + continuousTerm +
          cuspTerm + boundaryTerm = geometricTerm)
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
    simpa only [trace_unitHorizontalEnergyOperator] using balance
  continuous_nonneg := continuous_nonneg
  cusp_nonneg := cusp_nonneg
  boundary_nonneg := boundary_nonneg
  geometric_nonpos := geometric_nonpos

/-- One independently sourced signed balance for the actual finite operator
forces its ordinary trace to vanish. -/
theorem trace_unitHorizontalEnergyOperator_eq_zero_of_operatorTraceBalance
    {T : ℝ}
    {continuousTerm cuspTerm boundaryTerm geometricTerm : ℝ}
    (balance :
      Matrix.trace (unitHorizontalEnergyOperator T) + continuousTerm +
          cuspTerm + boundaryTerm = geometricTerm)
    (continuous_nonneg : 0 ≤ continuousTerm)
    (cusp_nonneg : 0 ≤ cuspTerm)
    (boundary_nonneg : 0 ≤ boundaryTerm)
    (geometric_nonpos : geometricTerm ≤ 0) :
    Matrix.trace (unitHorizontalEnergyOperator T) = 0 := by
  have zeroDefect :=
    HorizontalDefectCriterion.unitHorizontalDefect_eq_zero_of_finiteTraceSignCertificate
      (finiteTraceSignCertificate_of_operatorTraceBalance
        continuousTerm cuspTerm boundaryTerm geometricTerm balance
        continuous_nonneg cusp_nonneg boundary_nonneg geometric_nonpos)
  rw [trace_unitHorizontalEnergyOperator]
  exact zeroDefect

/-- Cofinal independently sourced signed balances for the actual finite global
operators imply canonical RH. The theorem is a consumer only; it constructs no
Selberg, scattering, geometric-orbit, or prismatic supplier. -/
theorem riemannHypothesis_of_cofinal_operatorTraceBalances
    (cutoff : ℕ → ℝ)
    (continuousTerm cuspTerm boundaryTerm geometricTerm : ℕ → ℝ)
    (cofinal : ∀ t : ℝ, ∃ n : ℕ, t ≤ cutoff n)
    (balance : ∀ n,
      Matrix.trace (unitHorizontalEnergyOperator (cutoff n)) +
          continuousTerm n + cuspTerm n + boundaryTerm n = geometricTerm n)
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
    finiteTraceSignCertificate_of_operatorTraceBalance
      (continuousTerm n) (cuspTerm n) (boundaryTerm n) (geometricTerm n)
      (balance n) (continuous_nonneg n) (cusp_nonneg n)
      (boundary_nonneg n) (geometric_nonpos n)

end
end GRWTSK.RiemannHypothesis.HorizontalDefectGlobalTraceOperator
