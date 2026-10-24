# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Network.Varianta0ad8f06645e8ab6420fabc64361a28017ac365bce481e982e4b83f14ba5e08b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2589b1b00e7e805a1cf1d4d394b9636ade42331` · SHA-256 `3234b3a969b6780f8d65951a353bd7d456c6f64561024b19367a3e2e1b214f36`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteProjectionOrigin.Variant90069a7dc6afc6f8464ae75cc2588e4f977d2758353352f48a670ce3e0b34308","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"90069a7dc6afc6f8464ae75cc2588e4f977d2758353352f48a670ce3e0b34308","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FiniteProjectionOrigin.Variant90069a7dc6afc6f8464ae75cc2588e4f977d2758353352f48a670ce3e0b34308","mathematical_subject":"Computation.DataStructures","original_sha256":"90069a7dc6afc6f8464ae75cc2588e4f977d2758353352f48a670ce3e0b34308","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:1d3eee06cbcaa3b7058edba7/workspace/lib/Presentation/Transport/Network.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Presentation.Transport.SelfAnneal

/-!
# Finite self-annealed projection network

The origin stores a valid generic ordered route and one admitted source trace.
Node and edge validity is structural data tied to stable finite codes. Labels
and hashes do not appear as proof authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteProjectionOrigin.Variant90069a7dc6afc6f8464ae75cc2588e4f977d2758353352f48a670ce3e0b34308

public section

namespace Presentation.Transport

open Surface.Core.Transport
open Surface.Refactor.Syntax
open Surface.Refactor.Surgery

@[surface_novel]
structure FiniteProjectionOrigin where
  hostCount : Nat
  edgeCount : Nat
  startHost : Fin hostCount
  routing : RoutingContract (Fin hostCount) (Fin edgeCount)
  route : OrderedRoute (Fin hostCount) (Fin edgeCount)
  admittedTrace : AnnealTrace

@[expose] def FiniteProjectionOrigin.Valid
    (origin : FiniteProjectionOrigin) : Prop :=
  origin.routing.Valid ∧
    origin.route = origin.routing.orderedRoute origin.startHost ∧
    origin.admittedTrace.Valid

@[surface_novel]
inductive NetworkNodeKind where
  | sourceTree
  | declarationTable
  | diagnosticTable
  | bracketProjection
  | repairCandidate
  | patchSummary
  | compilerObservation
  | semanticDomProjection
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure NetworkNode where
  stableNodeCode : Nat
  hostIndex : Nat
  kind : NetworkNodeKind
  admittedPacket : Revisioned CompletePacketDescriptor
  sourceSnapshotHash : Hash256
  energy : StructuralEnergy
deriving Repr

@[expose] def NetworkNode.Valid
    (origin : FiniteProjectionOrigin) (node : NetworkNode) : Prop :=
  node.hostIndex < origin.hostCount ∧
    node.admittedPacket = origin.admittedTrace.final.admittedPacket ∧
    node.sourceSnapshotHash =
      origin.admittedTrace.final.sourceSnapshot.snapshotHash ∧
    node.energy = origin.admittedTrace.final.energy

@[surface_novel]
structure NetworkEdge where
  sourceNodeIndex : Nat
  targetNodeIndex : Nat
  declaredEdgeIndex : Nat
deriving DecidableEq, Repr

@[expose] def NetworkEdge.Valid
    (origin : FiniteProjectionOrigin) (nodeCount : Nat)
    (edge : NetworkEdge) : Prop :=
  edge.sourceNodeIndex < nodeCount ∧
    edge.targetNodeIndex < nodeCount ∧
    ∃ edgeIndex : Fin origin.edgeCount,
      edgeIndex.val = edge.declaredEdgeIndex ∧
        edgeIndex ∈ origin.route.discoveryEdges

@[surface_novel]
structure SelfAnnealedProjectionNetwork where
  origin : FiniteProjectionOrigin
  nodes : List NetworkNode
  edges : List NetworkEdge
  authority : SelfAnnealAuthority := .presentationOnly

@[expose] def SelfAnnealedProjectionNetwork.Valid
    (network : SelfAnnealedProjectionNetwork) : Prop :=
  network.origin.Valid ∧
    (network.nodes.map NetworkNode.stableNodeCode).Nodup ∧
    (∀ node ∈ network.nodes, node.Valid network.origin) ∧
    (∀ edge ∈ network.edges,
      edge.Valid network.origin network.nodes.length) ∧
    network.authority = .presentationOnly

@[expose] def SelfAnnealedProjectionNetwork.CreatesTheoremAuthority
    (_network : SelfAnnealedProjectionNetwork) : Prop :=
  False

@[surface_novel, surface_published]
theorem selfAnnealedProjectionNetwork_has_no_theorem_authority
    (network : SelfAnnealedProjectionNetwork) :
    ¬ network.CreatesTheoremAuthority := by
  simp [SelfAnnealedProjectionNetwork.CreatesTheoremAuthority]

@[surface_novel, surface_published]
theorem validSelfAnnealedProjectionNetwork_route_is_generic
    (network : SelfAnnealedProjectionNetwork) (valid : network.Valid) :
    network.origin.route =
      network.origin.routing.orderedRoute network.origin.startHost :=
  valid.1.2.1

@[surface_novel, surface_published]
theorem validSelfAnnealedProjectionNetwork_uses_admitted_final_snapshot
    (network : SelfAnnealedProjectionNetwork) (valid : network.Valid)
    {node : NetworkNode} (member : node ∈ network.nodes) :
    node.admittedPacket = network.origin.admittedTrace.final.admittedPacket ∧
      node.sourceSnapshotHash =
        network.origin.admittedTrace.final.sourceSnapshot.snapshotHash :=
  ⟨(valid.2.2.1 node member).2.1,
    (valid.2.2.1 node member).2.2.1⟩

end Presentation.Transport
```
