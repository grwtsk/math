# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.BoundedWordPartitions

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38c1cead3ac1680d2f925bda36bc940d8d0b3648` · SHA-256 `12e6ecacf4f44d8c094f5d5aaff96c903931102386469917067190a8682374b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.List.TakeDrop

/-!
# Finite, ordered shards

This model uses positive file-count capacities. It proves exact reconstruction,
including repeated occurrences, rather than set equality. The Rust greedy
byte-budget algorithm and filesystem operations require separate refinement.
-/

namespace GRWTSK.BoundedShards

variable {α : Type*}

/-- Fuel makes the finite procedure total even for hostile callers. -/
def chunks (width : Nat) : Nat → List α → List (List α)
  | 0, _ => []
  | _ + 1, [] => []
  | fuel + 1, x :: xs =>
      (x :: xs).take (width + 1) :: chunks width fuel ((x :: xs).drop (width + 1))

/-- Sufficient fuel prevents truncation. Width zero means capacity one. -/
theorem flatten_chunks (width fuel : Nat) (xs : List α) (h : xs.length ≤ fuel) :
    (chunks width fuel xs).flatten = xs := by
  induction fuel generalizing xs with
  | zero =>
      have : xs = [] := List.length_eq_zero_iff.mp (by omega)
      simp [this, chunks]
  | succ fuel ih =>
      cases xs with
      | nil => simp [chunks]
      | cons x xs =>
          have hd : ((x :: xs).drop (width + 1)).length ≤ fuel := by
            simp only [List.length_drop, List.length_cons]
            simp only [List.length_cons] at h
            omega
          simp only [chunks, List.flatten_cons, ih _ hd]
          exact List.take_append_drop (width + 1) (x :: xs)

/-- The public operation always supplies sufficient fuel. -/
def shard (width : Nat) (xs : List α) : List (List α) := chunks width xs.length xs

theorem flatten_shard (width : Nat) (xs : List α) : (shard width xs).flatten = xs :=
  flatten_chunks width xs.length xs (Nat.le_refl _)

theorem chunks_length_le (width fuel : Nat) (xs : List α) :
    (chunks width fuel xs).length ≤ fuel := by
  induction fuel generalizing xs with
  | zero => simp [chunks]
  | succ fuel ih =>
      cases xs with
      | nil => simp [chunks]
      | cons x xs =>
          simp only [chunks, List.length_cons]
          exact Nat.succ_le_succ (ih _)

theorem shard_count_le (width : Nat) (xs : List α) :
    (shard width xs).length ≤ xs.length := chunks_length_le width xs.length xs

theorem member_chunks_length_le (width fuel : Nat) (xs part : List α)
    (h : part ∈ chunks width fuel xs) : part.length ≤ width + 1 := by
  induction fuel generalizing xs with
  | zero => simp [chunks] at h
  | succ fuel ih =>
      cases xs with
      | nil => simp [chunks] at h
      | cons x xs =>
          simp only [chunks, List.mem_cons] at h
          rcases h with rfl | h
          · exact List.length_take_le _ _
          · exact ih _ h

theorem member_shard_length_le (width : Nat) (xs part : List α)
    (h : part ∈ shard width xs) : part.length ≤ width + 1 :=
  member_chunks_length_le width xs.length xs part h

theorem member_chunks_ne_nil (width fuel : Nat) (xs part : List α)
    (h : part ∈ chunks width fuel xs) : part ≠ [] := by
  induction fuel generalizing xs with
  | zero => simp [chunks] at h
  | succ fuel ih =>
      cases xs with
      | nil => simp [chunks] at h
      | cons x xs =>
          simp only [chunks, List.mem_cons] at h
          rcases h with rfl | h
          · simp
          · exact ih _ h

theorem member_shard_ne_nil (width : Nat) (xs part : List α)
    (h : part ∈ shard width xs) : part ≠ [] :=
  member_chunks_ne_nil width xs.length xs part h

/-- List equality proves both occurrence order and multiplicity, for every key. -/
theorem count_flatten_shard [DecidableEq α] (width : Nat) (xs : List α) (a : α) :
    ((shard width xs).flatten).count a = xs.count a := by rw [flatten_shard]

/-- Repartitioning never changes the history, even when capacities differ. -/
theorem repartition (first second : Nat) (xs : List α) :
    (shard first xs).flatten = (shard second xs).flatten := by
  rw [flatten_shard, flatten_shard]

/-- A declared natural resource measure; no machine-integer wraparound is modeled. -/
def cost (weight : α → Nat) : List α → Nat
  | [] => 0
  | x :: xs => weight x + cost weight xs

theorem cost_le_length_mul (weight : α → Nat) (bound : Nat) (xs : List α)
    (h : ∀ x ∈ xs, weight x ≤ bound) : cost weight xs ≤ xs.length * bound := by
  induction xs with
  | nil => simp [cost]
  | cons x xs ih =>
      have hx : weight x ≤ bound := h x (by simp)
      have ht : ∀ y ∈ xs, weight y ≤ bound := by
        intro y hy
        exact h y (by simp [hy])
      calc
        cost weight (x :: xs) ≤ bound + xs.length * bound := Nat.add_le_add hx (ih ht)
        _ = (x :: xs).length * bound := by simp [Nat.succ_mul, Nat.add_comm]

/-- Conservative file and byte bounds compose when every item fits its quota.
This is an alternative safe strategy, not a refinement of Rust's greedy splitter. -/
theorem member_shard_cost_le (weight : α → Nat) (width itemBound budget : Nat)
    (xs part : List α) (hpart : part ∈ shard width xs)
    (hitem : ∀ x ∈ xs, weight x ≤ itemBound)
    (hbudget : (width + 1) * itemBound ≤ budget) : cost weight part ≤ budget := by
  have hp : ∀ x ∈ part, weight x ≤ itemBound := by
    intro x hx
    have hm : x ∈ (shard width xs).flatten := List.mem_flatten.mpr ⟨part, hpart, hx⟩
    rw [flatten_shard] at hm
    exact hitem x hm
  calc
    cost weight part ≤ part.length * itemBound := cost_le_length_mul weight itemBound part hp
    _ ≤ (width + 1) * itemBound := Nat.mul_le_mul_right itemBound (member_shard_length_le width xs part hpart)
    _ ≤ budget := hbudget

example : shard 1 ([3, 3, 7] : List Nat) = [[3, 3], [7]] := rfl
example : shard 0 ([3, 3, 7] : List Nat) = [[3], [3], [7]] := rfl
/-- Insufficient fuel really loses data; the reconstruction premise is necessary. -/
example : (chunks 0 0 ([3] : List Nat)).flatten ≠ [3] := by decide

end GRWTSK.BoundedShards
```
