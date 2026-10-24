# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OctahedralChain.Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da9b34e333b414a63e3d87d700c724fa54d8ec63` · SHA-256 `ae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.PrismaticGeometry.Sphere

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

/-- The sign of a coordinate direction. -/
inductive OctahedralSign where
  | positive
  | negative
deriving Repr, DecidableEq

/-- Integer orientation weight of a coordinate sign. -/
def octahedralSignWeight : OctahedralSign → Int
  | .positive => 1
  | .negative => -1

/-- The six vertices/directions of the coordinate octahedron. -/
inductive OctahedralVertex where
  | x : OctahedralSign → OctahedralVertex
  | y : OctahedralSign → OctahedralVertex
  | z : OctahedralSign → OctahedralVertex
deriving Repr, DecidableEq

/-- The twelve edges, oriented in the common axis order `x < y < z`. -/
inductive OctahedralEdge where
  | xy : OctahedralSign → OctahedralSign → OctahedralEdge
  | xz : OctahedralSign → OctahedralSign → OctahedralEdge
  | yz : OctahedralSign → OctahedralSign → OctahedralEdge
deriving Repr, DecidableEq

/-- One triangular face for every choice of signs `(sx, sy, sz)`. -/
structure OctahedralFace where
  xSign : OctahedralSign
  ySign : OctahedralSign
  zSign : OctahedralSign
deriving Repr, DecidableEq

/-- Stable runtime identifier of an octahedral vertex. -/
def octahedralVertexId : OctahedralVertex → String
  | .x .positive => "v-xp"
  | .x .negative => "v-xn"
  | .y .positive => "v-yp"
  | .y .negative => "v-yn"
  | .z .positive => "v-zp"
  | .z .negative => "v-zn"

/-- Stable runtime identifier of an octahedral edge. -/
def octahedralEdgeId : OctahedralEdge → String
  | .xy .positive .positive => "edge-v-xp-v-yp"
  | .xy .positive .negative => "edge-v-xp-v-yn"
  | .xy .negative .positive => "edge-v-xn-v-yp"
  | .xy .negative .negative => "edge-v-xn-v-yn"
  | .xz .positive .positive => "edge-v-xp-v-zp"
  | .xz .positive .negative => "edge-v-xp-v-zn"
  | .xz .negative .positive => "edge-v-xn-v-zp"
  | .xz .negative .negative => "edge-v-xn-v-zn"
  | .yz .positive .positive => "edge-v-yp-v-zp"
  | .yz .positive .negative => "edge-v-yp-v-zn"
  | .yz .negative .positive => "edge-v-yn-v-zp"
  | .yz .negative .negative => "edge-v-yn-v-zn"

/-- Stable runtime identifier of an octahedral face. -/
def octahedralFaceId : OctahedralFace → String
  | ⟨.positive, .positive, .positive⟩ => "face-xp-yp-zp"
  | ⟨.positive, .positive, .negative⟩ => "face-xp-yp-zn"
  | ⟨.positive, .negative, .positive⟩ => "face-xp-yn-zp"
  | ⟨.positive, .negative, .negative⟩ => "face-xp-yn-zn"
  | ⟨.negative, .positive, .positive⟩ => "face-xn-yp-zp"
  | ⟨.negative, .positive, .negative⟩ => "face-xn-yp-zn"
  | ⟨.negative, .negative, .positive⟩ => "face-xn-yn-zp"
  | ⟨.negative, .negative, .negative⟩ => "face-xn-yn-zn"

/-- Canonical phase order of the six vertices/directions. -/
def octahedralVertices : List OctahedralVertex :=
  [.x .negative, .x .positive,
   .y .negative, .y .positive,
   .z .negative, .z .positive]

/-- Canonical stable order of all twelve edges. -/
def octahedralEdges : List OctahedralEdge :=
  [.xy .negative .negative, .xy .negative .positive,
   .xz .negative .negative, .xz .negative .positive,
   .xy .positive .negative, .xy .positive .positive,
   .xz .positive .negative, .xz .positive .positive,
   .yz .negative .negative, .yz .negative .positive,
   .yz .positive .negative, .yz .positive .positive]

/-- Canonical stable order of all eight faces. -/
def octahedralFaces : List OctahedralFace :=
  [⟨.positive, .positive, .positive⟩,
   ⟨.negative, .positive, .positive⟩,
   ⟨.negative, .negative, .positive⟩,
   ⟨.positive, .negative, .positive⟩,
   ⟨.positive, .positive, .negative⟩,
   ⟨.negative, .positive, .negative⟩,
   ⟨.negative, .negative, .negative⟩,
   ⟨.positive, .negative, .negative⟩]

/-- Oriented boundary of an edge. -/
def octahedralEdgeBoundary :
    OctahedralEdge → List (Int × OctahedralVertex)
  | .xy sx sy => [(-1, .x sx), (1, .y sy)]
  | .xz sx sz => [(-1, .x sx), (1, .z sz)]
  | .yz sy sz => [(-1, .y sy), (1, .z sz)]

/-- Simplicial boundary `[y,z] - [x,z] + [x,y]` of a face. -/
def octahedralFaceBoundary
    (face : OctahedralFace) : List (Int × OctahedralEdge) :=
  [(1, .yz face.ySign face.zSign),
   (-1, .xz face.xSign face.zSign),
   (1, .xy face.xSign face.ySign)]

/-- Orientation coefficient of a face in the fundamental sphere chain. -/
def octahedralFaceCoefficient (face : OctahedralFace) : Int :=
  octahedralSignWeight face.xSign *
    octahedralSignWeight face.ySign *
    octahedralSignWeight face.zSign

/-- The absent cells above dimension two. -/
inductive OctahedralEmptyCell

/-- Dimension-indexed octahedral cells. -/
def OctahedralCell : Nat → Type
  | 0 => OctahedralVertex
  | 1 => OctahedralEdge
  | 2 => OctahedralFace
  | _ => OctahedralEmptyCell

def octahedralCellLabel :
    (k : Nat) → OctahedralCell k → String
  | 0, cell => octahedralVertexId cell
  | 1, cell => octahedralEdgeId cell
  | 2, cell => octahedralFaceId cell
  | .succ (.succ (.succ _)), cell => nomatch cell

def octahedralBoundaryCells :
    (k : Nat) → OctahedralCell (k + 1) →
      List (Int × OctahedralCell k)
  | 0, edge => octahedralEdgeBoundary edge
  | 1, face => octahedralFaceBoundary face
  | .succ (.succ _), cell => nomatch cell

/-- Exact cardinality witnesses for the three explicit nonempty dimensions. -/
def OctahedralFiniteSound : Prop :=
  octahedralVertices.length = 6 ∧
  octahedralEdges.length = 12 ∧
  octahedralFaces.length = 8

theorem octahedralFiniteSoundProof : OctahedralFiniteSound := by
  exact ⟨rfl, rfl, rfl⟩

/-- The explicit finite octahedral cell complex. -/
def octahedralCellComplex : FiniteCellComplex where
  Cell := OctahedralCell
  cellLabel := octahedralCellLabel
  boundaryCells := octahedralBoundaryCells
  dimensionBound := 2
  finiteSound := OctahedralFiniteSound
  finiteSoundProof := octahedralFiniteSoundProof

/-! ## Closed fundamental chain -/

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

/-- Coefficient of one vertex after collecting equal terms in a vertex chain. -/
def octahedralVertexCoefficient
    (chain : Chain octahedralCellComplex 0)
    (vertex : OctahedralVertex) : Int :=
  chain.terms.foldl
    (fun total term =>
      if term.2 = vertex then total + term.1 else total)
    0

/-- The singleton two-chain generated by one face. -/
def octahedralFaceChain
    (face : OctahedralFace) : Chain octahedralCellComplex 2 where
  terms := [(1, face)]

/-- The twice-applied boundary of one face. -/
def octahedralFaceBoundarySquared
    (face : OctahedralFace) : Chain octahedralCellComplex 0 :=
  Chain.boundary (Chain.boundary (octahedralFaceChain face))

/-- The boundary operator squares to zero coefficient-wise on every face. -/
def OctahedralBoundarySquaredZero : Prop :=
  ∀ face : OctahedralFace, ∀ vertex : OctahedralVertex,
    octahedralVertexCoefficient
      (octahedralFaceBoundarySquared face) vertex = 0

theorem octahedralBoundarySquaredZeroProof :
    OctahedralBoundarySquaredZero := by
  intro face vertex
  cases face with
  | mk xSign ySign zSign =>
      cases xSign <;> cases ySign <;> cases zSign <;>
        cases vertex with
        | x sign => cases sign <;> rfl
        | y sign => cases sign <;> rfl
        | z sign => cases sign <;> rfl

def octahedralClosedSphereChain :
    ClosedChain octahedralCellComplex 2 octahedralSphereChain where
  closed := OctahedralSphereClosed
  proof := octahedralSphereClosedProof

end PrismaticGeometry
end Cube
end Boolean
```
