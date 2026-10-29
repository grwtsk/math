import DAF.Geometry.LegalDiffusion
import DAF.Terrain.AvalanchePartition
import DAF.Manifest

/-!
# Exact global-to-local avalanche reconciliation

`AvalanchePartitionTree` is a deterministic fracture of one fixed absolute
coordinate frame; it is not the Boolean-derivative avalanche API.  For one
declared region, this module proves the global/local formula from an explicit
operator-restriction square and a reference-state square.  Thresholding then
commutes because every layer uses the same deterministic half-up convention.

Metric, cycle-torsion, boundary/overlap, horizon, and version agreement are
retained as assumptions of the certificate.  A failed square is represented
by a stable obstruction instead of a theorem-like name.
-/

namespace DAF.Integration

open DAF.Terrain

universe uState

/-- All data and hypotheses for one exact global/local relaxation square. -/
structure GlobalLocalRelaxationSquare
    {State : Type uState}
    (G : KnownMaximalState State)
    (region : AbsoluteRegion G) where
  horizon : Nat
  version : DAF.Version
  globalReference : G.Coord → ℝ
  localReference : region.LocalCoord → ℝ
  globalOperator : (G.Coord → ℝ) →ₗ[ℝ] (G.Coord → ℝ)
  localOperator :
    (region.LocalCoord → ℝ) →ₗ[ℝ]
      (region.LocalCoord → ℝ)
  referenceSquare :
    restrictSignal region globalReference = localReference
  operatorSquare :
    ∀ y,
      restrictSignal region (globalOperator y) =
        localOperator (restrictSignal region y)
  metricRestrictionCompatible : Prop
  metricRestrictionCompatible_proof : metricRestrictionCompatible
  torsionRestrictionCompatible : Prop
  torsionRestrictionCompatible_proof : torsionRestrictionCompatible
  boundaryOverlapCompatible : Prop
  boundaryOverlapCompatible_proof : boundaryOverlapCompatible

namespace GlobalLocalRelaxationSquare

variable {State : Type uState}
variable {G : KnownMaximalState State}
variable {region : AbsoluteRegion G}

/-- Global fixed-horizon reconstruction in absolute coordinates. -/
def globalResult
    (square : GlobalLocalRelaxationSquare G region)
    (initial : G.Coord → ℝ) : G.Coord → ℝ :=
  square.globalReference +
    square.globalOperator (initial - square.globalReference)

/-- Local fixed-horizon reconstruction in the exact region subtype. -/
def localResult
    (square : GlobalLocalRelaxationSquare G region)
    (initial : G.Coord → ℝ) : region.LocalCoord → ℝ :=
  square.localReference +
    square.localOperator
      (restrictSignal region initial - square.localReference)

/-- The assumed operator and reference squares prove exact real-state restriction. -/
theorem globalResult_restrict
    (square : GlobalLocalRelaxationSquare G region)
    (initial : G.Coord → ℝ) :
    restrictSignal region (square.globalResult initial) =
      square.localResult initial := by
  calc
    restrictSignal region (square.globalResult initial) =
        restrictSignal region square.globalReference +
          restrictSignal region
            (square.globalOperator (initial - square.globalReference)) := rfl
    _ = square.localReference +
          square.localOperator
            (restrictSignal region (initial - square.globalReference)) := by
      rw [square.referenceSquare, square.operatorSquare]
    _ = square.localResult initial := by
      unfold localResult
      rw [← square.referenceSquare]
      rfl

/-- Thresholded global output restricts to the exact thresholded local output. -/
theorem threshold_globalResult_restrict
    (square : GlobalLocalRelaxationSquare G region)
    (initial : G.Coord → ℝ) :
    restrictSignal region (thresholdState (square.globalResult initial)) =
      thresholdState (square.localResult initial) := by
  rw [← thresholdState_restrictSignal]
  rw [square.globalResult_restrict]

end GlobalLocalRelaxationSquare

/-- A stable witness that a requested global/local commutation square failed. -/
structure GlobalLocalReconciliationObstruction
    {State : Type uState}
    (G : KnownMaximalState State) where
  region : AbsoluteRegion G
  horizon : Nat
  version : DAF.Version
  failedSquareIdentifier : String
  failedCondition : Prop
  witness : failedCondition
  unresolvedObligations : List String

/-- A proved reconciliation or an explicitly retained obstruction. -/
inductive GlobalLocalReconciliationStatus
    {State : Type uState}
    {G : KnownMaximalState State}
    {region : AbsoluteRegion G}
  | proved (certificate : GlobalLocalRelaxationSquare G region)
  | obstructed (obstruction : GlobalLocalReconciliationObstruction G)

/-!
## Partition-wide sections and gluing

The following layer separates two facts which require different hypotheses.
Local results obtained by restricting one global result agree automatically on
every declared interface.  Conversely, reconstructing a global result from an
arbitrary compatible family requires the declared interfaces to contain every
pairwise region intersection.  That completeness condition is carried by
`PartitionGluingCapability`; it is never inferred from the word "partition".
-/

variable {State : Type uState}
variable {G : KnownMaximalState State}
variable {tree : AvalanchePartitionTree G}

/-- A Boolean section on every region of one declared avalanche cut. -/
structure PartitionLocalBoolSections
    (partition : GlobalAvalanchePartition tree) where
  value : ∀ node, (tree.region node).LocalCoord → Bool

namespace PartitionLocalBoolSections

/-- Pairwise agreement on every explicitly declared shared interface. -/
def Compatible
    {partition : GlobalAvalanchePartition tree}
    (sections : PartitionLocalBoolSections partition) : Prop := by
  letI : DecidableEq tree.Node := tree.nodeDecEq
  letI : DecidableEq G.Coord := G.coordDecEq
  exact ∀ a, a ∈ partition.nodes →
    ∀ b, b ∈ partition.nodes →
    ∀ x, ∀ hx : x ∈ partition.sharedInterface a b,
      sections.value a
          ⟨x, partition.sharedInterface_left a b hx⟩ =
        sections.value b
          ⟨x, partition.sharedInterface_right a b hx⟩

/-- The local sections obtained by restricting one global Boolean state. -/
def ofGlobal
    (partition : GlobalAvalanchePartition tree)
    (global : G.Coord → Bool) : PartitionLocalBoolSections partition where
  value := fun node => restrictSignal (tree.region node) global

theorem ofGlobal_compatible
    (partition : GlobalAvalanchePartition tree)
    (global : G.Coord → Bool) :
    (ofGlobal partition global).Compatible := by
  letI : DecidableEq tree.Node := tree.nodeDecEq
  letI : DecidableEq G.Coord := G.coordDecEq
  intro a _ha b _hb x hx
  rfl

end PartitionLocalBoolSections

/-- A family of local Boolean states together with its overlap equations. -/
structure CompatiblePartitionLocalBoolSections
    (partition : GlobalAvalanchePartition tree)
    extends PartitionLocalBoolSections partition where
  compatible : toPartitionLocalBoolSections.Compatible

/--
The explicit coverage condition needed to reconstruct arbitrary compatible
sections.  The base partition only says that declared interfaces lie in both
regions; this capability adds the converse for selected regions.
-/
structure PartitionGluingCapability
    (partition : GlobalAvalanchePartition tree) where
  interface_complete : by
    letI : DecidableEq tree.Node := tree.nodeDecEq
    letI : DecidableEq G.Coord := G.coordDecEq
    exact ∀ a, a ∈ partition.nodes →
      ∀ b, b ∈ partition.nodes →
      ∀ x, x ∈ (tree.region a).coordinates →
        x ∈ (tree.region b).coordinates →
          x ∈ partition.sharedInterface a b

/-- A deterministic choice of one selected region containing a coordinate. -/
noncomputable def partitionSelectedNode
    (partition : GlobalAvalanchePartition tree)
    (x : G.Coord) : tree.Node :=
  Classical.choose (by
    letI : DecidableEq tree.Node := tree.nodeDecEq
    letI : DecidableEq G.Coord := G.coordDecEq
    exact partition.globalCover x)

theorem partitionSelectedNode_mem
    (partition : GlobalAvalanchePartition tree)
    (x : G.Coord) :
    partitionSelectedNode partition x ∈ partition.nodes := by
  letI : DecidableEq tree.Node := tree.nodeDecEq
  letI : DecidableEq G.Coord := G.coordDecEq
  exact (Classical.choose_spec (partition.globalCover x)).1

theorem mem_partitionSelectedNode_region
    (partition : GlobalAvalanchePartition tree)
    (x : G.Coord) :
    x ∈ (tree.region (partitionSelectedNode partition x)).coordinates := by
  letI : DecidableEq tree.Node := tree.nodeDecEq
  letI : DecidableEq G.Coord := G.coordDecEq
  exact (Classical.choose_spec (partition.globalCover x)).2

namespace PartitionGluingCapability

/-- Glue compatible sections by reading any certified selected region. -/
noncomputable def glue
    {partition : GlobalAvalanchePartition tree}
    (_capability : PartitionGluingCapability partition)
    (sections : CompatiblePartitionLocalBoolSections partition) :
    G.Coord → Bool :=
  fun x => sections.value (partitionSelectedNode partition x)
    ⟨x, mem_partitionSelectedNode_region partition x⟩

/-- The glued state restricts to every selected local section. -/
theorem restrict_glue
    {partition : GlobalAvalanchePartition tree}
    (capability : PartitionGluingCapability partition)
    (sections : CompatiblePartitionLocalBoolSections partition)
    (node : tree.Node)
    (hnode : node ∈ partition.nodes) :
    restrictSignal (tree.region node) (capability.glue sections) =
      sections.value node := by
  letI : DecidableEq tree.Node := tree.nodeDecEq
  letI : DecidableEq G.Coord := G.coordDecEq
  funext x
  unfold glue restrictSignal
  exact sections.compatible
    (partitionSelectedNode partition x) (partitionSelectedNode_mem partition x)
    node hnode x.1
    (capability.interface_complete
      (partitionSelectedNode partition x) (partitionSelectedNode_mem partition x)
      node hnode x.1 (mem_partitionSelectedNode_region partition x) x.2)

/--
GLT-04: compatible local states have exactly one global realization.  Both
existence and uniqueness use only the explicit cover and interface-completeness
certificate.
-/
theorem compatibleSections_glue_unique
    {partition : GlobalAvalanchePartition tree}
    (capability : PartitionGluingCapability partition)
    (sections : CompatiblePartitionLocalBoolSections partition) :
    ∃! global : G.Coord → Bool,
      ∀ node, node ∈ partition.nodes →
        restrictSignal (tree.region node) global = sections.value node := by
  refine ⟨capability.glue sections, ?_, ?_⟩
  · intro node hnode
    exact capability.restrict_glue sections node hnode
  · intro candidate hcand
    funext x
    let node := partitionSelectedNode partition x
    have hnode : node ∈ partition.nodes := partitionSelectedNode_mem partition x
    have hx : x ∈ (tree.region node).coordinates :=
      mem_partitionSelectedNode_region partition x
    have hrestrict := congrFun (hcand node hnode) ⟨x, hx⟩
    exact hrestrict.trans (by rfl)

end PartitionGluingCapability

/-!
## One relaxation system over the whole selected partition
-/

/--
One global relaxation and its local restriction square at every partition
node.  Metric, torsion, and boundary compatibility remain explicit per-node
capabilities; the record does not manufacture them.
-/
structure PartitionGlobalLocalRelaxationSystem
    (partition : GlobalAvalanchePartition tree) where
  horizon : Nat
  version : DAF.Version
  globalReference : G.Coord → ℝ
  globalOperator : (G.Coord → ℝ) →ₗ[ℝ] (G.Coord → ℝ)
  localReference : ∀ node, (tree.region node).LocalCoord → ℝ
  localOperator : ∀ node,
    ((tree.region node).LocalCoord → ℝ) →ₗ[ℝ]
      ((tree.region node).LocalCoord → ℝ)
  referenceSquare : ∀ node,
    restrictSignal (tree.region node) globalReference = localReference node
  operatorSquare : ∀ node y,
    restrictSignal (tree.region node) (globalOperator y) =
      localOperator node (restrictSignal (tree.region node) y)
  metricRestrictionCompatible : tree.Node → Prop
  metricRestrictionCompatible_proof :
    ∀ node, metricRestrictionCompatible node
  torsionRestrictionCompatible : tree.Node → Prop
  torsionRestrictionCompatible_proof :
    ∀ node, torsionRestrictionCompatible node
  boundaryOverlapCompatible : tree.Node → Prop
  boundaryOverlapCompatible_proof :
    ∀ node, boundaryOverlapCompatible node

namespace PartitionGlobalLocalRelaxationSystem

/-- Recover the already-proved one-region square at any partition node. -/
def squareAt
    {partition : GlobalAvalanchePartition tree}
    (system : PartitionGlobalLocalRelaxationSystem partition)
    (node : tree.Node) :
    GlobalLocalRelaxationSquare G (tree.region node) where
  horizon := system.horizon
  version := system.version
  globalReference := system.globalReference
  localReference := system.localReference node
  globalOperator := system.globalOperator
  localOperator := system.localOperator node
  referenceSquare := system.referenceSquare node
  operatorSquare := system.operatorSquare node
  metricRestrictionCompatible := system.metricRestrictionCompatible node
  metricRestrictionCompatible_proof :=
    system.metricRestrictionCompatible_proof node
  torsionRestrictionCompatible := system.torsionRestrictionCompatible node
  torsionRestrictionCompatible_proof :=
    system.torsionRestrictionCompatible_proof node
  boundaryOverlapCompatible := system.boundaryOverlapCompatible node
  boundaryOverlapCompatible_proof :=
    system.boundaryOverlapCompatible_proof node

/-- The common global real-valued result. -/
def globalResult
    {partition : GlobalAvalanchePartition tree}
    (system : PartitionGlobalLocalRelaxationSystem partition)
    (initial : G.Coord → ℝ) : G.Coord → ℝ :=
  system.globalReference +
    system.globalOperator (initial - system.globalReference)

/-- The local real-valued result at one node. -/
def localResult
    {partition : GlobalAvalanchePartition tree}
    (system : PartitionGlobalLocalRelaxationSystem partition)
    (node : tree.Node)
    (initial : G.Coord → ℝ) :
    (tree.region node).LocalCoord → ℝ :=
  system.localReference node +
    system.localOperator node
      (restrictSignal (tree.region node) initial - system.localReference node)

/-- GLT-01 simultaneously specializes to every selected partition region. -/
theorem globalResult_restrict
    {partition : GlobalAvalanchePartition tree}
    (system : PartitionGlobalLocalRelaxationSystem partition)
    (node : tree.Node)
    (initial : G.Coord → ℝ) :
    restrictSignal (tree.region node) (system.globalResult initial) =
      system.localResult node initial :=
  (system.squareAt node).globalResult_restrict initial

/-- GLT-02 at every node, with the common deterministic half-up threshold. -/
theorem threshold_globalResult_restrict
    {partition : GlobalAvalanchePartition tree}
    (system : PartitionGlobalLocalRelaxationSystem partition)
    (node : tree.Node)
    (initial : G.Coord → ℝ) :
    restrictSignal (tree.region node)
        (thresholdState (system.globalResult initial)) =
      thresholdState (system.localResult node initial) :=
  (system.squareAt node).threshold_globalResult_restrict initial

/-- The family of all thresholded local relaxation results. -/
noncomputable def thresholdSections
    {partition : GlobalAvalanchePartition tree}
    (system : PartitionGlobalLocalRelaxationSystem partition)
    (initial : G.Coord → ℝ) :
    CompatiblePartitionLocalBoolSections partition where
  value := fun node => thresholdState (system.localResult node initial)
  compatible := by
    letI : DecidableEq tree.Node := tree.nodeDecEq
    letI : DecidableEq G.Coord := G.coordDecEq
    intro a _ha b _hb x hx
    have ha := congrFun (system.threshold_globalResult_restrict a initial)
      ⟨x, partition.sharedInterface_left a b hx⟩
    have hb := congrFun (system.threshold_globalResult_restrict b initial)
      ⟨x, partition.sharedInterface_right a b hx⟩
    exact ha.symm.trans hb

/-- GLT-03: thresholded local states agree on every shared interface. -/
theorem thresholdedLocalStates_agree
    {partition : GlobalAvalanchePartition tree}
    (system : PartitionGlobalLocalRelaxationSystem partition)
    (initial : G.Coord → ℝ)
    (a : tree.Node) (ha : a ∈ partition.nodes)
    (b : tree.Node) (hb : b ∈ partition.nodes)
    (x : G.Coord) (hx : x ∈ partition.sharedInterface a b) :
    thresholdState (system.localResult a initial)
        ⟨x, partition.sharedInterface_left a b hx⟩ =
      thresholdState (system.localResult b initial)
        ⟨x, partition.sharedInterface_right a b hx⟩ :=
  (system.thresholdSections initial).compatible a ha b hb x hx

/--
GLT-05: after certified gluing, the local equivalence state is exactly the
thresholded global relaxation state, not merely another compatible extension.
-/
theorem glued_thresholdSections_eq_global
    {partition : GlobalAvalanchePartition tree}
    (system : PartitionGlobalLocalRelaxationSystem partition)
    (capability : PartitionGluingCapability partition)
    (initial : G.Coord → ℝ) :
    capability.glue (system.thresholdSections initial) =
      thresholdState (system.globalResult initial) := by
  funext x
  let node := partitionSelectedNode partition x
  have hx : x ∈ (tree.region node).coordinates :=
    mem_partitionSelectedNode_region partition x
  have hrestrict := congrFun
    (system.threshold_globalResult_restrict node initial) ⟨x, hx⟩
  change thresholdState (system.localResult node initial) ⟨x, hx⟩ =
    thresholdState (system.globalResult initial) x
  exact hrestrict.symm

end PartitionGlobalLocalRelaxationSystem

/-- A typed, still-open premise for a requested partition-wide theorem. -/
structure PartitionGlobalLocalReconciliationObligation
    (partition : GlobalAvalanchePartition tree) where
  horizon : Nat
  version : DAF.Version
  missingCondition : Prop
  obligationIdentifier : String
  explanation : String

/-- A nonzero mismatch on a shared interface blocks a gluing assertion. -/
structure ThresholdInterfaceObstruction
    {State : Type uState}
    (G : KnownMaximalState State) where
  left : AbsoluteRegion G
  right : AbsoluteRegion G
  coordinate : G.Coord
  coordinate_left :
    letI := G.coordDecEq
    coordinate ∈ left.coordinates
  coordinate_right :
    letI := G.coordDecEq
    coordinate ∈ right.coordinates
  leftValue : Bool
  rightValue : Bool
  mismatch : leftValue ≠ rightValue

/-- An interface mismatch rules out equality of the two local observations. -/
theorem ThresholdInterfaceObstruction.not_equal
    {State : Type uState}
    {G : KnownMaximalState State}
    (obstruction : ThresholdInterfaceObstruction G) :
    obstruction.leftValue ≠ obstruction.rightValue :=
  obstruction.mismatch

/--
The partition-wide result is either backed by all exact capabilities, blocked
by concrete interface data, or retained as an unresolved typed obligation.
-/
inductive PartitionGlobalLocalReconciliationStatus
    {State : Type uState}
    {G : KnownMaximalState State}
    {tree : AvalanchePartitionTree G}
    (partition : GlobalAvalanchePartition tree)
  | proved
      (system : PartitionGlobalLocalRelaxationSystem partition)
      (gluing : PartitionGluingCapability partition)
  | obstructed (obstruction : ThresholdInterfaceObstruction G)
  | unresolved
      (obligation : PartitionGlobalLocalReconciliationObligation partition)

end DAF.Integration
