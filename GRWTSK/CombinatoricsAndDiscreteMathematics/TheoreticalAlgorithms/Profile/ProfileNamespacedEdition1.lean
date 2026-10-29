-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RootKind.Variant3de339d865065cbafe8e248bf2f9d1fcc777b91671bf1c8c42d1f80251a7763c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3de339d865065cbafe8e248bf2f9d1fcc777b91671bf1c8c42d1f80251a7763c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RootKind.Variant3de339d865065cbafe8e248bf2f9d1fcc777b91671bf1c8c42d1f80251a7763c","mathematical_subject":"Computation.DataStructures","original_sha256":"3de339d865065cbafe8e248bf2f9d1fcc777b91671bf1c8c42d1f80251a7763c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Projection/Profile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Projection.Kind
import MathDiscovery.Concept.Kind

/-!
# Versioned deterministic projection profiles

This record mirrors `docs/projection/profile-schema.json` field-for-field.
Only canonical discrete policy is stored here. Renderer state, learned
coordinates, floating similarity scores, source order, timestamps, and the
computed profile digest are outside the profile input object.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RootKind.Variant3de339d865065cbafe8e248bf2f9d1fcc777b91671bf1c8c42d1f80251a7763c

namespace MathDiscovery.Projection

open MathDiscovery

inductive RootKind
  | domain
  | projection
  deriving DecidableEq, Inhabited

inductive BackboneProvider
  | taxonomyDomains
  | explicit
  deriving DecidableEq, Inhabited

inductive AdapterKind
  | conceptGraph
  | conceptGraphWithAuthorityCoordinates
  | conceptGraphWithRepresentations
  | conceptGraphWithLineage
  | conceptGraphWithRuntimeBindings
  | conceptAssignmentDependencyGraph
  deriving DecidableEq, Inhabited

inductive FallbackKind
  | deepestPrincipalDomain
  | typedBackbone
  deriving DecidableEq, Inhabited

inductive FallbackSelector
  | constant
  | primaryRole
  | conceptKind
  | lifecycle
  deriving DecidableEq, Inhabited

structure Adapter where
  kind : AdapterKind
  includeAssignments : Bool
  includeRepresentations : Bool
  includeRuntimeBindings : Bool
  includeSupersessions : Bool
  selectedRoots : List StableId
  deriving DecidableEq

structure Root where
  kind : RootKind
  id : StableId
  name : Option String
  deriving DecidableEq

structure BackboneNode where
  id : StableId
  name : String
  parentId : Option StableId
  displayOrder : Option Int
  deriving DecidableEq

structure Backbone where
  provider : BackboneProvider
  nodes : List BackboneNode
  deriving DecidableEq

structure ParentRelationRule where
  /-- Governed canonical relation-kind identity. -/
  kind : RelationKindId
  orientation : ParentOrientation
  priority : Int
  explicit : Bool
  deriving DecidableEq

structure NamedRank where
  name : String
  rank : Int
  deriving DecidableEq

structure DisplayPolicy where
  relationKind : String
  policy : String
  deriving DecidableEq

structure IdentityCollapse where
  relationKinds : List String
  authorities : List String
  requireCertificate : Bool
  deriving DecidableEq

structure Fallback where
  kind : FallbackKind
  selector : Option FallbackSelector
  mapping : List (String × StableId)
  defaultNodeId : Option StableId
  priority : Int
  orphanName : String
  deriving DecidableEq

/-- The exact canonical input represented by projection-profile schema v1. -/
structure Profile where
  schemaVersion : Nat
  id : ProjectionProfileId
  version : String
  algorithmVersion : String
  axis : Axis
  adapter : Adapter
  root : Root
  backbone : Backbone
  mode : Mode
  lifecycle : List Concept.Lifecycle
  identityCollapse : IdentityCollapse
  parentRelations : List ParentRelationRule
  authorityRanks : List NamedRank
  authorityThreshold : Int
  provenanceRanks : List NamedRank
  nodeClassRanks : List NamedRank
  roleRanks : List NamedRank
  kindRanks : List NamedRank
  siblingOrder : List String
  tieBreak : String
  fallback : Fallback
  displayPolicies : List DisplayPolicy
  deriving DecidableEq

namespace Profile

/-- Fixed well-formedness and determinism requirements for the exact profile
input. The executable decoder additionally checks root/backbone and fallback
compatibility before computing the profile digest. -/
structure Valid (profile : Profile) : Prop where
  schemaVersion : profile.schemaVersion = 1
  id : profile.id.Valid
  rootId : profile.root.id.Valid
  version : profile.version ≠ ""
  algorithmVersion : profile.algorithmVersion ≠ ""
  stableTieBreak : profile.tieBreak = "stableId"
  lifecycleNonempty : profile.lifecycle ≠ []
  parentRelationKeys : (profile.parentRelations.map (·.kind)).Nodup
  authorityRankKeys : (profile.authorityRanks.map (·.name)).Nodup
  provenanceRankKeys : (profile.provenanceRanks.map (·.name)).Nodup
  nodeClassRankKeys : (profile.nodeClassRanks.map (·.name)).Nodup
  roleRankKeys : (profile.roleRanks.map (·.name)).Nodup
  kindRankKeys : (profile.kindRanks.map (·.name)).Nodup
  displayPolicyKeys : (profile.displayPolicies.map (·.relationKind)).Nodup

/-- Deterministic parenthood is a consequence of a valid profile. -/
theorem deterministic_of_valid
    {profile : Profile} (valid : profile.Valid) :
    profile.tieBreak = "stableId" :=
  valid.stableTieBreak

end Profile

end MathDiscovery.Projection
