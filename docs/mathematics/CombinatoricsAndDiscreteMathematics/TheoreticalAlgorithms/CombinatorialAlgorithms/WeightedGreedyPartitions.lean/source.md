# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CombinatorialAlgorithms.WeightedGreedyPartitions

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c6ba06fa211b14107630531cf84f9deff978e22` · SHA-256 `2bb2fc5f2d77df85bb8b0dcc91fc0531f886d4e4739fec66cbde0157329a8b2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.List.TakeDrop

/-!
# Ordered greedy shard contracts

This transition mirrors the isolated Rust partitioner's pending/completed
branches, including zero-cost entries. Kernel checking establishes the stated
finite transition contracts. It does not by itself establish Rust parsing,
compiler correctness, allocator behavior, hashing, or filesystem correspondence.
-/

namespace GRWTSK.GreedyShards

variable {α : Type*}

def cost (weight : α → Nat) (xs : List α) : Nat := (xs.map weight).sum

theorem cost_nil (weight : α → Nat) : cost weight [] = 0 := rfl

theorem cost_append (weight : α → Nat) (xs ys : List α) :
    cost weight (xs ++ ys) = cost weight xs + cost weight ys := by
  simp [cost]

theorem cost_singleton (weight : α → Nat) (x : α) : cost weight [x] = weight x := by
  simp [cost]

structure State (α : Type*) where
  completed : List (List α)
  pending : List α
  bytes : Nat
deriving Repr, DecidableEq

def initial : State α := ⟨[], [], 0⟩

def history (s : State α) : List α := s.completed.flatten ++ s.pending

def splitBefore (files budget : Nat) (weight : α → Nat) (s : State α) (x : α) : Prop :=
  0 < s.pending.length ∧ (s.pending.length = files ∨ budget < s.bytes + weight x)

instance (files budget : Nat) (weight : α → Nat) (s : State α) (x : α) :
    Decidable (splitBefore files budget weight s x) := inferInstanceAs (Decidable (_ ∧ _))

def step (files budget : Nat) (weight : α → Nat) (s : State α) (x : α) : State α :=
  if splitBefore files budget weight s x then
    ⟨s.completed ++ [s.pending], [x], weight x⟩
  else
    ⟨s.completed, s.pending ++ [x], s.bytes + weight x⟩

def consume (files budget : Nat) (weight : α → Nat) : State α → List α → State α
  | s, [] => s
  | s, x :: xs => consume files budget weight (step files budget weight s x) xs

def finish (s : State α) : List (List α) :=
  if s.pending.isEmpty then s.completed else s.completed ++ [s.pending]

def partition (files budget : Nat) (weight : α → Nat) (xs : List α) : List (List α) :=
  finish (consume files budget weight initial xs)

def PartValid (files budget : Nat) (weight : α → Nat) (part : List α) : Prop :=
  part ≠ [] ∧ part.length ≤ files ∧ cost weight part ≤ budget

def Valid (files budget : Nat) (weight : α → Nat) (s : State α) : Prop :=
  s.pending.length ≤ files ∧ s.bytes = cost weight s.pending ∧ s.bytes ≤ budget ∧
    ∀ part ∈ s.completed, PartValid files budget weight part

theorem initial_valid (files budget : Nat) (weight : α → Nat) :
    Valid files budget weight (initial : State α) := by
  simp [Valid, initial, cost]

theorem step_history (files budget : Nat) (weight : α → Nat) (s : State α) (x : α) :
    history (step files budget weight s x) = history s ++ [x] := by
  unfold step
  split <;> simp [history, List.flatten_append, List.append_assoc]

theorem consume_history (files budget : Nat) (weight : α → Nat) (s : State α)
    (xs : List α) : history (consume files budget weight s xs) = history s ++ xs := by
  induction xs generalizing s with
  | nil => simp [consume]
  | cons x xs ih => simp [consume, ih, step_history, List.append_assoc]

theorem finish_history (s : State α) : (finish s).flatten = history s := by
  unfold finish
  split
  · rename_i h
    have hp : s.pending = [] := List.isEmpty_iff.mp h
    simp [history, hp]
  · simp [history, List.flatten_append]

/-- Exact list equality retains input order and repeated occurrences. -/
theorem flatten_partition (files budget : Nat) (weight : α → Nat) (xs : List α) :
    (partition files budget weight xs).flatten = xs := by
  rw [partition, finish_history, consume_history]
  rfl

theorem step_valid (files budget : Nat) (weight : α → Nat) (s : State α) (x : α)
    (positive : 0 < files) (fits : weight x ≤ budget)
    (valid : Valid files budget weight s) :
    Valid files budget weight (step files budget weight s x) := by
  rcases valid with ⟨hlen, hbytes, hbudget, hdone⟩
  unfold step
  split
  · rename_i hs
    rcases hs with ⟨hne, _⟩
    refine ⟨by simpa using (show 1 ≤ files by omega), ?_, fits, ?_⟩
    · simp [cost_singleton]
    · intro part hp
      simp only [List.mem_append, List.mem_singleton] at hp
      rcases hp with hp | rfl
      · exact hdone part hp
      · refine ⟨?_, hlen, ?_⟩
        · exact List.ne_nil_of_length_pos hne
        · omega
  · rename_i hs
    have hcount : s.pending.length + 1 ≤ files := by
      unfold splitBefore at hs
      omega
    have hsum : s.bytes + weight x ≤ budget := by
      by_cases hp : s.pending.length = 0
      · have hempty : s.pending = [] := List.length_eq_zero_iff.mp hp
        have hz : s.bytes = 0 := by simpa [hempty, cost] using hbytes
        omega
      · unfold splitBefore at hs
        omega
    refine ⟨?_, ?_, hsum, hdone⟩
    · simpa using hcount
    · simp only [cost_append, cost_singleton]
      exact congrArg (fun n => n + weight x) hbytes

theorem consume_valid (files budget : Nat) (weight : α → Nat) (s : State α)
    (xs : List α) (positive : 0 < files) (fits : ∀ x ∈ xs, weight x ≤ budget)
    (valid : Valid files budget weight s) :
    Valid files budget weight (consume files budget weight s xs) := by
  induction xs generalizing s with
  | nil => exact valid
  | cons x xs ih =>
      exact ih (step files budget weight s x)
        (fun y hy => fits y (by simp [hy]))
        (step_valid files budget weight s x positive (fits x (by simp)) valid)

theorem finish_valid (files budget : Nat) (weight : α → Nat) (s : State α)
    (valid : Valid files budget weight s) :
    ∀ part ∈ finish s, PartValid files budget weight part := by
  rcases valid with ⟨hlen, hbytes, hbudget, hdone⟩
  unfold finish
  split
  · exact hdone
  · rename_i hp
    intro part hpart
    simp only [List.mem_append, List.mem_singleton] at hpart
    rcases hpart with hpart | rfl
    · exact hdone part hpart
    · refine ⟨?_, hlen, ?_⟩
      · intro h
        simp [h] at hp
      · omega

/-- Actual greedy byte and file caps hold simultaneously, including zero costs. -/
theorem member_partition_valid (files budget : Nat) (weight : α → Nat) (xs part : List α)
    (positive : 0 < files) (fits : ∀ x ∈ xs, weight x ≤ budget)
    (member : part ∈ partition files budget weight xs) :
    PartValid files budget weight part :=
  finish_valid files budget weight _
    (consume_valid files budget weight initial xs positive fits (initial_valid files budget weight))
    part member

theorem member_partition_ne_nil (files budget : Nat) (weight : α → Nat) (xs part : List α)
    (positive : 0 < files) (fits : ∀ x ∈ xs, weight x ≤ budget)
    (member : part ∈ partition files budget weight xs) : part ≠ [] :=
  (member_partition_valid files budget weight xs part positive fits member).1

theorem member_partition_length_le (files budget : Nat) (weight : α → Nat) (xs part : List α)
    (positive : 0 < files) (fits : ∀ x ∈ xs, weight x ≤ budget)
    (member : part ∈ partition files budget weight xs) : part.length ≤ files :=
  (member_partition_valid files budget weight xs part positive fits member).2.1

theorem member_partition_cost_le (files budget : Nat) (weight : α → Nat) (xs part : List α)
    (positive : 0 < files) (fits : ∀ x ∈ xs, weight x ≤ budget)
    (member : part ∈ partition files budget weight xs) : cost weight part ≤ budget :=
  (member_partition_valid files budget weight xs part positive fits member).2.2

theorem count_flatten_partition [DecidableEq α] (files budget : Nat) (weight : α → Nat)
    (xs : List α) (x : α) :
    ((partition files budget weight xs).flatten).count x = xs.count x := by
  rw [flatten_partition]

def maxFiles : Nat := 1024
def maxBytes : Nat := 67108864
def u64Modulus : Nat := 18446744073709551616

/-- Both evaluated operands, before any possible split, fit without u64 wrap. -/
theorem profiled_sum_no_overflow (budget bytes next : Nat)
    (profile : budget ≤ maxBytes) (current : bytes ≤ budget) (item : next ≤ budget) :
    bytes + next < u64Modulus := by
  simp only [maxBytes, u64Modulus] at *
  omega

theorem profiled_count_no_overflow (files count : Nat)
    (profile : files ≤ maxFiles) (current : count ≤ files) : count + 1 < u64Modulus := by
  simp only [maxFiles, u64Modulus] at *
  omega

/-- This is the semantic equation needed when checked_add succeeds. -/
theorem profiled_u64_add_exact (budget bytes next : Nat)
    (profile : budget ≤ maxBytes) (current : bytes ≤ budget) (item : next ≤ budget) :
    (bytes + next) % u64Modulus = bytes + next :=
  Nat.mod_eq_of_lt (profiled_sum_no_overflow budget bytes next profile current item)

/-- The actual Lean fixed-width u64 operation agrees with natural addition on
the admitted range. This supplies arithmetic semantics, not a Rust compiler
correctness theorem. -/
theorem profiled_UInt64_add_exact (budget : Nat) (bytes next : UInt64)
    (profile : budget ≤ maxBytes) (current : bytes.toNat ≤ budget)
    (item : next.toNat ≤ budget) :
    (bytes + next).toNat = bytes.toNat + next.toNat := by
  rw [UInt64.toNat_add]
  exact profiled_u64_add_exact budget bytes.toNat next.toNat profile current item

/-- The exact scalar guards used by the production `sharding::step::advance`.
The last clause rejects a fabricated empty shard carrying a nonzero byte sum. -/
def ScalarGuard (count bytes next files budget : Nat) : Prop :=
  0 < files ∧ files ≤ maxFiles ∧ 0 < budget ∧ budget ≤ maxBytes ∧
    count ≤ files ∧ bytes ≤ budget ∧ next ≤ budget ∧ (count = 0 → bytes = 0)

instance (count bytes next files budget : Nat) :
    Decidable (ScalarGuard count bytes next files budget) :=
  inferInstanceAs (Decidable (_ ∧ _))

def scalarAdvance (count bytes next files budget : Nat) : Option (Bool × Nat × Nat) :=
  if ScalarGuard count bytes next files budget then
    if 0 < count ∧ (count = files ∨ budget < bytes + next) then
      some (true, 1, next)
    else
      some (false, count + 1, bytes + next)
  else none

theorem scalarAdvance_rejects_invalid (count bytes next files budget : Nat)
    (invalid : ¬ ScalarGuard count bytes next files budget) :
    scalarAdvance count bytes next files budget = none := by
  simp [scalarAdvance, invalid]

theorem scalarAdvance_accepts_iff (count bytes next files budget : Nat) :
    (∃ result, scalarAdvance count bytes next files budget = some result) ↔
      ScalarGuard count bytes next files budget := by
  by_cases guard : ScalarGuard count bytes next files budget
  · simp only [scalarAdvance, if_pos guard]
    split <;> simp [guard]
  · simp [scalarAdvance, guard]

/-- The checked source step and the list transition have the same scalar
observations whenever the finite-state invariant and resource profile hold. -/
theorem scalarAdvance_refines_step (files budget : Nat) (weight : α → Nat)
    (s : State α) (x : α) (positive : 0 < files) (fileProfile : files ≤ maxFiles)
    (budgetPositive : 0 < budget) (byteProfile : budget ≤ maxBytes)
    (fits : weight x ≤ budget) (valid : Valid files budget weight s) :
    scalarAdvance s.pending.length s.bytes (weight x) files budget =
      some (decide (splitBefore files budget weight s x),
        (step files budget weight s x).pending.length,
        (step files budget weight s x).bytes) := by
  rcases valid with ⟨hlen, hbytes, hbudget, _⟩
  have guard : ScalarGuard s.pending.length s.bytes (weight x) files budget := by
    refine ⟨positive, fileProfile, budgetPositive, byteProfile, hlen, hbudget, fits, ?_⟩
    intro hempty
    have hp : s.pending = [] := List.length_eq_zero_iff.mp hempty
    simpa [hp, cost] using hbytes
  unfold scalarAdvance
  rw [if_pos guard]
  change (if splitBefore files budget weight s x then some (true, 1, weight x)
    else some (false, s.pending.length + 1, s.bytes + weight x)) = _
  by_cases hs : splitBefore files budget weight s x <;> simp [step, hs]

/-- Every accepted scalar result fits both caps and every evaluated addition
fits u64; the formula includes additions evaluated before a split. -/
theorem scalarAdvance_sound (count bytes next files budget : Nat)
    (result : Bool × Nat × Nat)
    (accepted : scalarAdvance count bytes next files budget = some result) :
    0 < result.2.1 ∧ result.2.1 ≤ files ∧ result.2.2 ≤ budget ∧
      bytes + next < u64Modulus ∧ count + 1 < u64Modulus := by
  have guard : ScalarGuard count bytes next files budget :=
    (scalarAdvance_accepts_iff count bytes next files budget).mp ⟨result, accepted⟩
  rcases guard with ⟨hpositive, hfileProfile, _, hbyteProfile, hcount, hbytes, hnext, hempty⟩
  have hsum := profiled_sum_no_overflow budget bytes next hbyteProfile hbytes hnext
  have hindex := profiled_count_no_overflow files count hfileProfile hcount
  unfold scalarAdvance at accepted
  split at accepted
  · split at accepted
    · cases Option.some.inj accepted
      change 0 < 1 ∧ 1 ≤ files ∧ next ≤ budget ∧
        bytes + next < u64Modulus ∧ count + 1 < u64Modulus
      exact ⟨by decide, by omega, hnext, hsum, hindex⟩
    · rename_i hno
      cases Option.some.inj accepted
      simp only
      unfold ScalarGuard at *
      have hcountNext : count + 1 ≤ files := by omega
      have hsumNext : bytes + next ≤ budget := by
        by_cases hz : count = 0
        · have hb := hempty hz
          omega
        · omega
      exact ⟨by omega, hcountNext, hsumNext, hsum, hindex⟩
  · simp at accepted

theorem profiled_action_index_no_overflow (raw prepared index : Nat)
    (rawProfile : raw ≤ 100000) (preparedProfile : prepared ≤ 100000)
    (inRange : index < raw + prepared) : index < u64Modulus := by
  simp only [u64Modulus]
  omega

/-- A singleton that fits is always admitted without an empty leading shard. -/
theorem partition_singleton (files budget : Nat) (weight : α → Nat) (x : α) :
    partition files budget weight [x] = [[x]] := by
  simp [partition, consume, step, splitBefore, initial, finish]

/-- An empty input emits no shard even with hostile capacities. -/
theorem partition_nil (files budget : Nat) (weight : α → Nat) :
    partition files budget weight [] = [] := rfl

example : partition 2 1 id [0, 0, 0, 1, 0] = [[0, 0], [0, 1], [0]] := by decide
example : partition 4 2 id [2, 0, 0, 1] = [[2, 0, 0], [1]] := by decide
example : partition 2 2 id [2, 2] = [[2], [2]] := by decide
example : scalarAdvance 0 1 0 2 2 = none := by decide
example : scalarAdvance 2 0 0 2 2 = some (true, 1, 0) := by decide
example : scalarAdvance 1 2 0 4 2 = some (false, 2, 2) := by decide

end GRWTSK.GreedyShards
```
