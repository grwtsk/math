/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.Skelet17HeadRelativeReturn
import Mathlib.Tactic

/-!
# Skelet #17: canonical finite-support tape models every zipper cell

This proves the `CanonicalModels` obligation from the actual `onesOfLeftWord`,
`lowerLeftWord`, `atLeft`, `encodePhysical`, and `ZipperModels` definitions.
There is no redefinition of the physical machine or its canonical encoder.

The mathematical mechanism is a reversal identity: a word placed on successive
integer positions ending at position zero reads as that word reversed when
examined from the scanning head toward the left. The first symbol of the word
starts at `1 - word.length`. The support is empty beyond either endpoint;
implicit zeros therefore agree everywhere, not just on a bounded observation.

Source: Coq-BB5 `CoqBB5/BB5/BB5_Skelet17.v`, Chris Xu's proof, repository
ccz181078/Coq-BB5@9142e219229baf2245d3f70851947230ea28a318.
Independent checking and Lean kernel acceptance: NOT_RUN. No theorem about the
remaining macro-return constructor completeness is inferred here.
-/
set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17

private theorem nearBit_head_zero (xs : List Bool) :
    nearBit xs 0 = xs.headD false := by
  cases xs <;> rfl

private theorem nearBit_tail_succ (xs : List Bool) (n : ℕ) :
    nearBit xs.tail n = nearBit xs (n + 1) := by
  cases xs <;> rfl

/-- The physical list support contains no bit strictly before its start. -/
private theorem leftWord_below :
    ∀ (xs : List Bool) (start pos : ℤ),
      pos < start → pos ∉ onesOfLeftWord xs start := by
  intro xs
  induction xs with
  | nil =>
      intro start pos _
      simp [onesOfLeftWord]
  | cons b xs ih =>
      intro start pos hp
      have hne : pos ≠ start := by omega
      have ht : pos ∉ onesOfLeftWord xs (start + 1) :=
        ih (start + 1) pos (by omega)
      cases b with
      | false => simpa [onesOfLeftWord] using ht
      | true => simp [onesOfLeftWord, hne, ht]

/-- No left-word symbol occurs beyond the last occupied *possible* slot. -/
private theorem leftWord_above :
    ∀ (xs : List Bool) (start pos : ℤ),
      start + (xs.length : ℤ) ≤ pos →
        pos ∉ onesOfLeftWord xs start := by
  intro xs
  induction xs with
  | nil =>
      intro start pos _
      simp [onesOfLeftWord]
  | cons b xs ih =>
      intro start pos hp
      have hne : pos ≠ start := by
        simp only [List.length_cons] at hp
        omega
      have ht : pos ∉ onesOfLeftWord xs (start + 1) :=
        ih (start + 1) pos (by
          simp only [List.length_cons] at hp
          omega)
      cases b with
      | false => simpa [onesOfLeftWord] using ht
      | true => simp [onesOfLeftWord, hne, ht]

/-- Appending a final symbol does not alter earlier near-boundary indices. -/
private theorem nearBit_append_before
    (xs : List Bool) (b : Bool) (n : ℕ) (h : n < xs.length) :
    nearBit (xs ++ [b]) n = nearBit xs n := by
  induction xs generalizing n with
  | nil => simp at h
  | cons x xs ih =>
      cases n with
      | zero => rfl
      | succ n =>
          have hn : n < xs.length := by simpa using h
          simpa [nearBit] using ih n hn

private theorem nearBit_append_at (xs : List Bool) (b : Bool) :
    nearBit (xs ++ [b]) xs.length = b := by
  induction xs with
  | nil => rfl
  | cons x xs ih => simpa [nearBit] using ih

private theorem nearBit_append_after
    (xs : List Bool) (b : Bool) (n : ℕ) (h : xs.length < n) :
    nearBit (xs ++ [b]) n = false := by
  induction xs generalizing n with
  | nil =>
      cases n with
      | zero => omega
      | succ n => cases n <;> rfl
  | cons x xs ih =>
      cases n with
      | zero => omega
      | succ n =>
          have hn : xs.length < n := by simpa using h
          simpa [nearBit] using ih n hn

/-- The exact word/tape comparison for ALL near-head offsets, including
outside the finite word's support. The emitted word is never trimmed. -/
private theorem leftWord_near :
    ∀ (xs : List Bool) (n : ℕ),
      decide (-(n : ℤ) ∈
        onesOfLeftWord xs (1 - (xs.length : ℤ))) =
        nearBit xs.reverse n := by
  intro xs
  induction xs with
  | nil => intro n; simp [onesOfLeftWord, nearBit]
  | cons b xs ih =>
      intro n
      have hstart : 1 - ((b :: xs).length : ℤ) = -(xs.length : ℤ) := by
        simp only [List.length_cons, Nat.cast_add, Nat.cast_one]
        omega
      have hshift : -(xs.length : ℤ) + 1 =
          1 - (xs.length : ℤ) := by omega
      have hdef :
          onesOfLeftWord (b :: xs) (1 - ((b :: xs).length : ℤ)) =
            if b then insert (-(xs.length : ℤ))
              (onesOfLeftWord xs (1 - (xs.length : ℤ)))
            else onesOfLeftWord xs (1 - (xs.length : ℤ)) := by
        rw [hstart]
        simp only [onesOfLeftWord, hshift]
      by_cases hn : n < xs.length
      · have hne : -(n : ℤ) ≠ -(xs.length : ℤ) := by omega
        have hval :
            decide (-(n : ℤ) ∈
              onesOfLeftWord (b :: xs) (1 - ((b :: xs).length : ℤ))) =
              decide (-(n : ℤ) ∈
                onesOfLeftWord xs (1 - (xs.length : ℤ))) := by
          rw [hdef]
          cases b <;> simp [hne]
        rw [hval, ih n]
        have happend := nearBit_append_before xs.reverse b n (by simpa using hn)
        simpa [List.reverse_cons] using happend.symm
      · by_cases heq : n = xs.length
        · subst n
          have hbelow : -(xs.length : ℤ) ∉
              onesOfLeftWord xs (1 - (xs.length : ℤ)) :=
            leftWord_below xs _ _ (by omega)
          have hval :
              decide (-(xs.length : ℤ) ∈
                onesOfLeftWord (b :: xs)
                  (1 - ((b :: xs).length : ℤ))) = b := by
            rw [hdef]
            cases b <;> simp [hbelow]
          rw [hval]
          have hAt := nearBit_append_at xs.reverse b
          simpa [List.reverse_cons] using hAt.symm
        · have hn' : xs.length < n := by omega
          have hbelow : -(n : ℤ) ∉
              onesOfLeftWord xs (1 - (xs.length : ℤ)) :=
            leftWord_below xs _ _ (by omega)
          have hne : -(n : ℤ) ≠ -(xs.length : ℤ) := by omega
          have hval :
              decide (-(n : ℤ) ∈
                onesOfLeftWord (b :: xs)
                  (1 - ((b :: xs).length : ℤ))) = false := by
            rw [hdef]
            cases b <;> simp [hne, hbelow]
          rw [hval]
          have hAfter := nearBit_append_after xs.reverse b n (by simpa using hn')
          simpa [List.reverse_cons] using hAfter.symm

/-- The canonical Coq-style encoded source models the exact `atLeft` zipper
on EVERY integer tape cell. This discharges the first explicit port predicate. -/
theorem canonicalModels_all (u : MacroState) : CanonicalModels u := by
  let w : List Bool := lowerLeftWord ((u.1 - 1) :: u.2)
  change ZipperModels (atLeft .C w [])
    { control := .C, head := 0,
      ones := onesOfLeftWord w (1 - (w.length : ℤ)) }
  refine ⟨rfl, ?_, ?_, ?_⟩
  · change w.reverse.headD false =
      decide ((0 : ℤ) ∈ onesOfLeftWord w (1 - (w.length : ℤ)))
    simpa [nearBit_head_zero] using (leftWord_near w 0).symm
  · intro n
    change nearBit w.reverse.tail n =
      decide (-(n : ℤ) - 1 ∈
        onesOfLeftWord w (1 - (w.length : ℤ)))
    rw [nearBit_tail_succ]
    have hpos : -(n : ℤ) - 1 = -(((n + 1 : ℕ) : ℤ)) := by
      push_cast
      omega
    rw [hpos]
    exact (leftWord_near w (n + 1)).symm
  · intro n
    have hfar : ((n : ℤ) + 1) ∉
        onesOfLeftWord w (1 - (w.length : ℤ)) :=
      leftWord_above w _ _ (by omega)
    change nearBit ([] : List Bool) n =
      decide ((n : ℤ) + 1 ∈ onesOfLeftWord w (1 - (w.length : ℤ)))
    simp [nearBit, hfar]

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17
