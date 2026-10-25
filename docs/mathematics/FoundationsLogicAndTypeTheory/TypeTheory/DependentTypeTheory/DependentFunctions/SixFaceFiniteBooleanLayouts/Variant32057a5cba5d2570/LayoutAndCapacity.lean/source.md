# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SixFaceFiniteBooleanLayouts.Variant32057a5cba5d2570.LayoutAndCapacity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48f80b32bebedbbfff8464ca4c7ae1110ac8974f` · SHA-256 `bfc2c40a83a61a665ea5f1866e04f164855f6d82925cb26dc6d2b805867793d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Complete six-face finite Boolean layout and capacity
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 32057a5cba5d2570cc184abb3480ed8781a9447057dfa3ce0d31022f03078989
Organized SHA-256: c63fd48742d254a74e638a01e6d6374b5afae9cf6071ef587d8b591957d30c77
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Pure finite dependent layout only; all side positivity/source capacity premises preserved. No cell-zero condition, cubical topology, runtime action or foreign implementation correctness is added. -/

/-!
# Six-face cube presentation

This is the formal presentation shape used to classify the Rust `bits-to-cube`
mode. It is a finite layout, not a cubical-topology construction.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SixFaceFiniteBooleanLayouts.Variant32057a5cba5d2570

/-- Stable six-face serialization order. -/
inductive Face where
  | front
  | back
  | top
  | bottom
  | left
  | right
  deriving DecidableEq, Repr

/-- One square, six-face Boolean presentation with zero-padding capacity. -/
structure Presentation where
  side : Nat
  sidePositive : 0 < side
  sourceBitCount : Nat
  cell : Face → Fin side → Fin side → Bool
  sourceFits : sourceBitCount ≤ 6 * side * side

/-- Total number of presented face cells. -/
def Presentation.surfaceCapacity (presentation : Presentation) : Nat :=
  6 * presentation.side * presentation.side

/-- Padding is the unused suffix of the face presentation. -/
def Presentation.paddingBitCount (presentation : Presentation) : Nat :=
  presentation.surfaceCapacity - presentation.sourceBitCount

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SixFaceFiniteBooleanLayouts.Variant32057a5cba5d2570
```
