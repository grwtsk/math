import DAF.Universe.Authority
import Mathlib.Data.Finset.Basic

/-!
# Canonical DAF terrain nodes and relations
-/

namespace DAF.Universe

inductive TerrainNodeKind
  | definition
  | theorem
  | structure
  | constructor
  | instance
  | schema
  | runtimeOperation
  | test
  | documentation
  | importedTheorem
  | externalContext
  deriving DecidableEq, Repr, Inhabited

inductive TerrainRelation
  | dependsOn
  | specializes
  | instantiates
  | represents
  | refines
  | testedBy
  | importedFrom
  | equivalentTo
  | contradicts
  | foldsTo
  | harmonicTransport
  | runtimeRealization
  deriving DecidableEq, Repr, Inhabited

/-- One source-bound semantic object in the generated universe. -/
structure TerrainNode where
  id : TerrainNodeId
  kind : TerrainNodeKind
  stableConceptIds : Finset ConceptId
  canonicalName : String
  sourceLocation : SourceLocation
  sourceDigest : Digest
  normalizedType : Option NormalizedType
  authority : SourceAuthority
  internal : Bool
  nonclaims : Finset Nonclaim
  deriving DecidableEq

/-- Proof-relevant relation certificate.  `valid` is the mathematical content;
the certificate field prevents a Boolean edge from standing in for it. -/
structure RelationCertificate (relation : TerrainRelation)
    (source target : TerrainNodeId) where
  evidenceId : StableId
  valid : Prop
  certified : valid

/-- Oriented relation edge in the terrain. -/
structure TerrainEdgeDescriptor where
  id : TerrainEdgeId
  source : TerrainNodeId
  target : TerrainNodeId
  relation : TerrainRelation
  sourceDigest : Digest
  targetDigest : Digest
  authority : ResponseAuthority
  deriving DecidableEq, Repr

/-- Higher cell recording a finite compatible diagram. -/
structure TerrainCellDescriptor where
  id : TerrainCellId
  dimension : Nat
  boundaryEdges : Finset TerrainEdgeId
  identityDigest : Digest
  deriving DecidableEq

/-- Runtime binding without any theorem-authority promotion. -/
structure RuntimeBindingDescriptor where
  id : RuntimeBindingId
  terrainNode : TerrainNodeId
  runtimePath : String
  operation : String
  sourceDigest : Digest
  soundnessDeclaration : Option TerrainNodeId
  deriving DecidableEq, Repr

/-- External authority retained as a cited capability, not a local theorem. -/
structure ExternalAuthorityDescriptor where
  id : ExternalAuthorityId
  title : String
  locator : String
  digest : Option Digest
  authority : SourceAuthority
  deriving DecidableEq, Repr

end DAF.Universe
