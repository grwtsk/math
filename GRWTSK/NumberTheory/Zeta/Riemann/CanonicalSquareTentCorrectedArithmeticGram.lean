/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection
import Mathlib.Tactic

set_option autoImplicit false

open scoped BigOperators

/-!
# Recomputing the arithmetic Gram after three-tent moment correction

The earlier source constructs a nonzero *actual* combination of the
stage-two, stage-three and stage-four canonical tents whose ordinary and
reciprocal Bombieri moments both vanish. The present module binds its exact
cofactor coefficients to the repository's preexisting three-dimensional
finite arithmetic Hermitian form.

The arithmetic source Gram is recomputed on the corrected vector. Its
spectral approximation is bounded by the full inherited square-tent
zero-head error, including every stage, and that bound vanishes at each
fixed corrected vector. No old uncorrected basis value is substituted
for this corrected diagonal.

The form here is the REPOSITORY ARITHMETIC Gram, not the classical
Guinand--Weil form of the corrected function. The admissible classical
test class, exact polarized Weil-form comparison, source normalization,
density, and RH criterion remain separate unresolved obligations.

SOURCE_DRAFT only: no pinned Lean elaboration, fresh kernel checking,
or transitive axiom audit has yet been established for this new module.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization
open GRWTSK.Analysis.ErrorBounds

/-- Source cofactor vector in the exact finite stage-2/3/4 arithmetic space.
The labels are `Fin 3` indices 0, 1 and 2; the represented square stages
are 2, 3 and 4. No classical test space is constructed by this definition. -/
noncomputable def correctedCoordinates : Combination 2 :=
  fun i => if i.1 = 0 then cofactorZero else
    if i.1 = 1 then cofactorOne else cofactorTwo

/-- Exact ordinary moment identity in the same three arithmetic coordinates. -/
theorem correctedCoordinates_ordinary_balance :
    correctedCoordinates (0 : Fin 3) * (realOrdinaryMoment 0 : ℂ) +
      correctedCoordinates (1 : Fin 3) * (realOrdinaryMoment 1 : ℂ) +
      correctedCoordinates (2 : Fin 3) * (realOrdinaryMoment 2 : ℂ) = 0 := by
  simpa [correctedCoordinates] using cofactor_ordinary_balance

/-- Exact reciprocal moment identity, with no imposed zero moment omitted. -/
theorem correctedCoordinates_multiplicative_balance :
    correctedCoordinates (0 : Fin 3) * (realMultiplicativeMoment 0 : ℂ) +
      correctedCoordinates (1 : Fin 3) * (realMultiplicativeMoment 1 : ℂ) +
      correctedCoordinates (2 : Fin 3) * (realMultiplicativeMoment 2 : ℂ) = 0 := by
  simpa [correctedCoordinates] using cofactor_multiplicative_balance

/-- The new coefficient vector is the one producing the actual previously
constructed physical corrected tent, not a fitted or formal surrogate. -/
theorem correctedThreeTent_eq_coordinate_realization (x : ℝ) :
    correctedThreeTent x =
      (correctedCoordinates (0 : Fin 3) * canonicalTentComplex 0 x +
        correctedCoordinates (1 : Fin 3) * canonicalTentComplex 1 x) +
        correctedCoordinates (2 : Fin 3) * canonicalTentComplex 2 x := by
  simp [correctedThreeTent, correctedCoordinates]

/-- The corrected arithmetic source vector itself has not collapsed to zero.
Its third coordinate is the nonzero previous two-tent moment determinant. -/
theorem correctedCoordinates_ne_zero : correctedCoordinates ≠ 0 := by
  intro hz
  apply cofactorTwo_ne_zero
  have hthird :=
    congrArg (fun u : Combination 2 => u (2 : Fin 3)) hz
  simpa [correctedCoordinates] using hthird

/-- Source arithmetic diagonal of the corrected, source-bound cofactor vector.
It is not identified with a classical Bombieri/Weil diagonal. -/
noncomputable def correctedSourceDiagonal : ℝ :=
  realTargetForm correctedCoordinates correctedCoordinates

/-- The finite-height zeta source approximation on the *same corrected*
coefficient vector. No changes of basis or source normalization are suppressed. -/
noncomputable def correctedFiniteDiagonal (N : ℕ) : ℝ :=
  realFiniteForm N correctedCoordinates correctedCoordinates

/-- Full coefficientwise omitted-height error budget for that vector. -/
noncomputable def correctedTailBudget (N : ℕ) : ℝ :=
  pairError N correctedCoordinates correctedCoordinates

/-- Recomputed Gram expansion. In particular, every corrected coefficient
enters with its actual squared modulus, rather than carrying over the old
uncorrected basis matrix as if no correction had been made. -/
theorem correctedSourceDiagonal_eq_weighted_sum :
    correctedSourceDiagonal =
      ∑ i : Fin 3,
        Complex.normSq (correctedCoordinates i) *
          arithmeticCrossCoefficient i i := by
  unfold correctedSourceDiagonal realTargetForm
  rw [sourcePolarizedForm_self_re]
  rfl

/-- Arithmetic Gram positivity follows from the independently established
prime-power source stages, not from a classical Weil positivity assumption. -/
theorem correctedSourceDiagonal_nonnegative : 0 ≤ correctedSourceDiagonal := by
  change 0 ≤ realTargetForm correctedCoordinates correctedCoordinates
  exact realTargetForm_diagonal_nonnegative correctedCoordinates

/-- The actual corrected arithmetic Gram differs from its finite zero-head
approximation by at most the complete three-coordinate source tail. -/
theorem correctedFiniteDiagonal_error_le (N : ℕ) :
    |correctedSourceDiagonal - correctedFiniteDiagonal N| ≤
      correctedTailBudget N := by
  change |realTargetForm correctedCoordinates correctedCoordinates -
      realFiniteForm N correctedCoordinates correctedCoordinates| ≤
    pairError N correctedCoordinates correctedCoordinates
  exact abs_realComparison_le_pairError N correctedCoordinates correctedCoordinates

/-- The finite-height spectral side need not be positive at each height;
its complete negative defect is bounded by the source tail. -/
theorem correctedFiniteDiagonal_lower_bound (N : ℕ) :
    -correctedTailBudget N ≤ correctedFiniteDiagonal N := by
  simpa only [correctedTailBudget, correctedFiniteDiagonal,
    combinationLowerDefect] using
    (realFiniteForm_diagonal_lower_bound N correctedCoordinates)

/-- Pointwise vanishing of the complete source tail at this fixed,
source-derived corrected coefficient vector. This is NOT uniform convergence
over the full classical Weil test space. -/
theorem correctedTailBudget_vanishes :
    VanishesAtInfinity correctedTailBudget := by
  simpa only [correctedTailBudget] using
    (pairError_vanishes correctedCoordinates correctedCoordinates)

/-- The finite spectral diagonal converges to the recomputed arithmetic
diagonal in the repository's epsilon-error sense, not the classical
Weil-form topology. -/
theorem correctedFiniteDiagonal_comparison_vanishes :
    VanishesAtInfinity
      (fun N => correctedSourceDiagonal - correctedFiniteDiagonal N) := by
  simpa only [correctedSourceDiagonal, correctedFiniteDiagonal] using
    (realComparison_vanishes correctedCoordinates correctedCoordinates)

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram
