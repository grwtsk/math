-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TerrainNodeKind.Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TerrainNodeKind.Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Universe/Node.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Universe.Authority
import Mathlib.Data.Finset.Basic

/-!
# Canonical DAF terrain nodes and relations
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TerrainNodeKind.Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7

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
