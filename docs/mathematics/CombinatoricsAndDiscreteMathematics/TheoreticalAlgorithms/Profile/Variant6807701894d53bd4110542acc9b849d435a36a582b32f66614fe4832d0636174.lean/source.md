# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Profile.Variant6807701894d53bd4110542acc9b849d435a36a582b32f66614fe4832d0636174

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39ae4da1726a421619f83ee463c7f5555c779379` · SHA-256 `6807701894d53bd4110542acc9b849d435a36a582b32f66614fe4832d0636174`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projection.Kind
import Mathematics.Concept.Kind

/-!
# Versioned deterministic projection profiles

This record mirrors `docs/projection/profile-schema.json` field-for-field.
Only canonical discrete policy is stored here. Renderer state, learned
coordinates, floating similarity scores, source order, timestamps, and the
computed profile digest are outside the profile input object.
-/

namespace Mathematics.Projection

open Mathematics

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

end Mathematics.Projection
```
