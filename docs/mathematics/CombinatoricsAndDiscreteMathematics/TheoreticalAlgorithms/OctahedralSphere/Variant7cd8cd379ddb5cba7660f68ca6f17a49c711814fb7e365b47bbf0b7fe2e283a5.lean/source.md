# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OctahedralSphere.Variant7cd8cd379ddb5cba7660f68ca6f17a49c711814fb7e365b47bbf0b7fe2e283a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72309790f099b4ce7f2813ad59cee9b666a13c35` · SHA-256 `206ca3347bbf222c4275ca894468b5146da2559c7bfb4e4a8a1c11c7ba80d1ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OctahedralSign.Variant7fdfc966c106fd2877680004da177b7f63d3894a665691139329d38e844665a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7fdfc966c106fd2877680004da177b7f63d3894a665691139329d38e844665a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.OctahedralSign.Variant7fdfc966c106fd2877680004da177b7f63d3894a665691139329d38e844665a3","mathematical_subject":"Computation.DataStructures","original_sha256":"7fdfc966c106fd2877680004da177b7f63d3894a665691139329d38e844665a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/PrismaticGeometry/OctahedralSphere.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.PrismaticGeometry.Sphere

/-!
# A concrete octahedral ratio sphere

This module gives the finite prismatic-geometry vocabulary a fully explicit
two-sphere fixture.  The six signed coordinate directions are the vertices of
an octahedron; the twelve signed coordinate-plane edges and eight oriented
triangular faces form its finite cell complex.

The fundamental two-chain uses the coefficient `sx * sy * sz` on the face
`(sx, sy, sz)`.  With every face boundary written in the common axis order
`x < y < z`, the two faces incident to any edge have opposite coefficients.
`octahedralSphereClosedProof` checks this cancellation constructively.

The export records at the end contain only stable identifiers, dimensions,
integer incidence coefficients, exact angle ratios, and chart membership.
They are intended as the runtime serialization boundary.  The fixture remains
finite syntax and supplies no analytic or prismatic-comparison authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OctahedralSign.Variant7fdfc966c106fd2877680004da177b7f63d3894a665691139329d38e844665a3

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

/-! ## Null-centered frame and closed fundamental chain -/

def octahedralDirectionIndex : OctahedralVertex → Nat
  | .x .positive => 0
  | .y .positive => 1
  | .z .positive => 2
  | .x .negative => 3
  | .y .negative => 4
  | .z .negative => 5

def octahedralOpposite : OctahedralVertex → OctahedralVertex
  | .x .positive => .x .negative
  | .x .negative => .x .positive
  | .y .positive => .y .negative
  | .y .negative => .y .positive
  | .z .positive => .z .negative
  | .z .negative => .z .positive

def octahedralPolarity : OctahedralVertex → Int
  | .x sign | .y sign | .z sign => octahedralSignWeight sign

def octahedralPhaseNumerator : OctahedralVertex → Int
  | .x .positive => 0
  | .y .positive => 1
  | .z .positive => 2
  | .x .negative => 3
  | .y .negative => 4
  | .z .negative => 5

def OctahedralDirectionIndexSound : Prop :=
  ∀ direction, octahedralDirectionIndex direction < 6

theorem octahedralDirectionIndexSoundProof :
    OctahedralDirectionIndexSound := by
  intro direction
  cases direction with
  | x sign => cases sign <;> decide
  | y sign => cases sign <;> decide
  | z sign => cases sign <;> decide

/-- Six exact phase directions with antipodes separated by three sixth-turns. -/
def octahedralDirectionFrame : DirectionFrame where
  dim := 3
  Direction := OctahedralVertex
  directionIndex := octahedralDirectionIndex
  directionIndexSound := OctahedralDirectionIndexSound
  directionIndexProof := octahedralDirectionIndexSoundProof
  nullLabel := "octahedral null center"
  opposite := octahedralOpposite
  opposite_involutive := by
    intro direction
    cases direction with
    | x sign => cases sign <;> rfl
    | y sign => cases sign <;> rfl
    | z sign => cases sign <;> rfl
  polarity := octahedralPolarity
  fullTurnDenominator := 6
  fullTurnPositive := by decide
  phaseNumerator := octahedralPhaseNumerator

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

/-- Concrete two-sphere shadow centered at the octahedral null point. -/
def octahedralSphereShadow : NullCenteredSphereShadow where
  dim := 2
  directionFrame := octahedralDirectionFrame
  complex := octahedralCellComplex
  sphereChain := octahedralSphereChain
  sphereClosed := octahedralClosedSphereChain
  radiusLabel := "unit combinatorial radius"
  angularCoordinateHash := 6012008
  finiteSound :=
    OctahedralFiniteSound ∧
      OctahedralBoundarySquaredZero ∧
      OctahedralSphereClosed
  finiteSoundProof :=
    ⟨octahedralFiniteSoundProof,
     octahedralBoundarySquaredZeroProof,
     octahedralSphereClosedProof⟩

/-! ## Exact north/south ratio charts -/

/-- North chart: four equatorial directions plus the positive z pole. -/
def octahedralNorthDirections :
    List OctahedralVertex :=
  [.x .positive, .x .negative, .y .positive, .y .negative, .z .positive]

/-- South chart: the same overlap plus the negative z pole. -/
def octahedralSouthDirections :
    List OctahedralVertex :=
  [.x .positive, .x .negative, .y .positive, .y .negative, .z .negative]

def OctahedralChartSound
    (directions : List OctahedralVertex)
    (coordinate : OctahedralVertex → AngleRatio) : Prop :=
  directions.Nodup ∧
    ∀ direction,
      direction ∈ directions →
        coordinate direction = octahedralDirectionFrame.angleOf direction

def octahedralNorthCoordinate : OctahedralVertex → AngleRatio :=
  octahedralDirectionFrame.angleOf

def octahedralSouthCoordinate : OctahedralVertex → AngleRatio :=
  octahedralDirectionFrame.angleOf

theorem octahedralNorthDirectionsNodup :
    octahedralNorthDirections.Nodup := by
  decide

theorem octahedralSouthDirectionsNodup :
    octahedralSouthDirections.Nodup := by
  decide

def octahedralNorthChart : AngularChart octahedralSphereShadow where
  chartLabel := "chart:north"
  chartDirections := octahedralNorthDirections
  angleCoordinate := octahedralNorthCoordinate
  chartSound :=
    OctahedralChartSound
      octahedralNorthDirections octahedralNorthCoordinate
  chartSoundProof := by
    exact ⟨octahedralNorthDirectionsNodup, fun _ _ => rfl⟩

def octahedralSouthChart : AngularChart octahedralSphereShadow where
  chartLabel := "chart:south"
  chartDirections := octahedralSouthDirections
  angleCoordinate := octahedralSouthCoordinate
  chartSound :=
    OctahedralChartSound
      octahedralSouthDirections octahedralSouthCoordinate
  chartSoundProof := by
    exact ⟨octahedralSouthDirectionsNodup, fun _ _ => rfl⟩

def octahedralCharts : List (AngularChart octahedralSphereShadow) :=
  [octahedralNorthChart, octahedralSouthChart]

def OctahedralChartCoverage : Prop :=
  ∀ direction : OctahedralVertex,
    ∃ chart,
      chart ∈ octahedralCharts ∧
        direction ∈ chart.chartDirections

theorem octahedralChartCoverageProof : OctahedralChartCoverage := by
  intro direction
  cases direction with
  | x sign =>
      cases sign with
      | positive =>
          exact ⟨octahedralNorthChart,
            List.Mem.head _, List.Mem.head _⟩
      | negative =>
          exact ⟨octahedralNorthChart,
            List.Mem.head _,
            List.Mem.tail _ (List.Mem.head _)⟩
  | y sign =>
      cases sign with
      | positive =>
          exact ⟨octahedralNorthChart,
            List.Mem.head _,
            List.Mem.tail _
              (List.Mem.tail _ (List.Mem.head _))⟩
      | negative =>
          exact ⟨octahedralNorthChart,
            List.Mem.head _,
            List.Mem.tail _
              (List.Mem.tail _
                (List.Mem.tail _ (List.Mem.head _)))⟩
  | z sign =>
      cases sign with
      | positive =>
          exact ⟨octahedralNorthChart,
            List.Mem.head _,
            List.Mem.tail _
              (List.Mem.tail _
                (List.Mem.tail _
                  (List.Mem.tail _ (List.Mem.head _))))⟩
      | negative =>
          exact ⟨octahedralSouthChart,
            List.Mem.tail _ (List.Mem.head _),
            List.Mem.tail _
              (List.Mem.tail _
                (List.Mem.tail _
                  (List.Mem.tail _ (List.Mem.head _))))⟩

theorem octahedralChartMembershipCases
    (chart : AngularChart octahedralSphereShadow)
    (membership : chart ∈ octahedralCharts) :
    chart = octahedralNorthChart ∨
      chart = octahedralSouthChart := by
  change chart ∈ [octahedralNorthChart, octahedralSouthChart] at membership
  cases membership with
  | head => exact Or.inl rfl
  | tail _ tailMembership =>
      cases tailMembership with
      | head => exact Or.inr rfl
      | tail _ impossible => cases impossible

/-- On the four-direction overlap, both charts use the same exact ratio. -/
def OctahedralRatioCompatibility : Prop :=
  ∀ first, first ∈ octahedralCharts →
  ∀ second, second ∈ octahedralCharts →
  ∀ direction,
    direction ∈ first.chartDirections →
    direction ∈ second.chartDirections →
      first.angleCoordinate direction =
        second.angleCoordinate direction

theorem octahedralRatioCompatibilityProof :
    OctahedralRatioCompatibility := by
  intro first firstMem second secondMem direction _ _
  have firstCases :
      first = octahedralNorthChart ∨
        first = octahedralSouthChart := by
    exact octahedralChartMembershipCases first firstMem
  have secondCases :
      second = octahedralNorthChart ∨
        second = octahedralSouthChart := by
    exact octahedralChartMembershipCases second secondMem
  rcases firstCases with rfl | rfl <;>
    rcases secondCases with rfl | rfl <;> rfl

/-- Concrete exact ratio atlas for the octahedral sphere. -/
def octahedralRatioSphere : RatioSphere octahedralSphereShadow where
  charts := octahedralCharts
  coversAngularDirections := OctahedralChartCoverage
  coversProof := octahedralChartCoverageProof
  ratioCompatibility := OctahedralRatioCompatibility
  ratioCompatibilityProof := octahedralRatioCompatibilityProof

theorem octahedralRatioSphereSound :
    OctahedralChartCoverage ∧ OctahedralRatioCompatibility :=
  ratioSphere_sound octahedralRatioSphere

/-! ## Export-only records for the runtime boundary -/

structure OctahedralExactVectorExport where
  x : Int
  y : Int
  z : Int
deriving Repr, DecidableEq

/-- Runtime vertex record.  For coordinate-axis vertices the exact direction
triple is already a unit vector, so no floating-point authority is needed. -/
structure OctahedralVertexExport where
  vertexId : String
  direction : OctahedralExactVectorExport
  unitVector : OctahedralExactVectorExport
  oppositeVertexId : String
deriving Repr, DecidableEq

structure OctahedralOrientedEdgeRefExport where
  edgeId : String
  orientation : Int
deriving Repr, DecidableEq

structure OctahedralEdgeExport where
  edgeId : String
  vertexIds : List String
  incidentFaceIds : List String
deriving Repr, DecidableEq

structure OctahedralFaceExport where
  faceId : String
  vertexIds : List String
  orientedEdges : List OctahedralOrientedEdgeRefExport
  adjacentFaceIds : List String
  chartIds : List String
deriving Repr, DecidableEq

/-- The six vertex-star charts consumed by the globe renderer. -/
structure OctahedralRenderingChartExport where
  chartId : String
  centerVertexId : String
  faceIds : List String
  coordinateModel : String
  transitionModel : String
deriving Repr, DecidableEq

/-- Canonical topology record matching the Rust runtime vocabulary. -/
structure OctahedralTopologyExport where
  schema : String
  topologyObjectId : String
  dimension : Nat
  vertices : List OctahedralVertexExport
  edges : List OctahedralEdgeExport
  faces : List OctahedralFaceExport
  charts : List OctahedralRenderingChartExport
  eulerCharacteristic : Int
  closedOrientedSurface : Bool
  chartCoverComplete : Bool
  authorityBoundary : String
  projectionLoss : String
deriving Repr, DecidableEq

/-- Exact direction/angle coordinate in the proof-facing ratio atlas. -/
structure OctahedralAngleRatioExport where
  directionId : String
  numerator : Int
  denominator : Nat
deriving Repr, DecidableEq

/-- One proof-facing ratio chart, augmented with its exact face domain. -/
structure OctahedralRatioChartExport where
  chartId : String
  directionIds : List String
  faceIds : List String
  angleCoordinates : List OctahedralAngleRatioExport
deriving Repr, DecidableEq

/-- The exact two-chart atlas remains distinct from the six rendering stars. -/
structure OctahedralRatioAtlasExport where
  schema : String
  topologySchema : String
  charts : List OctahedralRatioChartExport
deriving Repr, DecidableEq

/-- Explicit authority statement exported beside the source topology. -/
def octahedralRuntimeHashAuthorityBoundary : String :=
  "The runtime topology_id is a derived content hash, not theorem authority. It is accepted as the identity of this finite export only through a checked serialization bridge to topologyObjectId and schema."

/-- A runtime content hash may be related to the Lean source object only by a
checked serialization bridge.  The bridge certifies identity of finite data;
it does not certify any mathematical theorem represented by that data. -/
structure OctahedralCheckedSerializationBridge where
  sourceObjectId : String
  runtimeTopologyId : String
  runtimeSchema : String
  serializedPayloadHash : String
  sourceObjectMatches :
    sourceObjectId = "boolean.cube.prismatic-geometry.octahedral-sphere"
  schemaMatches :
    runtimeSchema = "surface-foundry.octahedral-sphere.v1"
  runtimeHashMatchesSerializedPayload : Prop
  runtimeHashMatchesSerializedPayloadProof :
    runtimeHashMatchesSerializedPayload

theorem octahedralRuntimeHashRequiresCheckedSerializationBridge
    (bridge : OctahedralCheckedSerializationBridge) :
    bridge.sourceObjectId =
        "boolean.cube.prismatic-geometry.octahedral-sphere" ∧
    bridge.runtimeSchema = "surface-foundry.octahedral-sphere.v1" ∧
    bridge.runtimeHashMatchesSerializedPayload :=
  ⟨bridge.sourceObjectMatches,
   bridge.schemaMatches,
   bridge.runtimeHashMatchesSerializedPayloadProof⟩

def octahedralExactDirection :
    OctahedralVertex → OctahedralExactVectorExport
  | .x .positive => ⟨1, 0, 0⟩
  | .x .negative => ⟨-1, 0, 0⟩
  | .y .positive => ⟨0, 1, 0⟩
  | .y .negative => ⟨0, -1, 0⟩
  | .z .positive => ⟨0, 0, 1⟩
  | .z .negative => ⟨0, 0, -1⟩

def octahedralExactNormSquared
    (vector : OctahedralExactVectorExport) : Int :=
  vector.x * vector.x + vector.y * vector.y + vector.z * vector.z

def octahedralNegateExactVector
    (vector : OctahedralExactVectorExport) : OctahedralExactVectorExport :=
  ⟨-vector.x, -vector.y, -vector.z⟩

def OctahedralExactDirectionSound : Prop :=
  ∀ direction : OctahedralVertex,
    octahedralExactNormSquared (octahedralExactDirection direction) = 1 ∧
    octahedralExactDirection (octahedralOpposite direction) =
      octahedralNegateExactVector (octahedralExactDirection direction)

theorem octahedralExactDirectionSoundProof :
    OctahedralExactDirectionSound := by
  intro direction
  cases direction with
  | x sign => cases sign <;> exact ⟨rfl, rfl⟩
  | y sign => cases sign <;> exact ⟨rfl, rfl⟩
  | z sign => cases sign <;> exact ⟨rfl, rfl⟩

def octahedralVertexExport
    (vertex : OctahedralVertex) : OctahedralVertexExport :=
  { vertexId := octahedralVertexId vertex
    direction := octahedralExactDirection vertex
    unitVector := octahedralExactDirection vertex
    oppositeVertexId := octahedralVertexId (octahedralOpposite vertex) }

def octahedralRenderingChartId : OctahedralVertex → String
  | .x .negative => "chart-v-xn"
  | .x .positive => "chart-v-xp"
  | .y .negative => "chart-v-yn"
  | .y .positive => "chart-v-yp"
  | .z .negative => "chart-v-zn"
  | .z .positive => "chart-v-zp"

def octahedralFaceContainsEdge
    (face : OctahedralFace) (edge : OctahedralEdge) : Bool :=
  (octahedralFaceBoundary face).any
    (fun term => if term.2 = edge then true else false)

def octahedralFaceContainsVertex
    (face : OctahedralFace) (vertex : OctahedralVertex) : Bool :=
  if vertex = .x face.xSign then true else
  if vertex = .y face.ySign then true else
  if vertex = .z face.zSign then true else false

def octahedralEdgeExport
    (edge : OctahedralEdge) : OctahedralEdgeExport :=
  { edgeId := octahedralEdgeId edge
    vertexIds :=
      (octahedralEdgeBoundary edge).map
        (fun term => octahedralVertexId term.2)
    incidentFaceIds :=
      (octahedralFaces.filter
        (fun face => octahedralFaceContainsEdge face edge)).map
          octahedralFaceId }

/-- Runtime-oriented vertex order.  Negative fundamental coefficients reverse
the canonical `(x,y,z)` orientation to `(y,x,z)`. -/
def octahedralOrientedFaceVertices :
    OctahedralFace → List OctahedralVertex
  | ⟨.positive, .positive, .positive⟩ =>
      [.x .positive, .y .positive, .z .positive]
  | ⟨.negative, .positive, .positive⟩ =>
      [.y .positive, .x .negative, .z .positive]
  | ⟨.negative, .negative, .positive⟩ =>
      [.x .negative, .y .negative, .z .positive]
  | ⟨.positive, .negative, .positive⟩ =>
      [.y .negative, .x .positive, .z .positive]
  | ⟨.positive, .positive, .negative⟩ =>
      [.y .positive, .x .positive, .z .negative]
  | ⟨.negative, .positive, .negative⟩ =>
      [.x .negative, .y .positive, .z .negative]
  | ⟨.negative, .negative, .negative⟩ =>
      [.y .negative, .x .negative, .z .negative]
  | ⟨.positive, .negative, .negative⟩ =>
      [.x .positive, .y .negative, .z .negative]

/-- Runtime edge order follows the three directed sides of the oriented face. -/
def octahedralOrientedFaceEdges
    (face : OctahedralFace) : List OctahedralOrientedEdgeRefExport :=
  if octahedralFaceCoefficient face = 1 then
    [{ edgeId := octahedralEdgeId (.xy face.xSign face.ySign)
       orientation := 1 },
     { edgeId := octahedralEdgeId (.yz face.ySign face.zSign)
       orientation := 1 },
     { edgeId := octahedralEdgeId (.xz face.xSign face.zSign)
       orientation := -1 }]
  else
    [{ edgeId := octahedralEdgeId (.xy face.xSign face.ySign)
       orientation := -1 },
     { edgeId := octahedralEdgeId (.xz face.xSign face.zSign)
       orientation := 1 },
     { edgeId := octahedralEdgeId (.yz face.ySign face.zSign)
       orientation := -1 }]

/-- Lexicographically ordered adjacent-face identifiers, matching the runtime
`BTreeSet` order. -/
def octahedralAdjacentFaceIds : OctahedralFace → List String
  | ⟨.positive, .positive, .positive⟩ =>
      ["face-xn-yp-zp", "face-xp-yn-zp", "face-xp-yp-zn"]
  | ⟨.negative, .positive, .positive⟩ =>
      ["face-xn-yn-zp", "face-xn-yp-zn", "face-xp-yp-zp"]
  | ⟨.negative, .negative, .positive⟩ =>
      ["face-xn-yn-zn", "face-xn-yp-zp", "face-xp-yn-zp"]
  | ⟨.positive, .negative, .positive⟩ =>
      ["face-xn-yn-zp", "face-xp-yn-zn", "face-xp-yp-zp"]
  | ⟨.positive, .positive, .negative⟩ =>
      ["face-xn-yp-zn", "face-xp-yn-zn", "face-xp-yp-zp"]
  | ⟨.negative, .positive, .negative⟩ =>
      ["face-xn-yn-zn", "face-xn-yp-zp", "face-xp-yp-zn"]
  | ⟨.negative, .negative, .negative⟩ =>
      ["face-xn-yn-zp", "face-xn-yp-zn", "face-xp-yn-zn"]
  | ⟨.positive, .negative, .negative⟩ =>
      ["face-xn-yn-zn", "face-xp-yn-zp", "face-xp-yp-zn"]

def octahedralFaceExport
    (face : OctahedralFace) : OctahedralFaceExport :=
  let vertices := octahedralOrientedFaceVertices face
  { faceId := octahedralFaceId face
    vertexIds := vertices.map octahedralVertexId
    orientedEdges := octahedralOrientedFaceEdges face
    adjacentFaceIds := octahedralAdjacentFaceIds face
    chartIds := vertices.map
      octahedralRenderingChartId }

def octahedralRenderingChartExport
    (vertex : OctahedralVertex) : OctahedralRenderingChartExport :=
  { chartId := octahedralRenderingChartId vertex
    centerVertexId := octahedralVertexId vertex
    faceIds :=
      (octahedralFaces.filter
        (fun face => octahedralFaceContainsVertex face vertex)).map
          octahedralFaceId
    coordinateModel := "exact-oriented-barycentric-ratios"
    transitionModel := "shared-face-identity-transport" }

def octahedralTopologyExport : OctahedralTopologyExport :=
  { schema := "surface-foundry.octahedral-sphere.v1"
    topologyObjectId := "boolean.cube.prismatic-geometry.octahedral-sphere"
    dimension := 2
    vertices := octahedralVertices.map octahedralVertexExport
    edges := octahedralEdges.map octahedralEdgeExport
    faces := octahedralFaces.map octahedralFaceExport
    charts := octahedralVertices.map octahedralRenderingChartExport
    eulerCharacteristic := 2
    closedOrientedSurface := true
    chartCoverComplete := true
    authorityBoundary :=
      "This is a finite oriented octahedral 2-sphere topology and exact unit-vector realization. It does not construct an analytic sphere, prismatic cohomology, or theorem authority."
    projectionLoss :=
      "A request-time cell field is aggregated onto eight octahedral faces. Cell-scale position, chart-scale variation, and analytic completion are not preserved by this projection." }

def octahedralAngleRatioExport
    (direction : OctahedralVertex) : OctahedralAngleRatioExport :=
  { directionId := octahedralVertexId direction
    numerator := octahedralPhaseNumerator direction
    denominator := 6 }

def octahedralNorthFaceIds : List String :=
  ["face-xp-yp-zp", "face-xn-yp-zp",
   "face-xn-yn-zp", "face-xp-yn-zp"]

def octahedralSouthFaceIds : List String :=
  ["face-xp-yp-zn", "face-xn-yp-zn",
   "face-xn-yn-zn", "face-xp-yn-zn"]

def octahedralRatioAtlasExport : OctahedralRatioAtlasExport :=
  { schema := "surface-foundry.octahedral-ratio-atlas.v1"
    topologySchema := "surface-foundry.octahedral-sphere.v1"
    charts :=
      [{ chartId := "chart:north"
         directionIds := octahedralNorthDirections.map octahedralVertexId
         faceIds := octahedralNorthFaceIds
         angleCoordinates :=
           octahedralNorthDirections.map octahedralAngleRatioExport },
       { chartId := "chart:south"
         directionIds := octahedralSouthDirections.map octahedralVertexId
         faceIds := octahedralSouthFaceIds
         angleCoordinates :=
           octahedralSouthDirections.map octahedralAngleRatioExport }] }

def octahedralExportedVertexIds : List String :=
  octahedralTopologyExport.vertices.map (fun vertex => vertex.vertexId)

def octahedralExportedEdgeIds : List String :=
  octahedralTopologyExport.edges.map (fun edge => edge.edgeId)

def octahedralExportedFaceIds : List String :=
  octahedralTopologyExport.faces.map (fun face => face.faceId)

def octahedralExportedCellIds : List String :=
  octahedralExportedVertexIds ++
    octahedralExportedEdgeIds ++
    octahedralExportedFaceIds

/-- The export contains exactly six vertices, twelve edges, and eight faces. -/
theorem octahedralExportCounts :
    octahedralTopologyExport.vertices.length = 6 ∧
    octahedralTopologyExport.edges.length = 12 ∧
    octahedralTopologyExport.faces.length = 8 := by
  exact ⟨rfl, rfl, rfl⟩

/-- Stable cell identifiers are globally unique across all dimensions. -/
theorem octahedralExportedCellIdsNodup :
    octahedralExportedCellIds.Nodup := by
  decide

/-- Every exported incidence reference names an exported lower cell. -/
def octahedralExportBoundaryReferencesValidCheck : Bool :=
  octahedralTopologyExport.edges.all
      (fun edge => edge.vertexIds.all octahedralExportedVertexIds.contains) &&
    octahedralTopologyExport.faces.all
      (fun face =>
        face.vertexIds.all octahedralExportedVertexIds.contains &&
        face.orientedEdges.all
          (fun edge => octahedralExportedEdgeIds.contains edge.edgeId))

theorem octahedralExportBoundaryReferencesValid :
    octahedralExportBoundaryReferencesValidCheck = true := by
  rfl

def octahedralRenderingFaceCoverageSignature : List Bool :=
  octahedralExportedFaceIds.map
    (fun faceId =>
      octahedralTopologyExport.charts.any
        (fun chart => chart.faceIds.contains faceId))

def octahedralRatioFaceCoverageSignature : List Bool :=
  octahedralExportedFaceIds.map
    (fun faceId =>
      octahedralRatioAtlasExport.charts.any
        (fun chart => chart.faceIds.contains faceId))

def octahedralRenderingFaceReferencesValidCheck : Bool :=
  octahedralTopologyExport.charts.all
    (fun chart => chart.faceIds.all octahedralExportedFaceIds.contains)

def octahedralRatioFaceReferencesValidCheck : Bool :=
  octahedralRatioAtlasExport.charts.all
    (fun chart => chart.faceIds.all octahedralExportedFaceIds.contains)

/-- The six rendering stars and exact two-chart ratio atlas cover exactly the
same canonical eight face identifiers, with no external references. -/
theorem octahedralRenderingAndRatioAtlasesShareFaceCover :
    octahedralRenderingFaceCoverageSignature =
      octahedralRatioFaceCoverageSignature ∧
    octahedralRenderingFaceCoverageSignature =
      [true, true, true, true, true, true, true, true] ∧
    octahedralRenderingFaceReferencesValidCheck = true ∧
    octahedralRatioFaceReferencesValidCheck = true := by
  exact ⟨rfl, rfl, rfl, rfl⟩

/-- The proof-facing exported atlas names the two checked ratio charts. -/
theorem octahedralRatioAtlasMatchesProofCharts :
    octahedralRatioAtlasExport.charts.map (fun chart => chart.chartId) =
      octahedralCharts.map (fun chart => chart.chartLabel) := by
  rfl

/-- The coordinate frame is three-dimensional around an intrinsic 2-sphere. -/
theorem octahedralAmbientDimensionSound :
    octahedralSphereShadow.directionFrame.dim =
      octahedralSphereShadow.dim + 1 := by
  rfl

end PrismaticGeometry
end Cube
end Boolean
```
