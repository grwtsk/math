# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.RiemannWitnessRegistryCore

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a91b53b39555bb9f166dc6580144f27c0d51495` · SHA-256 `c67b3f9b00ba5f0f43cad5d8e887a6c125719fe653fa4d2f617f4defdf3b4712`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleConjectureConnections
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Core types for the Riemann-hypothesis witness registry

The repository contains several witness, obstruction, supplier and classification
objects developed on independent branches. This module supplies a conservative
metadata layer. A source reference is not a theorem. A relation is traversable
as a proof edge only when its kind permits implication and its authority records
an actual locally available proof.

The only proposition bound locally in this module is the already imported
canonical rectangle-edge witness family. External-branch, prose-only and
unresolved historical nodes remain metadata.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.RiemannWitnessRegistry

open CanonicalRectangleEdgeObstructionWitness
open CanonicalRectangleConjectureConnections

noncomputable section

inductive WitnessId where
  | canonicalRectangleEdge
  | rectangleConjectureJunction
  | mobiusTerminalEndpointLoss
  | mobiusEndpointConnectionAtlas
  | typedCriticalStripTransport
  | fixedNegativeBudget
  | finiteGramWindow
  | criticalReflectionCover
  | dyadicTreeMaximalComparison
  | quinticWitnessLabel
  | boundaryLayerWitnessLabel
  | finiteScaleFilterWitnessLabel
  deriving DecidableEq, Repr

inductive NodeKind where
  | witness
  | obstruction
  | supplier
  | connectionAtlas
  | classification
  | unresolvedLabel
  deriving DecidableEq, Repr

inductive WitnessScope where
  | finiteHeightZeta
  | globalRiemann
  | finiteArithmetic
  | finiteErrorBudget
  | localZeroCover
  | criticalStripTransport
  | historicalUnresolved
  deriving DecidableEq, Repr

inductive SourceAvailability where
  | localImport
  | externalBranch
  | proseOnly
  | unresolvedLabel
  deriving DecidableEq, Repr

inductive EvidenceState where
  | literatureReviewed
  | sourceDraft
  | elaborated
  | kernelChecked
  | trustAudited
  | externallyReplayed
  | analyticPremisesDischarged
  deriving DecidableEq, Repr

inductive RelationKind where
  | supplies
  | specializes
  | formalizes
  | bypasses
  | requires
  | refutesAtScope
  | comparesTo
  | motivates
  | relevantOnly
  | noProvedConnection
  deriving DecidableEq, Repr

/-- Only direct supply and direct bypass relations are allowed to carry an
implication. Structural, diagnostic and negative relations are never promoted. -/
def RelationKind.permitsImplication : RelationKind → Bool
  | .supplies => true
  | .bypasses => true
  | _ => false

inductive EdgeAuthority where
  | localProof
  | externalSourceBound
  | proseOnly
  | unresolved
  deriving DecidableEq, Repr

/-- An exact external source remains non-authoritative until imported and checked
in the current environment. -/
def EdgeAuthority.proofBearing : EdgeAuthority → Bool
  | .localProof => true
  | _ => false

structure SourceRef where
  pullRequest : Option ℕ
  branch : String
  commit : String
  path : String
  declaration : Option String
  note : String
  deriving Repr

structure ConsumerRef where
  name : String
  status : String
  deriving Repr

structure WitnessNode where
  id : WitnessId
  kind : NodeKind
  scope : WitnessScope
  availability : SourceAvailability
  source : Option SourceRef
  evidence : List EvidenceState
  consumer : Option ConsumerRef
  summary : String
  deriving Repr

structure WitnessEdge where
  from : WitnessId
  to : WitnessId
  kind : RelationKind
  authority : EdgeAuthority
  source : Option SourceRef
  scopeNote : String
  deriving Repr

namespace WitnessEdge

/-- A typed edge is proof-traversable only when both independent gates pass. -/
def traversable (edge : WitnessEdge) : Bool :=
  edge.kind.permitsImplication && edge.authority.proofBearing

@[simp] theorem traversable_iff (edge : WitnessEdge) :
    edge.traversable = true ↔
      edge.kind.permitsImplication = true ∧
        edge.authority.proofBearing = true := by
  simp [traversable]

@[simp] theorem noProvedConnection_not_traversable
    (edge : WitnessEdge) (kind : edge.kind = .noProvedConnection) :
    edge.traversable = false := by
  simp [traversable, kind, RelationKind.permitsImplication]

@[simp] theorem relevantOnly_not_traversable
    (edge : WitnessEdge) (kind : edge.kind = .relevantOnly) :
    edge.traversable = false := by
  simp [traversable, kind, RelationKind.permitsImplication]

@[simp] theorem refutesAtScope_not_traversable
    (edge : WitnessEdge) (kind : edge.kind = .refutesAtScope) :
    edge.traversable = false := by
  simp [traversable, kind, RelationKind.permitsImplication]

@[simp] theorem externalSource_not_traversable
    (edge : WitnessEdge) (authority : edge.authority = .externalSourceBound) :
    edge.traversable = false := by
  simp [traversable, authority, EdgeAuthority.proofBearing]

end WitnessEdge

structure WitnessRegistry where
  nodes : List WitnessNode
  edges : List WitnessEdge
  deriving Repr

namespace WitnessRegistry

/-- Identifier projection used by finite source controls. -/
def nodeIds (registry : WitnessRegistry) : List WitnessId :=
  registry.nodes.map WitnessNode.id

/-- A registry lookup returns metadata, not a proposition or proof. -/
def findNode? (registry : WitnessRegistry) (id : WitnessId) : Option WitnessNode :=
  registry.nodes.find? (fun node => decide (node.id = id))

end WitnessRegistry

/-- A local binding names an actual proposition without constructing it. -/
structure LocalClaimBinding (id : WitnessId) where
  claim : Prop

/-- Exact local proposition for the canonical rectangle-edge witness family. -/
def canonicalRectangleEdgeBinding (N : ℕ) :
    LocalClaimBinding .canonicalRectangleEdge where
  claim := HasCanonicalRectangleEdgeWitness N

/-- Exact local proposition saying that every named conjectural route has been
filled by a witness or bypass connection. No inhabitant is supplied. -/
def rectangleConjectureJunctionBinding (N : ℕ) :
    LocalClaimBinding .rectangleConjectureJunction where
  claim := Nonempty (AllRouteConnections N)

@[simp] theorem external_authority_is_not_proof :
    EdgeAuthority.externalSourceBound.proofBearing = false := rfl

@[simp] theorem prose_authority_is_not_proof :
    EdgeAuthority.proseOnly.proofBearing = false := rfl

@[simp] theorem unresolved_authority_is_not_proof :
    EdgeAuthority.unresolved.proofBearing = false := rfl

end

end GRWTSK.RiemannHypothesis.RiemannWitnessRegistry
```
