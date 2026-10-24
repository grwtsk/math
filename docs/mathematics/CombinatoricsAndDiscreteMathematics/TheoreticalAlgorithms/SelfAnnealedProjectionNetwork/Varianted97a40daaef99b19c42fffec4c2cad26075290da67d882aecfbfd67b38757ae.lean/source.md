# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SelfAnnealedProjectionNetwork.Varianted97a40daaef99b19c42fffec4c2cad26075290da67d882aecfbfd67b38757ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b7bcf6dbbae9e69efaac74fb4c33525394f1630` · SHA-256 `ed97a40daaef99b19c42fffec4c2cad26075290da67d882aecfbfd67b38757ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Presentation.SelfAnneal

/-!
# Self-annealed projection networks

What is formalized:
A finite projection network can carry metadata saying that it was produced by a
compile-time Presentation self-annealing pass.  The origin record stores the
Lean AST snapshot, finite energy certificate, witnessed trace, and authority
boundary preservation proof.

What is certificate-gated:
The network is finite Presentation metadata.  It may organize request-time
projection nodes, but it does not create theorem authority.

What is not claimed:
This module does not prove that self-annealing discovers mathematical truth,
constructs spectral geometry, or upgrades labels and hashes into authority.
-/

namespace Presentation

/-- Finite compile-time organization energy for the projection-network pass. -/
structure CompileTimeAnnealEnergy where
  energyHash : Nat
  finiteEnergySound : Prop
  finiteEnergySoundProof : finiteEnergySound

/-- Witnessed compile-time reducer trace for the projection-network pass. -/
structure CompileTimeAnnealTrace where
  traceHash : Nat
  terminated : Prop
  terminatedProof : terminated
  everyStepWitnessed : Prop
  everyStepWitnessedProof : everyStepWitnessed
  authorityBoundaryPreserved : Prop
  authorityBoundaryProof : authorityBoundaryPreserved

/-- The certificate-gated origin of a self-annealed projection network. -/
structure SelfAnnealedProjectionNetworkOrigin where
  ast : LeanAstSnapshot
  energy : CompileTimeAnnealEnergy
  trace : CompileTimeAnnealTrace
  networkHash : Nat
  producedBySelfAnnealing : Prop
  producedBySelfAnnealingProof : producedBySelfAnnealing

/-- Typed node kinds for request-time spectral face projection. -/
inductive ProjectionNodeKind where
  | sourceTree
  | theoremResolution
  | spectralDescriptor
  | binaryProjection
  | matrixProjection
  | meshFace
  | reducer
  | cache
  | canvas
  | domProjection
  | rejectedClaims
  | custom : String → ProjectionNodeKind
deriving Repr, DecidableEq

/-- One finite projection node. -/
structure ProjectionNode where
  nodeId : Nat
  kind : ProjectionNodeKind
  nodeHash : Nat
  label : String

/-- A typed edge in a self-annealed projection network. -/
structure ProjectionEdge where
  sourceNodeId : Nat
  targetNodeId : Nat
  edgeHash : Nat
  edgeSignature : String
  preservesIdentity : Prop
  preservesIdentityProof : preservesIdentity
  preservesAuthorityBoundary : Prop
  preservesAuthorityBoundaryProof : preservesAuthorityBoundary

/-- The finite network produced by the compile-time self-annealing process. -/
structure SelfAnnealedProjectionNetwork where
  networkHash : Nat
  nodes : List ProjectionNode
  edges : List ProjectionEdge
  wellTyped : Prop
  wellTypedProof : wellTyped
  producedByOrigin : Prop
  producedByOriginProof : producedByOrigin
  authorityBoundaryPreserved : Prop
  authorityBoundaryProof : authorityBoundaryPreserved

def SelfAnnealedProjectionNetworkCreatesAuthority
    (_N : SelfAnnealedProjectionNetwork) : Prop :=
  False

theorem self_annealed_projection_network_origin_sound
    (O : SelfAnnealedProjectionNetworkOrigin) :
    O.energy.finiteEnergySound ∧
    O.trace.terminated ∧
    O.trace.everyStepWitnessed ∧
    O.trace.authorityBoundaryPreserved ∧
    O.producedBySelfAnnealing := by
  exact
    ⟨O.energy.finiteEnergySoundProof,
     O.trace.terminatedProof,
     O.trace.everyStepWitnessedProof,
     O.trace.authorityBoundaryProof,
     O.producedBySelfAnnealingProof⟩

theorem self_annealed_projection_network_sound
    (N : SelfAnnealedProjectionNetwork) :
    N.wellTyped ∧
    N.producedByOrigin ∧
    N.authorityBoundaryPreserved ∧
    ¬ SelfAnnealedProjectionNetworkCreatesAuthority N := by
  exact
    ⟨N.wellTypedProof,
     N.producedByOriginProof,
     N.authorityBoundaryProof,
     by
       intro h
       exact h⟩

end Presentation
```
