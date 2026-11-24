import GRWTSK.Combinatorics.ResourceJournalSimulation
import GRWTSK.ComputerScience.TheoryOfSoftware.FunctionalProgrammingAndLambdaCalculus.ProtectedFiniteTransition

/-!
# Protected finite transition journal adapter and break-even certificates

Math #1851 / PR #1853; Sofic #10 A07/A10.
SOURCE_PROOF_CANDIDATE; Lean elaboration, fresh replay, axiom audit NOT_RUN.

Reuses the actual indexed Receipt, Audit and Observer, not an invented
Boolean gate. The adapter transports an authenticated recorded prefix.
Batch remainder/outside/stop must still be preserved, and its operational
cost charged. Logical event charges are retained exactly; they are NOT
measurements of the new representation. New physical costs and the
incumbent lower bounds must be independently supplied. No protected
process, persistent index, authenticator, or calibrated allocator is
implemented by the theorem.
-/
set_option autoImplicit false

namespace GRWTSK.ResourceAttainability.JournalEconomics

/-- Additional old before/after trace-copy bytes; assumes independent
value copies with the specified additive encoded size. No allocator claim. -/
def copiedBytes (base : Nat) : List Nat → Nat
  | [] => 0
  | b :: bs => base + (base+b) + copiedBytes (base+b) bs

def weightedBytes : List Nat → Nat
  | [] => 0
  | b :: bs => (2*bs.length+1)*b + weightedBytes bs

theorem copiedBytes_weighted (base : Nat) (bs : List Nat) :
    copiedBytes base bs = 2*base*bs.length + weightedBytes bs := by
  induction bs generalizing base with
  | nil => simp [copiedBytes, weightedBytes]
  | cons b bs ih =>
    simp only [copiedBytes, weightedBytes, List.length_cons, ih]
    ring

theorem copiedBytes_uniform (base size n : Nat) :
    copiedBytes base (List.replicate n size) = 2*base*n + size*n*n := by
  induction n generalizing base with
  | zero => simp [copiedBytes]
  | succ n ih =>
    simp only [List.replicate_succ, copiedBytes, ih]
    ring

/-- Equal common base/current trace and other shared bytes cancel exactly.
newExtra charges indexes, metadata, checkpoints, duplicate core storage,
and every other nonshared retained byte. -/
theorem persistent_break_even (common base oldExtra newExtra : Nat) (bs : List Nat) :
    common + newExtra ≤ common + oldExtra + copiedBytes base bs ↔
      newExtra ≤ oldExtra + copiedBytes base bs := by omega

theorem uniform_break_even (common m n size fixed perRecord oldExtra : Nat) :
    common + (fixed + perRecord*n) ≤
      common + oldExtra + copiedBytes (size*m) (List.replicate n size) ↔
      fixed + perRecord*n ≤ oldExtra + size*(2*m*n+n*n) := by
  rw [persistent_break_even, copiedBytes_uniform]
  have he : 2*(size*m)*n+size*n*n = size*(2*m*n+n*n) := by ring
  rw [he]

/-- Exact work/elapsed comparison when shared operations have equal charge.
All nonshared new costs, including final materialization, must be counted. -/
theorem additive_break_even (shared oldOnly newOnly : Nat) :
    shared + newOnly ≤ shared + oldOnly ↔ newOnly ≤ oldOnly := by omega

/-- All actual simultaneous peak phases must fit the single old peak.
Comparing independent per-object peaks or summing nonoverlapping peaks
is not an exact lifetime certificate. -/
theorem peak_break_even (phases : List ResourceVec) (i : Fin 4)
    (hi : i = 0 ∨ i = 2) (oldPeak : Nat) :
    JournalSimulation.aggregate phases i ≤ oldPeak ↔
      ∀ phase ∈ phases, phase i ≤ oldPeak :=
  JournalSimulation.aggregate_peak_le_iff phases i hi oldPeak

/-- A monotone overhead function gives a candidate distortion; the
actual witness-transport inequality is a distinct required premise. -/
def overheadMap (h : ResourceVec →o ResourceVec) : ResourceVec →o ResourceVec where
  toFun := fun r i => r i + h r i
  monotone' := by
    intro a b hab i
    exact Nat.add_le_add (hab i) (h.monotone hab i)

universe u v w
variable {State : Type u} {Claim : Type v}

theorem distorted_of_witness_overhead
    (A : ExecutionModel.{u,v,w} State Claim) (I J : State)
    (h : ResourceVec →o ResourceVec)
    (transport : ∀ j p e, A.valid I j p e →
      ∃ f, A.valid J j p f ∧
        A.cost J j p f ≤ overheadMap h (A.cost I j p e)) :
    DistortedSimulation A (overheadMap h) I J := by
  intro j r p hr
  obtain ⟨e, he, her⟩ := hr
  obtain ⟨f, hf, hcost⟩ := transport j p e he
  exact ⟨f, hf, le_trans hcost ((overheadMap h).monotone her)⟩

end GRWTSK.ResourceAttainability.JournalEconomics

namespace GRWTSK.Processing.TransactionalDiscovery.ProtectedTransition.JournalAdapter

open GRWTSK.Processing
open GRWTSK.Processing.StateTrace.Resource
open GRWTSK.ResourceAttainability
open GRWTSK.Processing.TransactionalDiscovery
open GRWTSK.Processing.TransactionalDiscovery.Contextual
open GRWTSK.Processing.TransactionalDiscovery.ProtectedTransition

namespace JS := GRWTSK.ResourceAttainability.JournalSimulation

universe u v w y
variable {C : TrustedChecker.{u}} {G : Type v} {Reg : Type w} {Obs : Type y}

abbrev Snap (C : TrustedChecker.{u}) (G : Type v) (Reg : Type w) :=
  JS.Snapshot (CState C G Reg) (Event Judgment.{u})

/-- Retain all non-snapshot fields of the actual mathematical Record.
The one-element event list is retained here too, so metadata accounting
must include this duplicate. The C++ consumer additionally binds its
observation ID and passed-check count in metadata. -/
structure Meta where
  packet : Packet.{u}
  disposition : Disposition
  outcome : Outcome Refusal Failure Bool
  events : List (Event Judgment.{u})

abbrev JReceipt (C : TrustedChecker.{u}) (G : Type v) (Reg : Type w) :=
  JS.Receipt (CState C G Reg) (Event Judgment.{u}) Meta.{u}
abbrev JDelta (C : TrustedChecker.{u}) (G : Type v) (Reg : Type w) :=
  JS.Delta (CState C G Reg) (Event Judgment.{u}) Meta.{u}
abbrev JRep (C : TrustedChecker.{u}) (G : Type v) (Reg : Type w) :=
  JS.JournalRep (CState C G Reg) (Event Judgment.{u}) Meta.{u}

def pack (s : SState C G Reg) : Snap C G Reg := (s.core,s.trace)
def unpack (s : Snap C G Reg) : SState C G Reg := ⟨s.1,s.2⟩

@[simp] theorem unpack_pack (s : SState C G Reg) : unpack (pack s) = s := by
  cases s; rfl

@[simp] theorem pack_unpack (s : Snap C G Reg) : pack (unpack s) = s := by
  cases s; rfl

def encodeRecord (r : Record (C := C) (G := G) (Reg := Reg)) : JReceipt C G Reg :=
  ⟨pack r.before, pack r.result.state,
    ⟨r.packet,r.disposition,r.result.outcome,r.result.events⟩⟩

def decodeRecord (r : JReceipt C G Reg) : Record (C := C) (G := G) (Reg := Reg) :=
  ⟨r.metadata.packet,unpack r.before,
    ⟨r.metadata.outcome,unpack r.after,r.metadata.events⟩,r.metadata.disposition⟩

theorem decode_encode (r : Record (C := C) (G := G) (Reg := Reg)) :
    decodeRecord (encodeRecord r) = r := by
  cases r
  simp [decodeRecord,encodeRecord]

/-- Authentication uses actual Observer origin at the reconstructed before
state, not merely a same-name target or a journal hash. -/
def boundAuth (O : Observer (C := C) (G := G) (Reg := Reg))
    (q : Judgment.{u}) (s : Snap C G Reg) (m : Meta.{u}) : Prop :=
  m.packet.target = q ∧ O.observe (unpack s) q m.packet.submission = some m.packet

variable (P : Policy Judgment.{u} meaning G Reg (ProtectedEnv C) Obs)

/-- Legal means an existing actual indexed receipt gives exactly this
state, disposition, outcome, and event. The packet is not changed to
insert representation-specific measurements. -/
def receiptLegal (cap : ResourceVec) (s t : Snap C G Reg)
    (e : Event Judgment.{u}) (m : Meta.{u}) : Prop :=
  ∃ r : Receipt P cap (unpack s) m.packet,
    r.disposition P = m.disposition ∧
    (r.result P).state = unpack t ∧
    (r.result P).outcome = m.outcome ∧
    (r.result P).events = m.events ∧ m.events = [e]

theorem audit_as_copied
    (O : Observer (C := C) (G := G) (Reg := Reg))
    (cap : ResourceVec) (q : Judgment.{u})
    {s t : SState C G Reg} {rs : List (Record (C := C) (G := G) (Reg := Reg))}
    (h : Audit P cap s rs t)
    (origin : ∀ r ∈ rs, r.packet.target = q ∧
      O.observe r.before q r.packet.submission = some r.packet) :
    JS.CopiedRun (boundAuth O q) (receiptLegal P cap)
      (pack s) (rs.map encodeRecord) (pack t) := by
  induction h with
  | nil s => exact JS.CopiedRun.nil _
  | @cons s t a rs r tail ih =>
    let e : Event Judgment.{u} := ⟨a.target,(r.result P).outcome,a.charge⟩
    let m : Meta.{u} := ⟨a,r.disposition P,(r.result P).outcome,(r.result P).events⟩
    have htrace : (pack (r.result P).state).2 = (pack s).2 ++ [e] := by
      cases r <;> rfl
    have ha : boundAuth O q (pack s) m := by
      simpa [boundAuth,m,Receipt.record] using
        origin (r.record P) (List.mem_cons.mpr (Or.inl rfl))
    have hl : receiptLegal P cap (pack s) (pack (r.result P).state) e m := by
      simp only [receiptLegal,unpack_pack]
      exact ⟨r,rfl,rfl,rfl,rfl,receipt_event_exact P r⟩
    have ht := ih (fun rec hr => origin rec (List.mem_cons.mpr (Or.inr hr)))
    exact JS.CopiedRun.cons htrace ha hl ht

/-- Exact batch record and final-state reconstruction with the original
protected observer and indexed receipts. The remaining submissions and
outside packet are kept unchanged separately from the bounded journal. -/
theorem batch_journal_replay
    (O : Observer (C := C) (G := G) (Reg := Reg))
    {cap : ResourceVec} {s : SState C G Reg}
    {q : Judgment.{u}} {input : List Submission}
    (b : Batch P O cap s q input) :
    ∃ ds : List (JDelta C G Reg),
      JS.JournalRun (boundAuth O q) (receiptLegal P cap)
        (pack s) ds (pack b.final) ∧
      (JS.decodeReceipts (pack s) ds).map decodeRecord = b.records ∧
      unpack (JS.materialize (pack s) ds) = b.final := by
  obtain ⟨ds,hj,hr,hf⟩ := JS.copiedRun_to_journal
    (audit_as_copied P O cap q b.audit b.origin)
  refine ⟨ds,hj,?_,?_⟩
  · rw [hr,List.map_map]
    simp [Function.comp_def,decode_encode]
  · rw [hf,unpack_pack]

/-- Actual protected-semantic instance of the abstract prefix theorem.
The new-auth/step predicates and physical costs are separate suppliers.
The incumbent cost is a supplied lower bound (or exact cost), not an
arbitrary upper allowance from the packet. The theorem is for the
recorded prefix. Finalize must also account for required stop evidence. -/
theorem batch_journal_cost_simulation
    (O : Observer (C := C) (G := G) (Reg := Reg))
    {cap : ResourceVec} {s : SState C G Reg}
    {q : Judgment.{u}} {input : List Submission}
    (b : Batch P O cap s q input)
    (newAuth newLegal : JRep C G Reg → JDelta C G Reg → Prop)
    (authRefines : ∀ j d, newAuth j d ↔ boundAuth O q j.state d.metadata)
    (legalRefines : ∀ j d, newLegal j d ↔
      receiptLegal P cap j.state (j.extend d).state d.event d.metadata)
    (plan : JRep C G Reg → JDelta C G Reg → JS.PhasePlan)
    (oldCost : JReceipt C G Reg → ResourceVec)
    (localFit : ∀ j d, boundAuth O q j.state d.metadata →
      receiptLegal P cap j.state (j.extend d).state d.event d.metadata →
      JS.PhasesFit (plan j d).costs (oldCost (JS.makeReceipt j.state d)))
    (newSetup oldSetup oldFinalize : ResourceVec)
    (newFinalize : JRep C G Reg → ResourceVec)
    (setupFit : newSetup ≤ oldSetup)
    (finalFit : ∀ ds, JS.decodeReceipts (pack s) ds = b.records.map encodeRecord →
      newFinalize ⟨pack s,ds⟩ ≤ oldFinalize) :
    ∃ ds : List (JDelta C G Reg),
      JS.prefixValid newAuth newLegal ⟨pack s,[]⟩ ds ∧
      (JS.decodeReceipts (pack s) ds).map decodeRecord = b.records ∧
      unpack (JS.materialize (pack s) ds) = b.final ∧
      Worklist.serialCost newSetup (Worklist.serialCost
        (JS.prefixCost plan ⟨pack s,[]⟩ ds) (newFinalize ⟨pack s,ds⟩)) ≤
      Worklist.serialCost oldSetup (Worklist.serialCost
        (JS.aggregate ((b.records.map encodeRecord).map oldCost)) oldFinalize) := by
  obtain ⟨ds,_,hv,hr,hf,hc⟩ := JS.copiedRun_prefix_resource_simulation
    newAuth newLegal authRefines legalRefines plan oldCost localFit
    newSetup oldSetup oldFinalize newFinalize setupFit finalFit
    (audit_as_copied P O cap q b.audit b.origin)
  refine ⟨ds,hv,?_,?_,hc⟩
  · rw [hr,List.map_map]
    simp [Function.comp_def,decode_encode]
  · rw [hf,unpack_pack]

end GRWTSK.Processing.TransactionalDiscovery.ProtectedTransition.JournalAdapter
