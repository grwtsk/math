import Mathematics.SemiLocalDefect.MobiusInteraction

/-!
# Canonical finite-universe prime attribution

Factorial Shapley weights average every predecessor history.  Positivity is
derived from capacity monotonicity; the standard finite efficiency identity is
bound by an explicit combinatorics certificate.
-/

namespace Mathematics.SemiLocalDefect

open scoped BigOperators

universe uPrime

def shapleyWeight
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (primeSet : Finset Prime)
    (_prime : Prime)
    (predecessors : Finset Prime) : ℚ :=
  (predecessors.card.factorial : ℚ) *
      ((primeSet.card -
        predecessors.card - 1).factorial : ℚ) /
    (primeSet.card.factorial : ℚ)

def shapleyDefect
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (primeSet : Finset Prime)
    (prime : Prime) :
    model.Operator :=
  ∑ predecessors ∈ (primeSet.erase prime).powerset,
    shapleyWeight primeSet prime predecessors •
      capacity.increment predecessors prime

structure ShapleyWeightCertificate
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (primeSet : Finset Prime) where
  universe_nonempty : primeSet.Nonempty
  weight_nonnegative :
    ∀ prime ∈ primeSet,
      ∀ predecessors ∈
        (primeSet.erase prime).powerset,
        0 ≤
          shapleyWeight primeSet prime predecessors

theorem shapleyDefect_nonnegative
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (primeSet : Finset Prime)
    (weights :
      ShapleyWeightCertificate primeSet)
    (prime : Prime)
    (prime_mem : prime ∈ primeSet) :
    model.Nonnegative
      (shapleyDefect capacity primeSet prime) := by
  unfold shapleyDefect
  apply operatorFinsetSum_nonnegative
    model
    ((primeSet.erase prime).powerset)
  intro predecessors predecessorsMem
  apply model.rational_smul_nonnegative
  · exact weights.weight_nonnegative
      prime prime_mem predecessors predecessorsMem
  · exact increment_nonnegative
      capacity predecessors prime

structure ShapleyEfficiencyCertificate
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (primeSet : Finset Prime) where
  weights : ShapleyWeightCertificate primeSet
  efficiency :
    ∑ prime ∈ primeSet,
        shapleyDefect capacity primeSet prime =
      capacity.defect primeSet -
        capacity.defect ∅

theorem shapley_efficiency
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {capacity :
      PrimeCutDefectCapacity model Prime}
    {primeSet : Finset Prime}
    (certificate :
      ShapleyEfficiencyCertificate
        capacity primeSet) :
    ∑ prime ∈ primeSet,
        shapleyDefect capacity primeSet prime =
      capacity.defect primeSet -
        capacity.defect ∅ :=
  certificate.efficiency

end Mathematics.SemiLocalDefect
