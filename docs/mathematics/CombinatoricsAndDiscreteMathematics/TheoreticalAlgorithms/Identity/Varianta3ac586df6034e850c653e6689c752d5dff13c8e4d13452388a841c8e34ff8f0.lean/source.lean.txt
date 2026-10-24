-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoardZone.Variant5c9823ee4dee672cea4121e79906645da1b2e585f187689223b94321f22482c5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c9823ee4dee672cea4121e79906645da1b2e585f187689223b94321f22482c5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BoardZone.Variant5c9823ee4dee672cea4121e79906645da1b2e585f187689223b94321f22482c5","mathematical_subject":"Computation.DataStructures","original_sha256":"5c9823ee4dee672cea4121e79906645da1b2e585f187689223b94321f22482c5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0fb42e20fee1ea48f0f02cd1/workspace/lib/SurfaceCore/Surface/Core/NetworkSurgery/Identity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoardZone.Variant5c9823ee4dee672cea4121e79906645da1b2e585f187689223b94321f22482c5

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
