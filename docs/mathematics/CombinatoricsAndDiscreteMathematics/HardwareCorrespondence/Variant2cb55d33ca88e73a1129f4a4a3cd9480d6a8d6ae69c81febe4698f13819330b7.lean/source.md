# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.HardwareCorrespondence.Variant2cb55d33ca88e73a1129f4a4a3cd9480d6a8d6ae69c81febe4698f13819330b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdad393cfe25aedc825919e4bcdbb1f2afcba0e1` · SHA-256 `2cb55d33ca88e73a1129f4a4a3cd9480d6a8d6ae69c81febe4698f13819330b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CordTheory.ReflectiveAgents

/-!
# Hardware correspondence, routing, reduction, and residual activation

This module formalizes the proposed balance between neural-symbolic diffusion
and the hardware that realizes it.  The exact result is structural: a supplied
node equivalence preserves layer roles, level indices, and diffuser-network
reachability, and therefore preserves the complete role balance.  It does not
identify physical hardware with an ontology object without such a certificate.

Corpus correction is routed through a neural reducer in the symbolic coordinate
space.  Its activation source is explicitly either an agent-owned residual or
an exact human-input record.  Activation, routing, and reduction remain
candidate work and do not carry mutation authority by themselves.
-/

namespace Cord

/-! ## Layered hardware and symbolic architectures -/

/-- Shared observable roles for hardware and neural-symbolic layers. -/
inductive ArchitectureLayerRole
  | memory
  | computation
  | diffuser
  | router
  | neuralReducer
  | residualActivator
  deriving DecidableEq, Repr, Inhabited, Fintype

/-- A level-indexed architecture over an admitted propagation network. -/
structure LayeredDiffusionArchitecture (Node : Type*) where
  role : Node → ArchitectureLayerRole
  level : Node → Nat
  network : OperationalRelation Node

/-- Nodes that perform one observable architecture role. -/
abbrev ArchitectureRoleFiber
    {Node : Type*} (architecture : LayeredDiffusionArchitecture Node)
    (role : ArchitectureLayerRole) :=
  {node : Node // architecture.role node = role}

/-- Exact cardinal balance across all architecture roles. -/
@[ext] structure ArchitectureBalance where
  memory : Nat
  computation : Nat
  diffuser : Nat
  router : Nat
  neuralReducer : Nat
  residualActivator : Nat
  deriving DecidableEq, Repr

namespace LayeredDiffusionArchitecture

/-- Count of nodes realizing one role. -/
def roleCount {Node : Type*} [Fintype Node]
    (architecture : LayeredDiffusionArchitecture Node)
    (role : ArchitectureLayerRole) : Nat :=
  Fintype.card (ArchitectureRoleFiber architecture role)

/-- Complete role balance for one finite architecture. -/
def balance {Node : Type*} [Fintype Node]
    (architecture : LayeredDiffusionArchitecture Node) : ArchitectureBalance := {
  memory := architecture.roleCount .memory
  computation := architecture.roleCount .computation
  diffuser := architecture.roleCount .diffuser
  router := architecture.roleCount .router
  neuralReducer := architecture.roleCount .neuralReducer
  residualActivator := architecture.roleCount .residualActivator
}

end LayeredDiffusionArchitecture

/--
Proof-bearing structural correspondence between hardware and symbolic nodes.
It preserves the observable layer role, layer index, and complete propagation
relation in both directions.
-/
structure ArchitectureCorrespondence
    (HardwareNode SymbolicNode : Type*) where
  hardware : LayeredDiffusionArchitecture HardwareNode
  symbolic : LayeredDiffusionArchitecture SymbolicNode
  nodeEquivalence : HardwareNode ≃ SymbolicNode
  rolePreserving : ∀ node,
    symbolic.role (nodeEquivalence node) = hardware.role node
  levelPreserving : ∀ node,
    symbolic.level (nodeEquivalence node) = hardware.level node
  networkPreserving : ∀ source target,
    hardware.network.rel source target ↔
      symbolic.network.rel (nodeEquivalence source) (nodeEquivalence target)

namespace ArchitectureCorrespondence

/-- The correspondence restricts to an equivalence on every role fiber. -/
def roleFiberEquivalence
    {HardwareNode SymbolicNode : Type*}
    (correspondence :
      ArchitectureCorrespondence HardwareNode SymbolicNode)
    (role : ArchitectureLayerRole) :
    ArchitectureRoleFiber correspondence.hardware role ≃
      ArchitectureRoleFiber correspondence.symbolic role where
  toFun node :=
    ⟨correspondence.nodeEquivalence node,
      (correspondence.rolePreserving node).trans node.property⟩
  invFun node := by
    refine ⟨correspondence.nodeEquivalence.symm node, ?_⟩
    have preservation :
        correspondence.symbolic.role node =
          correspondence.hardware.role
            (correspondence.nodeEquivalence.symm node) := by
      simpa using correspondence.rolePreserving
        (correspondence.nodeEquivalence.symm node)
    exact preservation.symm.trans node.property
  left_inv node := by
    apply Subtype.ext
    simp
  right_inv node := by
    apply Subtype.ext
    simp

/-- Corresponding hardware and symbolic architectures have equal role counts. -/
theorem role_count_preserved
    {HardwareNode SymbolicNode : Type*}
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (correspondence :
      ArchitectureCorrespondence HardwareNode SymbolicNode)
    (role : ArchitectureLayerRole) :
    correspondence.hardware.roleCount role =
      correspondence.symbolic.roleCount role := by
  exact Fintype.card_congr (correspondence.roleFiberEquivalence role)

/--
The complete neural-symbolic/hardware balance is identical under the declared
architecture correspondence profile.
-/
theorem balance_identical
    {HardwareNode SymbolicNode : Type*}
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (correspondence :
      ArchitectureCorrespondence HardwareNode SymbolicNode) :
    correspondence.hardware.balance = correspondence.symbolic.balance := by
  apply ArchitectureBalance.ext <;>
    exact correspondence.role_count_preserved _

/-- Propagation reachability is preserved exactly by the correspondence. -/
theorem network_equivalent
    {HardwareNode SymbolicNode : Type*}
    (correspondence :
      ArchitectureCorrespondence HardwareNode SymbolicNode)
    {source target : HardwareNode} :
    correspondence.hardware.network.rel source target ↔
      correspondence.symbolic.network.rel
        (correspondence.nodeEquivalence source)
        (correspondence.nodeEquivalence target) :=
  correspondence.networkPreserving source target

end ArchitectureCorrespondence

/-! ## Realization of bundled components in the symbolic architecture -/

/-- An exact binding from one runtime component record to a symbolic node. -/
structure ArchitectureComponentBinding (Node : Type*) where
  record : RecordId
  node : Node

/--
Witnesses for the concrete memory/computation layers and the four record-bearing
components used by the neural-symbolic correction bundle.  In addition to role
membership, the witnesses expose the admitted propagation path and its residual
feedback edge.  These edges express reachability only; they do not grant write
authority to any component.
-/
structure SymbolicArchitectureComponentRealization (Node : Type*)
    (architecture : LayeredDiffusionArchitecture Node) where
  memoryNode : Node
  computationNode : Node
  diffuser : ArchitectureComponentBinding Node
  router : ArchitectureComponentBinding Node
  neuralReducer : ArchitectureComponentBinding Node
  residualActivator : ArchitectureComponentBinding Node
  memoryRole : architecture.role memoryNode = .memory
  computationRole : architecture.role computationNode = .computation
  diffuserRole : architecture.role diffuser.node = .diffuser
  routerRole : architecture.role router.node = .router
  neuralReducerRole : architecture.role neuralReducer.node = .neuralReducer
  residualActivatorRole :
    architecture.role residualActivator.node = .residualActivator
  diffuserNetwork :
    ArchitectureRoleFiber architecture .diffuser → RecordId
  diffuserNetworkInjective : Function.Injective diffuserNetwork
  diffuserNetworkRecordsNonzero : ∀ diffuserNode,
    (diffuserNetwork diffuserNode).value ≠ 0
  distinguishedDiffuserExact :
    diffuserNetwork ⟨diffuser.node, diffuserRole⟩ = diffuser.record
  memoryFeedsComputation :
    architecture.network.rel memoryNode computationNode
  computationFeedsEveryDiffuser : ∀ diffuserNode,
    architecture.network.rel computationNode diffuserNode
  everyDiffuserFeedsRouter : ∀ diffuserNode,
    architecture.network.rel diffuserNode router.node
  computationFeedsDiffuser :
    architecture.network.rel computationNode diffuser.node
  diffuserFeedsRouter :
    architecture.network.rel diffuser.node router.node
  routerFeedsReducer :
    architecture.network.rel router.node neuralReducer.node
  reducerFeedsActivator :
    architecture.network.rel neuralReducer.node residualActivator.node
  activatorFeedsDiffuser :
    architecture.network.rel residualActivator.node diffuser.node

namespace SymbolicArchitectureComponentRealization

/-- Every diffuser-role node has a distinct, nonempty runtime record binding. -/
theorem every_diffuser_is_realized
    {Node : Type*} {architecture : LayeredDiffusionArchitecture Node}
    (realization : SymbolicArchitectureComponentRealization Node architecture)
    (diffuserNode : ArchitectureRoleFiber architecture .diffuser) :
    (realization.diffuserNetwork diffuserNode).value ≠ 0 :=
  realization.diffuserNetworkRecordsNonzero diffuserNode

/-- Every realized diffuser participates in the computation-to-router path. -/
theorem every_diffuser_is_routed
    {Node : Type*} {architecture : LayeredDiffusionArchitecture Node}
    (realization : SymbolicArchitectureComponentRealization Node architecture)
    (diffuserNode : ArchitectureRoleFiber architecture .diffuser) :
    architecture.network.rel realization.computationNode diffuserNode ∧
      architecture.network.rel diffuserNode realization.router.node :=
  ⟨realization.computationFeedsEveryDiffuser diffuserNode,
    realization.everyDiffuserFeedsRouter diffuserNode⟩

/-- The declared feed-forward path reaches the residual activator. -/
theorem memory_reaches_activator
    {Node : Type*} {architecture : LayeredDiffusionArchitecture Node}
    (realization : SymbolicArchitectureComponentRealization Node architecture) :
    architecture.network.rel
      realization.memoryNode realization.residualActivator.node := by
  exact architecture.network.trans realization.memoryFeedsComputation
    (architecture.network.trans realization.computationFeedsDiffuser
      (architecture.network.trans realization.diffuserFeedsRouter
        (architecture.network.trans realization.routerFeedsReducer
          realization.reducerFeedsActivator)))

/-- Residual activation feeds the declared diffuser/router/reducer path. -/
theorem activation_reaches_reducer
    {Node : Type*} {architecture : LayeredDiffusionArchitecture Node}
    (realization : SymbolicArchitectureComponentRealization Node architecture) :
    architecture.network.rel
      realization.residualActivator.node realization.neuralReducer.node := by
  exact architecture.network.trans realization.activatorFeedsDiffuser
    (architecture.network.trans realization.diffuserFeedsRouter
      realization.routerFeedsReducer)

end SymbolicArchitectureComponentRealization

/-! ## Corpus-bound routing -/

inductive RoutedWorkKind
  | memoryRead
  | neuralComputation
  | continuousDiffusion
  | symbolicReduction
  | agentResidual
  | humanInput
  | authorityReview
  deriving DecidableEq, Repr, Inhabited, Fintype

/-- A deterministic router pinned to corpus and ontology snapshots. -/
structure CorpusOntologyRouter (Request : Type*) where
  id : RecordId
  corpusSnapshot : ContentHash
  ontologySnapshot : OntologySnapshotId
  route : Request → RoutedWorkKind
  policy : ProfileId
  candidateOnly : Bool
  mutationAuthority : Bool

namespace CorpusOntologyRouter

def CandidateScoped {Request : Type*}
    (router : CorpusOntologyRouter Request) : Prop :=
  router.id.value ≠ 0 ∧
  router.corpusSnapshot.value ≠ "" ∧
  router.ontologySnapshot.value ≠ 0 ∧
  router.policy.value ≠ 0 ∧
  router.candidateOnly = true ∧
  router.mutationAuthority = false

/-- Routing a request cannot itself authorize a mutation. -/
theorem routing_not_authority {Request : Type*}
    (router : CorpusOntologyRouter Request)
    (scopeProof : router.CandidateScoped) :
    router.mutationAuthority = false :=
  scopeProof.2.2.2.2.2

end CorpusOntologyRouter

/-! ## Neural reduction against the existing corpus -/

/--
One immutable reduction context naming the corpus, ontology, metric, target,
and evidence against which a neural accuracy claim is interpreted.
-/
structure NeuralReductionSnapshot (Coordinate : Type*) where
  corpusSnapshot : ContentHash
  ontologySnapshot : OntologySnapshotId
  accuracyMetric : RecordId
  admittedTarget : RecordId
  targetState : NeuralRhetoricalState Coordinate
  evidenceSnapshot : ContentHash
  evidenceRecords : Set RecordId

namespace NeuralReductionSnapshot

/-- Every externally named part of the reduction context is nonempty. -/
def WellFormed {Coordinate : Type*}
    (snapshot : NeuralReductionSnapshot Coordinate) : Prop :=
  snapshot.corpusSnapshot.value ≠ "" ∧
  snapshot.ontologySnapshot.value ≠ 0 ∧
  snapshot.accuracyMetric.value ≠ 0 ∧
  snapshot.admittedTarget.value ≠ 0 ∧
  snapshot.evidenceSnapshot.value ≠ "" ∧
  snapshot.evidenceRecords.Nonempty ∧
  snapshot.accuracyMetric ∈ snapshot.evidenceRecords ∧
  snapshot.admittedTarget ∈ snapshot.evidenceRecords

end NeuralReductionSnapshot

/--
A corpus-bound reducer whose exact mathematical claim is nonincreasing squared
error against one evidence-bound rhetorical target.
-/
structure CorpusNeuralReducer (Coordinate : Type*) [Fintype Coordinate] where
  id : RecordId
  corpusSnapshot : ContentHash
  ontologySnapshot : OntologySnapshotId
  snapshot : NeuralReductionSnapshot Coordinate
  snapshotWellFormed : snapshot.WellFormed
  rhetoricalSpace : PolynomialRhetoricalSpace Coordinate
  accuracy : NeuralAccuracyCertificate Coordinate
  snapshotCorpusAligned : snapshot.corpusSnapshot = corpusSnapshot
  snapshotOntologyAligned : snapshot.ontologySnapshot = ontologySnapshot
  rhetoricalOntologyAligned :
    rhetoricalSpace.ontologySnapshot = ontologySnapshot
  snapshotMetricAligned :
    snapshot.accuracyMetric = accuracy.candidate.accuracyMetric
  snapshotTargetAligned :
    snapshot.admittedTarget = accuracy.candidate.admittedTarget
  snapshotTargetStateAligned : snapshot.targetState = accuracy.target
  snapshotEvidenceAligned :
    snapshot.evidenceRecords =
      accuracy.targetEvidence ∪ accuracy.candidate.evidence
  inputModelsOntology : rhetoricalSpace.Models accuracy.before
  outputModelsOntology :
    rhetoricalSpace.Models
      (accuracy.candidate.transform accuracy.before)
  candidateOnly : Bool
  mutationAuthority : Bool

namespace CorpusNeuralReducer

/-- The reducer and its accuracy certificate use one exact named context. -/
theorem uses_one_aligned_snapshot
    {Coordinate : Type*} [Fintype Coordinate]
    (reducer : CorpusNeuralReducer Coordinate) :
    reducer.snapshot.corpusSnapshot = reducer.corpusSnapshot ∧
    reducer.snapshot.ontologySnapshot = reducer.ontologySnapshot ∧
    reducer.rhetoricalSpace.ontologySnapshot = reducer.ontologySnapshot ∧
    reducer.snapshot.accuracyMetric =
      reducer.accuracy.candidate.accuracyMetric ∧
    reducer.snapshot.admittedTarget =
      reducer.accuracy.candidate.admittedTarget ∧
    reducer.snapshot.targetState = reducer.accuracy.target ∧
    reducer.snapshot.evidenceRecords =
      reducer.accuracy.targetEvidence ∪
        reducer.accuracy.candidate.evidence :=
  ⟨reducer.snapshotCorpusAligned,
    reducer.snapshotOntologyAligned,
    reducer.rhetoricalOntologyAligned,
    reducer.snapshotMetricAligned,
    reducer.snapshotTargetAligned,
    reducer.snapshotTargetStateAligned,
    reducer.snapshotEvidenceAligned⟩

/-- Target evidence is included in the immutable evidence snapshot. -/
theorem target_evidence_in_snapshot
    {Coordinate : Type*} [Fintype Coordinate]
    (reducer : CorpusNeuralReducer Coordinate) :
    reducer.accuracy.targetEvidence ⊆ reducer.snapshot.evidenceRecords := by
  intro record member
  rw [reducer.snapshotEvidenceAligned]
  exact Or.inl member

/-- Candidate evidence is included in the immutable evidence snapshot. -/
theorem candidate_evidence_in_snapshot
    {Coordinate : Type*} [Fintype Coordinate]
    (reducer : CorpusNeuralReducer Coordinate) :
    reducer.accuracy.candidate.evidence ⊆
      reducer.snapshot.evidenceRecords := by
  intro record member
  rw [reducer.snapshotEvidenceAligned]
  exact Or.inr member

def CandidateScoped {Coordinate : Type*} [Fintype Coordinate]
    (reducer : CorpusNeuralReducer Coordinate) : Prop :=
  reducer.id.value ≠ 0 ∧
  reducer.corpusSnapshot.value ≠ "" ∧
  reducer.ontologySnapshot.value ≠ 0 ∧
  reducer.accuracy.candidate.CandidateScoped ∧
  reducer.candidateOnly = true ∧
  reducer.mutationAuthority = false

/-- The reducer prefers its certified result to its input under the named target. -/
theorem reduces_declared_error
    {Coordinate : Type*} [Fintype Coordinate]
    (reducer : CorpusNeuralReducer Coordinate) :
    AccuracyPreferred reducer.accuracy.target
      (reducer.accuracy.candidate.transform reducer.accuracy.before)
      reducer.accuracy.before :=
  reducer.accuracy.prefers_accuracy

/-- The reducer output remains in the ontology polynomial locus. -/
theorem output_remains_symbolic
    {Coordinate : Type*} [Fintype Coordinate]
    (reducer : CorpusNeuralReducer Coordinate) :
    reducer.rhetoricalSpace.Models
      (reducer.accuracy.candidate.transform reducer.accuracy.before) :=
  reducer.outputModelsOntology

/-- Reduction and relative accuracy do not create authority. -/
theorem reduction_not_authority
    {Coordinate : Type*} [Fintype Coordinate]
    (reducer : CorpusNeuralReducer Coordinate)
    (scopeProof : reducer.CandidateScoped) :
    reducer.mutationAuthority = false :=
  scopeProof.2.2.2.2.2

end CorpusNeuralReducer

/-! ## Residual activation by an agent or exact human input -/

/-- The two admitted sources of a residual activation signal. -/
inductive ResidualActivationSource (Agent : Type*)
  | residualAgent (agent : Agent) (residual : ResidualId)
  | humanInput (sourceResponse : RecordId)
  deriving DecidableEq, Repr

namespace ResidualActivationSource

/-- Activation source and mutation authority are intentionally different types. -/
def CanAuthorizeMutation {Agent : Type*}
    (_source : ResidualActivationSource Agent) : Prop :=
  False

@[simp] theorem residual_agent_not_authority
    {Agent : Type*} (agent : Agent) (residual : ResidualId) :
    ¬ (ResidualActivationSource.residualAgent agent residual).CanAuthorizeMutation := by
  simp [CanAuthorizeMutation]

@[simp] theorem human_input_not_authority
    {Agent : Type*} (sourceResponse : RecordId) :
    ¬ (ResidualActivationSource.humanInput
      (Agent := Agent) sourceResponse).CanAuthorizeMutation := by
  simp [CanAuthorizeMutation]

end ResidualActivationSource

/-- Exact, provenance-bearing signal used by the residual activator. -/
structure ResidualActivationSignal (Agent : Type*) where
  id : RecordId
  source : ResidualActivationSource Agent
  primarySource : RecordId
  residualOwnership : Agent → ResidualId → Prop
  residualFrontier : Set ResidualId
  sourceRecords : Set RecordId
  provenance : Set RecordId
  candidateOnly : Bool
  mutationAuthority : Bool

namespace ResidualActivationSource

/--
A source is usable only when its backing records are provenance-covered and it
is either an owned, live residual or one exact nonzero human response record.
-/
def WellFormed {Agent : Type*}
    (source : ResidualActivationSource Agent)
    (ownsResidual : Agent → ResidualId → Prop)
    (residualFrontier : Set ResidualId)
    (primarySource : RecordId)
    (sourceRecords provenance : Set RecordId) : Prop :=
  primarySource.value ≠ 0 ∧
  primarySource ∈ sourceRecords ∧
  primarySource ∈ provenance ∧
  sourceRecords ⊆ provenance ∧
  match source with
  | .residualAgent agent residual =>
      residual.value ≠ 0 ∧
      ownsResidual agent residual ∧
      residual ∈ residualFrontier
  | .humanInput sourceResponse =>
      primarySource = sourceResponse ∧
      sourceResponse.value ≠ 0

/-- A well-formed residual-agent source proves ownership of that residual. -/
theorem wellFormed_residual_agent_owned
    {Agent : Type*} (ownsResidual : Agent → ResidualId → Prop)
    (residualFrontier : Set ResidualId)
    (primarySource : RecordId)
    (sourceRecords provenance : Set RecordId)
    (agent : Agent) (residual : ResidualId)
    (wellFormed :
      (ResidualActivationSource.residualAgent agent residual).WellFormed
        ownsResidual residualFrontier primarySource sourceRecords provenance) :
    ownsResidual agent residual :=
  wellFormed.2.2.2.2.2.1

/-- A residual-agent ownership assertion is backed by the exact primary source. -/
theorem wellFormed_residual_source_in_provenance
    {Agent : Type*} (ownsResidual : Agent → ResidualId → Prop)
    (residualFrontier : Set ResidualId)
    (primarySource : RecordId)
    (sourceRecords provenance : Set RecordId)
    (agent : Agent) (residual : ResidualId)
    (wellFormed :
      (ResidualActivationSource.residualAgent agent residual).WellFormed
        ownsResidual residualFrontier primarySource sourceRecords provenance) :
    primarySource ∈ sourceRecords ∧ primarySource ∈ provenance :=
  ⟨wellFormed.2.1, wellFormed.2.2.1⟩

/-- A well-formed human-input source names a nonzero exact source record. -/
theorem wellFormed_human_source_nonzero
    {Agent : Type*} (ownsResidual : Agent → ResidualId → Prop)
    (residualFrontier : Set ResidualId)
    (primarySource : RecordId)
    (sourceRecords provenance : Set RecordId)
    (sourceResponse : RecordId)
    (wellFormed :
      (ResidualActivationSource.humanInput
        (Agent := Agent) sourceResponse).WellFormed
          ownsResidual residualFrontier primarySource sourceRecords provenance) :
    sourceResponse.value ≠ 0 :=
  wellFormed.2.2.2.2.2

/-- The primary source of a human activation is exactly the named response. -/
theorem wellFormed_human_source_exact
    {Agent : Type*} (ownsResidual : Agent → ResidualId → Prop)
    (residualFrontier : Set ResidualId)
    (primarySource : RecordId)
    (sourceRecords provenance : Set RecordId)
    (sourceResponse : RecordId)
    (wellFormed :
      (ResidualActivationSource.humanInput
        (Agent := Agent) sourceResponse).WellFormed
          ownsResidual residualFrontier primarySource sourceRecords provenance) :
    primarySource = sourceResponse :=
  wellFormed.2.2.2.2.1

end ResidualActivationSource

namespace ResidualActivationSignal

/-- A candidate-only signal with a well-formed, provenance-bearing source. -/
def WellFormed {Agent : Type*}
    (signal : ResidualActivationSignal Agent) : Prop :=
  signal.id.value ≠ 0 ∧
  signal.candidateOnly = true ∧
  signal.mutationAuthority = false ∧
  signal.source.WellFormed signal.residualOwnership
    signal.residualFrontier signal.primarySource
      signal.sourceRecords signal.provenance

/-- Every source record of a well-formed signal is provenance-covered. -/
theorem source_records_in_provenance
    {Agent : Type*} (signal : ResidualActivationSignal Agent)
    (wellFormed : signal.WellFormed) :
    signal.sourceRecords ⊆ signal.provenance :=
  wellFormed.2.2.2.2.2.2.1

/-- Signal validity never upgrades the signal into mutation authority. -/
theorem wellFormed_not_authority
    {Agent : Type*} (signal : ResidualActivationSignal Agent)
    (wellFormed : signal.WellFormed) :
    signal.mutationAuthority = false :=
  wellFormed.2.2.1

end ResidualActivationSignal

/-- Candidate activation function over the symbolic state. -/
structure ResidualActivator (Agent State : Type*) where
  id : RecordId
  activate : ResidualActivationSignal Agent → State → State
  candidateOnly : Bool
  mutationAuthority : Bool

namespace ResidualActivator

def CandidateScoped {Agent State : Type*}
    (activator : ResidualActivator Agent State) : Prop :=
  activator.id.value ≠ 0 ∧
  activator.candidateOnly = true ∧
  activator.mutationAuthority = false

/-- Neither an agent residual nor a human response makes activation authoritative. -/
theorem activation_not_authority
    {Agent State : Type*}
    (activator : ResidualActivator Agent State)
    (scopeProof : activator.CandidateScoped) :
    activator.mutationAuthority = false :=
  scopeProof.2.2

end ResidualActivator

/-! ## Routed corpus correction and hardware realization -/

/--
The candidate correction path requested by the architecture: route a request,
reduce against the existing corpus in symbolic coordinates, then activate from
an explicit agent residual or human-input record.
-/
structure RoutedCorpusCorrection
    (Agent Request Coordinate : Type*) [Fintype Coordinate] where
  router : CorpusOntologyRouter Request
  request : Request
  routedToSymbolicReduction : router.route request = .symbolicReduction
  reducer : CorpusNeuralReducer Coordinate
  activator : ResidualActivator Agent (NeuralRhetoricalState Coordinate)
  activationSignal : ResidualActivationSignal Agent
  corpusAligned : router.corpusSnapshot = reducer.corpusSnapshot
  ontologyAligned : router.ontologySnapshot = reducer.ontologySnapshot
  routerCandidateScoped : router.CandidateScoped
  reducerCandidateScoped : reducer.CandidateScoped
  activatorCandidateScoped : activator.CandidateScoped
  activationWellFormed : activationSignal.WellFormed
  admission : CorrectionAdmissionGate
  correctionCandidate : admission.candidate = reducer.id

namespace RoutedCorpusCorrection

/-- The exact neural state produced by the routed symbolic reducer. -/
def reducedState
    {Agent Request Coordinate : Type*} [Fintype Coordinate]
    (correction : RoutedCorpusCorrection Agent Request Coordinate) :
    NeuralRhetoricalState Coordinate :=
  correction.reducer.accuracy.candidate.transform
    correction.reducer.accuracy.before

/-- Residual or human activation is applied to the reducer's exact output. -/
def activatedState
    {Agent Request Coordinate : Type*} [Fintype Coordinate]
    (correction : RoutedCorpusCorrection Agent Request Coordinate) :
    NeuralRhetoricalState Coordinate :=
  correction.activator.activate correction.activationSignal
    correction.reducedState

/-- The pinned request enters the symbolic-reduction branch of the router. -/
theorem request_routes_to_symbolic_reducer
    {Agent Request Coordinate : Type*} [Fintype Coordinate]
    (correction : RoutedCorpusCorrection Agent Request Coordinate) :
    correction.router.route correction.request = .symbolicReduction :=
  correction.routedToSymbolicReduction

/-- The activation function consumes the realized reducer output exactly. -/
theorem activation_follows_reduction
    {Agent Request Coordinate : Type*} [Fintype Coordinate]
    (correction : RoutedCorpusCorrection Agent Request Coordinate) :
    correction.activatedState =
      correction.activator.activate correction.activationSignal
        (correction.reducer.accuracy.candidate.transform
          correction.reducer.accuracy.before) :=
  rfl

/-- All routed components and the activation signal remain candidate-only. -/
theorem routed_components_not_authority
    {Agent Request Coordinate : Type*} [Fintype Coordinate]
    (correction : RoutedCorpusCorrection Agent Request Coordinate) :
    correction.router.mutationAuthority = false ∧
    correction.reducer.mutationAuthority = false ∧
    correction.activator.mutationAuthority = false ∧
    correction.activationSignal.mutationAuthority = false :=
  ⟨correction.router.routing_not_authority correction.routerCandidateScoped,
    correction.reducer.reduction_not_authority correction.reducerCandidateScoped,
    correction.activator.activation_not_authority
      correction.activatorCandidateScoped,
    correction.activationSignal.wellFormed_not_authority
      correction.activationWellFormed⟩

/-- Every routed reduction inherits the reducer's scoped accuracy preference. -/
theorem reducer_prefers_accuracy
    {Agent Request Coordinate : Type*} [Fintype Coordinate]
    (correction : RoutedCorpusCorrection Agent Request Coordinate) :
    AccuracyPreferred correction.reducer.accuracy.target
      (correction.reducer.accuracy.candidate.transform
        correction.reducer.accuracy.before)
      correction.reducer.accuracy.before :=
  correction.reducer.reduces_declared_error

/-- Human/agent activation cannot replace the ordinary authority gate. -/
theorem activation_cannot_replace_missing_authority
    {Agent Request Coordinate : Type*} [Fintype Coordinate]
    (correction : RoutedCorpusCorrection Agent Request Coordinate)
    (missing : ¬ correction.admission.authorityValid) :
    ¬ correction.admission.Admissible :=
  correction.admission.score_cannot_replace_missing_authority missing

end RoutedCorpusCorrection

/--
Complete realization bundle connecting a neural-symbolic diffusion, its routed
corpus correction, and a certified hardware/symbolic architecture balance.
-/
structure HardwareRealizedNeuralSymbolicSystem
    (Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*)
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode] where
  diffusion : NeuralSymbolicDiffusion Coordinate Symbol k
  correction : RoutedCorpusCorrection Agent Request Coordinate
  architecture : ArchitectureCorrespondence HardwareNode SymbolicNode
  components :
    SymbolicArchitectureComponentRealization SymbolicNode
      architecture.symbolic
  diffuserComponentAligned :
    components.diffuser.record = diffusion.continuousLayer.diffusion.id
  routerComponentAligned :
    components.router.record = correction.router.id
  reducerComponentAligned :
    components.neuralReducer.record = correction.reducer.id
  activatorComponentAligned :
    components.residualActivator.record = correction.activator.id
  correctionTime : ℝ
  reducerInputIsNeuralCheckpoint :
    correction.reducer.accuracy.before =
      diffusion.neuralCandidate.transform
        (diffusion.continuousLayer.diffusion.trajectory correctionTime)
  reducerRhetoricalSpaceAligned :
    correction.reducer.rhetoricalSpace =
      diffusion.continuousLayer.rhetoricalSpace
  ontologySnapshotAligned :
    correction.reducer.ontologySnapshot =
      diffusion.continuousLayer.rhetoricalSpace.ontologySnapshot

namespace HardwareRealizedNeuralSymbolicSystem

/-- The four record-bearing symbolic nodes realize exactly the bundled records. -/
theorem component_records_exact
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HardwareRealizedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode) :
    system.components.diffuser.record =
        system.diffusion.continuousLayer.diffusion.id ∧
    system.components.router.record = system.correction.router.id ∧
    system.components.neuralReducer.record = system.correction.reducer.id ∧
    system.components.residualActivator.record =
      system.correction.activator.id :=
  ⟨system.diffuserComponentAligned,
    system.routerComponentAligned,
    system.reducerComponentAligned,
    system.activatorComponentAligned⟩

/-- The bundled symbolic nodes expose the required correction feedback path. -/
theorem component_feedback_reaches_reducer
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HardwareRealizedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode) :
    system.architecture.symbolic.network.rel
      system.components.residualActivator.node
      system.components.neuralReducer.node :=
  system.components.activation_reaches_reducer

/-- The reducer corrects the neural checkpoint realized at the pinned time. -/
theorem reducer_corrects_realized_neural_checkpoint
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HardwareRealizedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode) :
    system.correction.reducer.accuracy.before =
      system.diffusion.neuralCandidate.transform
        (system.diffusion.continuousLayer.diffusion.trajectory
          system.correctionTime) :=
  system.reducerInputIsNeuralCheckpoint

/-- The diffuser and reducer use the exact same polynomial rhetorical space. -/
theorem reducer_uses_diffusion_rhetorical_space
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HardwareRealizedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode) :
    system.correction.reducer.rhetoricalSpace =
      system.diffusion.continuousLayer.rhetoricalSpace :=
  system.reducerRhetoricalSpaceAligned

/-- The reducer input is the polynomial-contained neural checkpoint. -/
theorem reducer_input_models_diffusion_ontology
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HardwareRealizedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode) :
    system.diffusion.continuousLayer.rhetoricalSpace.Models
      system.correction.reducer.accuracy.before := by
  rw [system.reducerInputIsNeuralCheckpoint]
  exact system.diffusion.neural_checkpoint_models system.correctionTime

/-- The reducer input also projects into the exact finite symbolic ideal locus. -/
theorem reducer_input_models_finite_symbolic_ontology
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HardwareRealizedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode)
    (constraint : Symbol → k)
    (member : constraint ∈ system.diffusion.symbolicLayer.ontologyIdeal) :
    constraint
      (system.diffusion.symbolicLayer.symbolize
        system.correction.reducer.accuracy.before) = 0 := by
  rw [system.reducerInputIsNeuralCheckpoint]
  exact system.diffusion.neural_symbolic_constraint_vanishes
    system.correctionTime constraint member

/-- Continuous, finite-symbolic, routed, and reduced layers share one ontology. -/
theorem all_ontology_snapshots_aligned
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HardwareRealizedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode) :
    system.diffusion.symbolicLayer.ontologySnapshot =
        system.diffusion.continuousLayer.rhetoricalSpace.ontologySnapshot ∧
      system.correction.router.ontologySnapshot =
        system.correction.reducer.ontologySnapshot ∧
      system.correction.reducer.ontologySnapshot =
        system.diffusion.continuousLayer.rhetoricalSpace.ontologySnapshot :=
  ⟨system.diffusion.ontologySnapshotAligned,
    system.correction.ontologyAligned,
    system.ontologySnapshotAligned⟩

/-- Every executable neural, routing, reduction, and activation component is scoped. -/
theorem executable_components_not_authority
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HardwareRealizedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode) :
    system.diffusion.continuousLayer.diffusion.mutationAuthority = false ∧
      system.diffusion.neuralCandidate.mutationAuthority = false ∧
      system.correction.router.mutationAuthority = false ∧
      system.correction.reducer.mutationAuthority = false ∧
      system.correction.activator.mutationAuthority = false ∧
      system.correction.activationSignal.mutationAuthority = false :=
  ⟨system.diffusion.executable_layers_not_authority.1,
    system.diffusion.executable_layers_not_authority.2,
    system.correction.routed_components_not_authority.1,
    system.correction.routed_components_not_authority.2.1,
    system.correction.routed_components_not_authority.2.2.1,
    system.correction.routed_components_not_authority.2.2.2⟩

/-- The realized system inherits exact hardware/symbolic role balance. -/
theorem architecture_balance
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HardwareRealizedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode) :
    system.architecture.hardware.balance =
      system.architecture.symbolic.balance :=
  system.architecture.balance_identical

/-- The realized reducer remains relatively accuracy-preferring. -/
theorem correction_prefers_accuracy
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HardwareRealizedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode) :
    AccuracyPreferred system.correction.reducer.accuracy.target
      (system.correction.reducer.accuracy.candidate.transform
        system.correction.reducer.accuracy.before)
      system.correction.reducer.accuracy.before :=
  system.correction.reducer_prefers_accuracy

end HardwareRealizedNeuralSymbolicSystem

end Cord
```
