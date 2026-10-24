# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TwoElementShapley.AveragedIncrements

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2004add810956bff3ebb81f406bf30fd67850f52` · SHA-256 `be56a1d841504754be2873f27fd3a18fd7caa4a8ee0bb97cb98d406b5651e6f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# Uncompiled individually reviewed candidate: Two-element Shapley averaged increments

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
Source original SHA256: 1678164e1baa581c51245cc0c2b0c0aab85c8542b2dd458f2463c5cfb79ae9bf
Organized source SHA256: b0dcd27c5a78df01cdc366212d1507ef2ddf81a407d642aca49fcb0261adc278
Review: attribution-254-review-000018.
PMD: 510.7 combinatorics and discrete mathematics; editorial navigation only.
Only the two exact averaged-increment definitions are in this component.
No distinctness of the two named elements is assumed or added; no general
finite-universe Shapley theorem is asserted.
Original source documentation describes the complete unsplit source context.
No Lean compilation, proof acceptance or public umbrella admission is asserted.
-/

import Mathematics.SemiLocalDefect.PositiveCapacity

/-!
# Exact two-prime Shapley attribution

This module proves the complete two-prime case directly.  Each attribution is
the average of the two possible conditional insertion histories.  Positivity
follows from capacity monotonicity and efficiency follows by exact
telescoping.  The unrestricted finite-universe combinatorial theorem remains
an explicit open obligation in the theorem-status registry.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TwoElementShapley

open Mathematics.SemiLocalDefect

def twoPrimeAttributionFirst
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (first second : Prime) :
    DiagonalOperator Coordinate :=
  fun coordinate =>
    (capacity.increment ∅ first coordinate +
      capacity.increment {second} first coordinate) / 2

def twoPrimeAttributionSecond
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (first second : Prime) :
    DiagonalOperator Coordinate :=
  fun coordinate =>
    (capacity.increment ∅ second coordinate +
      capacity.increment {first} second coordinate) / 2

end GRWTSK.CombinatoricsAndDiscreteMathematics.TwoElementShapley
```
