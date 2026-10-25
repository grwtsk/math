# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.EndomapGraphsAndDiagonal.Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a.GraphPointFixedSet

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e9bdabbe976b1b89742488367aba415cc2d172f` · SHA-256 `4e8aa3f580218909b373958aec1ef4774e93b4deb92c0a28d12e11af6a9544d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Deterministic replay of an established source split; no new conceptual review.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a
Organized SHA-256: 20e244a174896a660df9ce7fc06a9ad2b2b1ea79142ccf9379faf2607f653a9f
Established decision SHA-256: c257a39aec8a78062eea2c3a7b7075faf0fc227f50b4d0149bebcfa9aa408e7b
PMD: 510.0.010 set theory
Source mathematics, hypotheses, namespaces, imports and proof text remain source copies.
Comments may differ from the established source; all exact versions remain archived.
Uncompiled; no Lean/Lake, public umbrella admission, proof acceptance or authorship determination.
-/

import BitMatrix.Codec.Profiles
import BitMatrix.Geometry.CarrierGrid
import BitMatrix.Runtime.Semantics

/-!
# Concrete formal/runtime representation relations

These are typed models of the records exchanged with the runtime.  They prove
that abstraction preserves the stated operations.  They do not, on their own,
verify foreign JavaScript or Rust bytes; executable conformance vectors remain
the authority for that final bridge.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.EndomapGraphsAndDiagonal.Varianta330bd9a635a18f2

open BitMatrix.Runtime.Semantics
open BitMatrix.Geometry.CarrierGrid
open BitMatrix.Codec
open BitMatrix.Codec.Profiles

namespace BitMatrix.Runtime.Correspondence

/-- The two fields used by the runtime graph-point presentation. -/
structure GraphPointRecord (Point : Type*) where
  input : Point
  output : Point

/-- Concrete relation between graph-point records and doubled carrier points. -/
def graphPointRepresentation (Point : Type) :
    RepresentationRelation (CarrierProduct Point) (GraphPointRecord Point) where
  abstract record := (record.input, record.output)
  represents record semantic := (record.input, record.output) = semantic
  represents_iff _ _ := Iff.rfl

/-- Execute the graph-point constructor in record form. -/
def executeGraphPoint {Point : Type} (dynamics : Point → Point)
    (point : Point) : GraphPointRecord Point :=
  ⟨point, dynamics point⟩

/-- The runtime record constructor represents the formal graph point. -/
theorem executeGraphPoint_represents {Point : Type}
    (dynamics : Point → Point) (point : Point) :
    (graphPointRepresentation Point).represents
      (executeGraphPoint dynamics point) (graphPoint dynamics point) :=
  rfl

/-- The represented runtime graph point lies on the diagonal exactly when its
input is a fixed point. -/
theorem executeGraphPoint_liesOnDiagonal_iff_fixed {Point : Type}
    (dynamics : Point → Point) (point : Point) :
    LiesOnDiagonal
        ((graphPointRepresentation Point).abstract
          (executeGraphPoint dynamics point)) ↔
      point ∈ FixedSet dynamics := by
  change LiesOnDiagonal (graphPoint dynamics point) ↔
    point ∈ FixedSet dynamics
  exact (mem_fixedSet_iff_graphPoint_liesOnDiagonal dynamics point).symm

end BitMatrix.Runtime.Correspondence

end GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.EndomapGraphsAndDiagonal.Varianta330bd9a635a18f2
```
