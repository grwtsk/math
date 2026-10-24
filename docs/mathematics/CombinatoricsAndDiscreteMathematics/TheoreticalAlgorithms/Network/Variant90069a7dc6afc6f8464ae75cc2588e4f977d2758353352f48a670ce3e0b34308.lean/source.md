# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Network.Variant90069a7dc6afc6f8464ae75cc2588e4f977d2758353352f48a670ce3e0b34308

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `044ae2532687927e8fa519e705756d6514a61b48` · SHA-256 `90069a7dc6afc6f8464ae75cc2588e4f977d2758353352f48a670ce3e0b34308`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Presentation.Transport.SelfAnneal

/-!
# Finite self-annealed projection network

The origin stores a valid generic ordered route and one admitted source trace.
Node and edge validity is structural data tied to stable finite codes. Labels
and hashes do not appear as proof authority.
-/

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
