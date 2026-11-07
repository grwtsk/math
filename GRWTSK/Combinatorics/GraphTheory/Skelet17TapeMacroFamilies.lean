/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.Skelet17TapeCanonicalWords

/-!
# Skelet #17: all parity branches of the Coq tape macro repeater returns

Underlying source: Chris Xu's Coq-BB5 `BB5_Skelet17.v`,
ccz181078/Coq-BB5@9142e219229baf2245d3f70851947230ea28a318.
These paths use ORIGINAL control-state writes and read labels, with arbitrary
even/positive exponent lists. Unlike bounded `by decide` instances, their
source-path proof scripts consume the generic repeated-10 and list inductions
from `Skelet17TapeRepeaterInduction.lean` and a finite 15-step turnaround.

The written statement returns to a specified finite ZIPPER. Its additional
explicit right-hand `false` denotes a blank exterior, not a new cell. The
canonical ZipperModels/PhysicalTape comparison and unbounded physical endpoint
synchronization are separate. The prior absolute-head Zero/Overflow return is
false and must not be reused.

Lean compilation and transitive axiom audit NOT_RUN. These methods correspond
to existing upstream Coq lemmas; no novel nonhalting result is claimed.
-/
set_option autoImplicit false
namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage

/-- Finite executable zipper traces, including the precise read-word bits. -/
def zipperRun : ℕ → TapeZipper → Option (List Bool × TapeZipper)
  | 0, s => some ([], s)
  | n + 1, s => do
      let (b, t) ← zipperNext s
      let (bs, u) ← zipperRun n t
      pure (b :: bs, u)

/-- Evaluation of a finite trace generates a real `WordPath ZipperEdge`. -/
theorem zipperRun_sound (n : ℕ) (s : TapeZipper)
    {bits : List Bool} {t : TapeZipper}
    (h : zipperRun n s = some (bits, t)) :
    WordPath ZipperEdge s bits t := by
  induction n generalizing s bits t with
  | zero =>
      simp [zipperRun] at h
      rcases h with ⟨rfl, rfl⟩
      exact WordPath.nil s
  | succ n ih =>
      simp only [zipperRun] at h
      cases hs : zipperNext s with
      | none => simp [hs] at h
      | some pair =>
          rcases pair with ⟨bit, m⟩
          simp [hs] at h
          cases ht : zipperRun n m with
          | none => simp [ht] at h
          | some pair =>
              rcases pair with ⟨tail, target⟩
              simp [ht] at h
              rcases h with ⟨rfl, rfl⟩
              exact WordPath.cons hs (ih ht)

/-- The three transitions `C0,D0,A0` create the two left-hand ones. -/
theorem zeroTurnBase (rest : List Bool) :
    WordPath ZipperEdge (atLeft .C [] rest) [false, false, false]
      (atRight .B [true, true] rest) := by
  apply zipperRun_sound 3 _
  rfl

/-- The final `B1,E0,B0` inserts an exterior zero. -/
theorem zeroTurnFinish (left : List Bool) :
    WordPath ZipperEdge (atRight .B left [true]) [true, false, false]
      (atLeft .C (left.reverse ++ [true, false]) [false]) := by
  have h : zipperRun 3 (atRight .B left [true]) =
      some ([true, false, false], ⟨.C, true :: left, false, [false]⟩) := by
    rfl
  have p := zipperRun_sound 3 (atRight .B left [true]) h
  simpa [atLeft, List.reverse_append] using p

/-- The 15-step overflow turnaround, independent of the remaining right
context. Coq's `overflow_O` contains this fixed local operation. -/
def overflowTurnReads : List Bool :=
  [false, true, false, false, false, false, false, true,
   true, false, false, false, true, true, false]

theorem overflowTurnBase (rest : List Bool) :
    WordPath ZipperEdge
      (atLeft .C [true, false] (true :: rest)) overflowTurnReads
      (atRight .B [true, false, true, true, true]
        ([true, false, true] ++ rest)) := by
  apply zipperRun_sound 15 _
  rfl

/-- Restore arbitrary positive blocks and turn back on blank. -/
theorem finishPositiveBlocks
    (xs : List ℕ) (left : List Bool) (hxs : ∀ x ∈ xs, 0 < x) :
    WordPath ZipperEdge
      (atRight .B left (rightBlocks xs))
      (positiveBlockReads xs ++ [false])
      (atLeft .C (left.reverse ++ positiveBlockWrites xs) [false]) := by
  have first := goright_nonzero_list xs left [] hxs
  have last := goright_turnback_blank (left.reverse ++ positiveBlockWrites xs)
  have hrev :
      (left.reverse ++ positiveBlockWrites xs).reverse =
        (positiveBlockWrites xs).reverse ++ left := by
    simp [List.reverse_append]
  rw [← hrev] at first
  have path := zipperPath_append first last
  simpa [List.reverse_append, List.append_assoc] using path

/-- Restore arbitrary positive blocks, then use the trailing separator 1
rather than the blank turnaround: source first-coordinate zero case. -/
theorem finishPositiveBlocksWithZero
    (xs : List ℕ) (left : List Bool) (hxs : ∀ x ∈ xs, 0 < x) :
    WordPath ZipperEdge
      (atRight .B left (rightBlocks xs ++ [true]))
      (positiveBlockReads xs ++ [true, false, false])
      (atLeft .C
        (left.reverse ++ positiveBlockWrites xs ++ [true, false]) [false]) := by
  have first := goright_nonzero_list xs left [true] hxs
  have last := zeroTurnFinish ((positiveBlockWrites xs).reverse ++ left)
  have hrev :
      (left.reverse ++ positiveBlockWrites xs).reverse =
        (positiveBlockWrites xs).reverse ++ left := by
    simp [List.reverse_append]
  rw [← hrev] at first
  have path := zipperPath_append first last
  simpa [List.reverse_append, List.append_assoc] using path

/-- Even terminal y: Zero core after preceding even blocks moved right. -/
theorem zeroCore (n : ℕ) (xs : List ℕ)
    (hxs : ∀ x ∈ xs, 0 < x) :
    ∃ bits : List Bool,
      WordPath ZipperEdge
        (atLeft .C (repeatedTen (2 * n)) (rightBlocks xs)) bits
        (atLeft .C
          ([true, true] ++ repeatedTen (2 * n) ++
            positiveBlockWrites xs) [false]) := by
  have p1 := goleft_even_ten n [] (rightBlocks xs)
  have p2 := zeroTurnBase (repeatedTen (2 * n) ++ rightBlocks xs)
  have p3 := goright_ten (2 * n) [true, true] (rightBlocks xs)
  have p4 := finishPositiveBlocks xs
    ((repeatedTen (2 * n)).reverse ++ [true, true]) hxs
  have p := zipperPath_append
    (zipperPath_append (zipperPath_append p1 p2) p3) p4
  refine ⟨evenLeftReads n ++ [false, false, false] ++
    repeatedTen (2 * n) ++ positiveBlockReads xs ++ [false], ?_⟩
  simpa [List.reverse_append, List.append_assoc] using p

/-- The same core with a trailing dummy zero-exponent separator. -/
theorem zeroCoreWithZero (n : ℕ) (xs : List ℕ)
    (hxs : ∀ x ∈ xs, 0 < x) :
    ∃ bits : List Bool,
      WordPath ZipperEdge
        (atLeft .C (repeatedTen (2 * n)) (rightBlocks xs ++ [true])) bits
        (atLeft .C
          ([true, true] ++ repeatedTen (2 * n) ++
            positiveBlockWrites xs ++ [true, false]) [false]) := by
  have p1 := goleft_even_ten n [] (rightBlocks xs ++ [true])
  have p2 := zeroTurnBase (repeatedTen (2 * n) ++ rightBlocks xs ++ [true])
  have p3 := goright_ten (2 * n) [true, true] (rightBlocks xs ++ [true])
  have p4 := finishPositiveBlocksWithZero xs
    ((repeatedTen (2 * n)).reverse ++ [true, true]) hxs
  have p := zipperPath_append
    (zipperPath_append (zipperPath_append p1 p2) p3) p4
  refine ⟨evenLeftReads n ++ [false, false, false] ++
    repeatedTen (2 * n) ++ positiveBlockReads xs ++
      [true, false, false], ?_⟩
  simpa [List.reverse_append, List.append_assoc] using p

/-- Odd y: Increment core changes the farther exponent at the turn. -/
theorem incrementCore (n : ℕ) (prefix : List Bool) (xs : List ℕ)
    (hxs : ∀ x ∈ xs, 0 < x) :
    ∃ bits : List Bool,
      WordPath ZipperEdge
        (atLeft .C (prefix ++ [true] ++ repeatedTen (2 * n + 1))
          (rightBlocks xs)) bits
        (atLeft .C
          (prefix ++ [true, false, true] ++ repeatedTen (2 * n) ++
            positiveBlockWrites xs) [false]) := by
  have p1 := goleft_odd_ten n prefix (rightBlocks xs)
  have p2 := finishPositiveBlocks xs
    ((prefix ++ [true, false, true] ++ repeatedTen (2 * n)).reverse) hxs
  have p := zipperPath_append p1 p2
  exact ⟨oddLeftReads n ++ positiveBlockReads xs ++ [false], by
    simpa [List.append_assoc] using p⟩

/-- Odd y: Increment core followed by zero-first-coordinate turn. -/
theorem incrementCoreWithZero (n : ℕ) (prefix : List Bool) (xs : List ℕ)
    (hxs : ∀ x ∈ xs, 0 < x) :
    ∃ bits : List Bool,
      WordPath ZipperEdge
        (atLeft .C (prefix ++ [true] ++ repeatedTen (2 * n + 1))
          (rightBlocks xs ++ [true])) bits
        (atLeft .C
          (prefix ++ [true, false, true] ++ repeatedTen (2 * n) ++
            positiveBlockWrites xs ++ [true, false]) [false]) := by
  have p1 := goleft_odd_ten n prefix (rightBlocks xs ++ [true])
  have p2 := finishPositiveBlocksWithZero xs
    ((prefix ++ [true, false, true] ++ repeatedTen (2 * n)).reverse) hxs
  have p := zipperPath_append p1 p2
  exact ⟨oddLeftReads n ++ positiveBlockReads xs ++
    [true, false, false], by simpa [List.append_assoc] using p⟩

/-- `repeatedTen (2n) ++ rightBlocks xs` begins with 1 when xs is nonempty. -/
theorem overflowCoreRightHead (n : ℕ) (xs : List ℕ) (hne : xs ≠ []) :
    ∃ rest : List Bool,
      repeatedTen (2 * n) ++ rightBlocks xs = true :: rest := by
  cases n with
  | zero =>
      cases xs with
      | nil => contradiction
      | cons x xs =>
          exact ⟨repeatedTen x ++ rightBlocks xs, by rfl⟩
  | succ n =>
      have heq : 2 * (n + 1) = 2 + 2 * n := by omega
      rw [heq, repeatedTen_add]
      exact ⟨[false, true, false] ++
        (repeatedTen (2 * n) ++ rightBlocks xs), by rfl⟩

/-- Odd terminal y: 15-step turnaround followed by block restoration. -/
theorem overflowCore (n : ℕ) (xs : List ℕ)
    (hxs : ∀ x ∈ xs, 0 < x) (hne : xs ≠ []) :
    ∃ bits : List Bool,
      WordPath ZipperEdge
        (atLeft .C (repeatedTen (2 * n + 1)) (rightBlocks xs)) bits
        (atLeft .C
          ([true, true, true, false, true] ++ repeatedTen (2 * n + 1) ++
            positiveBlockWrites xs) [false]) := by
  obtain ⟨rest, hr⟩ := overflowCoreRightHead n xs hne
  have p1 := goleft_even_ten n [true, false] (rightBlocks xs)
  have p2 := overflowTurnBase rest
  have p3 := goright_ten (2 * n + 1)
    [true, false, true, true, true] (rightBlocks xs)
  have p4 := finishPositiveBlocks xs
    ((repeatedTen (2 * n + 1)).reverse ++
      [true, false, true, true, true]) hxs
  have hten : repeatedTen (2 * n + 1) =
      [true, false] ++ repeatedTen (2 * n) := by
    rw [show 2 * n + 1 = 1 + 2 * n by omega, repeatedTen_add]
    rfl
  rw [hr] at p1
  have hfront :
      repeatedTen (2 * n + 1) ++ rightBlocks xs =
        [true, false, true] ++ rest := by
    rw [hten, ← List.append_assoc, hr]
    rfl
  rw [hfront] at p3
  have hp := zipperPath_append
    (zipperPath_append (zipperPath_append p1 p2) p3) p4
  refine ⟨evenLeftReads n ++ overflowTurnReads ++
    repeatedTen (2 * n + 1) ++ positiveBlockReads xs ++ [false], ?_⟩
  simpa [hten, List.reverse_append, List.append_assoc] using hp

/-- Odd terminal y, with a trailing zero-exponent separator. -/
theorem overflowCoreWithZero (n : ℕ) (xs : List ℕ)
    (hxs : ∀ x ∈ xs, 0 < x) :
    ∃ bits : List Bool,
      WordPath ZipperEdge
        (atLeft .C (repeatedTen (2 * n + 1))
          (rightBlocks xs ++ [true])) bits
        (atLeft .C
          ([true, true, true, false, true] ++ repeatedTen (2 * n + 1) ++
            positiveBlockWrites xs ++ [true, false]) [false]) := by
  have he : rightBlocks (xs ++ [0]) = rightBlocks xs ++ [true] := by
    rw [rightBlocks_append]
    rfl
  obtain ⟨rest, hr⟩ :=
    overflowCoreRightHead n (xs ++ [0]) (by simp)
  rw [he] at hr
  have p1 := goleft_even_ten n [true, false] (rightBlocks xs ++ [true])
  have p2 := overflowTurnBase rest
  have p3 := goright_ten (2 * n + 1)
    [true, false, true, true, true] (rightBlocks xs ++ [true])
  have p4 := finishPositiveBlocksWithZero xs
    ((repeatedTen (2 * n + 1)).reverse ++
      [true, false, true, true, true]) hxs
  have hten : repeatedTen (2 * n + 1) =
      [true, false] ++ repeatedTen (2 * n) := by
    rw [show 2 * n + 1 = 1 + 2 * n by omega, repeatedTen_add]
    rfl
  rw [hr] at p1
  have hfront :
      repeatedTen (2 * n + 1) ++ (rightBlocks xs ++ [true]) =
        [true, false, true] ++ rest := by
    rw [hten, ← List.append_assoc, hr]
    rfl
  rw [hfront] at p3
  have hp := zipperPath_append
    (zipperPath_append (zipperPath_append p1 p2) p3) p4
  refine ⟨evenLeftReads n ++ overflowTurnReads ++
    repeatedTen (2 * n + 1) ++ positiveBlockReads xs ++
      [true, false, false], ?_⟩
  simpa [hten, List.reverse_append, List.append_assoc] using hp

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17
