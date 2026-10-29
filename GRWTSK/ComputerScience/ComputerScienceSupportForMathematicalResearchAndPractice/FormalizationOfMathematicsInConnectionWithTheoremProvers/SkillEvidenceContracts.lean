/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
-/
import GRWTSK.ComputerScience.ComputerScienceSupportForMathematicalResearchAndPractice.FormalizationOfMathematicsInConnectionWithTheoremProvers.ReplayTargetIdentity
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.FactorizationFiber

/-!
# Source-bound evidence reuse and loss of information in workflow summaries

These pure contracts support the `noe-math-chat-bridge`, `noe-proof-automation`
and `chatgpt-message` skills. They distinguish a chat occurrence from the
execution it requests, combine required evidence conjunctively, and reuse the
existing exact-source module-success model. Concrete collisions prove that a
queue bit or tool-acceptance bit cannot reconstruct an independent stronger
outcome.

The records are supplied mathematical data. Equality of identity tokens does
not authenticate Git bytes, commands, human authorization, browser observations,
or execution receipts. An evidence flag denotes a reported facet; this module
does not establish its truth or refine a runner, database, browser or platform.
A report satisfying these predicates is not by itself mathematical admission.
No liveness, external exactly-once delivery, OS confinement or AI improvement
is asserted. Source candidate; compilation, fresh kernel replay and transitive
axiom auditing require separate source-bound evidence.
-/

set_option autoImplicit false

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofChecking.SkillEvidence

open GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofChecking.ReplayTarget
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss

/-- A chat/turn occurrence is retained even when another occurrence requests
exactly the same execution. These strings are supplied identities, not inferred
from equal message text. -/
structure ChatOccurrence where
  conversation : String
  turn : String
  deriving DecidableEq, Repr

/-- Check-specific identity supplements the existing source-bound replay header.
The expected interface and hypotheses are retained independently of a theorem
name. A producer must establish that these fields faithfully describe its job. -/
structure CheckIdentity where
  command : String
  environment : String
  declarations : List String
  hypotheses : String
  axiomPolicy : String
  expectedInterface : String
  resourceProfile : String
  deriving DecidableEq, Repr

structure ExecutionBinding where
  target : Header
  check : CheckIdentity
  deriving DecidableEq, Repr

structure ChatRequest where
  occurrence : ChatOccurrence
  binding : ExecutionBinding
  deriving DecidableEq, Repr

/-- Keep observations of different checks separate. In particular, compilation,
fresh kernel replay and axiom auditing are not synonyms. Host restoration is an
operational facet, separate from the mathematical checks. -/
inductive Facet where
  | compilation
  | kernelReplay
  | axiomAudit
  | expectedInterface
  | hostRestoration
  | finiteComputation
  deriving DecidableEq, Repr

abbrev FacetFlags := Facet → Bool

/-- A list of requirements is a conjunction. Repeated requirements do not
manufacture new evidence; empty requirements make only this predicate vacuous. -/
def FacetsSatisfied (required : List Facet) (observed : FacetFlags) : Prop :=
  ∀ facet, facet ∈ required → observed facet = true

def proofFacets : List Facet :=
  [.compilation, .kernelReplay, .axiomAudit, .expectedInterface]

def managedFacets : List Facet := proofFacets ++ [.hostRestoration]

/-- Joining requirement lists demands both sets of checks, not either one. -/
theorem facetsSatisfied_append_iff (left right : List Facet)
    (observed : FacetFlags) :
    FacetsSatisfied (left ++ right) observed ↔
      FacetsSatisfied left observed ∧ FacetsSatisfied right observed := by
  constructor
  · intro all
    constructor
    · intro facet listed
      exact all facet (List.mem_append.mpr (Or.inl listed))
    · intro facet listed
      exact all facet (List.mem_append.mpr (Or.inr listed))
  · intro both facet listed
    cases List.mem_append.mp listed with
    | inl inLeft => exact both.1 facet inLeft
    | inr inRight => exact both.2 facet inRight

theorem missing_facet_blocks_satisfaction {required : List Facet}
    {observed : FacetFlags} {facet : Facet}
    (needed : facet ∈ required) (missing : observed facet = false) :
    ¬ FacetsSatisfied required observed := by
  intro satisfied
  have passed := satisfied facet needed
  rw [missing] at passed
  cases passed

/-- A managed report must establish host restoration in addition to each
mathematical facet; restoration alone supplies no mathematical check. -/
theorem managed_facets_iff (observed : FacetFlags) :
    FacetsSatisfied managedFacets observed ↔
      FacetsSatisfied proofFacets observed ∧ observed .hostRestoration = true := by
  rw [managedFacets, facetsSatisfied_append_iff]
  simp only [FacetsSatisfied, List.mem_singleton, forall_eq]

def compilationOnly : FacetFlags := fun facet => decide (facet = .compilation)

/-- A concrete hostile control against promoting compilation into all proof
facets. Finite computation is likewise not an omitted proof premise. -/
theorem compilation_only_does_not_satisfy_proof_facets :
    ¬ FacetsSatisfied proofFacets compilationOnly := by
  apply missing_facet_blocks_satisfaction (facet := .kernelReplay)
  · simp [proofFacets]
  · decide

structure Receipt where
  binding : ExecutionBinding
  observed : FacetFlags
  modules : List ModuleTerminalOutcome

/-- Reuse the existing header predicate, including supported-schema checking.
The remaining check identity must agree exactly. Occurrence identity is not
part of this relation, so two requests may cite one exact execution receipt. -/
def ReceiptApplies (requested : ExecutionBinding) (receipt : Receipt) : Prop :=
  HeaderMatches requested.target receipt.binding.target ∧
    receipt.binding.check = requested.check

/-- Exact binding equality characterizes applicability once the expected schema
is supported. This is equality of supplied records, not source authentication. -/
theorem receipt_applies_iff_binding_eq (requested : ExecutionBinding)
    (receipt : Receipt) (supported : requested.target.schema = supportedSchema) :
    ReceiptApplies requested receipt ↔ receipt.binding = requested := by
  constructor
  · intro applies
    rcases requested with ⟨target, check⟩
    rcases receipt with ⟨⟨reportedTarget, reportedCheck⟩, observed, modules⟩
    rcases applies with ⟨⟨_, sameTarget⟩, sameCheck⟩
    cases sameTarget
    cases sameCheck
    rfl
  · intro same
    constructor
    · exact ⟨supported, congrArg ExecutionBinding.target same⟩
    · exact congrArg ExecutionBinding.check same

/-- Distinct conversation occurrences remain distinct requests even when their
shared execution binding makes the same receipt applicable to both. -/
theorem distinct_occurrences_share_execution
    (first second : ChatOccurrence) (binding : ExecutionBinding)
    (receipt : Receipt) (different : first ≠ second)
    (applies : ReceiptApplies binding receipt) :
    (ChatRequest.mk first binding ≠ ChatRequest.mk second binding) ∧
      ReceiptApplies (ChatRequest.mk first binding).binding receipt ∧
      ReceiptApplies (ChatRequest.mk second binding).binding receipt := by
  constructor
  · intro collapsed
    exact different (congrArg ChatRequest.occurrence collapsed)
  · exact ⟨applies, applies⟩

theorem equal_bindings_preserve_receipt_applicability
    (first second : ChatRequest) (receipt : Receipt)
    (same : first.binding = second.binding) :
    ReceiptApplies first.binding receipt ↔ ReceiptApplies second.binding receipt := by
  rw [same]

/-- Any selected exact source field drifting prevents reuse, through the
already-existing replay-header theorem. -/
theorem source_drift_blocks_receipt_reuse
    {requested : ExecutionBinding} {receipt : Receipt}
    (field : SourceIdentity → String)
    (changed : field receipt.binding.target.source ≠ field requested.target.source) :
    ¬ ReceiptApplies requested receipt := by
  intro applies
  exact reject_source_field_drift field changed applies.1

/-- A matching theorem name or source alone cannot compensate for a changed
command, environment, expected interface, hypotheses, policy or resource profile. -/
theorem check_drift_blocks_receipt_reuse
    {requested : ExecutionBinding} {receipt : Receipt}
    {α : Type} (field : CheckIdentity → α)
    (changed : field receipt.binding.check ≠ field requested.check) :
    ¬ ReceiptApplies requested receipt := by
  intro applies
  exact changed (congrArg field applies.2)

/-- This is qualification of a supplied report. It deliberately reuses the
nonempty, duplicate-free required-module policy and unique exact-source PASS
semantics from `ReplayTargetIdentity`. It authenticates no external evidence. -/
def QualifiedReport (requested : ExecutionBinding) (requiredModules : List String)
    (requiredFacets : List Facet) (receipt : Receipt) : Prop :=
  ReceiptApplies requested receipt ∧
    NonvacuousModulesSucceeded requested.target.source requiredModules receipt.modules ∧
    FacetsSatisfied requiredFacets receipt.observed

/-- A missing required facet rejects a report even if all its other fields and
module outcomes appear acceptable. -/
theorem missing_facet_blocks_qualification
    {requested : ExecutionBinding} {requiredModules : List String}
    {requiredFacets : List Facet} {receipt : Receipt} {facet : Facet}
    (needed : facet ∈ requiredFacets) (missing : receipt.observed facet = false) :
    ¬ QualifiedReport requested requiredModules requiredFacets receipt := by
  intro qualified
  exact missing_facet_blocks_satisfaction needed missing qualified.2.2

/-- The source coverage predicate cannot be satisfied by an omitted required
module. This remains separate from success or completeness of enumeration. -/
theorem omitted_required_module_blocks_coverage
    {required reported : List String} {moduleName : String}
    (needed : moduleName ∈ required) (omitted : moduleName ∉ reported) :
    ¬ ModulesCovered required reported :=
  omitted_module_blocks_coverage needed omitted

/-- A missing exact-source outcome prevents full report qualification. -/
theorem missing_module_outcome_blocks_qualification
    {requested : ExecutionBinding} {requiredModules : List String}
    {requiredFacets : List Facet} {receipt : Receipt} {moduleName : String}
    (needed : moduleName ∈ requiredModules)
    (missing : matchingModuleOutcomes requested.target.source moduleName receipt.modules = []) :
    ¬ QualifiedReport requested requiredModules requiredFacets receipt := by
  intro qualified
  have sole := qualified.2.1.2.2 moduleName needed
  rw [missing] at sole
  cases sole

/-- Appending another matching fragment cannot be hidden by selecting a PASS
or deduplicating values: the existing occurrence-sensitive rule rejects it. -/
theorem overlapping_fragments_block_qualification
    {requested : ExecutionBinding} {requiredModules : List String}
    {requiredFacets : List Facet} {receipt : Receipt}
    {left right : List ModuleTerminalOutcome} {moduleName : String}
    (assembled : receipt.modules = left ++ right)
    (needed : moduleName ∈ requiredModules)
    (leftPresent : matchingModuleOutcomes requested.target.source moduleName left ≠ [])
    (rightPresent : matchingModuleOutcomes requested.target.source moduleName right ≠ []) :
    ¬ QualifiedReport requested requiredModules requiredFacets receipt := by
  intro qualified
  have succeeded := qualified.2.1.2.2
  rw [assembled] at succeeded
  exact matching_records_in_both_fragments_block_success needed leftPresent rightPresent succeeded

/-- Reordering fragments preserves qualification when only the assembled module
list changes. Multiplicity is retained; no set-based deduplication occurs. -/
theorem fragment_permutation_preserves_qualification
    (requested : ExecutionBinding) (requiredModules : List String)
    (requiredFacets : List Facet) (receipt : Receipt)
    {left right : List (List ModuleTerminalOutcome)} (permuted : left.Perm right) :
    QualifiedReport requested requiredModules requiredFacets
      { receipt with modules := combineModuleFragments left } ↔
    QualifiedReport requested requiredModules requiredFacets
      { receipt with modules := combineModuleFragments right } := by
  unfold QualifiedReport
  exact and_congr_right fun _ => and_congr_left fun _ =>
    nonvacuousModulesSucceeded_combine_perm requested.target.source requiredModules permuted

/-- Independent execution-world coordinates expose precisely what a queue
summary omits. Both outcomes are admitted by this model; a real system needs
additional certified constraints before excluding either world. -/
structure QueueWorld where
  queued : Bool
  kernelPassed : Bool

def queueSummary (world : QueueWorld) : Bool := world.queued

def kernelOutcome (world : QueueWorld) : Bool := world.kernelPassed

/-- Queued-only and queued-and-checked worlds collide under the queue summary.
Therefore no decoder of that one bit recovers the stronger outcome on this
world class. This applies the existing information-loss obstruction theorem. -/
theorem queue_summary_cannot_reconstruct_kernel_outcome :
    ¬ FactorsThrough queueSummary kernelOutcome := by
  exact not_factorsThrough_of_collision queueSummary kernelOutcome
    ⟨true, false⟩ ⟨true, true⟩ rfl (by decide)

structure DeliveryWorld where
  accepted : Bool
  delivered : Bool

def acceptanceSummary (world : DeliveryWorld) : Bool := world.accepted

def deliveryOutcome (world : DeliveryWorld) : Bool := world.delivered

/-- Without a further transport theorem coupling acceptance to delivery, one
acceptance bit cannot recover actual delivery from these possible worlds. -/
theorem acceptance_summary_cannot_reconstruct_delivery :
    ¬ FactorsThrough acceptanceSummary deliveryOutcome := by
  exact not_factorsThrough_of_collision acceptanceSummary deliveryOutcome
    ⟨true, false⟩ ⟨true, true⟩ rfl (by decide)

/-- A concrete missing-premise control: queueing can hold with failed replay. -/
theorem queued_without_kernel_evidence :
    queueSummary ⟨true, false⟩ = true ∧ kernelOutcome ⟨true, false⟩ = false :=
  ⟨rfl, rfl⟩

/-- A concrete missing-premise control for tool acceptance versus delivery. -/
theorem accepted_without_delivery_evidence :
    acceptanceSummary ⟨true, false⟩ = true ∧ deliveryOutcome ⟨true, false⟩ = false :=
  ⟨rfl, rfl⟩

/-- A rendered reply may recur verbatim at different conversation turns. The
occurrence is independently observed identity data; text does not supply it. -/
structure ReplyWorld where
  text : String
  occurrence : ChatOccurrence

def replyText (world : ReplyWorld) : String := world.text

def replyOccurrence (world : ReplyWorld) : ChatOccurrence := world.occurrence

/-- The same reply text at two distinct turns gives a concrete collision.
Consequently a text-only decoder cannot recover occurrence identity on this
world class. Text hashes lose at least the same distinction. This establishes
an obstruction, not that a browser exposes reliable turn identifiers. -/
theorem reply_text_cannot_reconstruct_occurrence :
    ¬ FactorsThrough replyText replyOccurrence := by
  exact not_factorsThrough_of_collision replyText replyOccurrence
    ⟨"same reply", ⟨"fixture-chat", "turn-1"⟩⟩
    ⟨"same reply", ⟨"fixture-chat", "turn-2"⟩⟩ rfl (by decide)

end GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofChecking.SkillEvidence
