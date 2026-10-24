# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Node.Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b158e1337bad8c77e3a4f22e031e2a16696023ad` · SHA-256 `533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
