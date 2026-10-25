# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.EndomapGraphsAndDiagonal.Varianta330bd9a635a18f2.GraphPointFixedSet

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b7bfb4459302a17e892f41c42dea8742648bcf0` · SHA-256 `e71c9f8b9a67f3e9aef6d4bae495f4bce3d387f7a9be65afaedb4740ac0335db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
GraphPointFixedSet — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: a330bd9a635a18f219f3025cd215fd0b7fb59c56e3cb9b1ff352349a371b4a8f
Organized SHA-256: b502477191351b0f048f5127ff10d07e7bca9102aa3e5815c57bcdee8a001337
PMD: 510.0.010 set theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete two-coordinate record, exact endomap graph constructor, representation equation and diagonal-if-and-only-if-fixed theorem. This is arbitrary-set graph/diagonal mathematics; no topology, attraction, unique fixed point, continuous flow or execution is asserted. -/

import BitMatrix.Codec.Profiles
import BitMatrix.Geometry.CarrierGrid
import BitMatrix.Runtime.Semantics

/-!
# Concrete formal/runtime representation relations

These are typed models of the records exchanged with the runtime.  They prove
that abstraction preserves the stated operations.  They do not, on their own,
verify foreign JavaScript or Rust bytes. `BitMatrix.Runtime.ForeignTrace`
provides the separate checked-byte boundary for the two canonical document
encoders; executable conformance vectors remain bounded evidence for the
larger JavaScript geometry surface.
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
