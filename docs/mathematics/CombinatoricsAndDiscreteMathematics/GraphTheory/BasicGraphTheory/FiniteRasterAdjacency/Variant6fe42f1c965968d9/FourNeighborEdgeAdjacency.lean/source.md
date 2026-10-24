# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.FiniteRasterAdjacency.Variant6fe42f1c965968d9.FourNeighborEdgeAdjacency

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6cfcf6c0973fd1411797ece9a97c0cfb1cc75915` · SHA-256 `ebd90a005cee5b1fdfbdd4ed5d3e4638e1c6401a723b7aa67e9ac7200cba70fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
FourNeighborEdgeAdjacency — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14
Organized SHA-256: de2c6219d73572c5bf91049f28edd7bf941de68224b40546e6098d2147a44c3e
PMD: 510.7.030.010 basic graph theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact four-neighbor row/column adjacency, its decision instance, symmetry and irreflexivity. Original typed GridCell provider is retained; no connectivity or continuous-topology conclusion is added. -/

import BitMatrix.Geometry.GridCell
import Mathlib.Data.Finset.Basic

/-!
# Finite raster cubical complex

This module constructs the cells and face maps of the rectangular two-
dimensional cubical complex underlying a Boolean raster.  It is a finite
combinatorial object; none of the definitions below asserts that a selected
foreground is a manifold or that rasterization preserves continuous topology.
-/

namespace BitMatrix.Topology.Raster

open BitMatrix.Runtime.Semantics

/-- Four-neighbor adjacency: two distinct squares share an entire edge. -/
def EdgeAdjacent {rows columns : Nat}
    (left right : GridCell rows columns) : Prop :=
  (left.row = right.row ∧
      (left.column.val + 1 = right.column.val ∨
        right.column.val + 1 = left.column.val)) ∨
    (left.column = right.column ∧
      (left.row.val + 1 = right.row.val ∨
        right.row.val + 1 = left.row.val))

instance edgeAdjacentDecidable {rows columns : Nat}
    (left right : GridCell rows columns) : Decidable (EdgeAdjacent left right) :=
  by
    unfold EdgeAdjacent
    exact inferInstance

theorem edgeAdjacent_symmetric {rows columns : Nat}
    {left right : GridCell rows columns} :
    EdgeAdjacent left right ↔ EdgeAdjacent right left := by
  constructor <;> rintro (h | h)
  · exact Or.inl ⟨h.1.symm, h.2.symm⟩
  · exact Or.inr ⟨h.1.symm, h.2.symm⟩
  · exact Or.inl ⟨h.1.symm, h.2.symm⟩
  · exact Or.inr ⟨h.1.symm, h.2.symm⟩

theorem not_edgeAdjacent_self {rows columns : Nat}
    (cell : GridCell rows columns) : ¬ EdgeAdjacent cell cell := by
  intro adjacent
  rcases adjacent with h | h <;> omega

end BitMatrix.Topology.Raster
```
