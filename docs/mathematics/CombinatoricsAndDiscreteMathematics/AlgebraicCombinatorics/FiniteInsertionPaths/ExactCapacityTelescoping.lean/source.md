# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.AlgebraicCombinatorics.FiniteInsertionPaths.ExactCapacityTelescoping

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8844e05e25176ad7305648c33150778ba9b936d6` · SHA-256 `b08caec5666442e75d08cddcc0e9b6b8654f65ce87701e8d62fdb8363dbb0688`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# Uncompiled individually reviewed candidate: Finite insertion paths and exact capacity telescoping

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are provisional user-specified roles, not independently established
model mechanisms or final per-declaration authorship. Existing notices remain
preserved in the exact source archives and copied source documentation.
Source original SHA256: c0e0ccebf05813a69a50bb7c80cacdefc0221420d4cfb419028049b92fb9967d
Organized source SHA256: cc406a54a5f5d32748e9fcf0fb71f7344afe1f8fdd16c4984f5037cefa8dfab1
Review: attribution-254-review-000021.
PMD: 510.7.020 algebraic combinatorics; editorial navigation only.
Finite insertion-list definitions, the terminal-minus-initial identity, and
its same-terminal corollary stay together. The initial cut is shared and the
same_terminal premise remains explicit. No stochastic independence, graph
homotopy, arbitrary cochain exactness or convergence result is asserted.
Original source documentation describes the complete unsplit source context.
No Lean compilation, proof acceptance or public umbrella admission is asserted.
-/

import Mathematics.SemiLocalDefect.BoundaryCochain

/-!
# Finite path reconstruction

The sum of exact capacity increments along a finite insertion list equals the
terminal capacity minus the initial capacity.  Consequently two lists with
the same terminal cut have the same path sum.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.AlgebraicCombinatorics.FiniteInsertionPaths.ExactCapacityTelescoping

open Mathematics.SemiLocalDefect

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

end GRWTSK.CombinatoricsAndDiscreteMathematics.AlgebraicCombinatorics.FiniteInsertionPaths.ExactCapacityTelescoping
```
