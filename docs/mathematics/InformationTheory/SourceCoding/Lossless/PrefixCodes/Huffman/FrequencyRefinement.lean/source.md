# Complete source: GRWTSK.InformationTheory.Huffman.FrequencyRefinement

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a49b05f6ae675f709fac087ee6a5d6609cfe1ddd` · SHA-256 `8cc673fdf7e69326ab24f4d305af3cba09f5ee72998fdf18d51e44a86d925307`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.InformationTheory.Huffman.Builder
import GRWTSK.InformationTheory.Huffman.CheckedArithmetic

/-!
# Frequency-loop refinement

Rust `huffman::encode` and `huffman::decode` increment one frequency cell for
each byte. Python `_huffman_decode` increments its observed `counts` in the
same way. This module models that mutable-array loop extensionally: update the
selected byte coordinate and retain every other coordinate. It proves the
result equals the `List.count` table used by the concrete codec proofs.

These are natural-number loop laws. Whether Rust's checked addition succeeds
is handled separately by `CheckedArithmetic` and `Bounds`; no overflow or
compiler-correctness premise is silently attached to these declarations.
-/

namespace GRWTSK.InformationTheory.Huffman.FrequencyRefinement

def increment (weights : UInt8 → Nat) (byte : UInt8) : UInt8 → Nat :=
  fun a => if a = byte then weights a + 1 else weights a

def countLoop (source : List UInt8) (weights : UInt8 → Nat) : UInt8 → Nat :=
  source.foldl increment weights

/-- Exact invariant of the actual per-byte frequency update loop. -/
theorem countLoop_eq (source : List UInt8) (weights : UInt8 → Nat) (a : UInt8) :
    countLoop source weights a = weights a + frequencies source a := by
  induction source generalizing weights with
  | nil => simp [countLoop, frequencies]
  | cons byte source ih =>
    change countLoop source (increment weights byte) a = _
    rw [ih]
    by_cases h : a = byte
    · subst a
      simp [increment, frequencies, Nat.add_comm, Nat.add_left_comm]
    · have h' : byte ≠ a := Ne.symm h
      simp [increment, h, frequencies, List.count_cons_of_ne h']

/-- Starting from 256 zero cells computes the codec's exact histogram. -/
theorem countLoop_zero (source : List UInt8) :
    countLoop source (fun _ => 0) = frequencies source := by
  funext a
  simpa using countLoop_eq source (fun _ => 0) a

/-- Every intermediate cell is bounded by its initial value plus the number
of bytes already processed. This is the frequency-addition bound. -/
theorem countLoop_le (source : List UInt8) (weights : UInt8 → Nat) (a : UInt8) :
    countLoop source weights a ≤ weights a + source.length := by
  rw [countLoop_eq]
  exact Nat.add_le_add_left (List.count_le_length) _

/-- The success/refusal branch of Rust's selected-cell checked increment. -/
def checkedIncrement (weights : UInt8 → Nat) (byte : UInt8) : Option (UInt8 → Nat) :=
  if weights byte + 1 ≤ CheckedArithmetic.maxU64 then some (increment weights byte) else none

theorem checkedIncrement_succeeds_iff (weights : UInt8 → Nat) (byte : UInt8) :
    checkedIncrement weights byte = some (increment weights byte) ↔
      CheckedArithmetic.checkedSucc (weights byte) = some (weights byte + 1) := by
  simp [checkedIncrement, CheckedArithmetic.checkedSucc, CheckedArithmetic.checkedAdd]

def checkedCountLoop : List UInt8 → (UInt8 → Nat) → Option (UInt8 → Nat)
  | [], weights => some weights
  | byte :: source, weights =>
    match checkedIncrement weights byte with
    | none => none
    | some next => checkedCountLoop source next

private theorem increment_count (weights : UInt8 → Nat) (byte a : UInt8)
    (source : List UInt8) :
    increment weights byte a + frequencies source a =
      weights a + frequencies (byte :: source) a := by
  by_cases h : a = byte
  · subst a
    simp [increment, frequencies, Nat.add_comm, Nat.add_left_comm]
  · simp [increment, frequencies, h, List.count_cons_of_ne (Ne.symm h)]

theorem checkedCountLoop_agrees (source : List UInt8) (weights result : UInt8 → Nat)
    (success : checkedCountLoop source weights = some result) :
    result = countLoop source weights := by
  induction source generalizing weights with
  | nil => simpa [checkedCountLoop, countLoop] using success.symm
  | cons byte source ih =>
    by_cases step : weights byte + 1 ≤ CheckedArithmetic.maxU64
    · simp only [checkedCountLoop, checkedIncrement, if_pos step] at success
      exact ih _ success
    · simp [checkedCountLoop, checkedIncrement, step] at success

/-- A final-cell bound is sufficient for every checked increment in the loop;
the theorem does not require the stronger bound on total input length. -/
theorem checkedCountLoop_of_bound (source : List UInt8) (weights : UInt8 → Nat)
    (bound : ∀ a, weights a + frequencies source a ≤ CheckedArithmetic.maxU64) :
    checkedCountLoop source weights = some (countLoop source weights) := by
  induction source generalizing weights with
  | nil => rfl
  | cons byte source ih =>
    have step : weights byte + 1 ≤ CheckedArithmetic.maxU64 := by
      have hb := bound byte
      simp only [frequencies, List.count_cons_self] at hb
      omega
    have tailBound : ∀ a,
        increment weights byte a + frequencies source a ≤ CheckedArithmetic.maxU64 := by
      intro a
      rw [increment_count]
      exact bound a
    simpa only [checkedCountLoop, checkedIncrement, if_pos step, countLoop,
      List.foldl_cons] using ih (increment weights byte) tailBound

/-- Successful checked execution retains the 64-bit bound of every cell. -/
theorem checkedCountLoop_result_bound (source : List UInt8) (weights result : UInt8 → Nat)
    (initial : ∀ a, weights a ≤ CheckedArithmetic.maxU64)
    (success : checkedCountLoop source weights = some result) :
    ∀ a, result a ≤ CheckedArithmetic.maxU64 := by
  induction source generalizing weights with
  | nil =>
    have h : weights = result := by simpa [checkedCountLoop] using success
    simpa [← h] using initial
  | cons byte source ih =>
    by_cases step : weights byte + 1 ≤ CheckedArithmetic.maxU64
    · simp only [checkedCountLoop, checkedIncrement, if_pos step] at success
      apply ih (increment weights byte) ?_ success
      intro a
      by_cases h : a = byte
      · subst a; simpa [increment] using step
      · simpa [increment, h] using initial a
    · simp [checkedCountLoop, checkedIncrement, step] at success

/-- Exact success condition of the zero-initialized Rust histogram loop. -/
theorem checkedCountLoop_zero_iff (source : List UInt8) (result : UInt8 → Nat) :
    checkedCountLoop source (fun _ => 0) = some result ↔
      result = frequencies source ∧ ∀ a, frequencies source a ≤ CheckedArithmetic.maxU64 := by
  constructor
  · intro success
    have heq : result = frequencies source := by
      rw [checkedCountLoop_agrees source _ _ success, countLoop_zero]
    refine ⟨heq, ?_⟩
    rw [← heq]
    exact checkedCountLoop_result_bound source _ _ (by intro a; exact Nat.zero_le _) success
  · rintro ⟨rfl, bound⟩
    simpa only [countLoop_zero] using
      checkedCountLoop_of_bound source (fun _ => 0) (by simpa using bound)

theorem checkedCountLoop_zero_none_iff (source : List UInt8) :
    checkedCountLoop source (fun _ => 0) = none ↔
      ∃ a, CheckedArithmetic.maxU64 < frequencies source a := by
  constructor
  · intro failure
    apply Classical.byContradiction
    intro allBound
    have bound : ∀ a, frequencies source a ≤ CheckedArithmetic.maxU64 := by
      intro a
      by_cases h : frequencies source a ≤ CheckedArithmetic.maxU64
      · exact h
      · exact False.elim (allBound ⟨a, by omega⟩)
    have success := (checkedCountLoop_zero_iff source (frequencies source)).mpr ⟨rfl, bound⟩
    rw [failure] at success
    contradiction
  · rintro ⟨a, overflow⟩
    cases result : checkedCountLoop source (fun _ => 0) with
    | none => rfl
    | some table =>
      have bound := ((checkedCountLoop_zero_iff source table).mp result).2 a
      omega

end GRWTSK.InformationTheory.Huffman.FrequencyRefinement
```
