# Complete source: GRWTSK.Topology.AlgebraicTopology.Homology.SimplicialHomology.SourceComponents.Variantae88ac453195b5c4.OctahedralFundamentalCycle

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e7e8254d2a480be66278b720b79ef44c035a111` · SHA-256 `47d55c6f96f37f767da2915f72c751d985fe5b189fd0c07416722a81992c343a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
OctahedralFundamentalCycle — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c
Organized SHA-256: a395bbd805b0ae56b8c1d5fe9eef7a1000237e06ac062bdbd7f6481c54e519bf
PMD: 510.4.030.040.020 simplicial homology (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole fundamental chain, coefficientwise zero boundary and exact ClosedChain package; no homology group or nontrivial class asserted. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Boolean.Cube.PrismaticGeometry.Sphere
import GRWTSK.Topology.CombinatorialTopology.SimplicialComplexes.SourceComponents.Variantae88ac453195b5c4.OctahedralFiniteCells

/-!
# The finite octahedral chain substrate

This module owns the exact finite cells, incidence data, fundamental two-chain,
and coefficient-wise boundary identities used by downstream finite topology
tasks.  It contains no generated task, renderer export, chart presentation, or
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
