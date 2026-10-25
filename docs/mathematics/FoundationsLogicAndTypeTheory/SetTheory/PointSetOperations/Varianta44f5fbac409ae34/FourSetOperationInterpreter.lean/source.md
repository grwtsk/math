# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.PointSetOperations.Varianta44f5fbac409ae34.FourSetOperationInterpreter

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6721f3731e012d8b9dd621a2cf785a9845ebc727` · SHA-256 `a28835ba84e10a8c3a5abfef2fa7ffd78750d3e34dfb53046ba5020447e5ba89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
FourSetOperationInterpreter — exact individually reviewed original source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: a44f5fbac409ae34d1bfbf693a2fb91c43f53c433c2d01884ccafcf1063734ee
Organized SHA-256: 9813be978a111c3694d74a9ae1451ac5bd60a96d98d19caa564c4ee64331d969
PMD: 510.0.010 set theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The complete Region abbreviation, four-case SetOperation and exact union/difference/intersection/symmetric-difference interpreter form an independent pure point-set seam. All original comments remain, without a continuity, raster or geometry-accuracy conclusion. -/

import Mathlib.Data.Set.Basic

/-!
# Stroke and continuous-region semantics

The client renders these choices numerically. This module fixes their exact
vocabulary and the point-set meaning of region combination without making a
raster-accuracy claim.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.PointSetOperations.Varianta44f5fbac409ae34

namespace BitMatrix.Geometry.Stroke

/-- A continuous region is represented extensionally by point membership. -/
abbrev Region (Point : Type) := Set Point

/-- The four supported continuous set operations. -/
inductive SetOperation where
  | union
  | subtract
  | intersect
  | exclude
  deriving DecidableEq, Repr

/-- Exact point-set semantics applied before raster sampling. -/
def combine {Point : Type}
    (operation : SetOperation)
    (left right : Region Point) : Region Point :=
  match operation with
  | .union => left ∪ right
  | .subtract => left \ right
  | .intersect => left ∩ right
  | .exclude => (left \ right) ∪ (right \ left)

end BitMatrix.Geometry.Stroke

end GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.PointSetOperations.Varianta44f5fbac409ae34
```
