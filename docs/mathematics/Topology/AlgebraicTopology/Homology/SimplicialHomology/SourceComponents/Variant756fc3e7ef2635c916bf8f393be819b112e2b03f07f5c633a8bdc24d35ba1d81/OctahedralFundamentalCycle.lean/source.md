# Complete source: GRWTSK.Topology.AlgebraicTopology.Homology.SimplicialHomology.SourceComponents.Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.OctahedralFundamentalCycle

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `517737d75785ec92bf7b4d02f87d43d17cdd2437` · SHA-256 `cfb009a4620c161724d0e905014911620ab6e1daff8de97a1495e7f468df567c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Deterministic replay of an established source split; no new conceptual review.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81
Organized SHA-256: a19f8784cac5e7f27aa97842c884d371bf2d4ce1cb09b26532ec9b4a003bc97f
Established decision SHA-256: 1927a648f263e6a88bca6f7e86ec6a9532b3104d2a4bf1dce9780c9abb97a075
PMD: 510.4.030.040.020 simplicial homology
Source mathematics, hypotheses, namespaces, imports and proof text remain source copies.
Comments may differ from the established source; all exact versions remain archived.
Uncompiled; no Lean/Lake, public umbrella admission, proof acceptance or authorship determination.
-/

import Boolean.Cube.PrismaticGeometry.Sphere
import GRWTSK.Topology.CombinatorialTopology.SimplicialComplexes.SourceComponents.Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.OctahedralFiniteCells

/-!
# The finite octahedral chain substrate

This module owns the exact finite cells, incidence data, fundamental two-chain,
and coefficient-wise boundary identities used by downstream finite topology
tasks.  It contains no generated task, renderer output, chart presentation, or
runtime authority.
-/

namespace Boolean
namespace Cube
namespace PrismaticGeometry

/-! ## Stable finite topology -/

/-- The oriented fundamental two-chain of the octahedron. -/
def octahedralSphereChain : Chain octahedralCellComplex 2 where
  terms := octahedralFaces.map
    (fun face => (octahedralFaceCoefficient face, face))

/-- The raw edge chain obtained from the fundamental two-chain. -/
def octahedralSphereBoundary : Chain octahedralCellComplex 1 :=
  Chain.boundary octahedralSphereChain

/-- Coefficient of one edge after collecting equal terms in an edge chain. -/
def octahedralEdgeCoefficient
    (chain : Chain octahedralCellComplex 1)
    (edge : OctahedralEdge) : Int :=
  chain.terms.foldl
    (fun total term =>
      if term.2 = edge then total + term.1 else total)
    0

/-- Closedness means that every collected edge coefficient is zero. -/
def OctahedralSphereClosed : Prop :=
  ∀ edge : OctahedralEdge,
    octahedralEdgeCoefficient octahedralSphereBoundary edge = 0

/-- Every edge occurs in two faces with opposite fundamental coefficients. -/
theorem octahedralSphereClosedProof : OctahedralSphereClosed := by
  intro edge
  cases edge with
  | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
  | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
  | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

def octahedralClosedSphereChain :
    ClosedChain octahedralCellComplex 2 octahedralSphereChain where
  closed := OctahedralSphereClosed
  proof := octahedralSphereClosedProof

end PrismaticGeometry
end Cube
end Boolean
```
