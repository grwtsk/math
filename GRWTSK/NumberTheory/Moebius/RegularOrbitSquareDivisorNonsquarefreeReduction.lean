/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #899. Parent: draft PR #897 at c39d2cc23e630b4b00c6ff9093e060ba76191883.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitMobiusSquareIndicatorBinding

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction.Moebius

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- On a squarefree natural, every square divisor has root one. -/
theorem squareDivisor_eq_one_of_squarefree
    {n q : ℕ}
    (hn : Squarefree n)
    (hq : q * q ∣ n) :
    q = 1 := by
  have hunit : IsUnit q := hn q hq
  exact Nat.isUnit_iff.mp hunit

/-- The finite square-divisor carrier of a squarefree natural is {1}. -/
theorem squareDivisorSet_eq_singleton_one_of_squarefree
    {n : ℕ}
    (hn : Squarefree n) :
    squareDivisorSet n = {1} := by
  ext q
  constructor
  · intro hq
    have hdiv := (Finset.mem_filter.mp hq).2
    have : q = 1 := squareDivisor_eq_one_of_squarefree hn hdiv
    simp [this]
  · intro hq
    have : q = 1 := by simpa using hq
    subst q
    unfold squareDivisorSet
    simp

/-- Squarefree case of the square-divisor Möbius indicator identity. -/
theorem squareDivisorMobiusSum_eq_one_of_squarefree
    {n : ℕ}
    (hn : Squarefree n) :
    (∑ q ∈ squareDivisorSet n,
      ((ArithmeticFunction.moebius q : ℤ) : ℝ)) = 1 := by
  rw [squareDivisorSet_eq_singleton_one_of_squarefree hn]
  simp [ArithmeticFunction.moebius_apply_one]

/-- Sole remaining elementary supplier: cancellation of the square-divisor
Möbius sum for nonsquarefree naturals. -/
def NonsquarefreeSquareDivisorMobiusCancellation : Prop :=
  ∀ n : ℕ, ¬ Squarefree n →
    (∑ q ∈ squareDivisorSet n,
      ((ArithmeticFunction.moebius q : ℤ) : ℝ)) = 0

/-- The nonsquarefree cancellation supplier completes the full indicator
identity; the squarefree branch is now repository-scripted. -/
theorem squareDivisorIndicator_of_nonsquarefreeCancellation
    (hCancel : NonsquarefreeSquareDivisorMobiusCancellation) :
    SquareDivisorMobiusSumIsSquarefreeIndicator := by
  intro n
  by_cases hn : Squarefree n
  · rw [if_pos hn]
    exact squareDivisorMobiusSum_eq_one_of_squarefree hn
  · rw [if_neg hn]
    exact hCancel n hn

/-- Conversely the full indicator identity supplies exactly the remaining
nonsquarefree cancellation. -/
theorem nonsquarefreeCancellation_of_squareDivisorIndicator
    (hIndicator : SquareDivisorMobiusSumIsSquarefreeIndicator) :
    NonsquarefreeSquareDivisorMobiusCancellation := by
  intro n hn
  simpa [hn] using hIndicator n

theorem squareDivisorIndicator_iff_nonsquarefreeCancellation :
    SquareDivisorMobiusSumIsSquarefreeIndicator ↔
      NonsquarefreeSquareDivisorMobiusCancellation := by
  constructor
  · exact nonsquarefreeCancellation_of_squareDivisorIndicator
  · exact squareDivisorIndicator_of_nonsquarefreeCancellation

structure SquareDivisorNonsquarefreeReductionSourceData where
  theoremStatement : Prop
  squarefreeDefinitionUsed : Prop
  squareDivisorRootOneMatched : Prop
  squarefreeCarrierSingletonMatched : Prop
  squarefreeMobiusSumOneMatched : Prop
  nonsquarefreeCancellationIsolated : Prop
  equivalenceWithIndicatorMatched : Prop
  nonsquarefreeCancellationProved : Prop

def SquareDivisorNonsquarefreeReductionSource
    (d : SquareDivisorNonsquarefreeReductionSourceData) : Prop :=
  d.theoremStatement ∧
  d.squarefreeDefinitionUsed ∧
  d.squareDivisorRootOneMatched ∧
  d.squarefreeCarrierSingletonMatched ∧
  d.squarefreeMobiusSumOneMatched ∧
  d.nonsquarefreeCancellationIsolated ∧
  d.equivalenceWithIndicatorMatched ∧
  d.nonsquarefreeCancellationProved

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
