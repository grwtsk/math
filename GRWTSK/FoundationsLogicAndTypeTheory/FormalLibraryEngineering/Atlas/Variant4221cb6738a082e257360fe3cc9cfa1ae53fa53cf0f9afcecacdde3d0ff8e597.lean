import FormalResearch.MathematicalTooling.Semantics.Atlas.Basic
import FormalResearch.MathematicalTooling.Semantics.Atlas.Foliation
import FormalResearch.MathematicalTooling.Semantics.Atlas.Burden

/-!
# Trusted finite atlases and source charts

A fixed bridge catalog assigns checked mathematical interfaces to node and edge
IDs. A fixed atlas theory independently assigns propositions to fact IDs and
proves every admitted ground rule sound. This separates object transport from
logical derivability without allowing either meaning to be overwritten.

Charts contain proved accepted facts and selected checked bridges. Their targets
are exact obligations and are not assumed true. Candidate source extraction is
not a constructor for a trusted chart. An attachment in a different catalog or
theory requires explicit revalidation rather than replacement of old semantics.
-/

namespace FormalResearch.MathematicalTooling.Semantics.Atlas

universe u v w z t

/-- One finite rule language with fixed mathematical meanings and checked rules. -/
structure AtlasTheory (Fact : Type z) [DecidableEq Fact] where
  /-- The fixed proposition represented by each finite fact identifier. -/
  meaning : Fact → Prop
  /-- The finite ground rules whose consequences may enter the atlas. -/
  rules : Finset (Rule Fact)
  rules_sound : ∀ rule ∈ rules,
    (∀ x ∈ rule.premises, meaning x) → meaning rule.conclusion

variable {V : Type v} {E : Type w} {Fact : Type z}
variable [Fintype V] [DecidableEq V] [Fintype E] [DecidableEq E]
variable [Fintype Fact] [DecidableEq Fact]

/-- A trusted atlas selects checked bridges and an inventory of proved facts. -/
structure FiniteAtlas (catalog : BridgeCatalog.{u} V E) (theory : AtlasTheory Fact) where
  /-- The nodes and checked bridges currently selected from the fixed catalog. -/
  selection : BridgeSelection catalog
  /-- The finite inventory of facts already supported by proofs. -/
  facts : Finset Fact
  facts_sound : ∀ x ∈ facts, theory.meaning x

/-- Source-local coordinates accompany, but never replace, mathematical evidence.
An occurrence may have no accepted node yet. Targets can remain open. -/
structure PaperChart (catalog : BridgeCatalog.{u} V E) (theory : AtlasTheory Fact) where
  /-- Provenance identity shared by this chart's local occurrences. -/
  source : String
  /-- The finite inventory of occurrences belonging to this source. -/
  occurrences : Finset OccurrenceId
  source_bound : ∀ occurrence ∈ occurrences, occurrence.source = source
  /-- The catalog nodes and checked bridges admitted by this chart. -/
  selection : BridgeSelection catalog
  /-- An optional accepted catalog node for each source-local occurrence. -/
  occurrenceNode : OccurrenceId → Option V
  occurrence_node_bound : ∀ occurrence ∈ occurrences, ∀ node,
    occurrenceNode occurrence = some node → node ∈ selection.nodes
  /-- Exact desired facts, including obligations that may remain unproved. -/
  targets : Finset Fact
  /-- Facts this chart contributes with proofs under the fixed theory. -/
  acceptedFacts : Finset Fact
  accepted_sound : ∀ x ∈ acceptedFacts, theory.meaning x

variable {catalog : BridgeCatalog.{u} V E} {theory : AtlasTheory Fact}

/-- All finite consequences of accepted facts have checked mathematical meanings. -/
theorem FiniteAtlas.closure_sound (atlas : FiniteAtlas catalog theory) :
    ∀ x ∈ saturate theory.rules atlas.facts, theory.meaning x :=
  saturation_sound theory.rules atlas.facts theory.meaning atlas.facts_sound theory.rules_sound

/-- This basic attachment changes finite selection and closure, never meanings.
It records no leaf-target commitments. Use `attachTargetedChart` whenever an
atlas commits to preserving a declared target family under invertible transport. -/
def attachChart (atlas : FiniteAtlas catalog theory) (chart : PaperChart catalog theory) :
    FiniteAtlas catalog theory where
  selection := atlas.selection.union chart.selection
  facts := saturate theory.rules (atlas.facts ∪ chart.acceptedFacts)
  facts_sound := saturation_sound theory.rules (atlas.facts ∪ chart.acceptedFacts)
    theory.meaning (by
      intro x hx
      rcases Finset.mem_union.mp hx with ha | hc
      · exact atlas.facts_sound x ha
      · exact chart.accepted_sound x hc) theory.rules_sound

/-- Previously accepted facts remain accepted after attachment. -/
theorem attachChart_extends_facts (atlas : FiniteAtlas catalog theory)
    (chart : PaperChart catalog theory) : atlas.facts ⊆ (attachChart atlas chart).facts :=
  Finset.subset_union_left.trans (saturation_extensive theory.rules _)

/-- Every old consequence survives with exactly the same theory and meaning. -/
theorem attachChart_preserves_old_closure (atlas : FiniteAtlas catalog theory)
    (chart : PaperChart catalog theory) :
    saturate theory.rules atlas.facts ⊆ (attachChart atlas chart).facts :=
  saturation_monotone theory.rules Finset.subset_union_left

theorem attachChart_extends_nodes (atlas : FiniteAtlas catalog theory)
    (chart : PaperChart catalog theory) :
    atlas.selection.nodes ⊆ (attachChart atlas chart).selection.nodes :=
  atlas.selection.nodes_subset_union chart.selection

theorem attachChart_extends_bridges (atlas : FiniteAtlas catalog theory)
    (chart : PaperChart catalog theory) :
    atlas.selection.bridges ⊆ (attachChart atlas chart).selection.bridges :=
  atlas.selection.bridges_subset_union chart.selection

/-- Edge IDs retain their exact endpoints, proof evidence and provenance. -/
theorem attachChart_preserves_bridge_interpretation (atlas : FiniteAtlas catalog theory)
    (chart : PaperChart catalog theory) (e : E) :
    (attachChart atlas chart).selection.toGraph.admitted e =
      atlas.selection.toGraph.admitted e := rfl

/-- An invariant target survives added leaves when the chart supplies its own
contract for every added invertible edge. -/
theorem attachChart_preserves_targets (atlas : FiniteAtlas catalog theory)
    (chart : PaperChart catalog theory) {Y : Sort*} (target : V → Y)
    (oldContract : atlas.selection.toGraph.TargetInvariant target)
    (chartContract : chart.selection.toGraph.TargetInvariant target) {x y : V}
    (h : (attachChart atlas chart).selection.toGraph.SameLeaf x y) : target x = target y :=
  (attachChart atlas chart).selection.toGraph.leaf_transport_preserves_targets target
    (atlas.selection.union_target_invariant chart.selection target oldContract chartContract) h

/-- Final facts, selected nodes and selected bridges are each order independent. -/
theorem attachChart_order_independent (atlas : FiniteAtlas catalog theory)
    (first second : PaperChart catalog theory) :
    (attachChart (attachChart atlas first) second).facts =
      (attachChart (attachChart atlas second) first).facts ∧
    (attachChart (attachChart atlas first) second).selection.nodes =
      (attachChart (attachChart atlas second) first).selection.nodes ∧
    (attachChart (attachChart atlas first) second).selection.bridges =
      (attachChart (attachChart atlas second) first).selection.bridges := by
  refine ⟨?_, ?_, ?_⟩
  · exact attach_order_independent (saturation theory.rules)
      atlas.facts first.acceptedFacts second.acceptedFacts
  · exact Finset.union_right_comm _ _ _
  · exact Finset.union_right_comm _ _ _

/-- A complete atlas with explicit commitments for every declared semantic target.
Unlike a facts-and-bridges inventory, this record forbids unguarded new leaf merges. -/
structure TargetedAtlas (catalog : BridgeCatalog.{u} V E) (theory : AtlasTheory Fact) where
  /-- The accepted facts and checked bridge selection protected by the target contracts. -/
  atlas : FiniteAtlas catalog theory
  /-- The explicit family of distinctions that admitted invertible transport must preserve. -/
  targets : TargetFamily.{v, t} V
  target_contract : ∀ i, atlas.selection.toGraph.TargetInvariant (targets.value i)

/-- The exact finite compatibility obligation for a chart's new invertible edges. -/
def TargetedAtlas.CompatibleChart (atlas : TargetedAtlas catalog theory)
    (chart : PaperChart catalog theory) : Prop :=
  ∀ i, chart.selection.toGraph.TargetInvariant (atlas.targets.value i)

instance (atlas : TargetedAtlas catalog theory) (chart : PaperChart catalog theory) :
    Decidable (atlas.CompatibleChart chart) :=
  inferInstanceAs (Decidable (∀ i, ∀ x y,
    chart.selection.toGraph.InvertibleEdge x y →
      atlas.targets.value i x = atlas.targets.value i y))

/-- Guarded attachment requires actual preservation proofs before constructing
new leaves. The old target family itself remains unchanged. -/
def attachTargetedChart (atlas : TargetedAtlas catalog theory)
    (chart : PaperChart catalog theory) (compatible : atlas.CompatibleChart chart) :
    TargetedAtlas catalog theory where
  atlas := attachChart atlas.atlas chart
  targets := atlas.targets
  target_contract := fun i =>
    atlas.atlas.selection.union_target_invariant chart.selection (atlas.targets.value i)
      (atlas.target_contract i) (compatible i)

/-- Exhaustive finite checking rejects any unproved or target-incompatible merge. -/
def tryAttachTargetedChart (atlas : TargetedAtlas catalog theory)
    (chart : PaperChart catalog theory) : Option (TargetedAtlas catalog theory) :=
  if h : atlas.CompatibleChart chart then some (attachTargetedChart atlas chart h) else none

/-- The executable guard fails exactly when the finite compatibility condition fails. -/
theorem tryAttachTargetedChart_eq_none_iff (atlas : TargetedAtlas catalog theory)
    (chart : PaperChart catalog theory) :
    tryAttachTargetedChart atlas chart = none ↔ ¬ atlas.CompatibleChart chart := by
  unfold tryAttachTargetedChart
  split_ifs with h <;> simp [h]

/-- Target identity and values cannot be silently replaced during attachment. -/
theorem attachTargetedChart_preserves_target_family (atlas : TargetedAtlas catalog theory)
    (chart : PaperChart catalog theory) (compatible : atlas.CompatibleChart chart) :
    (attachTargetedChart atlas chart compatible).targets = atlas.targets := rfl

/-- Every committed target remains invariant on the enlarged leaf relation. -/
theorem attachTargetedChart_preserves_leaf_targets (atlas : TargetedAtlas catalog theory)
    (chart : PaperChart catalog theory) (compatible : atlas.CompatibleChart chart)
    (i : Fin atlas.targets.count) {x y : V}
    (h : (attachTargetedChart atlas chart compatible).atlas.selection.toGraph.SameLeaf x y) :
    atlas.targets.value i x = atlas.targets.value i y :=
  FiniteBridgeGraph.leaf_transport_preserves_targets
    (attachTargetedChart atlas chart compatible).atlas.selection.toGraph (atlas.targets.value i)
    ((attachTargetedChart atlas chart compatible).target_contract i) h

/-- A checked invertible bridge may still erase a separately committed target.
The witness names the exact target and the two proposed endpoints. -/
structure TargetConflict (atlas : TargetedAtlas catalog theory)
    (chart : PaperChart catalog theory) where
  /-- The committed target whose values the proposed bridge fails to preserve. -/
  target : Fin atlas.targets.count
  /-- The source endpoint of the conflicting invertible bridge. -/
  left : V
  /-- The target endpoint carrying a different committed target value. -/
  right : V
  bridge : chart.selection.toGraph.InvertibleEdge left right
  different : atlas.targets.value target left ≠ atlas.targets.value target right

omit [Fintype Fact] in
/-- Such a collision rules out the proof required by guarded attachment. -/
theorem TargetConflict.blocks_compatibility {atlas : TargetedAtlas catalog theory}
    {chart : PaperChart catalog theory} (conflict : TargetConflict atlas chart) :
    ¬ atlas.CompatibleChart chart :=
  fun h => conflict.different (h conflict.target conflict.left conflict.right conflict.bridge)

/-- The executable guarded API rejects an explicit target collision. -/
theorem TargetConflict.blocks_attachment {atlas : TargetedAtlas catalog theory}
    {chart : PaperChart catalog theory} (conflict : TargetConflict atlas chart) :
    tryAttachTargetedChart atlas chart = none :=
  (tryAttachTargetedChart_eq_none_iff atlas chart).mpr conflict.blocks_compatibility

/-- A candidate conflict identifies an old derived fact and an incompatible
proposed fact. It contains no proof of the proposed fact. -/
structure ChartConflict (atlas : FiniteAtlas catalog theory) where
  /-- An existing consequence whose meaning excludes the proposed fact. -/
  oldFact : Fact
  oldDerived : oldFact ∈ saturate theory.rules atlas.facts
  /-- The candidate fact rejected by the incompatibility proof. -/
  proposedFact : Fact
  incompatible : theory.meaning oldFact → theory.meaning proposedFact → False

/-- A recorded conflict rules out proof-backed admission of that candidate. -/
theorem ChartConflict.blocks_admission {atlas : FiniteAtlas catalog theory}
    (conflict : ChartConflict atlas) : ¬ theory.meaning conflict.proposedFact :=
  conflict.incompatible (atlas.closure_sound conflict.oldFact conflict.oldDerived)

/-- No trusted chart over the unchanged theory can contain the conflicting fact. -/
theorem ChartConflict.not_accepted {atlas : FiniteAtlas catalog theory}
    (conflict : ChartConflict atlas) (chart : PaperChart catalog theory) :
    conflict.proposedFact ∉ chart.acceptedFacts :=
  fun h => conflict.blocks_admission (chart.accepted_sound conflict.proposedFact h)

/-- Exact chart targets that are absent from the atlas's current finite closure. -/
def chartResidual (atlas : FiniteAtlas catalog theory) (chart : PaperChart catalog theory) :
    Finset Fact := residual (saturation theory.rules) atlas.facts chart.targets

/-- A chart's structural rank ranges only over the explicit finite candidate carrier set. -/
def chartRank (candidates : Finset Fact) (atlas : FiniteAtlas catalog theory)
    (chart : PaperChart catalog theory) : Option Nat :=
  rank (saturation theory.rules) candidates atlas.facts chart.targets

/-- Structural transfer is the finite residual-rank reduction from accepted facts. -/
def chartTransferGain (candidates : Finset Fact) (atlas : FiniteAtlas catalog theory)
    (attached target : PaperChart catalog theory) : Option Nat :=
  transferGain (saturation theory.rules) candidates atlas.facts
    attached.acceptedFacts target.targets

/-- Trusted attachment cannot create new residual obligations in a fixed target chart. -/
theorem chart_residual_antitone (atlas : FiniteAtlas catalog theory)
    (attached target : PaperChart catalog theory) :
    chartResidual (attachChart atlas attached) target ⊆ chartResidual atlas target :=
  residual_antitone (saturation theory.rules) (attachChart_extends_facts atlas attached)

/-- The minimum carrier burden decreases under trusted attachment whenever both
minima are defined over the same candidate universe. -/
theorem chart_burden_antitone (candidates : Finset Fact) (atlas : FiniteAtlas catalog theory)
    (attached target : PaperChart catalog theory) {before after : Nat}
    (hb : chartRank candidates atlas target = some before)
    (ha : chartRank candidates (attachChart atlas attached) target = some after) :
    after ≤ before :=
  attachment_burden_antitone (attachChart_extends_facts atlas attached) hb ha

end FormalResearch.MathematicalTooling.Semantics.Atlas
