/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.Skelet17TapeRepeaterInduction

/-!
# Skelet #17: canonical word equations for arbitrary list-state returns

These are literal finite-word identities for the source `lowerL` encoding,
not an equality between absolute-head physical configurations. The source is
Chris Xu, Coq-BB5, `BB5_Skelet17.v` (ccz181078/Coq-BB5 at
9142e219229baf2245d3f70851947230ea28a318), especially
`lowerL_merge`, `shift10`, and the Zero/Overflow/Increment returns.

The key identity prices every positive block: if the base left-hand word has
one final `10` pair, transporting a nonempty positive prefix shifts that pair
through the prefix and reduces the first exponent by one. The full source
word, not just its parity, is preserved. No physical-TM return follows from
these algebraic identities without the separately proved zipper path.
-/
set_option autoImplicit false
namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17

/-- `positiveBlockWrites` is a word monoid homomorphism. -/
theorem positiveBlockWrites_append (xs ys : List ℕ) :
    positiveBlockWrites (xs ++ ys) =
      positiveBlockWrites xs ++ positiveBlockWrites ys := by
  induction xs with
  | nil => rfl
  | cons x xs ih =>
      simp [positiveBlockWrites, ih, List.append_assoc]

/-- One positive block consumes one `10` from the leading carry.
For any list of positive exponents, the same carry reaches the far end. -/
theorem carry_through_positive_blocks :
    ∀ xs : List ℕ, (∀ x ∈ xs, 0 < x) →
      [true, false] ++ rightBlocks xs =
        positiveBlockWrites xs ++ [true, false] := by
  intro xs
  induction xs with
  | nil => intro _; rfl
  | cons x xs ih =>
      intro hx
      have hx0 : 0 < x := hx x (by simp)
      have hxs : ∀ y ∈ xs, 0 < y := by
        intro y hy
        exact hx y (by simp [hy])
      have hs := ih hxs
      obtain ⟨n, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (by omega : x ≠ 0)
      simp only [rightBlocks, positiveBlockWrites]
      calc
        [true, false] ++
            (true :: (repeatedTen (n + 1) ++ rightBlocks xs)) =
          ([true, false, true] ++ repeatedTen n) ++
            ([true, false] ++ rightBlocks xs) := by
              simp [repeatedTen_succ_right, List.append_assoc]
        _ = ([true, false, true] ++ repeatedTen n) ++
              (positiveBlockWrites xs ++ [true, false]) := by rw [hs]
        _ = ([true, false, true] ++ repeatedTen n) ++
              positiveBlockWrites xs ++ [true, false] := by
                simp [List.append_assoc]

/-- Prepending a list of blocks to a NONEMPTY source suffix adds its block
encoding in reverse order, retaining separators and zero-exponent blocks. -/
theorem lowerLeftWord_append_rightBlocks :
    ∀ (xs tail : List ℕ), tail ≠ [] →
      lowerLeftWord (xs ++ tail) =
        lowerLeftWord tail ++ rightBlocks xs.reverse := by
  intro xs
  induction xs with
  | nil =>
      intro tail _
      simp [rightBlocks]
  | cons x xs ih =>
      intro tail htail
      have hnonempty : xs ++ tail ≠ [] := by
        intro he
        have : tail = [] := by
          cases xs <;> simp_all
        exact htail this
      have hstep := lowerLeftWord_cons_nonempty x (xs ++ tail) hnonempty
      rw [List.cons_append, hstep, ih tail htail]
      simp [List.reverse_cons, rightBlocks_append, rightBlocks, List.append_assoc]

/-- A positive prefix transports one final `10` pair without losing any
block count or separator. -/
theorem lowerLeftWord_positive_prefix
    (xs tail : List ℕ) (base : List Bool)
    (htail : tail ≠ [])
    (hbase : lowerLeftWord tail = base ++ [true, false])
    (hpos : ∀ x ∈ xs, 0 < x) :
    lowerLeftWord (xs ++ tail) =
      base ++ positiveBlockWrites xs.reverse ++ [true, false] := by
  rw [lowerLeftWord_append_rightBlocks xs tail htail, hbase]
  have hn : ∀ x ∈ xs.reverse, 0 < x := by
    intro x hx
    exact hpos x (List.mem_reverse.mp hx)
  have hc := carry_through_positive_blocks xs.reverse hn
  simpa [List.append_assoc] using
    congrArg (fun w : List Bool => base ++ w) hc

/-- Decrement the first (positive) exponent, restoring all remaining
positive blocks. This is the common endpoint identity in Coq's three returns. -/
theorem lowerLeftWord_decrement_first
    (head : ℕ) (xs tail : List ℕ) (base : List Bool)
    (hhead : 0 < head)
    (hxs : ∀ x ∈ xs, 0 < x)
    (htail : tail ≠ [])
    (hbase : lowerLeftWord tail = base ++ [true, false]) :
    lowerLeftWord ((head - 1) :: (xs ++ tail)) =
      base ++ positiveBlockWrites (head :: xs).reverse := by
  have hnonempty : xs ++ tail ≠ [] := by
    intro he
    have : tail = [] := by cases xs <;> simp_all
    exact htail this
  rw [lowerLeftWord_cons_nonempty (head - 1) (xs ++ tail) hnonempty]
  rw [lowerLeftWord_positive_prefix xs tail base htail hbase hxs]
  have hlast :
      positiveBlockWrites (xs.reverse ++ [head]) =
        positiveBlockWrites xs.reverse ++
          ([true, false, true] ++ repeatedTen (head - 1)) := by
    rw [positiveBlockWrites_append]
    rfl
  have hreverse : (head :: xs).reverse = xs.reverse ++ [head] := by simp
  rw [hreverse, hlast]
  simp [List.append_assoc]

/-- The Zero return appends two zero exponents and increments the terminal
block; the final `10` remains visible to the generic prefix lemma. -/
theorem zero_tail_word (y : ℕ) :
    lowerLeftWord [y + 1, 0, 0] =
      ([true, true] ++ repeatedTen y) ++ [true, false] := by
  simp [lowerLeftWord, repeatedTen_succ_right, List.append_assoc]

/-- In the even-prefix Increment case the next odd block changes the
farther exponent, with no dropped symbol at the base of the carry. -/
theorem increment_tail_word (n z : ℕ) (zs : List ℕ) :
    lowerLeftWord ((2 * n + 1) :: (z + 1) :: zs) =
      (lowerLeftWord (z :: zs) ++
        [true, false, true] ++ repeatedTen (2 * n)) ++ [true, false] := by
  rw [lowerLeftWord_cons_nonempty (2 * n + 1) ((z + 1) :: zs) (by simp)]
  rw [lowerLeftWord_increment z zs]
  rw [show 2 * n + 1 = 2 * n + 1 by omega, repeatedTen_add]
  simp [repeatedTen, List.append_assoc]

/-- The complete Overflow return contains a new `1` and two new zero
exponents, before propagation through the positive prefix. -/
theorem overflow_tail_word (y : ℕ) :
    lowerLeftWord [y + 1, 1, 0, 0] =
      ([true, true, true, false, true] ++ repeatedTen y) ++ [true, false] := by
  simp [lowerLeftWord, repeatedTen_succ_right, List.append_assoc]

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17
