/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #896. Parent: draft PR #895 at 33d50f4bf67ac1f869a084d64f9297e8f8187c0c.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredSquarefreeDivisorReduction
import Mathlib.NumberTheory.ArithmeticFunction.Moebius

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction.Moebius

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Checked Mathlib binding: Möbius square is exactly the squarefree
indicator. -/
theorem mobiusSquare_eq_squarefreeIndicator
    (n : ℕ) :
    ((ArithmeticFunction.moebius n : ℤ) : ℝ) ^ 2 =
      if Squarefree n then 1 else 0 := by
  have h := ArithmeticFunction.moebius_sq (n := n)
  exact_mod_cast h

/-- The only remaining elementary identity needed for the divisor-square
expansion: the Möbius sum over square divisors is the squarefree indicator. -/
def SquareDivisorMobiusSumIsSquarefreeIndicator : Prop :=
  ∀ n : ℕ,
    (∑ q ∈ squareDivisorSet n,
      ((ArithmeticFunction.moebius q : ℤ) : ℝ)) =
        if Squarefree n then 1 else 0

/-- The indicator identity plus Mathlib's checked Möbius-square theorem gives
the full divisor-square expansion used by the collision reduction. -/
theorem mobiusSquareDivisorExpansion_of_indicator
    (hIndicator : SquareDivisorMobiusSumIsSquarefreeIndicator) :
    MobiusSquareDivisorExpansion := by
  intro n
  rw [mobiusSquare_eq_squarefreeIndicator n]
  exact (hIndicator n).symm.symm

/-- Conversely, the earlier divisor-square expansion implies the indicator
identity, so no mathematical strength is hidden in the refactoring. -/
theorem squareDivisorIndicator_of_mobiusSquareDivisorExpansion
    (hSq : MobiusSquareDivisorExpansion) :
    SquareDivisorMobiusSumIsSquarefreeIndicator := by
  intro n
  rw [← mobiusSquare_eq_squarefreeIndicator n]
  exact (hSq n).symm

theorem mobiusSquareDivisorExpansion_iff_indicator :
    MobiusSquareDivisorExpansion ↔
      SquareDivisorMobiusSumIsSquarefreeIndicator := by
  constructor
  · exact squareDivisorIndicator_of_mobiusSquareDivisorExpansion
  · exact mobiusSquareDivisorExpansion_of_indicator

/-- Refined adapter: the previous collision reduction now needs only the
square-divisor indicator theorem, because Möbius square itself is supplied by
Mathlib. -/
def canonicalToDivisorSquareRestrictedBinaryAdapter_of_indicator
    (hIndicator : SquareDivisorMobiusSumIsSquarefreeIndicator) :
    ToDivisorSquareRestrictedBinaryAdapter :=
  canonicalToDivisorSquareRestrictedBinaryAdapter
    (mobiusSquareDivisorExpansion_of_indicator hIndicator)

structure MobiusSquareIndicatorBindingSourceData where
  theoremStatement : Prop
  mathlibMoebiusSquareBound : Prop
  squarefreeIndicatorMatched : Prop
  squareDivisorIndicatorIsolated : Prop
  equivalenceWithPriorPremiseMatched : Prop
  downstreamAdapterMatched : Prop
  squareDivisorIndicatorProvedLocally : Prop

def MobiusSquareIndicatorBindingSource
    (d : MobiusSquareIndicatorBindingSourceData) : Prop :=
  d.theoremStatement ∧
  d.mathlibMoebiusSquareBound ∧
  d.squarefreeIndicatorMatched ∧
  d.squareDivisorIndicatorIsolated ∧
  d.equivalenceWithPriorPremiseMatched ∧
  d.downstreamAdapterMatched ∧
  d.squareDivisorIndicatorProvedLocally

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mobiusSquare_eq_squarefreeIndicator
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mobiusSquareDivisorExpansion_iff_indicator
