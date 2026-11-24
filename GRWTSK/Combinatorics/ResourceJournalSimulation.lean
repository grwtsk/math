import GRWTSK.Combinatorics.ResourceFrontierWorklist

/-!
# Append-only receipt journal: exact contextual replay and serial accounting

Math #1851; Sofic #10 A07/A10.
SOURCE_PROOF_CANDIDATE; elaboration, fresh kernel replay, transitive axiom
audit and independent review NOT_RUN.

Consumer pin: Sofic 76ec55b3d782e8f0fd5039d0d1e7906ee37f4807,
source/lib/assurance/verification/ProtectedFiniteTransition.hpp,
blob 9599fde8114a0020dac5badb92f3242edea25a4e.
The old receipt contains packet, before/after state, disposition and check
count. The logical journal keeps initial core and trace, the exact after-core,
one appended event, and all non-state receipt metadata per record. Before-core
and before/after trace are reconstructed. Core compression is not asserted.

The authentication and legal-step predicates are fixed over exact decoded
state/metadata; no hash or worker-provided Boolean authenticates a packet.
The old receipt chain must have exact append semantics. Cost certificates
must charge real decoding/authentication/computation/append/persistence/
observation, including concurrent live objects, retained state, and readout.
Setup/finalization (including migration and final replay) are separate.
Absolute storage and resident peaks combine by max; serial work/time by sum.
The phase budget predicate is a sufficient local certificate, not evidence
that the C++ implementation actually has those costs. No physical cost,
actual protected observer refinement, or all-budget improvement is asserted.
-/

set_option autoImplicit false

namespace GRWTSK.ResourceAttainability.JournalSimulation

open Worklist (serialCost serialCost_mono)

universe u v w

abbrev Snapshot (Core : Type u) (Event : Type v) := Core × List Event

structure Delta (Core : Type u) (Event : Type v) (Meta : Type w) where
  afterCore : Core
  event : Event
  metadata : Meta

structure Receipt (Core : Type u) (Event : Type v) (Meta : Type w) where
  before : Snapshot Core Event
  after : Snapshot Core Event
  metadata : Meta

variable {Core : Type u} {Event : Type v} {Meta : Type w}

def applyDelta (s : Snapshot Core Event) (d : Delta Core Event Meta) :
    Snapshot Core Event := (d.afterCore, s.2 ++ [d.event])

def makeReceipt (s : Snapshot Core Event) (d : Delta Core Event Meta) :
    Receipt Core Event Meta := ⟨s, applyDelta s d, d.metadata⟩

def materialize (s : Snapshot Core Event) (ds : List (Delta Core Event Meta)) :
    Snapshot Core Event := ds.foldl applyDelta s

def decodeReceipts : Snapshot Core Event → List (Delta Core Event Meta) →
    List (Receipt Core Event Meta)
  | _, [] => []
  | s, d :: ds => makeReceipt s d :: decodeReceipts (applyDelta s d) ds

theorem materialize_append (s : Snapshot Core Event)
    (xs ys : List (Delta Core Event Meta)) :
    materialize s (xs ++ ys) = materialize (materialize s xs) ys := by
  simp [materialize, List.foldl_append]

theorem decodeReceipts_append (s : Snapshot Core Event)
    (xs ys : List (Delta Core Event Meta)) :
    decodeReceipts s (xs ++ ys) =
      decodeReceipts s xs ++ decodeReceipts (materialize s xs) ys := by
  induction xs generalizing s with
  | nil => simp [decodeReceipts, materialize]
  | cons d ds ih =>
    simp [decodeReceipts, materialize, ih, List.foldl_cons]

theorem materialize_trace (s : Snapshot Core Event)
    (ds : List (Delta Core Event Meta)) :
    (materialize s ds).2 = s.2 ++ ds.map Delta.event := by
  induction ds generalizing s with
  | nil => simp [materialize]
  | cons d ds ih =>
    change (materialize (applyDelta s d) ds).2 = s.2 ++ (d.event :: ds.map Delta.event)
    rw [ih]
    simp [applyDelta, List.append_assoc]

/-- Store the initial trace and one event in each delta; no statement about
other metadata/core storage or physical allocation is implied. -/
theorem journal_event_slots (s : Snapshot Core Event)
    (ds : List (Delta Core Event Meta)) :
    s.2.length + ds.length = (materialize s ds).2.length := by
  rw [materialize_trace]
  simp

/-- Each old recorded step has an exact event append. Auth and legal are
actual predicates on the fixed context, states, metadata and event, not
labels granting authority. Legal includes the protected gate and disposition. -/
inductive CopiedRun
    (auth : Snapshot Core Event → Meta → Prop)
    (legal : Snapshot Core Event → Snapshot Core Event → Event → Meta → Prop) :
    Snapshot Core Event → List (Receipt Core Event Meta) → Snapshot Core Event → Prop where
  | nil (s : Snapshot Core Event) : CopiedRun auth legal s [] s
  | cons {s t z : Snapshot Core Event} {e : Event} {m : Meta}
      {rs : List (Receipt Core Event Meta)} :
      t.2 = s.2 ++ [e] → auth s m → legal s t e m →
      CopiedRun auth legal t rs z →
      CopiedRun auth legal s (⟨s, t, m⟩ :: rs) z

inductive JournalRun
    (auth : Snapshot Core Event → Meta → Prop)
    (legal : Snapshot Core Event → Snapshot Core Event → Event → Meta → Prop) :
    Snapshot Core Event → List (Delta Core Event Meta) → Snapshot Core Event → Prop where
  | nil (s : Snapshot Core Event) : JournalRun auth legal s [] s
  | cons {s z : Snapshot Core Event} {d : Delta Core Event Meta}
      {ds : List (Delta Core Event Meta)} :
      auth s d.metadata → legal s (applyDelta s d) d.event d.metadata →
      JournalRun auth legal (applyDelta s d) ds z →
      JournalRun auth legal s (d :: ds) z

variable {auth : Snapshot Core Event → Meta → Prop}
variable {legal : Snapshot Core Event → Snapshot Core Event → Event → Meta → Prop}

/-- Exact contextual simulation: the retained representation reconstructs
every old logical receipt and the exact final state, including refusals. -/
theorem copiedRun_to_journal {s z : Snapshot Core Event}
    {rs : List (Receipt Core Event Meta)}
    (h : CopiedRun auth legal s rs z) :
    ∃ ds, JournalRun auth legal s ds z ∧
      decodeReceipts s ds = rs ∧ materialize s ds = z := by
  induction h with
  | nil s => exact ⟨[], JournalRun.nil s, rfl, rfl⟩
  | @cons s t z e m rs htrace ha hl _ ih =>
    obtain ⟨ds, hj, hdecode, hfinal⟩ := ih
    let d : Delta Core Event Meta := ⟨t.1, e, m⟩
    have hstate : applyDelta s d = t := Prod.ext rfl htrace.symm
    refine ⟨d :: ds, JournalRun.cons ?_ ?_ ?_, ?_, ?_⟩
    · exact ha
    · simpa only [hstate, d] using hl
    · simpa only [hstate] using hj
    · change makeReceipt s d :: decodeReceipts (applyDelta s d) ds = ⟨s, t, m⟩ :: rs
      rw [hstate, hdecode]
      have hr : makeReceipt s d = (⟨s, t, m⟩ : Receipt Core Event Meta) := by
        unfold makeReceipt
        rw [hstate]
        rfl
      rw [hr]
    · change materialize (applyDelta s d) ds = z
      rw [hstate, hfinal]

/-- A valid journal run decodes to a valid copied run, not a new theorem or
an authority-bearing replay token. -/
theorem journalRun_to_copied {s z : Snapshot Core Event}
    {ds : List (Delta Core Event Meta)}
    (h : JournalRun auth legal s ds z) :
    CopiedRun auth legal s (decodeReceipts s ds) z := by
  induction h with
  | nil s => exact CopiedRun.nil s
  | @cons s z d ds ha hl _ ih =>
    change CopiedRun auth legal s
      (makeReceipt s d :: decodeReceipts (applyDelta s d) ds) z
    exact CopiedRun.cons rfl ha hl ih

/-- Any designated observation of exact logical outputs is preserved. This
does not assert equal wall time or byte-identical physical representation. -/
theorem contextual_observation {Obs : Type*}
    (observe : Snapshot Core Event → List (Receipt Core Event Meta) → Obs)
    {s z : Snapshot Core Event} {rs : List (Receipt Core Event Meta)}
    {ds : List (Delta Core Event Meta)}
    (hr : decodeReceipts s ds = rs) (hf : materialize s ds = z) :
    observe (materialize s ds) (decodeReceipts s ds) = observe z rs := by
  rw [hr, hf]

/-! Serial resource accounting. Each phase vector already includes the
absolute occupancy of all retained, shared, and simultaneously live objects.
Do not use a requested allocation upper bound as an actual lower bound. -/

def aggregate : List ResourceVec → ResourceVec
  | [] => 0
  | c :: cs => serialCost c (aggregate cs)

theorem aggregate_peak_le_iff (cs : List ResourceVec) (i : Fin 4)
    (hi : i = 0 ∨ i = 2) (b : Nat) :
    aggregate cs i ≤ b ↔ ∀ c ∈ cs, c i ≤ b := by
  induction cs with
  | nil => simp [aggregate]
  | cons c cs ih =>
    simp only [aggregate, serialCost, if_pos hi, max_le_iff, ih]
    constructor
    · rintro ⟨hc, hcs⟩ x hx
      rcases List.mem_cons.mp hx with rfl | hx'
      · exact hc
      · exact hcs x hx'
    · intro h
      exact ⟨h c (List.mem_cons_self), fun x hx => h x (List.mem_cons_of_mem c hx)⟩

theorem aggregate_sum (cs : List ResourceVec) (i : Fin 4)
    (hi : ¬ (i = 0 ∨ i = 2)) :
    aggregate cs i = (cs.map fun c => c i).sum := by
  induction cs with
  | nil => rfl
  | cons c cs ih => simp [aggregate, serialCost, hi, ih]

/-- All peaks are absolute and the sum includes every serial phase. -/
def PhasesFit (cs : List ResourceVec) (b : ResourceVec) : Prop :=
  (∀ c ∈ cs, c 0 ≤ b 0 ∧ c 2 ≤ b 2) ∧
  (cs.map fun c => c 1).sum ≤ b 1 ∧
  (cs.map fun c => c 3).sum ≤ b 3

theorem aggregate_budget_iff (cs : List ResourceVec) (b : ResourceVec) :
    aggregate cs ≤ b ↔ PhasesFit cs b := by
  have h0 : aggregate cs 0 ≤ b 0 ↔ ∀ c ∈ cs, c 0 ≤ b 0 :=
    aggregate_peak_le_iff cs 0 (by decide) _
  have h2 : aggregate cs 2 ≤ b 2 ↔ ∀ c ∈ cs, c 2 ≤ b 2 :=
    aggregate_peak_le_iff cs 2 (by decide) _
  have h1 := aggregate_sum cs 1 (by decide)
  have h3 := aggregate_sum cs 3 (by decide)
  constructor
  · intro h
    exact ⟨fun c hc => ⟨h0.1 (h 0) c hc, h2.1 (h 2) c hc⟩,
      h1 ▸ h 1, h3 ▸ h 3⟩
  · rintro ⟨hp, hw, ht⟩ i
    fin_cases i
    · exact h0.2 (fun c hc => (hp c hc).1)
    · rw [h1]; exact hw
    · exact h2.2 (fun c hc => (hp c hc).2)
    · rw [h3]; exact ht

structure PhasePlan where
  reconstruct : ResourceVec
  authenticate : ResourceVec
  execute : ResourceVec
  append : ResourceVec
  persist : ResourceVec
  observe : ResourceVec

def PhasePlan.costs (p : PhasePlan) : List ResourceVec :=
  [p.reconstruct, p.authenticate, p.execute, p.append, p.persist, p.observe]

def journalCost
    (plan : Snapshot Core Event → Delta Core Event Meta → PhasePlan) :
    Snapshot Core Event → List (Delta Core Event Meta) → ResourceVec
  | _, [] => 0
  | s, d :: ds =>
    serialCost (aggregate (plan s d).costs) (journalCost plan (applyDelta s d) ds)

/-- Local six-phase certificate composes over the complete logical run.
It includes authentication and reconstruction, not only append cost. -/
theorem journalRun_cost_le
    (plan : Snapshot Core Event → Delta Core Event Meta → PhasePlan)
    (oldCharge : Receipt Core Event Meta → ResourceVec)
    (localFit : ∀ s d, auth s d.metadata →
      legal s (applyDelta s d) d.event d.metadata →
      PhasesFit (plan s d).costs (oldCharge (makeReceipt s d)))
    {s z : Snapshot Core Event} {ds : List (Delta Core Event Meta)}
    (h : JournalRun auth legal s ds z) :
    journalCost plan s ds ≤ aggregate ((decodeReceipts s ds).map oldCharge) := by
  induction h with
  | nil => exact le_rfl
  | @cons s z d ds ha hl _ ih =>
    change serialCost (aggregate (plan s d).costs) (journalCost plan (applyDelta s d) ds) ≤
      serialCost (oldCharge (makeReceipt s d))
        (aggregate ((decodeReceipts (applyDelta s d) ds).map oldCharge))
    exact serialCost_mono ((aggregate_budget_iff _ _).2 (localFit s d ha hl)) ih

/-- End-to-end resource-aware contextual simulation. Setup covers ingress,
initial journal construction or migration, and finalize covers the declared
final replay/readout. Their actual costs require separate certificates.
All output and receipt identities, including the before-state bound to
authentication, are exactly preserved in the abstract model. -/
theorem copiedRun_resource_simulation
    (plan : Snapshot Core Event → Delta Core Event Meta → PhasePlan)
    (oldCharge : Receipt Core Event Meta → ResourceVec)
    (localFit : ∀ s d, auth s d.metadata →
      legal s (applyDelta s d) d.event d.metadata →
      PhasesFit (plan s d).costs (oldCharge (makeReceipt s d)))
    (newSetup oldSetup newFinalize oldFinalize : ResourceVec)
    (setupFit : newSetup ≤ oldSetup) (finalFit : newFinalize ≤ oldFinalize)
    {s z : Snapshot Core Event} {rs : List (Receipt Core Event Meta)}
    (h : CopiedRun auth legal s rs z) :
    ∃ ds, JournalRun auth legal s ds z ∧
      decodeReceipts s ds = rs ∧ materialize s ds = z ∧
      serialCost newSetup (serialCost (journalCost plan s ds) newFinalize) ≤
        serialCost oldSetup (serialCost (aggregate (rs.map oldCharge)) oldFinalize) := by
  obtain ⟨ds, hj, hr, hf⟩ := copiedRun_to_journal h
  have hc := journalRun_cost_le plan oldCharge localFit hj
  rw [hr] at hc
  exact ⟨ds, hj, hr, hf, serialCost_mono setupFit (serialCost_mono hc finalFit)⟩

end GRWTSK.ResourceAttainability.JournalSimulation
