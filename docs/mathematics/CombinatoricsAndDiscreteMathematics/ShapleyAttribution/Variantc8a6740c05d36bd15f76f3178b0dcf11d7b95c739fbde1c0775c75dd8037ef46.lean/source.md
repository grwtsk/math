# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ShapleyAttribution.Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8194d2de0c21e5ed4a6e552f6d336b399bb9cf5` · SHA-256 `c8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
