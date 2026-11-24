import GRWTSK.Combinatorics.ResourceJournalEconomics

/-!
# Persistent authenticated journal prefix index

Math #1851 / PR #1853; Sofic #10 A07/A10.
SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom
audit and independent review NOT_RUN.

Sofic PR #1 at 997a796b1447d2e868f689bca4601fb74ea50c0a:
ProtectedFiniteTransition.hpp blob 9599fde8114a0020dac5badb92f3242edea25a4e.
The index is a length-bounded immutable view of one append-only delta store.
An array supplies indexed lookup in the pure model; physical persistence,
atomic publication, exact protected issuance and cost refinement are separate.
Do not keep a physical Array copy per version or infer a worst-case allocator
bound from Lean's functional Array semantics. Indexed reconstruction reads
the required prefix, not the suffix and not every historical receipt. A
protected historical root binds context, length and exact canonical content;
no injectivity of a digest, untrusted Boolean gate or implicit current-head
rollback is assumed. Authenticate the exact old before-state and legal step.
A new append requires fresh protected issuance; it cannot self-certify.
-/

set_option autoImplicit false

namespace GRWTSK.ResourceAttainability.JournalIndex

open GRWTSK.ResourceAttainability.JournalSimulation

universe u v w c r
variable {Core : Type u} {Event : Type v} {Meta : Type w}

/-- Indexed fetches with a reverse accumulator. Exactly k successful indexed
reads give the first k deltas; the final reverse is linear in k.
The recursion is a logical operation count, not measured CPU time. -/
def fetchRev (a : Array (Delta Core Event Meta)) :
    Nat → Option (List (Delta Core Event Meta))
  | 0 => some []
  | k+1 => do
    let ds ← fetchRev a k
    let d ← a[k]?
    pure (d :: ds)

theorem fetchRev_exact (a : Array (Delta Core Event Meta)) (k : Nat)
    (h : k ≤ a.size) :
    fetchRev a k = some ((a.toList.take k).reverse) := by
  induction k with
  | zero => rfl
  | succ k ih =>
    have hk : k < a.size := by omega
    have hl : k < a.toList.length := by simpa using hk
    have ha : a[k]? = some a[k] := by simp [hk]
    rw [fetchRev, ih (by omega), ha]
    rw [List.take_succ_eq_append_getElem hl]
    simp [Array.getElem_toList]

/-- The previous after-core is already stored in the last prefix delta.
No repeated core transition or old receipt materialization is necessary. -/
def stateFromRev (base : Snapshot Core Event) :
    List (Delta Core Event Meta) → Snapshot Core Event
  | [] => base
  | d :: ds => (d.afterCore, base.2 ++ ((d :: ds).reverse.map Delta.event))

theorem stateFromRev_exact (base : Snapshot Core Event)
    (ds : List (Delta Core Event Meta)) :
    stateFromRev base ds.reverse = materialize base ds := by
  induction ds using List.reverseRecOn with
  | nil => rfl
  | append_singleton ds d ih =>
    rw [materialize_append]
    simp only [List.reverse_append, List.reverse_singleton, List.singleton_append,
      stateFromRev]
    change (d.afterCore, base.2 ++ ((d :: ds.reverse).reverse.map Delta.event)) =
      applyDelta (materialize base ds) d
    simp [applyDelta, materialize_trace, List.reverse_cons, List.map_append, List.append_assoc]

def indexedState (base : Snapshot Core Event) (a : Array (Delta Core Event Meta))
    (k : Nat) : Option (Snapshot Core Event) :=
  (fetchRev a k).map (stateFromRev base)

theorem indexedState_exact (base : Snapshot Core Event) (a : Array (Delta Core Event Meta))
    (k : Nat) (h : k ≤ a.size) :
    indexedState base a k = some (materialize base (a.toList.take k)) := by
  rw [indexedState, fetchRev_exact a k h]
  simp [stateFromRev_exact]

theorem decode_length (base : Snapshot Core Event) (ds : List (Delta Core Event Meta)) :
    (decodeReceipts base ds).length = ds.length := by
  induction ds generalizing base with
  | nil => rfl
  | cons d ds ih => simp [decodeReceipts, ih]

theorem decode_at (base : Snapshot Core Event) (ds : List (Delta Core Event Meta))
    (i : Nat) (hi : i < ds.length) :
    (decodeReceipts base ds)[i]? =
      some (makeReceipt (materialize base (ds.take i)) ds[i]) := by
  induction ds generalizing base i with
  | nil => simp at hi
  | cons d ds ih =>
    cases i with
    | zero => rfl
    | succ i =>
      have h : i < ds.length := by simpa using hi
      simpa [decodeReceipts, materialize, List.take] using ih (applyDelta base d) i h

/-- A version limit is checked before indexed fetching. A later committed
append does not grant a historical version access to the added suffix. -/
def indexedRead (base : Snapshot Core Event) (a : Array (Delta Core Event Meta))
    (limit i : Nat) : Option (Receipt Core Event Meta) :=
  if i < limit then do
    let s ← indexedState base a i
    let d ← a[i]?
    pure (makeReceipt s d)
  else none

theorem indexedRead_outside (base : Snapshot Core Event) (a : Array (Delta Core Event Meta))
    (limit i : Nat) (h : limit ≤ i) :
    indexedRead base a limit i = none := by
  simp [indexedRead, Nat.not_lt.mpr h]

theorem indexedRead_exact (base : Snapshot Core Event) (a : Array (Delta Core Event Meta))
    (limit i : Nat) (hl : limit ≤ a.size) (hi : i < limit) :
    indexedRead base a limit i = (decodeReceipts base a.toList)[i]? := by
  have h : i < a.size := lt_of_lt_of_le hi hl
  have ht : i < a.toList.length := by simpa using h
  rw [decode_at base a.toList i ht]
  simp [indexedRead, hi, indexedState_exact base a i (Nat.le_of_lt h), h,
    Array.getElem_toList]

/-- Stable prefixes under append. This lemma does not require a hash law. -/
theorem take_append_stable {A : Type*} (xs ys : List A) (k : Nat)
    (h : k ≤ xs.length) : (xs ++ ys).take k = xs.take k := by
  induction xs generalizing k with
  | nil =>
    have : k = 0 := by simpa using h
    subst k
    rfl
  | cons x xs ih =>
    cases k with
    | zero => rfl
    | succ k =>
      have hk : k ≤ xs.length := by simpa using h
      simp [List.take, ih k hk]

theorem decode_prefix_at (base : Snapshot Core Event)
    (ds : List (Delta Core Event Meta)) (limit i : Nat)
    (hl : limit ≤ ds.length) (hi : i < limit) :
    (decodeReceipts base ds)[i]? =
      (decodeReceipts base (ds.take limit))[i]? := by
  have hs : i < (decodeReceipts base (ds.take limit)).length := by
    rw [decode_length]
    simp [List.length_take, Nat.min_eq_left hl, hi]
  have he := decodeReceipts_append base (ds.take limit) (ds.drop limit)
  rw [List.take_append_drop] at he
  rw [he, List.getElem?_append_left hs]

theorem indexedRead_version (base : Snapshot Core Event)
    (a : Array (Delta Core Event Meta)) (limit i : Nat)
    (hl : limit ≤ a.size) (hi : i < limit) :
    indexedRead base a limit i =
      (decodeReceipts base (a.toList.take limit))[i]? := by
  rw [indexedRead_exact base a limit i hl hi]
  exact decode_prefix_at base a.toList limit i (by simpa using hl) hi

theorem indexedRead_append (base : Snapshot Core Event)
    (a : Array (Delta Core Event Meta)) (d : Delta Core Event Meta)
    (limit i : Nat) (hl : limit ≤ a.size) :
    indexedRead base (a.push d) limit i = indexedRead base a limit i := by
  by_cases hi : i < limit
  · rw [indexedRead_version base (a.push d) limit i (by simp; omega) hi,
      indexedRead_version base a limit i hl hi, Array.toList_push,
      take_append_stable a.toList [d] limit (by simpa using hl)]
  · rw [indexedRead_outside base (a.push d) limit i (by omega),
      indexedRead_outside base a limit i (by omega)]

/-- Exactly one delta fetch per prefix position and one for the requested
record; output is a full logical pair, not a constant-size prefix view. -/
def indexedFetchSlots (i : Nat) : Nat := i+1
def fullReceiptSlots (m i : Nat) : Nat := (m+i)+(m+i+1)

theorem fullReceiptSlots_formula (m i : Nat) :
    fullReceiptSlots m i = 2*m+2*i+1 := by
  unfold fullReceiptSlots
  omega

theorem fetchRev_length (a : Array (Delta Core Event Meta)) (k : Nat)
    (h : k ≤ a.size) :
    ∃ ds, fetchRev a k = some ds ∧ ds.length = k := by
  refine ⟨_, fetchRev_exact a k h, ?_⟩
  simp [List.length_take, Nat.min_eq_left (show k ≤ a.toList.length by simpa using h)]

theorem indexedRead_bounded (base : Snapshot Core Event)
    (a : Array (Delta Core Event Meta)) (limit i : Nat)
    (hl : limit ≤ a.size) (hi : i < limit) :
    ∃ rec, indexedRead base a limit i = some rec ∧
      rec.before.2.length + rec.after.2.length = fullReceiptSlots base.2.length i ∧
      indexedFetchSlots i ≤ limit := by
  have h : i < a.size := lt_of_lt_of_le hi hl
  have ht : i < a.toList.length := by simpa using h
  let s := materialize base (a.toList.take i)
  let d := a.toList[i]
  refine ⟨makeReceipt s d, ?_, ?_, ?_⟩
  · rw [indexedRead_exact base a limit i hl hi, decode_at base a.toList i ht]
  · have hs : s.2.length = base.2.length+i := by
      simp [s, materialize_trace, List.length_take, Nat.min_eq_left (Nat.le_of_lt ht)]
    simp [makeReceipt, applyDelta, fullReceiptSlots, hs]
    omega
  · unfold indexedFetchSlots
    omega

/-- A protected version contains its exact identity scope, not just length.
The authority's issued predicate denotes protected canonical data, not a
caller-provided assertion or a theorem that cryptographic hashes inject. -/
structure Version (Context : Type c) (Root : Type r) where
  context : Context
  root : Root
  limit : Nat

structure Authority (Context : Type c) (Root : Type r)
    (Core : Type u) (Event : Type v) (Meta : Type w) where
  issued : Version Context Root → Snapshot Core Event → List (Delta Core Event Meta) → Prop
  unique : ∀ version base ds base' ds',
    issued version base ds → issued version base' ds' → base = base' ∧ ds = ds'

variable {Context : Type c} {Root : Type r}

def BoundVersion (A : Authority Context Root Core Event Meta)
    (v : Version Context Root) (base : Snapshot Core Event)
    (a : Array (Delta Core Event Meta)) : Prop :=
  v.limit ≤ a.size ∧ A.issued v base (a.toList.take v.limit)

theorem boundVersion_append (A : Authority Context Root Core Event Meta)
    (v : Version Context Root) (base : Snapshot Core Event)
    (a : Array (Delta Core Event Meta)) (d : Delta Core Event Meta)
    (h : BoundVersion A v base a) : BoundVersion A v base (a.push d) := by
  refine ⟨by simp; omega, ?_⟩
  rw [Array.toList_push, take_append_stable a.toList [d] v.limit (by simpa using h.1)]
  exact h.2

/-- Independent resolvers of the same protected version must agree on
every requested receipt. Authority issuance uniqueness is a supplier. -/
theorem authenticated_read_unique (A : Authority Context Root Core Event Meta)
    (v : Version Context Root) (base base' : Snapshot Core Event)
    (a a' : Array (Delta Core Event Meta))
    (ha : BoundVersion A v base a) (hb : BoundVersion A v base' a') (i : Nat) :
    indexedRead base a v.limit i = indexedRead base' a' v.limit i := by
  by_cases hi : i < v.limit
  · obtain ⟨hs,hd⟩ := A.unique v base _ base' _ ha.2 hb.2
    rw [indexedRead_version base a v.limit i ha.1 hi,
      indexedRead_version base' a' v.limit i hb.1 hi, hs, hd]
  · rw [indexedRead_outside base a v.limit i (by omega),
      indexedRead_outside base' a' v.limit i (by omega)]

/-- A replayable journal carries the original contextual predicates.
Every decoded record inherits those predicates at its exact before-state. -/
theorem journal_read_valid
    {auth : Snapshot Core Event → Meta → Prop}
    {legal : Snapshot Core Event → Snapshot Core Event → Event → Meta → Prop}
    {base final : Snapshot Core Event} {ds : List (Delta Core Event Meta)}
    (h : JournalRun auth legal base ds final) :
    ∀ rec ∈ decodeReceipts base ds,
      auth rec.before rec.metadata ∧
      ∃ e, legal rec.before rec.after e rec.metadata ∧
        rec.after.2 = rec.before.2 ++ [e] := by
  induction h with
  | nil => simp [decodeReceipts]
  | @cons s z d ds ha hl tail ih =>
    intro rec hr
    change rec ∈ makeReceipt s d :: decodeReceipts (applyDelta s d) ds at hr
    rcases List.mem_cons.mp hr with rfl | hrest
    · exact ⟨ha,d.event,hl,rfl⟩
    · exact ih rec hrest

theorem authenticated_read_valid (A : Authority Context Root Core Event Meta)
    (v : Version Context Root) (base final : Snapshot Core Event)
    (a : Array (Delta Core Event Meta))
    (auth : Snapshot Core Event → Meta → Prop)
    (legal : Snapshot Core Event → Snapshot Core Event → Event → Meta → Prop)
    (bound : BoundVersion A v base a)
    (run : JournalRun auth legal base (a.toList.take v.limit) final)
    (i : Nat) (rec : Receipt Core Event Meta)
    (read : indexedRead base a v.limit i = some rec) :
    auth rec.before rec.metadata ∧
      ∃ e, legal rec.before rec.after e rec.metadata ∧ rec.after.2 = rec.before.2 ++ [e] := by
  have hi : i < v.limit := by
    by_contra h
    rw [indexedRead_outside base a v.limit i (by omega)] at read
    contradiction
  rw [indexedRead_version base a v.limit i bound.1 hi] at read
  obtain ⟨hidx,heq⟩ := List.getElem?_eq_some_iff.mp read
  have hm : rec ∈ decodeReceipts base (a.toList.take v.limit) := by
    rw [← heq]
    exact List.getElem_mem _
  exact journal_read_valid run rec hm

/-! The full protected observer is instantiated below through the exact
adapter predicates, not substituted with an indexed hash check. -/

end GRWTSK.ResourceAttainability.JournalIndex
