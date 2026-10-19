module

public meta import Surface.Core.Classification
public import Surface.Core.Transport.Hash
public import Surface.Core.Transport.Revision

/-!
# Stable finite identities for the network-surgery game

These identifiers are bounded protocol codes scoped by a content-addressed
repository snapshot.  No theorem below asserts persistence across arbitrary
edits or collision resistance of the accompanying opaque hash material.
-/

public section

namespace Surface.Core.NetworkSurgery

open Surface.Core.Transport

abbrev StableCode := Fin revisionModulus

abbrev RepositoryHostId := StableCode
abbrev SourceFileId := StableCode
abbrev SyntaxNodeId := StableCode
abbrev DeclarationId := StableCode
abbrev ImportId := StableCode
abbrev ReferenceId := StableCode
abbrev OperationId := StableCode
abbrev ProposalId := StableCode
abbrev SessionId := StableCode
abbrev BuildTargetId := StableCode

@[surface_novel]
inductive BoardZone where
  | canonicalSource
  | refactorInfrastructure
  | generatedQuarantine
  | legacyQuarantine
  | presentationRuntime
  | externalDependency
  | buildTarget
  | workingOverlay
  | reviewStaging
  | committedSource
deriving DecidableEq, Repr, BEq

@[surface_novel]
inductive HostKind where
  | repositoryRoot
  | buildTarget
  | moduleOrPackage
  | sourceFile
  | declarationOrItem
  | syntaxNode
  | importOrUseEdge
  | symbolReference
  | presentationHost
  | runtimeWorker
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure RepositoryHost where
  id : RepositoryHostId
  kind : HostKind
  zone : BoardZone
deriving DecidableEq, Repr

@[surface_novel]
inductive RepositoryEdgeKind where
  | owns
  | imports
  | references
  | builds
  | presents
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure RepositoryEdge where
  id : StableCode
  source : RepositoryHostId
  target : RepositoryHostId
  kind : RepositoryEdgeKind
deriving DecidableEq, Repr

@[surface_novel]
structure RepositoryBoard where
  snapshotHash : Hash256
  hosts : List RepositoryHost
  edges : List RepositoryEdge
  allowedFiles : List SourceFileId
  declarations : List DeclarationId
  imports : List ImportId
  references : List ReferenceId
  buildTargets : List BuildTargetId
deriving DecidableEq, Repr

@[surface_novel]
inductive PieceId where
  | file (id : SourceFileId)
  | declaration (id : DeclarationId)
  | syntaxNode (id : SyntaxNodeId)
  | importEdge (id : ImportId)
  | reference (id : ReferenceId)
  | buildTarget (id : BuildTargetId)
  | generatedCandidate (id : SourceFileId)
deriving DecidableEq, Repr

@[surface_novel]
inductive PlayerCapability where
  | observer
  | planner
  | repairer
  | reviewer
  | committer
  | verifier
deriving DecidableEq, Repr, BEq

end Surface.Core.NetworkSurgery
