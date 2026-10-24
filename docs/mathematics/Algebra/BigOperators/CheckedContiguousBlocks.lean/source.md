# Complete source: GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c80255057572b900ca12d55a3b42d8162c217e1c` · SHA-256 `faf159ff23acb3e2af3cd0817394b6c29049f593697136260a3fe9a3203a521e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.List.GetD
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact finite predicates and signed sums over contiguous blocks

Block starts are cumulative lengths, not externally chosen offsets. Every cell
predicate and every local integer is recomputed. `Pieces` is a proposition about
those computations, not a list of supplied success flags. No execution machinery
or resource bound is introduced. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks

open scoped BigOperators

/-- All consumed indices are start,...,start+count-1. -/
def allRange (test : ℕ → Bool) (start : ℕ) : ℕ → Bool
  | 0 => true
  | count+1 => allRange test start count && test (start+count)

def sumRange (term : ℕ → ℤ) (start : ℕ) : ℕ → ℤ
  | 0 => 0
  | count+1 => sumRange term start count + term (start+count)

theorem allRange_iff (test : ℕ → Bool) (start count : ℕ) :
    allRange test start count = true ↔ ∀ j, j < count → test (start+j) = true := by
  induction count with
  | zero => simp [allRange]
  | succ count ih =>
      rw [allRange, Bool.and_eq_true, ih]
      constructor
      · rintro ⟨h,hlast⟩ j hj
        by_cases he : j = count
        · simpa only [he] using hlast
        · exact h j (by omega)
      · intro h
        exact ⟨fun j hj => h j (by omega), h count (by omega)⟩

theorem sumRange_eq_finset (term : ℕ → ℤ) (start count : ℕ) :
    sumRange term start count = ∑ j ∈ Finset.range count, term (start+j) := by
  induction count with
  | zero => simp [sumRange]
  | succ count ih => simp only [sumRange, Finset.sum_range_succ, ih]

theorem allRange_add (test : ℕ → Bool) (start a b : ℕ) :
    allRange test start (a+b) = allRange test start a && allRange test (start+a) b := by
  induction b with
  | zero => simp [allRange]
  | succ b ih => simp only [Nat.add_succ, allRange, ih, Bool.and_assoc, Nat.add_assoc]

theorem sumRange_add (term : ℕ → ℤ) (start a b : ℕ) :
    sumRange term start (a+b) = sumRange term start a + sumRange term (start+a) b := by
  induction b with
  | zero => simp [sumRange]
  | succ b ih => simp only [Nat.add_succ, sumRange, ih, add_assoc]

theorem allRange_congr {f g : ℕ → Bool} (start count : ℕ)
    (h : ∀ j, j < count → f (start+j) = g (start+j)) :
    allRange f start count = allRange g start count := by
  have he : allRange f start count = true ↔ allRange g start count = true := by
    constructor
    · intro hf
      apply (allRange_iff _ _ _).mpr
      intro j hj
      rw [← h j hj]
      exact (allRange_iff _ _ _).mp hf j hj
    · intro hg
      apply (allRange_iff _ _ _).mpr
      intro j hj
      rw [h j hj]
      exact (allRange_iff _ _ _).mp hg j hj
  cases hf : allRange f start count <;> cases hg : allRange g start count <;> simp_all

theorem sumRange_congr {f g : ℕ → ℤ} (start count : ℕ)
    (h : ∀ j, j < count → f (start+j) = g (start+j)) :
    sumRange f start count = sumRange g start count := by
  rw [sumRange_eq_finset,sumRange_eq_finset]
  exact Finset.sum_congr rfl (fun j hj => h j (Finset.mem_range.mp hj))

/-- Local signed contribution on an OPEN chain of cells, not a closed-loop winding. -/
def chunk (test : ℕ → Bool) (term : ℕ → ℤ) (start count : ℕ) : Option ℤ :=
  if allRange test start count then some (sumRange term start count) else none

theorem chunk_eq_some_iff (test : ℕ → Bool) (term : ℕ → ℤ) (start count : ℕ) (k : ℤ) :
    chunk test term start count = some k ↔
      allRange test start count = true ∧ sumRange term start count = k := by
  by_cases h : allRange test start count = true <;> simp [chunk,h]

/-- Empty/oversized blocks and incorrect exhaustion are rejected independently
of every local predicate. A cap bounds cell count, not evaluation cost. -/
def Partition (n cap : ℕ) (widths : List ℕ) : Prop :=
  0 < n ∧ 0 < cap ∧ widths ≠ [] ∧ widths.sum = n ∧
    ∀ w ∈ widths, 0 < w ∧ w ≤ cap

instance partitionDecidable (n cap : ℕ) (widths : List ℕ) :
    Decidable (Partition n cap widths) := by unfold Partition; infer_instance

def partition (n cap : ℕ) (widths : List ℕ) : Bool := decide (Partition n cap widths)

theorem partition_iff (n cap : ℕ) (widths : List ℕ) :
    partition n cap widths = true ↔ Partition n cap widths := by simp [partition]

/-- Check each claimed local sum, not just their final cancellation. Lengths
advance the cursor exactly once, so omitted, duplicated or overlapping indices
cannot be chosen by a claimed block identifier. -/
def verify (test : ℕ → Bool) (term : ℕ → ℤ) : ℕ → List ℕ → List ℤ → Bool
  | _, [], [] => true
  | start, w::ws, k::ks =>
      allRange test start w &&
        (decide (sumRange term start w = k) && verify test term (start+w) ws ks)
  | _, _, _ => false

/-- Proof obligations for separate local reductions; not assertions that any
such reduction has been performed or accepted. -/
def Pieces (test : ℕ → Bool) (term : ℕ → ℤ) : ℕ → List ℕ → List ℤ → Prop
  | _, [], [] => True
  | start, w::ws, k::ks =>
      chunk test term start w = some k ∧ Pieces test term (start+w) ws ks
  | _, _, _ => False

theorem verify_iff_pieces (test : ℕ → Bool) (term : ℕ → ℤ)
    (start : ℕ) (widths : List ℕ) (claims : List ℤ) :
    verify test term start widths claims = true ↔ Pieces test term start widths claims := by
  induction widths generalizing start claims with
  | nil => cases claims <;> simp [verify,Pieces]
  | cons w ws ih =>
      cases claims with
      | nil => simp [verify,Pieces]
      | cons k ks =>
          simp only [verify,Pieces,Bool.and_eq_true,decide_eq_true_eq,
            chunk_eq_some_iff,ih,and_assoc]

/-- Acceptance supplies both complete cell coverage and the exact signed total. -/
theorem verify_sound {test : ℕ → Bool} {term : ℕ → ℤ}
    {start : ℕ} {widths : List ℕ} {claims : List ℤ}
    (h : verify test term start widths claims = true) :
    claims.length = widths.length ∧ allRange test start widths.sum = true ∧
      sumRange term start widths.sum = claims.sum := by
  induction widths generalizing start claims with
  | nil => cases claims <;> simp_all [verify,allRange,sumRange]
  | cons w ws ih =>
      cases claims with
      | nil => simp [verify] at h
      | cons k ks =>
          have hh : allRange test start w = true ∧ sumRange term start w = k ∧
              verify test term (start+w) ws ks = true := by
            simpa only [verify,Bool.and_eq_true,decide_eq_true_eq] using h
          obtain ⟨hlen,hall,hsum⟩ := ih hh.2.2
          refine ⟨by simpa using hlen, ?_, ?_⟩
          · simp only [List.sum_cons,allRange_add,hh.1,hall,Bool.true_and]
          · simp only [List.sum_cons,sumRange_add,hh.2.1,hsum]

/-- Canonical summaries are computed from the fixed term function, not labels. -/
def totals (term : ℕ → ℤ) : ℕ → List ℕ → List ℤ
  | _, [] => []
  | start, w::ws => sumRange term start w :: totals term (start+w) ws

theorem totals_sum (term : ℕ → ℤ) (start : ℕ) (widths : List ℕ) :
    (totals term start widths).sum = sumRange term start widths.sum := by
  induction widths generalizing start with
  | nil => simp [totals,sumRange]
  | cons w ws ih => simp only [totals,List.sum_cons,ih,sumRange_add]

theorem verify_totals (test : ℕ → Bool) (term : ℕ → ℤ) (start : ℕ) (widths : List ℕ) :
    verify test term start widths (totals term start widths) = allRange test start widths.sum := by
  induction widths generalizing start with
  | nil => simp [verify,totals,allRange]
  | cons w ws ih => simp [verify,totals,ih,allRange_add]

/-- Decomposition is an equivalence, not a weaker test with a missing suffix. -/
theorem exists_pieces_iff (test : ℕ → Bool) (term : ℕ → ℤ)
    (start : ℕ) (widths : List ℕ) (k : ℤ) :
    (∃ claims, Pieces test term start widths claims ∧ claims.sum = k) ↔
      allRange test start widths.sum = true ∧ sumRange term start widths.sum = k := by
  constructor
  · rintro ⟨claims,hp,hk⟩
    have hv := (verify_iff_pieces _ _ _ _ _).mpr hp
    have hs := verify_sound hv
    exact ⟨hs.2.1,hs.2.2.trans hk⟩
  · rintro ⟨hall,hsum⟩
    refine ⟨totals term start widths, ?_, ?_⟩
    · apply (verify_iff_pieces _ _ _ _ _).mp
      simpa only [verify_totals] using hall
    · exact (totals_sum term start widths).trans hsum

end GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
```
