import FormalResearch.MathematicalTooling.Semantics.Atlas.Chart
import FormalResearch.MathematicalTooling.Semantics.Atlas.BridgeFixtures
import FormalResearch.MathematicalTooling.Semantics.Atlas.ClosureFixtures

/-!
# Checked source-chart attachment and structural transfer

A source chart admits an actual product-with-unit equivalence. Its proof is the
shared carrier of the existing conjunction-elimination/disjunction-introduction
rule fixture. A second source asks for the two resulting propositions. Checked
attachment both adds the selected bridge and reduces that target chart's rank
from one to zero. An unrelated accepted source produces zero structural gain.
-/

namespace FormalResearch.MathematicalTooling.Semantics.Atlas.ChartFixtures

open BridgeFixtures

/-- A single fixed catalog binds the selected edge to its exact checked bridge. -/
def catalog : BridgeCatalog Bool Unit where
  interface := equivalenceInterface
  admitted := fun _ => productUnitBridge

/-- The initial selection contains no nodes or admitted bridges. -/
def emptySelection : BridgeSelection catalog where
  nodes := ∅
  bridges := ∅
  endpoints_mem := by simp

/-- Both endpoints and the checked product-with-unit equivalence are selected. -/
def carrierSelection : BridgeSelection catalog where
  nodes := Finset.univ
  bridges := Finset.univ
  endpoints_mem := by simp

/-- This proposition names the actual typed bridge required by the chart. -/
def bridgeProposition : Prop :=
  Nonempty (InvertibleBridge (equivalenceInterface false) (equivalenceInterface true))

/-- The existing finite rule grammar is instantiated with checked bridge evidence. -/
def theory : AtlasTheory (Fin 4) where
  meaning := ClosureFixtures.meaning bridgeProposition True
  rules := ClosureFixtures.rules
  rules_sound := ClosureFixtures.rules_sound bridgeProposition True

/-- The initial atlas has no accepted facts or selected bridges. -/
def emptyAtlas : FiniteAtlas catalog theory where
  selection := emptySelection
  facts := ∅
  facts_sound := by simp

/-- A candidate is merely a nomination, even when all its annotations match. -/
def overlapCandidate : CandidateBridge Bool where
  source := false
  target := true
  kind := .equivalence
  orientation := .bidirectional
  metadata := productUnitBridge.metadata

/-- The accepted chart contains both the selected checked bridge and its proof carrier. -/
def sharedChart : PaperChart catalog theory where
  source := "finite-product-source"
  occurrences := {⟨"finite-product-source", "product"⟩, ⟨"finite-product-source", "base"⟩}
  source_bound := by
    intro occurrence h
    simp only [Finset.mem_insert, Finset.mem_singleton] at h
    rcases h with rfl | rfl <;> rfl
  selection := carrierSelection
  occurrenceNode := fun occurrence =>
    if occurrence.localId = "product" then some false else some true
  occurrence_node_bound := by intro _ _ node _; exact Finset.mem_univ node
  targets := {0}
  acceptedFacts := {0}
  accepted_sound := by
    intro fact hfact
    have heq : fact = 0 := Finset.mem_singleton.mp hfact
    subst fact
    change bridgeProposition ∧ True
    exact ⟨⟨.equivalence productUnitEquiv⟩, trivial⟩

/-- A second source can declare exact targets while admitting no proof of them yet. -/
def targetChart : PaperChart catalog theory where
  source := "finite-target-source"
  occurrences := {⟨"finite-target-source", "target"⟩}
  source_bound := by
    intro occurrence h
    have heq := Finset.mem_singleton.mp h
    subst occurrence
    rfl
  selection := emptySelection
  occurrenceNode := fun _ => none
  occurrence_node_bound := by simp
  targets := {1, 2}
  acceptedFacts := ∅
  accepted_sound := by simp

/-- The unrelated chart supplies only the independent true proposition. -/
def unrelatedChart : PaperChart catalog theory where
  source := "finite-unrelated-source"
  occurrences := {⟨"finite-unrelated-source", "independent"⟩}
  source_bound := by
    intro occurrence h
    have heq := Finset.mem_singleton.mp h
    subst occurrence
    rfl
  selection := emptySelection
  occurrenceNode := fun _ => none
  occurrence_node_bound := by simp
  targets := {3}
  acceptedFacts := {3}
  accepted_sound := by
    intro fact hfact
    have heq : fact = 3 := Finset.mem_singleton.mp hfact
    subst fact
    trivial

/-- Candidate annotations match a separately checked witness; the witness, not
this metadata equality, is what admits the bridge. -/
theorem candidate_has_checked_witness :
    overlapCandidate.source = productUnitBridge.source ∧
    overlapCandidate.target = productUnitBridge.target ∧
    overlapCandidate.kind = productUnitBridge.evidence.kind ∧
    Nonempty (InvertibleBridge (catalog.interface false) (catalog.interface true)) :=
  ⟨rfl, rfl, rfl, ⟨.equivalence productUnitEquiv⟩⟩

/-- Attachment inserts the actual bridge and saturates the accepted shared proof. -/
theorem checked_chart_saturates :
    () ∈ (attachChart emptyAtlas sharedChart).selection.bridges ∧
    (attachChart emptyAtlas sharedChart).facts = {0, 1, 2} := by
  constructor
  · decide
  · exact ClosureFixtures.shared_saturates

/-- The selected checked bridge also creates the corresponding semantic leaf. -/
theorem attached_bridge_creates_leaf :
    (attachChart emptyAtlas sharedChart).selection.toGraph.SameLeaf false true := by
  apply Relation.EqvGen.rel
  exact ⟨(), by decide, rfl, rfl, trivial⟩

/-- Targets alone are obligations and do not add accepted facts. -/
theorem unproved_targets_not_admitted :
    targetChart.targets = {1, 2} ∧ targetChart.acceptedFacts = ∅ := ⟨rfl, rfl⟩

/-- This entire source-bound attachment computes a strict structural improvement. -/
theorem checked_chart_positive_transfer :
    chartRank {0} emptyAtlas targetChart = some 1 ∧
    chartRank {0} (attachChart emptyAtlas sharedChart) targetChart = some 0 ∧
    chartResidual (attachChart emptyAtlas sharedChart) targetChart = ∅ ∧
    chartTransferGain {0} emptyAtlas sharedChart targetChart = some 1 := by
  exact ⟨ClosureFixtures.shared_rank_before, ClosureFixtures.shared_rank_after,
    ClosureFixtures.shared_residual_reduction.2, ClosureFixtures.positive_transfer_gain⟩

/-- A second checked chart may add accepted material with no transfer to these targets. -/
theorem checked_unrelated_chart_zero_transfer :
    chartTransferGain {0} emptyAtlas unrelatedChart targetChart = some 0 :=
  ClosureFixtures.zero_transfer_gain

/-- The trusted record implementation inherits order independence on all finite content. -/
theorem checked_charts_order_independent :
    (attachChart (attachChart emptyAtlas sharedChart) unrelatedChart).facts =
      (attachChart (attachChart emptyAtlas unrelatedChart) sharedChart).facts ∧
    (attachChart (attachChart emptyAtlas sharedChart) unrelatedChart).selection.nodes =
      (attachChart (attachChart emptyAtlas unrelatedChart) sharedChart).selection.nodes ∧
    (attachChart (attachChart emptyAtlas sharedChart) unrelatedChart).selection.bridges =
      (attachChart (attachChart emptyAtlas unrelatedChart) sharedChart).selection.bridges :=
  attachChart_order_independent emptyAtlas sharedChart unrelatedChart

/-- One explicit target that distinguishes the two candidate coordinates. -/
def distinguishingTargets : TargetFamily Bool where
  count := 1
  Value := fun _ => Bool
  valueEquality := fun _ => inferInstance
  value := fun _ x => x

/-- A different explicit family permits this particular coordinate change. -/
def constantTargets : TargetFamily Bool where
  count := 1
  Value := fun _ => Nat
  valueEquality := fun _ => inferInstance
  value := fun _ _ => 0

/-- The empty atlas commits to preserving the distinction between the two node identifiers. -/
def distinguishingAtlas : TargetedAtlas catalog theory where
  atlas := emptyAtlas
  targets := distinguishingTargets
  target_contract := by
    intro i x y h
    simp [FiniteBridgeGraph.InvertibleEdge, BridgeSelection.toGraph,
      emptyAtlas, emptySelection] at h

/-- The empty atlas commits only to a target constant on both candidate endpoints. -/
def constantAtlas : TargetedAtlas catalog theory where
  atlas := emptyAtlas
  targets := constantTargets
  target_contract := by
    intro i x y _
    rfl

/-- Invertible mathematical evidence alone does not preserve every target. -/
def explicitTargetConflict : TargetConflict distinguishingAtlas sharedChart where
  target := ⟨0, by decide⟩
  left := false
  right := true
  bridge := ⟨(), Finset.mem_univ (), rfl, rfl, trivial⟩
  different := Bool.false_ne_true

/-- A valid checked equivalence is rejected if it erases a committed distinction. -/
theorem distinguishing_target_blocks_checked_attachment :
    tryAttachTargetedChart distinguishingAtlas sharedChart = none :=
  explicitTargetConflict.blocks_attachment

/-- The finite positive check supplies a preservation proof, rather than relying
on failure to find an obstruction. -/
theorem constant_target_allows_checked_attachment :
    constantAtlas.CompatibleChart sharedChart := by
  intro i x y _
  rfl

/-- Exhaustive checking actually constructs the target-preserving atlas. -/
theorem constant_target_checked_attachment_succeeds :
    (tryAttachTargetedChart constantAtlas sharedChart).isSome = true := by decide

/-- Successful guarded attachment retains the exact old target family. -/
theorem successful_attachment_retains_targets :
    (attachTargetedChart constantAtlas sharedChart
      constant_target_allows_checked_attachment).targets = constantAtlas.targets := rfl

/-- A separate finite theory retains an explicit false proposed obligation. -/
def conflictTheory : AtlasTheory Bool where
  meaning := fun fact => if fact then False else True
  rules := ∅
  rules_sound := by simp

/-- An accepted true fact supplies the existing side of the conflict fixture. -/
def conflictAtlas : FiniteAtlas catalog conflictTheory where
  selection := emptySelection
  facts := {false}
  facts_sound := by
    intro fact hfact
    have heq : fact = false := Finset.mem_singleton.mp hfact
    subst fact
    trivial

/-- The proposal is incompatible with a proved old fact; it is not admitted. -/
def explicitConflict : ChartConflict conflictAtlas where
  oldFact := false
  oldDerived := saturation_extensive conflictTheory.rules _ (Finset.mem_singleton_self false)
  proposedFact := true
  incompatible := fun _ h => h

/-- A trusted chart with this unchanged theory cannot accept the conflicting proposal. -/
theorem conflicting_proposal_rejected (chart : PaperChart catalog conflictTheory) :
    true ∉ chart.acceptedFacts := explicitConflict.not_accepted chart

end FormalResearch.MathematicalTooling.Semantics.Atlas.ChartFixtures
