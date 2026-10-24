/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI Codex. Mathlib authorship retained. -/
import GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy
import GRWTSK.Combinatorics.Sequences.PartialSumOrdering
import GRWTSK.Combinatorics.Sequences.PartialSumCertificate
import GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators
import GRWTSK.DynamicalSystems.TransitionSystems.StateReinitialization
import GRWTSK.DynamicalSystems.TransitionSystems.BudgetResetCounterexamples
import Mathlib.Data.ZMod.Basic
import Mathlib.Algebra.BigOperators.Group.List.Basic
import Mathlib.Data.List.Nodup
import Mathlib.Data.List.Perm.Basic

/-!
# Packet costs, modular checkpoints, and persistent search accounting

Natural cost and additive phase are independent functions on packet identities.
Only the uncommitted packet can be permuted. Admission of each actual proposal
continues to require the existing controller guard, including mathematical,
operational, rights, and budget evidence. Modular uniqueness supplies none of
those premises. The restart adapter retains every attempt, including rejected
attempts, and records each supplied fresh allowance as a separate event.

The arithmetic here is independent of primality and of a rearrangement
existence theorem. In particular it asserts no search termination or global
phase uniqueness across independently scheduled packets.
-/

set_option autoImplicit false

namespace GRWTSK.ModularCheckpoint

open GRWTSK.RiemannHypothesis.BranchSequenceRealization
open GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v w x y z

section PacketClock

variable {I : Type u}

/-- Positive extension outside a finite packet; only prefixes through its length
represent packet work. This reuses the established positive-increment clock. -/
def packetIncrement (cost : I → ℕ) (order : List I) (k : ℕ) : ℕ :=
  if h : k < order.length then cost order[k] else 1

theorem packetIncrement_pos (cost : I → ℕ) (positive : ∀ i, 0 < cost i)
    (order : List I) (k : ℕ) : 0 < packetIncrement cost order k := by
  unfold packetIncrement
  split
  · exact positive _
  · exact Nat.zero_lt_one

/-- Absolute physical time; it is never reduced modulo the phase modulus. -/
def physicalTime (origin : ℕ) (cost : I → ℕ) (order : List I) (k : ℕ) : ℕ :=
  origin + ((order.map cost).take k).sum

theorem physicalTime_eq_batchClock (origin : ℕ) (cost : I → ℕ) (order : List I)
    {k : ℕ} (hk : k ≤ order.length) :
    physicalTime origin cost order k = origin + batchClock (packetIncrement cost order) k := by
  unfold physicalTime
  congr 1
  induction k with
  | zero => simp [batchClock]
  | succ k ih =>
      have hlt : k < order.length := by omega
      rw [List.sum_take_succ _ k (by simpa using hlt), ih (by omega)]
      simp [batchClock, packetIncrement, hlt]

theorem physicalTime_strict (origin : ℕ) (cost : I → ℕ)
    (positive : ∀ i, 0 < cost i) (order : List I) {a b : ℕ}
    (hab : a < b) (hb : b ≤ order.length) :
    physicalTime origin cost order a < physicalTime origin cost order b := by
  rw [physicalTime_eq_batchClock origin cost order (by omega),
    physicalTime_eq_batchClock origin cost order hb]
  exact Nat.add_lt_add_left
    (batchClock_strictMono _ (packetIncrement_pos cost positive order) hab) origin

theorem terminal_cost_conserved (origin : ℕ) (cost : I → ℕ) {before after : List I}
    (permutation : before.Perm after) :
    physicalTime origin cost before before.length =
      physicalTime origin cost after after.length := by
  simp only [physicalTime, ← List.map_take, List.take_length]
  rw [(permutation.map cost).sum_eq]

/-- Conserving complete cost does not conserve intermediate completion times. -/
theorem intermediate_completion_changes :
    ([1, 2] : List ℕ).Perm [2, 1] ∧
    physicalTime 0 id [1, 2] 1 ≠ physicalTime 0 id [2, 1] 1 := by
  exact ⟨List.Perm.swap 2 1 [], by decide⟩

/-- The old quota clock and the old batch clock are the same recursion. -/
theorem quota_clock_eq_batchClock (increments : ℕ → ℕ) (k : ℕ) :
    GRWTSK.Analysis.Waveform.Scheduling.clock increments k = batchClock increments k := by
  induction k with
  | zero => rfl
  | succ k ih => simp only [GRWTSK.Analysis.Waveform.Scheduling.clock_succ,
      batchClock_succ, ih]

/-- Packet costs are a legal input to unique batch coverage. No phase premise
is added to the original coverage theorem. -/
theorem packet_unique_batch (cost : I → ℕ) (positive : ∀ i, 0 < cost i)
    (order : List I) (j : ℕ) :
    ∃! n, batchClock (packetIncrement cost order) n ≤ j ∧
      j < batchClock (packetIncrement cost order) (n + 1) :=
  unique_batch _ (packetIncrement_pos cost positive order) j

/-- Quota and no-starvation consumers retain their original hypotheses. -/
theorem packet_epoch_no_starvation (cost : I → ℕ) (positive : ∀ i, 0 < cost i)
    (order : List I) {size r : ℕ} (hr : r < size) (lower : ℕ) :
    ∃ j, lower ≤ j ∧ j % size = r ∧
      ∃! n, batchClock (packetIncrement cost order) n ≤ j ∧
        j < batchClock (packetIncrement cost order) (n + 1) :=
  epoch_no_starvation _ (packetIncrement_pos cost positive order) hr lower

end PacketClock

section Phase

variable {I : Type u} {G : Type v} [AddCommGroup G]

/-- Post-step phases include all completed nonempty prefixes, independently of
physical completion times. -/
def postPhases (initialPhase : G) (label : I → G) (order : List I) : List G :=
  (PartialSumOrdering.postSums (order.map label)).map (fun x => initialPhase + x)

theorem certified_postPhases_nodup (initialPhase : G) (label : I → G) (order : List I)
    (valid : PartialSumOrdering.ValidPartialSumOrder (order.map label)) :
    (postPhases initialPhase label order).Nodup :=
  (PartialSumOrdering.translated_postSums_nodup_iff (order.map label) initialPhase).2 valid

/-- Complete phase increments, like complete costs, survive a packet permutation. -/
theorem terminal_phase_conserved (initialPhase : G) (label : I → G)
    {before after : List I} (permutation : before.Perm after) :
    initialPhase + (before.map label).sum = initialPhase + (after.map label).sum := by
  rw [(permutation.map label).sum_eq]

end Phase

/-- Full checkpoint identity retains the source revision, epoch, absolute lift,
physical cost, and modular phase as independent coordinates. -/
structure Address (Revision : Type u) (p : ℕ) where
  sourceRevision : Revision
  epoch : ℕ
  absoluteLift : ℕ
  cumulativeCost : ℕ
  modularPhase : ZMod p
  deriving DecidableEq

theorem address_ne_of_epoch_ne {Revision : Type u} {p : ℕ}
    {a b : Address Revision p} (h : a.epoch ≠ b.epoch) : a ≠ b :=
  fun equal => h (congrArg Address.epoch equal)

theorem address_ne_of_lift_ne {Revision : Type u} {p : ℕ}
    {a b : Address Revision p} (h : a.absoluteLift ≠ b.absoluteLift) : a ≠ b :=
  fun equal => h (congrArg Address.absoluteLift equal)

/-- A repeated phase can have a different complete checkpoint address. -/
theorem repeated_phase_distinct_address :
    (Address.mk 0 0 0 0 (0 : ZMod 5)).modularPhase =
      (Address.mk 0 1 5 7 (0 : ZMod 5)).modularPhase ∧
    (Address.mk 0 0 0 0 (0 : ZMod 5) : Address ℕ 5) ≠
      Address.mk 0 1 5 7 (0 : ZMod 5) := by
  exact ⟨rfl, address_ne_of_epoch_ne (by decide)⟩

theorem repeated_phase_distinct_lift_address :
    (Address.mk 0 2 0 0 (0 : ZMod 5)).modularPhase =
      (Address.mk 0 2 5 7 (0 : ZMod 5)).modularPhase ∧
    (Address.mk 0 2 0 0 (0 : ZMod 5) : Address ℕ 5) ≠
      Address.mk 0 2 5 7 (0 : ZMod 5) := by
  exact ⟨rfl, address_ne_of_lift_ne (by decide)⟩

/-- The absolute address at the `k`th packet prefix. Its source and epoch are
fixed packet metadata; the lift and natural physical cost are retained. -/
def checkpointAt {Revision : Type u} {I : Type v} {p : ℕ}
    (source : Revision) (epoch liftOrigin costOrigin : ℕ) (phaseOrigin : ZMod p)
    (cost : I → ℕ) (label : I → ZMod p) (order : List I) (k : ℕ) : Address Revision p where
  sourceRevision := source
  epoch := epoch
  absoluteLift := liftOrigin + k
  cumulativeCost := physicalTime costOrigin cost order k
  modularPhase := phaseOrigin + PartialSumOrdering.prefixSum (order.map label) k

theorem checkpointAt_source_epoch_lift {Revision : Type u} {I : Type v} {p : ℕ}
    (source : Revision) (epoch liftOrigin costOrigin : ℕ) (phaseOrigin : ZMod p)
    (cost : I → ℕ) (label : I → ZMod p) (order : List I) (k : ℕ) :
    (checkpointAt source epoch liftOrigin costOrigin phaseOrigin cost label order k).sourceRevision =
      source ∧
    (checkpointAt source epoch liftOrigin costOrigin phaseOrigin cost label order k).epoch = epoch ∧
    (checkpointAt source epoch liftOrigin costOrigin phaseOrigin cost label order k).absoluteLift =
      liftOrigin + k := ⟨rfl, rfl, rfl⟩

theorem checkpointAt_injective {Revision : Type u} {I : Type v} {p : ℕ}
    (source : Revision) (epoch liftOrigin costOrigin : ℕ) (phaseOrigin : ZMod p)
    (cost : I → ℕ) (label : I → ZMod p) (order : List I) :
    Function.Injective (checkpointAt source epoch liftOrigin costOrigin phaseOrigin cost label order) := by
  intro a b equal
  have liftEqual := congrArg Address.absoluteLift equal
  change liftOrigin + a = liftOrigin + b at liftEqual
  omega

theorem terminal_checkpoint_conserved {Revision : Type u} {I : Type v} {p : ℕ}
    (source : Revision) (epoch liftOrigin costOrigin : ℕ) (phaseOrigin : ZMod p)
    (cost : I → ℕ) (label : I → ZMod p) {before after : List I}
    (permutation : before.Perm after) :
    checkpointAt source epoch liftOrigin costOrigin phaseOrigin cost label before before.length =
      checkpointAt source epoch liftOrigin costOrigin phaseOrigin cost label after after.length := by
  have costs := terminal_cost_conserved costOrigin cost permutation
  have phases : PartialSumOrdering.prefixSum (before.map label) before.length =
      PartialSumOrdering.prefixSum (after.map label) after.length := by
    simpa only [List.length_map] using
      PartialSumOrdering.permutation_preserves_total (permutation.map label)
  unfold checkpointAt
  congr 1
  · exact congrArg (fun n => liftOrigin + n) permutation.length_eq
  · exact congrArg (fun phase => phaseOrigin + phase) phases

/-- Source and epoch binding belongs at the adapter boundary, separate from
the label checker. Discovery metadata carries no operational authority. -/
structure PacketBinding (Source : Type u) (I : Type v) where
  source : Source
  epoch : ℕ
  originalOrder : List I
  finalOrder : List I

def BindingCurrent {Source : Type u} {I : Type v}
    (binding : PacketBinding Source I) (source : Source) (epoch : ℕ) : Prop :=
  binding.source = source ∧ binding.epoch = epoch

theorem stale_source_rejects_binding {Source : Type u} {I : Type v}
    (binding : PacketBinding Source I) (source : Source) (epoch : ℕ)
    (stale : binding.source ≠ source) : ¬ BindingCurrent binding source epoch :=
  fun current => stale current.1

theorem stale_epoch_rejects_binding {Source : Type u} {I : Type v}
    (binding : PacketBinding Source I) (source : Source) (epoch : ℕ)
    (stale : binding.epoch ≠ epoch) : ¬ BindingCurrent binding source epoch :=
  fun current => stale current.2

theorem stale_binding_negative_control :
    ¬ BindingCurrent (PacketBinding.mk 7 3 ([] : List Unit) []) 8 3 ∧
      ¬ BindingCurrent (PacketBinding.mk 7 3 ([] : List Unit) []) 7 4 := by
  simp [BindingCurrent]

/-- Concrete boundary adapter for the independently verified reference checker. -/
def certificateBinding {p : ℕ} (cert : PartialSumOrdering.OrderingCertificate p) :
    PacketBinding ℕ (ZMod p) where
  source := cert.sourceRevision
  epoch := cert.epoch
  originalOrder := cert.originalOrder
  finalOrder := cert.finalOrder

theorem checked_certificate_adapter {p : ℕ} (cert : PartialSumOrdering.OrderingCertificate p)
    (currentSource currentEpoch : ℕ) (phaseOrigin : ZMod p)
    (checked : PartialSumOrdering.checkCertificate cert = true)
    (sourceMatch : cert.sourceRevision = currentSource) (epochMatch : cert.epoch = currentEpoch) :
    BindingCurrent (certificateBinding cert) currentSource currentEpoch ∧
      cert.finalOrder.Perm cert.originalOrder ∧
      (postPhases phaseOrigin id cert.finalOrder).Nodup := by
  have sound := PartialSumOrdering.checkCertificate_sound cert checked
  refine ⟨⟨sourceMatch, epochMatch⟩, sound.2.1, ?_⟩
  apply certified_postPhases_nodup
  simpa using sound.1

/-- Injective phase labels transport the checked label permutation back to the
original work identities. Costs remain a separate function on those identities. -/
theorem checked_item_packet {I : Type u} {p : ℕ}
    (cert : PartialSumOrdering.OrderingCertificate p) (before after : List I)
    (label : I → ZMod p) (injectiveLabel : Function.Injective label)
    (cost : I → ℕ) (costOrigin : ℕ) (phaseOrigin : ZMod p)
    (originalLabels : before.map label = cert.originalOrder)
    (finalLabels : after.map label = cert.finalOrder)
    (checked : PartialSumOrdering.checkCertificate cert = true) :
    after.Perm before ∧
      physicalTime costOrigin cost after after.length =
        physicalTime costOrigin cost before before.length ∧
      (postPhases phaseOrigin label after).Nodup := by
  have sound := PartialSumOrdering.checkCertificate_sound cert checked
  have mappedPermutation : (after.map label).Perm (before.map label) := by
    rw [originalLabels, finalLabels]
    exact sound.2.1
  have permutation := (List.map_perm_map_iff injectiveLabel).mp mappedPermutation
  refine ⟨permutation, terminal_cost_conserved costOrigin cost permutation, ?_⟩
  apply certified_postPhases_nodup
  rw [finalLabels]
  exact sound.1

/-- Mathematical checker acceptance does not refresh a stale source binding. -/
theorem accepted_stale_certificate_rejected :
    PartialSumOrdering.checkCertificate PartialSumOrdering.validUnrootedCertificate = true ∧
      ¬ BindingCurrent (certificateBinding PartialSumOrdering.validUnrootedCertificate) 8 2 := by
  exact ⟨PartialSumOrdering.validUnrootedCertificate_accepted,
    stale_source_rejects_binding _ _ _ (by decide)⟩

section Exchangeability

variable {I : Type u} {World : Type v}

def DependencyOrdered (dependency : I → I → Prop) (order : List I) : Prop :=
  ∀ i j : Fin order.length, dependency order[i] order[j] → i < j

/-- Incomparability alone does not imply semantic exchangeability. -/
def CommutesOnPacket (effect : I → World → World) (order : List I) : Prop :=
  ∀ x ∈ order, ∀ y ∈ order, x ≠ y → ∀ world,
    effect x (effect y world) = effect y (effect x world)

/-- Reordering preserves individual identity, hence all source and obligation
maps. Dependency order and semantic commutation must be supplied separately. -/
structure ExchangeablePacket (dependency : I → I → Prop)
    (effect : I → World → World) (before after : List I) : Prop where
  permutation : before.Perm after
  dependency_before : DependencyOrdered dependency before
  dependency_after : DependencyOrdered dependency after
  semantic_commutation : CommutesOnPacket effect before

theorem packet_identity_preserved {dependency : I → I → Prop}
    {effect : I → World → World} {before after : List I}
    (evidence : ExchangeablePacket dependency effect before after)
    {Identity : Type w} (identity : I → Identity) :
    (before.map identity).Perm (after.map identity) := evidence.permutation.map identity

/-- Commuting packet effects have exactly the same final semantics. -/
theorem packet_semantics_preserved {dependency : I → I → Prop}
    {effect : I → World → World} {before after : List I}
    (evidence : ExchangeablePacket dependency effect before after) (world : World) :
    before.foldl (fun state i => effect i state) world =
      after.foldl (fun state i => effect i state) world := by
  apply evidence.permutation.foldl_eq'
  intro x hx y hy state
  by_cases equal : x = y
  · subst y
    rfl
  · exact (evidence.semantic_commutation x hx y hy equal state).symm

def noncommutingEffect : Bool → ℕ → ℕ
  | false => fun n => n + 1
  | true => fun n => 2 * n

/-- A dependency antichain may still contain noncommuting operations. -/
theorem antichain_not_exchangeable :
    DependencyOrdered (fun _ _ : Bool => False) [false, true] ∧
    ¬ CommutesOnPacket noncommutingEffect [false, true] := by
  refine ⟨fun _ _ h => h.elim, ?_⟩
  intro h
  have impossible := h false (by simp) true (by simp) (by decide) 0
  norm_num [noncommutingEffect] at impossible

theorem dependency_breaking_reversal :
    DependencyOrdered (fun a b : Bool => a = false ∧ b = true) [false, true] ∧
    ¬ DependencyOrdered (fun a b : Bool => a = false ∧ b = true) [true, false] := by
  constructor
  · intro i j h
    fin_cases i <;> fin_cases j <;> simp_all
  · intro h
    have impossible := h ⟨1, by decide⟩ ⟨0, by decide⟩ ⟨rfl, rfl⟩
    exact (by omega : ¬ ((1 : Fin 2) < 0)) impossible

end Exchangeability

section GuardedExecution

variable {Source : Type u} {Obligation : Type v} {Effect : Type w}
  {Grant : Type x} {Surface : Type y} [DecidableEq Obligation]

local notation "State" => ControllerState Source Obligation Effect Grant Surface
local notation "Proposal" => ControllerProposal Source Obligation Effect Grant Surface
local notation "Policy" => ControllerPolicy Source Obligation Effect Grant Surface

/-- The final schedule is checked against each actual evolving controller state.
No previous receipt is a member of this uncommitted proposal list. -/
inductive Executes (policy : Policy) : State → List Proposal → State → Prop
  | nil (state : State) : Executes policy state [] state
  | cons {state final : State} {proposal : Proposal} {rest : List Proposal} :
      Guard policy state proposal → Executes policy (update state proposal) rest final →
      Executes policy state (proposal :: rest) final

theorem executes_guarded_steps (policy : Policy) {state final : State}
    {proposals : List Proposal} (execution : Executes policy state proposals final) :
    GuardedSteps policy proposals.length state final := by
  induction execution with
  | nil state => exact GuardedSteps.refl state
  | @cons state final proposal rest guard execution ih =>
      have prepend : ∀ {n : ℕ} {middle final : State},
          GuardedSteps policy n middle final → GuardedStep policy state middle →
            GuardedSteps policy (n + 1) state final := by
        intro n middle final steps first
        induction steps with
        | refl => exact GuardedSteps.next (GuardedSteps.refl state) first
        | next _ last ih => exact GuardedSteps.next (ih first) last
      exact prepend ih ⟨proposal, guard, rfl⟩

theorem executes_safe (policy : Policy) (source : Source) (budget : ℕ)
    {state final : State} {proposals : List Proposal}
    (safe : Safe policy source budget state)
    (execution : Executes policy state proposals final) : Safe policy source budget final :=
  guarded_steps_safe policy source budget safe (executes_guarded_steps policy execution)

theorem executes_history_immutable (policy : Policy) {state final : State}
    {proposals : List Proposal} (execution : Executes policy state proposals final) :
    ∃ suffix, final.receipts = state.receipts ++ suffix :=
  guarded_steps_receipts_append policy (executes_guarded_steps policy execution)

theorem executes_source_and_lift (policy : Policy) {state final : State}
    {proposals : List Proposal} (execution : Executes policy state proposals final) :
    final.source = state.source ∧ final.lift = state.lift + proposals.length :=
  ⟨guarded_steps_source policy (executes_guarded_steps policy execution),
    guarded_steps_lift policy (executes_guarded_steps policy execution)⟩

theorem executes_budget_exact (policy : Policy) {state final : State}
    {proposals : List Proposal} (execution : Executes policy state proposals final) :
    (proposals.map ControllerProposal.cost).sum + final.remaining = state.remaining ∧
      final.consumed = state.consumed + (proposals.map ControllerProposal.cost).sum := by
  induction execution with
  | nil state => simp
  | @cons state final proposal rest guard _ ih =>
      have affordable := guard.cost_available
      have balance := ih.1
      have consumed := ih.2
      simp only [List.map_cons, List.sum_cons]
      constructor <;> dsimp [update] at * <;> omega

/-- Preparing a packet does not admit it: all independent domains are explicit.
Execution checks guards at actual intermediate states, and preserves history. -/
structure PacketAdmission {I : Type*} {World : Type*} {p : ℕ}
    (policy : Policy) (state final : State) (epoch : ℕ)
    (binding : PacketBinding Source I) (dependency : I → I → Prop)
    (effect : I → World → World)
    (proposal : I → Proposal) (label : I → ZMod p) : Prop where
  binding_current : BindingCurrent binding state.source epoch
  exchangeable : ExchangeablePacket dependency effect binding.originalOrder binding.finalOrder
  distinct_nonzero : PartialSumOrdering.DistinctNonzeroLabels (binding.finalOrder.map label)
  phase_valid : PartialSumOrdering.ValidPartialSumOrder (binding.finalOrder.map label)
  budget_feasible : (binding.finalOrder.map (fun i => (proposal i).cost)).sum ≤ state.remaining
  execution : Executes policy state (binding.finalOrder.map proposal) final

theorem admitted_packet_safe {I : Type*} {World : Type*} {p : ℕ}
    (policy : Policy) (state final : State) (source : Source) (budget epoch : ℕ)
    (binding : PacketBinding Source I) (dependency : I → I → Prop)
    (effect : I → World → World) (proposal : I → Proposal) (label : I → ZMod p)
    (safe : Safe policy source budget state)
    (admitted : PacketAdmission policy state final epoch binding dependency effect proposal label) :
    Safe policy source budget final := executes_safe policy source budget safe admitted.execution

omit [DecidableEq Obligation] in
/-- Modular verification cannot discharge an unrelated missing proposition. -/
theorem modular_validity_does_not_discharge {G : Type*} [AddCommGroup G]
    (labels : List G) (policy : Policy) (state : State) (proposal : Proposal)
    {o : Obligation} (included : o ∈ proposal.discharged)
    (missing : ¬ policy.statement state.source o) :
    PartialSumOrdering.ValidPartialSumOrder labels → ¬ Guard policy state proposal := by
  intro _
  exact unproved_obligation_blocks policy state proposal included missing

omit [DecidableEq Obligation] in
/-- A collision-free modular order supplies no missing operational permission. -/
theorem modular_validity_does_not_authorize {G : Type*} [AddCommGroup G]
    (labels : List G) (policy : Policy) (state : State) (proposal : Proposal)
    {receipt : EffectReceipt Source Effect Grant Surface}
    (included : receipt ∈ proposal.effects)
    (missing : ¬ policy.permits receipt.grant state.source receipt.effect) :
    PartialSumOrdering.ValidPartialSumOrder labels → ¬ Guard policy state proposal := by
  intro _
  exact unauthorized_effect_blocks policy state proposal included missing

omit [DecidableEq Obligation] in
theorem modular_validity_does_not_grant_rights {G : Type*} [AddCommGroup G]
    (labels : List G) (policy : Policy) (state : State) (proposal : Proposal)
    {receipt : EffectReceipt Source Effect Grant Surface}
    (included : receipt ∈ proposal.effects)
    (missing : ¬ policy.rights state.source receipt.surface receipt.effect) :
    PartialSumOrdering.ValidPartialSumOrder labels → ¬ Guard policy state proposal := by
  intro _
  exact forbidden_surface_blocks policy state proposal included missing

end GuardedExecution

/-- Each attempt retains the actual candidate permutation. Optional seed data
is supplementary: the explicit candidate makes replay independent of a PRNG. -/
structure SearchAttempt (I : Type u) (Revision : Type v) where
  sourceRevision : Revision
  epoch : ℕ
  seed : Option ℕ
  candidate : List I
  generationCost : ℕ
  repairCost : ℕ
  accepted : Bool

inductive SearchEvent (I : Type u) (Revision : Type v)
  | attempt (record : SearchAttempt I Revision)
  | replenishment (sourceRevision : Revision) (epoch amount : ℕ)

def SearchEvent.expenditure {I : Type u} {Revision : Type v} : SearchEvent I Revision → ℕ
  | .attempt record => record.generationCost + record.repairCost
  | .replenishment _ _ _ => 0

def SearchEvent.funding {I : Type u} {Revision : Type v} : SearchEvent I Revision → ℕ
  | .attempt _ => 0
  | .replenishment _ _ amount => amount

def totalExpenditure {I : Type u} {Revision : Type v}
    (events : List (SearchEvent I Revision)) : ℕ := (events.map SearchEvent.expenditure).sum

def totalFunding {I : Type u} {Revision : Type v}
    (events : List (SearchEvent I Revision)) : ℕ := (events.map SearchEvent.funding).sum

def SearchEvent.attemptCount {I : Type u} {Revision : Type v} : SearchEvent I Revision → ℕ
  | .attempt _ => 1
  | .replenishment _ _ _ => 0

def SearchEvent.repairExpenditure {I : Type u} {Revision : Type v} : SearchEvent I Revision → ℕ
  | .attempt record => record.repairCost
  | .replenishment _ _ _ => 0

def attemptCount {I : Type u} {Revision : Type v}
    (events : List (SearchEvent I Revision)) : ℕ := (events.map SearchEvent.attemptCount).sum

def repairExpenditure {I : Type u} {Revision : Type v}
    (events : List (SearchEvent I Revision)) : ℕ := (events.map SearchEvent.repairExpenditure).sum

theorem attempt_and_repair_monotone {I : Type u} {Revision : Type v}
    (before after : List (SearchEvent I Revision)) :
    attemptCount before ≤ attemptCount (before ++ after) ∧
      repairExpenditure before ≤ repairExpenditure (before ++ after) := by
  simp [attemptCount, repairExpenditure]

/-- A global affordability assertion explicitly compares retained expenditure
with retained funding; finite local controller allowances alone are insufficient. -/
def SearchFunded {I : Type u} {Revision : Type v}
    (events : List (SearchEvent I Revision)) : Prop := totalExpenditure events ≤ totalFunding events

theorem funded_attempt_preserved {I : Type u} {Revision : Type v}
    (events : List (SearchEvent I Revision)) (attempt : SearchAttempt I Revision)
    (funded : SearchFunded events)
    (affordable : attempt.generationCost + attempt.repairCost ≤
      totalFunding events - totalExpenditure events) :
    SearchFunded (events ++ [.attempt attempt]) := by
  simp only [SearchFunded, totalExpenditure, totalFunding, List.map_append,
    List.map_cons, List.map_nil, List.sum_append, List.sum_cons, List.sum_nil,
    SearchEvent.expenditure, SearchEvent.funding, Nat.add_zero]
  change totalExpenditure events + (attempt.generationCost + attempt.repairCost) ≤
    totalFunding events
  unfold SearchFunded at funded
  omega

theorem expenditure_append {I : Type u} {Revision : Type v}
    (before after : List (SearchEvent I Revision)) :
    totalExpenditure (before ++ after) = totalExpenditure before + totalExpenditure after := by
  simp [totalExpenditure]

theorem expenditure_monotone {I : Type u} {Revision : Type v}
    (before after : List (SearchEvent I Revision)) :
    totalExpenditure before ≤ totalExpenditure (before ++ after) := by
  rw [expenditure_append]
  omega

theorem record_attempt_exact {I : Type u} {Revision : Type v}
    (events : List (SearchEvent I Revision)) (attempt : SearchAttempt I Revision) :
    totalExpenditure (events ++ [.attempt attempt]) =
      totalExpenditure events + attempt.generationCost + attempt.repairCost := by
  simp [totalExpenditure, SearchEvent.expenditure, Nat.add_assoc]

/-- A total checker does not make a search producer succeed. This explicit
producer retains the same rejected candidate at every attempt. -/
def rejectedAttempt : SearchAttempt (ZMod 5) ℕ where
  sourceRevision := 0
  epoch := 0
  seed := some 0
  candidate := [0, 0]
  generationCost := 1
  repairCost := 0
  accepted := false

theorem rejected_search_arbitrarily_long (n : ℕ) :
    totalExpenditure (List.replicate n (.attempt rejectedAttempt)) = n ∧
      ¬ PartialSumOrdering.ValidPartialSumOrder rejectedAttempt.candidate := by
  constructor
  · simp [totalExpenditure, SearchEvent.expenditure, rejectedAttempt]
  · decide

/-- The existing genuine one-unit-session counterexample remains a consumer:
freshly supplied local budgets yield no uniform bound on accumulated round cost. -/
theorem local_budgets_do_not_bound_total :
    ¬ ∃ budget : ℕ, ∀ n, RestartBudgetBoundary.totalRoundCost n ≤ budget := by
  rintro ⟨budget, bound⟩
  have impossible := bound (budget + 1)
  rw [RestartBudgetBoundary.total_round_cost_exact] at impossible
  omega

section TrackedRestart

variable {Artifact : Type u} {Revision : Type v} {Claim : Type w}
  {Effect : Type x} {Grant : Type y} {Surface : Type z} {I : Type*}
  [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim]

local notation "Snapshot" => SourceSnapshot Artifact Revision
local notation "Policy" => ControllerPolicy Snapshot Claim Effect Grant Surface

/-- A wrapper leaves the established controller and revision ledger intact. -/
structure TrackedSession (policy : Policy) (I : Type*) where
  session : RevisionSession policy
  epoch : ℕ
  searchHistory : List (SearchEvent I Snapshot)

/-- Attempt results are retained data. Setting `accepted` never advances the
controller; admission still needs the separate execution proofs. -/
def TrackedSession.recordAttempt {policy : Policy} (tracked : TrackedSession policy I)
    (attempt : SearchAttempt I Snapshot) : TrackedSession policy I where
  session := tracked.session
  epoch := tracked.epoch
  searchHistory := tracked.searchHistory ++ [.attempt attempt]

omit [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim] in
theorem tracked_attempt_expenditure {policy : Policy} (tracked : TrackedSession policy I)
    (attempt : SearchAttempt I Snapshot) :
    totalExpenditure (tracked.recordAttempt attempt).searchHistory =
      totalExpenditure tracked.searchHistory + attempt.generationCost + attempt.repairCost :=
  record_attempt_exact _ _

/-- A fresh allowance is recorded explicitly; historical expenditure and the
previous absolute lift are retained. -/
def TrackedSession.restart {policy : Policy} (tracked : TrackedSession policy I)
    (freshAllowance : ℕ) : TrackedSession policy I where
  session := tracked.session.history.startSession ⟨freshAllowance, tracked.session.active.lift⟩
  epoch := tracked.epoch + 1
  searchHistory := tracked.searchHistory ++
    [.replenishment tracked.session.history.snapshot (tracked.epoch + 1) freshAllowance]

omit [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim] in
theorem tracked_restart_expenditure {policy : Policy} (tracked : TrackedSession policy I)
    (freshAllowance : ℕ) :
    totalExpenditure (tracked.restart freshAllowance).searchHistory =
      totalExpenditure tracked.searchHistory := by
  simp [TrackedSession.restart, totalExpenditure, SearchEvent.expenditure]

omit [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim] in
theorem tracked_restart_funding {policy : Policy} (tracked : TrackedSession policy I)
    (freshAllowance : ℕ) :
    totalFunding (tracked.restart freshAllowance).searchHistory =
      totalFunding tracked.searchHistory + freshAllowance := by
  simp [TrackedSession.restart, totalFunding, SearchEvent.funding]

omit [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim] in
theorem tracked_restart_attempt_and_repair {policy : Policy} (tracked : TrackedSession policy I)
    (freshAllowance : ℕ) :
    attemptCount (tracked.restart freshAllowance).searchHistory = attemptCount tracked.searchHistory ∧
      repairExpenditure (tracked.restart freshAllowance).searchHistory =
        repairExpenditure tracked.searchHistory := by
  simp [TrackedSession.restart, attemptCount, SearchEvent.attemptCount,
    repairExpenditure, SearchEvent.repairExpenditure]

omit [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim] in
theorem tracked_restart_lift_and_history {policy : Policy} (tracked : TrackedSession policy I)
    (freshAllowance : ℕ) :
    (tracked.restart freshAllowance).session.active.lift = tracked.session.active.lift ∧
      (tracked.restart freshAllowance).session.history = tracked.session.history ∧
      (tracked.restart freshAllowance).epoch = tracked.epoch + 1 := ⟨rfl, rfl, rfl⟩

omit [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim] in
theorem tracked_restart_attempt_retained {policy : Policy} (tracked : TrackedSession policy I)
    (attempt : SearchAttempt I Snapshot) (freshAllowance : ℕ)
    (retained : .attempt attempt ∈ tracked.searchHistory) :
    .attempt attempt ∈ (tracked.restart freshAllowance).searchHistory :=
  List.mem_append_left _ retained

theorem tracked_restart_safe (schema : DependencySchema Artifact Claim) (policy : Policy)
    (tracked : TrackedSession policy I) (freshAllowance : ℕ)
    (safe : RevisionSafe schema policy tracked.session.history) :
    SessionSafe schema policy freshAllowance (tracked.restart freshAllowance).session :=
  start_session_safe schema policy _ _ safe

omit [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim] in
theorem restart_cannot_erase_expenditure {policy : Policy} (tracked : TrackedSession policy I)
    (freshAllowance : ℕ) (spent : 0 < totalExpenditure tracked.searchHistory) :
    totalExpenditure (tracked.restart freshAllowance).searchHistory ≠ 0 := by
  rw [tracked_restart_expenditure]
  omega

end TrackedRestart

end GRWTSK.ModularCheckpoint
