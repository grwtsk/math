/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.Skelet17TapeMacroFamilies

/-!
# Skelet #17: source-shaped arbitrary-list Increment, Zero and Overflow

The source families are Chris Xu's Coq-BB5 `BB5_Skelet17.v` at
9142e219229baf2245d3f70851947230ea28a318. The Increment of a
head-nearest odd block was handled in `increment_odd_zipper`. The six cases
here handle the even-block and zero-head branches, with arbitrary positive
even middle lists, arbitrary remaining source suffix and unbounded exponents.

Each result is a labeled path for the original five-state transition table,
using generic repeated-10 and list inductions. The returned zipper has one
explicit exterior false bit. No synthetic `head=0` equality or source-to-
physical axiom is introduced. Translating these symbolic paths to canonical
PhysicalTape requires the separate all-cells ZipperModels representation
comparison and head-relative endpoint relation. Lean/kernel replay NOT_RUN.
-/
set_option autoImplicit false
namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage

/-- Nonzero/even middle blocks as in all three Coq constructors. -/
def EvenPositive (xs : List ℕ) : Prop :=
  ∀ x ∈ xs, x % 2 = 0 ∧ 0 < x

theorem EvenPositive.reverse {xs : List ℕ} (h : EvenPositive xs) :
    ∀ x ∈ xs.reverse, 0 < x := by
  intro x hx
  exact (h x (List.mem_reverse.mp hx)).2

theorem EvenPositive.even {xs : List ℕ} (h : EvenPositive xs) :
    ∀ x ∈ xs, x % 2 = 0 := by
  intro x hx
  exact (h x hx).1

/-- Coq `zero_S`: positive even first source exponent and even terminal y. -/
theorem zero_S_zipper (m n : ℕ) (xs : List ℕ)
    (hxs : EvenPositive xs) :
    ∃ bits : List Bool,
      WordPath ZipperEdge
        (atLeft .C (lowerLeftWord
          ((2 * (m + 1)) :: xs ++ [2 * n])) []) bits
        (atLeft .C (lowerLeftWord
          ((2 * (m + 1) - 1) :: xs ++ [2 * n + 1, 0, 0])) [false]) := by
  let x := 2 * (m + 1)
  let blocks := x :: xs
  have he : ∀ y ∈ blocks, y % 2 = 0 := by
    intro y hy
    simp only [blocks, List.mem_cons] at hy
    rcases hy with rfl | h
    · dsimp [x]; omega
    · exact hxs.even y h
  have hp : ∀ y ∈ blocks.reverse, 0 < y := by
    intro y hy
    have hm := List.mem_reverse.mp hy
    simp only [blocks, List.mem_cons] at hm
    rcases hm with rfl | h
    · dsimp [x]; omega
    · exact (hxs y h).2
  have p1 := goleft_even_blocks blocks [2 * n] [] he (by simp)
  obtain ⟨b, p2⟩ := zeroCore n blocks.reverse hp
  have p : WordPath ZipperEdge
      (atLeft .C (lowerLeftWord (blocks ++ [2 * n])) [])
      (evenBlockReads blocks ++ b)
      (atLeft .C ([true, true] ++ repeatedTen (2 * n) ++
        positiveBlockWrites blocks.reverse) [false]) := by
    have hmove : WordPath ZipperEdge
        (atLeft .C (lowerLeftWord (blocks ++ [2 * n])) [])
        (evenBlockReads blocks)
        (atLeft .C (repeatedTen (2 * n)) (rightBlocks blocks.reverse)) := by
      simpa [lowerLeftWord, rightBlocks_append] using p1
    exact zipperPath_append hmove p2
  have hbase := zero_tail_word (2 * n)
  have htarget := lowerLeftWord_decrement_first x xs
    [2 * n + 1, 0, 0]
    ([true, true] ++ repeatedTen (2 * n)) (by dsimp [x]; omega)
    (fun y h => (hxs y h).2) (by simp) hbase
  refine ⟨evenBlockReads blocks ++ b, ?_⟩
  simpa [blocks, x, List.append_assoc, htarget] using p

/-- Coq `zero_O`: a zero head-nearest exponent is removed by TryHalve. -/
theorem zero_O_zipper (n : ℕ) (xs : List ℕ)
    (hxs : EvenPositive xs) :
    ∃ bits : List Bool,
      WordPath ZipperEdge
        (atLeft .C (lowerLeftWord (0 :: xs ++ [2 * n])) []) bits
        (atLeft .C
          (lowerLeftWord (xs ++ [2 * n + 1, 0, 0])) [false]) := by
  have hfirst := goleft_separator (lowerLeftWord (xs ++ [2 * n])) []
  have hsrc : lowerLeftWord (0 :: xs ++ [2 * n]) =
      lowerLeftWord (xs ++ [2 * n]) ++ [true] := by
    rw [lowerLeftWord_cons_nonempty 0 (xs ++ [2 * n]) (by simp)]
    simp [repeatedTen]
  rw [← hsrc] at hfirst
  have hmove := goleft_even_blocks xs [2 * n] [0] hxs.even (by simp)
  have hjoin : WordPath ZipperEdge
      (atLeft .C (lowerLeftWord (xs ++ [2 * n])) [true])
      (evenBlockReads xs)
      (atLeft .C (repeatedTen (2 * n))
        (rightBlocks xs.reverse ++ [true])) := by
    simpa [rightBlocks_append, rightBlocks, lowerLeftWord] using hmove
  obtain ⟨b, hcore⟩ := zeroCoreWithZero n xs.reverse hxs.reverse
  have hp := zipperPath_append (zipperPath_append hfirst hjoin) hcore
  have htarget := lowerLeftWord_positive_prefix xs
    [2 * n + 1, 0, 0] ([true, true] ++ repeatedTen (2 * n))
    (by simp) (zero_tail_word (2 * n))
    (fun y h => (hxs y h).2)
  exact ⟨[true] ++ evenBlockReads xs ++ b, by
    simpa [htarget, List.append_assoc] using hp⟩

/-- Coq `increment_S_even`: first and intermediate even positive exponents. -/
theorem increment_S_even_zipper (m n z : ℕ) (xs zs : List ℕ)
    (hxs : EvenPositive xs) :
    ∃ bits : List Bool,
      WordPath ZipperEdge
        (atLeft .C (lowerLeftWord
          ((2 * (m + 1)) :: xs ++ (2 * n + 1) :: z :: zs)) []) bits
        (atLeft .C (lowerLeftWord
          ((2 * (m + 1) - 1) :: xs ++ (2 * n + 1) :: (z + 1) :: zs))
          [false]) := by
  let x := 2 * (m + 1)
  let blocks := x :: xs
  let tail := (2 * n + 1) :: z :: zs
  have he : ∀ y ∈ blocks, y % 2 = 0 := by
    intro y hy
    simp only [blocks, List.mem_cons] at hy
    rcases hy with rfl | h
    · dsimp [x]; omega
    · exact hxs.even y h
  have hp : ∀ y ∈ blocks.reverse, 0 < y := by
    intro y hy
    have hm := List.mem_reverse.mp hy
    simp only [blocks, List.mem_cons] at hm
    rcases hm with rfl | h
    · dsimp [x]; omega
    · exact (hxs y h).2
  have p1 := goleft_even_blocks blocks tail [] he (by simp [tail])
  obtain ⟨b, p2⟩ := incrementCore n (lowerLeftWord (z :: zs)) blocks.reverse hp
  have htail : lowerLeftWord tail = lowerLeftWord (z :: zs) ++
      [true] ++ repeatedTen (2 * n + 1) := by
    dsimp [tail]
    rw [lowerLeftWord_cons_nonempty (2 * n + 1) (z :: zs) (by simp)]
  have hmove : WordPath ZipperEdge
      (atLeft .C (lowerLeftWord (blocks ++ tail)) [])
      (evenBlockReads blocks)
      (atLeft .C
        (lowerLeftWord (z :: zs) ++ [true] ++ repeatedTen (2 * n + 1))
        (rightBlocks blocks.reverse)) := by
    simpa [htail, rightBlocks_append] using p1
  have hpfull := zipperPath_append hmove p2
  have hbase := increment_tail_word n z zs
  have htarget := lowerLeftWord_decrement_first x xs
    ((2 * n + 1) :: (z + 1) :: zs)
    (lowerLeftWord (z :: zs) ++ [true, false, true] ++
      repeatedTen (2 * n))
    (by dsimp [x]; omega) (fun y h => (hxs y h).2)
    (by simp) hbase
  refine ⟨evenBlockReads blocks ++ b, ?_⟩
  simpa [x, blocks, tail, List.append_assoc, htarget] using hpfull

/-- Coq `increment_O`: zero first exponent, arbitrary even-positive prefix. -/
theorem increment_O_zipper (n z : ℕ) (xs zs : List ℕ)
    (hxs : EvenPositive xs) :
    ∃ bits : List Bool,
      WordPath ZipperEdge
        (atLeft .C (lowerLeftWord
          (0 :: xs ++ (2 * n + 1) :: z :: zs)) []) bits
        (atLeft .C (lowerLeftWord
          (xs ++ (2 * n + 1) :: (z + 1) :: zs)) [false]) := by
  let tail := (2 * n + 1) :: z :: zs
  have hfirst := goleft_separator (lowerLeftWord (xs ++ tail)) []
  have hsrc : lowerLeftWord (0 :: xs ++ tail) =
      lowerLeftWord (xs ++ tail) ++ [true] := by
    rw [lowerLeftWord_cons_nonempty 0 (xs ++ tail) (by simp [tail])]
    simp [repeatedTen]
  rw [← hsrc] at hfirst
  have hmove := goleft_even_blocks xs tail [0] hxs.even (by simp [tail])
  have htail : lowerLeftWord tail = lowerLeftWord (z :: zs) ++
      [true] ++ repeatedTen (2 * n + 1) := by
    dsimp [tail]
    rw [lowerLeftWord_cons_nonempty (2 * n + 1) (z :: zs) (by simp)]
  have hjoin : WordPath ZipperEdge
      (atLeft .C (lowerLeftWord (xs ++ tail)) [true])
      (evenBlockReads xs)
      (atLeft .C
        (lowerLeftWord (z :: zs) ++ [true] ++ repeatedTen (2 * n + 1))
        (rightBlocks xs.reverse ++ [true])) := by
    simpa [htail, rightBlocks_append, rightBlocks] using hmove
  obtain ⟨b, hcore⟩ :=
    incrementCoreWithZero n (lowerLeftWord (z :: zs)) xs.reverse hxs.reverse
  have hpfull := zipperPath_append (zipperPath_append hfirst hjoin) hcore
  have htarget := lowerLeftWord_positive_prefix xs
    ((2 * n + 1) :: (z + 1) :: zs)
    (lowerLeftWord (z :: zs) ++ [true, false, true] ++
      repeatedTen (2 * n))
    (by simp) (increment_tail_word n z zs) (fun y h => (hxs y h).2)
  exact ⟨[true] ++ evenBlockReads xs ++ b, by
    simpa [tail, htarget, List.append_assoc] using hpfull⟩

/-- Coq `overflow_S` INCLUDING subsequent Zero and TryHalve. -/
theorem overflow_S_zipper (m n : ℕ) (xs : List ℕ)
    (hxs : EvenPositive xs) :
    ∃ bits : List Bool,
      WordPath ZipperEdge
        (atLeft .C (lowerLeftWord
          ((2 * (m + 1)) :: xs ++ [2 * n + 1])) []) bits
        (atLeft .C (lowerLeftWord
          ((2 * (m + 1) - 1) :: xs ++ [2 * n + 2, 1, 0, 0])) [false]) := by
  let x := 2 * (m + 1)
  let blocks := x :: xs
  have he : ∀ y ∈ blocks, y % 2 = 0 := by
    intro y hy
    simp only [blocks, List.mem_cons] at hy
    rcases hy with rfl | h
    · dsimp [x]; omega
    · exact hxs.even y h
  have hp : ∀ y ∈ blocks.reverse, 0 < y := by
    intro y hy
    have hm := List.mem_reverse.mp hy
    simp only [blocks, List.mem_cons] at hm
    rcases hm with rfl | h
    · dsimp [x]; omega
    · exact (hxs y h).2
  have p1 := goleft_even_blocks blocks [2 * n + 1] [] he (by simp)
  obtain ⟨b, p2⟩ := overflowCore n blocks.reverse hp (by simp [blocks])
  have hmove : WordPath ZipperEdge
      (atLeft .C (lowerLeftWord (blocks ++ [2 * n + 1])) [])
      (evenBlockReads blocks)
      (atLeft .C (repeatedTen (2 * n + 1))
        (rightBlocks blocks.reverse)) := by
    simpa [lowerLeftWord, rightBlocks_append] using p1
  have hpfull := zipperPath_append hmove p2
  have htarget := lowerLeftWord_decrement_first x xs
    [2 * n + 2, 1, 0, 0]
    ([true, true, true, false, true] ++ repeatedTen (2 * n + 1))
    (by dsimp [x]; omega) (fun y h => (hxs y h).2)
    (by simp) (overflow_tail_word (2 * n + 1))
  refine ⟨evenBlockReads blocks ++ b, ?_⟩
  simpa [blocks, x, htarget, List.append_assoc] using hpfull

/-- Coq `overflow_O`, including source Zero and taken TryHalve. -/
theorem overflow_O_zipper (n : ℕ) (xs : List ℕ)
    (hxs : EvenPositive xs) :
    ∃ bits : List Bool,
      WordPath ZipperEdge
        (atLeft .C (lowerLeftWord
          (0 :: xs ++ [2 * n + 1])) []) bits
        (atLeft .C
          (lowerLeftWord (xs ++ [2 * n + 2, 1, 0, 0])) [false]) := by
  have hfirst := goleft_separator (lowerLeftWord (xs ++ [2 * n + 1])) []
  have hsrc : lowerLeftWord (0 :: xs ++ [2 * n + 1]) =
      lowerLeftWord (xs ++ [2 * n + 1]) ++ [true] := by
    rw [lowerLeftWord_cons_nonempty 0 (xs ++ [2 * n + 1]) (by simp)]
    simp [repeatedTen]
  rw [← hsrc] at hfirst
  have hmove := goleft_even_blocks xs [2 * n + 1] [0] hxs.even (by simp)
  have hjoin : WordPath ZipperEdge
      (atLeft .C (lowerLeftWord (xs ++ [2 * n + 1])) [true])
      (evenBlockReads xs)
      (atLeft .C (repeatedTen (2 * n + 1))
        (rightBlocks xs.reverse ++ [true])) := by
    simpa [rightBlocks_append, rightBlocks, lowerLeftWord] using hmove
  obtain ⟨b, hcore⟩ := overflowCoreWithZero n xs.reverse hxs.reverse
  have hpfull := zipperPath_append (zipperPath_append hfirst hjoin) hcore
  have htarget := lowerLeftWord_positive_prefix xs
    [2 * n + 2, 1, 0, 0]
    ([true, true, true, false, true] ++ repeatedTen (2 * n + 1))
    (by simp) (overflow_tail_word (2 * n + 1))
    (fun y h => (hxs y h).2)
  exact ⟨[true] ++ evenBlockReads xs ++ b, by
    simpa [htarget, List.append_assoc] using hpfull⟩

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17
