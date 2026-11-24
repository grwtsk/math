import GRWTSK.Combinatorics.ResourceJournalCache

/-!
# Amortized append accounting and scoped cache dominance

Math #1851 / PR #1853. SOURCE_PROOF_CANDIDATE; NOT_RUN.
All operation bounds are explicit assumptions about the declared resource
model. Logical buffer moves, encoded words and deterministic serial ticks
are not physical C++ allocations, instructions, RSS or wall-clock rates.

The buffer theorem counts one write per appended cell and all relocation
moves for a doubling buffer. It requires an owned buffer and no historical
full-array copies (bounded immutable views can use the committed prefix).
A bounded per-attempt cost must include the exact protected observer,
index traversal, serialization/hash, persistence and all rejected attempts.
Unbounded B-tree height, input sizes, full-history observation, queueing
latency, recovery, or concurrent allocations need additional charges.
Recovery load is measured in declared units, not necessarily its row count:
a full-history observer during recovery can make it quadratic.
-/
set_option autoImplicit false

namespace GRWTSK.ResourceAttainability.JournalCacheBounds

open JournalIndexBounds
open JournalEconomics

structure Buffer where
  length : Nat
  capacity : Nat

def Buffer.valid (s : Buffer) : Prop := 0 < s.capacity ∧ s.length ≤ s.capacity

def Buffer.push (s : Buffer) : Buffer :=
  if s.length < s.capacity then ⟨s.length+1,s.capacity⟩
  else ⟨s.length+1,2*s.capacity⟩

def Buffer.moves (s : Buffer) : Nat :=
  if s.length < s.capacity then 1 else s.length+1

def Buffer.potential (s : Buffer) : Nat := 2*s.length-s.capacity

theorem Buffer.push_valid (s : Buffer) (h : s.valid) : s.push.valid := by
  rcases h with ⟨hc,hl⟩
  by_cases hr : s.length < s.capacity
  · simp [Buffer.push,Buffer.valid,hr]
    omega
  · simp [Buffer.push,Buffer.valid,hr]
    omega

/-- One append plus all relocations has amortized cost at most three.
Potential is truncated natural subtraction, hence nonnegative. -/
theorem Buffer.amortized (s : Buffer) (h : s.valid) :
    s.moves+s.push.potential ≤ 3+s.potential := by
  rcases h with ⟨hc,hl⟩
  by_cases hr : s.length < s.capacity
  · simp [Buffer.push,Buffer.moves,Buffer.potential,hr]
    omega
  · have he : s.length = s.capacity := by omega
    simp [Buffer.push,Buffer.moves,Buffer.potential,hr,he]
    omega

def bufferRun (s : Buffer) : Nat → Buffer × Nat
  | 0 => (s,0)
  | n+1 =>
    let r := bufferRun s.push n
    (r.1,s.moves+r.2)

theorem bufferRun_amortized (s : Buffer) (n : Nat) (h : s.valid) :
    (bufferRun s n).2+(bufferRun s n).1.potential ≤ 3*n+s.potential := by
  induction n generalizing s with
  | zero => simp [bufferRun]
  | succ n ih =>
    have hstep := s.amortized h
    have htail := ih s.push (s.push_valid h)
    simp only [bufferRun]
    omega

theorem bufferRun_moves_le (s : Buffer) (n : Nat) (h : s.valid) :
    (bufferRun s n).2 ≤ 3*n+s.potential := by
  have hh := bufferRun_amortized s n h
  omega

theorem sum_le_length_mul (xs : List Nat) (k : Nat)
    (h : ∀ x ∈ xs, x ≤ k) : xs.sum ≤ xs.length*k := by
  induction xs with
  | nil => simp
  | cons x xs ih =>
    have hx := h x (by simp)
    have ht : ∀ a ∈ xs, a ≤ k := fun a ha => h a (List.mem_cons.mpr (Or.inr ha))
    have hh := ih ht
    simp only [List.sum_cons,List.length_cons,Nat.succ_mul]
    omega

/-- Other work includes all successful and failed attempts, not only
published deltas. The independent buffer charge covers relocations.
This bound is linear in n and attempt count under the supplied rate. -/
theorem append_work_linear (s : Buffer) (n rate moveRate setup : Nat)
    (attemptWork : List Nat) (hs : s.valid)
    (h : ∀ x ∈ attemptWork, x ≤ rate) :
    setup+attemptWork.sum+moveRate*(bufferRun s n).2 ≤
      setup+attemptWork.length*rate+moveRate*(3*n+s.potential) := by
  have hsum := sum_le_length_mul attemptWork rate h
  have hm := Nat.mul_le_mul_left moveRate (bufferRun_moves_le s n hs)
  omega

def historyLoad (queries : List Nat) : Nat :=
  (queries.map JournalIndex.indexedFetchSlots).sum

theorem historyLoad_le (queries : List Nat) (n Q : Nat)
    (h : ∀ i ∈ queries, i < n) (hq : queries.length ≤ Q) :
    historyLoad queries ≤ Q*n := by
  have hb : ∀ x ∈ queries.map JournalIndex.indexedFetchSlots, x ≤ n := by
    intro x hx
    obtain ⟨i,hi,rfl⟩ := List.mem_map.mp hx
    have hh := h i hi
    unfold JournalIndex.indexedFetchSlots
    omega
  have hs := sum_le_length_mul (queries.map JournalIndex.indexedFetchSlots) n hb
  rw [List.length_map] at hs
  exact le_trans hs (Nat.mul_le_mul_right n hq)

/-- Full before/after trace emission is charged even with an indexed core
and hot cache. For bounded initial length M, this is linear per query in
its requested prefix length. -/
theorem historical_slots_le (m M i : Nat) (hm : m ≤ M) :
    JournalIndex.fullReceiptSlots m i ≤ (2*M+2)*(i+1) := by
  rw [JournalIndex.fullReceiptSlots_formula]
  calc
    2*m+2*i+1 ≤ 2*M+2*i+2 := by omega
    _ ≤ 2*M+2*i+2+2*M*i := Nat.le_add_right _ _
    _ = (2*M+2)*(i+1) := by ring

/-- Fixed setup/finalization, aggregate hot append (including allowed
failure overhead), per historical-load unit and per recovery-load unit.
For peaks these can be conservative envelope contributions, not a claim
that nonoverlapping peaks physically add. The rates are vector valued. -/
structure Envelope where
  fixed : ResourceVec
  appendRate : ResourceVec
  historyRate : ResourceVec
  recoveryRate : ResourceVec

def Envelope.upper (e : Envelope) (n history recovery : Nat) : ResourceVec :=
  fun i => e.fixed i + e.appendRate i*n +
    e.historyRate i*history + e.recoveryRate i*recovery

theorem affine_le_square (fixed a b c n q r Q R : Nat)
    (hf : fixed ≤ n) (hq : q ≤ Q*n) (hr : r ≤ R*n)
    (hs : a+b*Q+c*R+1 ≤ n) :
    fixed+a*n+b*q+c*r ≤ n*n := by
  have h1 := Nat.mul_le_mul_left b hq
  have h2 := Nat.mul_le_mul_left c hr
  calc
    fixed+a*n+b*q+c*r ≤ n+a*n+b*(Q*n)+c*(R*n) := by omega
    _ = (a+b*Q+c*R+1)*n := by ring
    _ ≤ n*n := Nat.mul_le_mul_right n hs

/-- All four inequalities are discharged by an explicit length threshold.
A history/recovery load bound and all rates must be independently justified.
In particular recoveryLoad may include quadratic observer revalidation. -/
theorem envelope_fits_square (e : Envelope) (n history recovery Q R : Nat)
    (hf : ∀ i, e.fixed i ≤ n)
    (hh : history ≤ Q*n) (hr : recovery ≤ R*n)
    (hs : ∀ i, e.appendRate i+e.historyRate i*Q+e.recoveryRate i*R+1 ≤ n) :
    e.upper n history recovery ≤ (fun _ => n*n : ResourceVec) := by
  intro i
  exact affine_le_square _ _ _ _ _ _ _ _ _ (hf i) hh hr (hs i)

/-- In a declared unit model with at least one encoded word, one resident
cell, one work unit and one serial tick per mandatory simultaneous retained
copy, the old cost dominates this vector. That physical/refinement premise
is NOT inferred from the copiedBytes identity. -/
def copyFloor (n : Nat) : ResourceVec := fun _ => n*n

theorem square_le_uniform_copies (m n bytes : Nat) (hb : 1 ≤ bytes) :
    n*n ≤ copiedBytes (bytes*m) (List.replicate n bytes) := by
  rw [copiedBytes_uniform]
  calc
    n*n ≤ 2*m*n+n*n := by omega
    _ = 1*(2*m*n+n*n) := by simp
    _ ≤ bytes*(2*m*n+n*n) := Nat.mul_le_mul_right _ hb
    _ = 2*(bytes*m)*n+bytes*n*n := by ring

theorem certified_cache_cost_le (e : Envelope)
    (n history recovery Q R : Nat)
    (oldCost newCost : ResourceVec)
    (oldLower : copyFloor n ≤ oldCost)
    (newUpper : newCost ≤ e.upper n history recovery)
    (hf : ∀ i, e.fixed i ≤ n)
    (hh : history ≤ Q*n) (hr : recovery ≤ R*n)
    (hs : ∀ i, e.appendRate i+e.historyRate i*Q+e.recoveryRate i*R+1 ≤ n) :
    newCost ≤ oldCost :=
  le_trans newUpper (le_trans (envelope_fits_square e n history recovery Q R hf hh hr hs) oldLower)

universe u v w
variable {State : Type u} {Claim : Type v}

/-- A source-level scoped certificate: each old witness in the declared
scope has a protected contextual replacement with explicit bounds. No
sampling premise or all-mode claim is used. -/
theorem cache_scoped_dominance
    (A : ExecutionModel.{u,v,w} State Claim) (I J : State)
    (j : Mode) (p : Claim) (scope : A.Witness → Prop)
    (contextual : A.Witness → A.Witness → Prop)
    (transport : ∀ old, scope old → A.valid I j p old →
      ∃ new, A.valid J j p new ∧ contextual old new ∧
        ∃ (e : Envelope) (n history recovery Q R : Nat),
          copyFloor n ≤ A.cost I j p old ∧
          A.cost J j p new ≤ e.upper n history recovery ∧
          (∀ i, e.fixed i ≤ n) ∧ history ≤ Q*n ∧ recovery ≤ R*n ∧
          (∀ i, e.appendRate i+e.historyRate i*Q+e.recoveryRate i*R+1 ≤ n))
    (r : ResourceVec) (h : ScopedAttainable A I j r p scope) :
    Attainable A J j r p := by
  obtain ⟨old,hs,hv,hc⟩ := h
  obtain ⟨new,hn,_,e,n,hist,rec,Q,R,hl,hu,hf,hh,hr,hfit⟩ := transport old hs hv
  exact ⟨new,hn,le_trans (certified_cache_cost_le e n hist rec Q R _ _
    hl hu hf hh hr hfit) hc⟩

/-- Illustrative, explicitly declared unit envelope, NOT calibrated
physical rates. Four readouts of at most n prefix units, no recovery
during the charged window. The arithmetic certificate is nonvacuous;
an actual runtime must prove it meets these upper and lower bounds. -/
def unitEnvelope : Envelope :=
  ⟨vec4 16 32 32 32,vec4 8 24 12 24,vec4 0 8 4 8,0⟩

theorem unit_scope_fits (n history : Nat) (hn : 128 ≤ n) (hh : history ≤ 4*n) :
    unitEnvelope.upper n history 0 ≤ copyFloor n := by
  apply envelope_fits_square unitEnvelope n history 0 4 0
  · intro i
    fin_cases i <;> simp [unitEnvelope,vec4] <;> omega
  · exact hh
  · simp
  · intro i
    fin_cases i <;> simp [unitEnvelope,vec4] <;> omega

end GRWTSK.ResourceAttainability.JournalCacheBounds
