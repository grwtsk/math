# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.CochainReconstruction.Variantc0e0ccebf05813a69a50bb7c80cacdefc0221420d4cfb419028049b92fb9967d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f534551dd4084135c73d1c9f8430fff7671c214` · SHA-256 `c0e0ccebf05813a69a50bb7c80cacdefc0221420d4cfb419028049b92fb9967d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.BoundaryCochain

/-!
# Finite path reconstruction

The sum of exact capacity increments along a finite insertion list equals the
terminal capacity minus the initial capacity.  Consequently two lists with
the same terminal cut have the same path sum.
-/

namespace Mathematics.SemiLocalDefect

def insertPath
    {Prime : Type u}
    [DecidableEq Prime] :
    List Prime → Finset Prime → Finset Prime
  | [], cut => cut
  | prime :: remaining, cut =>
      insertPath remaining (insert prime cut)

def capacityPathSum
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate) :
    List Prime → Finset Prime → DiagonalOperator Coordinate
  | [], _ => 0
  | prime :: remaining, cut =>
      capacity.increment cut prime +
        capacityPathSum capacity remaining (insert prime cut)

theorem capacityPathSum_eq_terminal_sub_initial
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (path : List Prime)
    (initial : Finset Prime) :
    capacityPathSum capacity path initial =
      capacity.value (insertPath path initial) -
        capacity.value initial := by
  induction path generalizing initial with
  | nil =>
      funext coordinate
      simp [capacityPathSum, insertPath]
  | cons prime remaining induction_hypothesis =>
      rw [capacityPathSum, induction_hypothesis]
      change
        capacity.increment initial prime +
            (capacity.value
                (insertPath remaining (insert prime initial)) -
              capacity.value (insert prime initial)) =
          capacity.value
              (insertPath remaining (insert prime initial)) -
            capacity.value initial
      funext coordinate
      simp only [PositiveCapacity.increment, Pi.add_apply, Pi.sub_apply]
      ring

theorem capacity_path_sum_independent
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (firstPath secondPath : List Prime)
    (initial : Finset Prime)
    (same_terminal :
      insertPath firstPath initial =
        insertPath secondPath initial) :
    capacityPathSum capacity firstPath initial =
      capacityPathSum capacity secondPath initial := by
  rw [
    capacityPathSum_eq_terminal_sub_initial,
    capacityPathSum_eq_terminal_sub_initial,
    same_terminal,
  ]

end Mathematics.SemiLocalDefect
```
