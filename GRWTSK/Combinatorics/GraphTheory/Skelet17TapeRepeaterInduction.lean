/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.Skelet17PhysicalTapeReturn

/-!
# Skelet #17: general tape-repeater inductions on an explicit two-sided zipper

Primary source: Chris Xu, Coq-BB5 `CoqBB5/BB5/BB5_Skelet17.v`,
ccz181078/Coq-BB5@9142e219229baf2245d3f70851947230ea28a318,
blob bcab294a41d115034c4cd630e2587473703cecc5.
Corresponding Coq lemmas: `goright_10`, `goleft_even10`, `goleft_odd10`,
`goright_nonzero_step`, and `goright_nonzero_steps`.

The zipper records the bits to the left in nearest-first order and the bits to
its right in nearest-first order. The scanned cell is separate. A missing cell
is the blank symbol zero. Every `ZipperEdge` uses the ORIGINAL Skelet #17
`instruction` table and retains the exact read bit. The passage lemmas below
are proved by induction on an ARBITRARY repetition count and an ARBITRARY list
of strictly positive exponents, rather than enumeration of bounded inputs.

The quotient identifying finite zipper displays that differ only by exterior
zeros has NOT been constructed. In particular the zipper return is not yet an
unconditional `WordPath TapeReadStep` on the repository's `PhysicalTape` type.
Nor do these five generic passage lemmas alone discharge Coq's subsequent
`increment_S_even`, `increment_S_odd`, `increment_O`, `zero_S`, `zero_O`,
`overflow_S`, `overflow_O` and their `TryHalve` adapter. The exact remaining
source-to-physical return is explicitly preserved in `physicalReadPort`.

Proof mechanism: (i) directly expand 2, 3, 4 or 5 deterministic TM steps;
(ii) concatenate labeled paths; (iii) induct on 10-pair repetitions; (iv)
induct on a list using the positive-exponent condition. The independent
hostile boundary is that a right-hand list `[false]` cannot be equated as a
Lean list to `[]`, even though both denote an all-blank exterior. Hence a
syntactic tape equality is NOT the missing physical representation theorem.

This is a Lean proof-script candidate with no fresh Lean, Lake, kernel replay
or transitive axiom audit. The source Coq proof is not claimed as newly
verified here; the original upstream authorship is retained. No entropy,
nonhalting or physical-to-macro theorem is inferred from this file alone.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage

/-- Explicit scanned-cell tape, with the closest neighbors first. -/
structure TapeZipper where
  control : Control
  left : List Bool
  scan : Bool
  right : List Bool
  deriving DecidableEq, Repr

/-- A single ORIGINAL Skelet-17 instruction, never a guessed symbolic rewrite. -/
def zipperNext (s : TapeZipper) : Option (Bool × TapeZipper) := do
  let a ← instruction s.control s.scan
  let target : TapeZipper :=
    match a.motion with
    | .left => ⟨a.next, s.left.tail, s.left.headD false, a.write :: s.right⟩
    | .right => ⟨a.next, a.write :: s.left, s.right.headD false, s.right.tail⟩
  pure (s.scan, target)

/-- The label is the bit READ, not the bit written. -/
def ZipperEdge (s : TapeZipper) (bit : Bool) (t : TapeZipper) : Prop :=
  zipperNext s = some (bit, t)

/-- Concatenation of genuine labeled TM paths; the intermediate tape is shared. -/
theorem zipperPath_append
    {s m t : TapeZipper} {x y : List Bool}
    (first : WordPath ZipperEdge s x m)
    (second : WordPath ZipperEdge m y t) :
    WordPath ZipperEdge s (x ++ y) t := by
  induction first with
  | nil _ => simpa using second
  | cons edge tail ih =>
      simpa only [List.cons_append] using (WordPath.cons edge ih)

/-- Focus on the first symbol of `front` (blank if the list is empty). -/
def atRight (q : Control) (left front : List Bool) : TapeZipper :=
  ⟨q, left, front.headD false, front.tail⟩

/-- Focus on the final symbol of `prefix`, immediately left of a marker. -/
def atLeft (q : Control) (prefix suffix : List Bool) : TapeZipper :=
  ⟨q, prefix.reverse.tail, prefix.reverse.headD false, suffix⟩

/-- One two-cell rightward pass: `B> 10` becomes `10 B>` in its context. -/
theorem rightTen_one_raw (left rest : List Bool) :
    WordPath ZipperEdge
      ⟨.B, left, true, false :: rest⟩ [true, false]
      (atRight .B (false :: true :: left) rest) := by
  refine WordPath.cons (middle := ⟨.E, true :: left, false, rest⟩) (by rfl) ?_
  refine WordPath.cons (by rfl) ?_
  exact WordPath.nil _

/-- One four-cell leftward pass through `1010` (two `10` pairs).
The control-state sequence is C, D, B, C, C and the read word is `0101`. -/
theorem leftTen_two_raw (left rest : List Bool) :
    WordPath ZipperEdge
      ⟨.C, true :: false :: true :: left, false, rest⟩
      [false, true, false, true]
      ⟨.C, left.tail, left.headD false,
        true :: false :: true :: false :: rest⟩ := by
  refine WordPath.cons
    (middle := ⟨.D, false :: true :: left, true, false :: rest⟩) (by rfl) ?_
  refine WordPath.cons
    (middle := ⟨.B, true :: left, false, true :: false :: rest⟩) (by rfl) ?_
  refine WordPath.cons
    (middle := ⟨.C, left, true, false :: true :: false :: rest⟩) (by rfl) ?_
  refine WordPath.cons (by rfl) ?_
  exact WordPath.nil _

/-- The source's turning pattern `110 <C` becomes `101 B>`.
All five original writes and reads are included. -/
theorem leftTurn_raw (left rest : List Bool) :
    WordPath ZipperEdge
      ⟨.C, true :: true :: left, false, rest⟩
      [false, true, true, true, false]
      (atRight .B (true :: false :: true :: left) rest) := by
  refine WordPath.cons
    (middle := ⟨.D, true :: left, true, false :: rest⟩) (by rfl) ?_
  refine WordPath.cons
    (middle := ⟨.B, left, true, true :: false :: rest⟩) (by rfl) ?_
  refine WordPath.cons
    (middle := ⟨.E, true :: left, true, false :: rest⟩) (by rfl) ?_
  refine WordPath.cons
    (middle := ⟨.A, false :: true :: left, false, rest⟩) (by rfl) ?_
  refine WordPath.cons (by rfl) ?_
  exact WordPath.nil _

/-- The source's right-turn pattern `B> 110` becomes `101 B>`. -/
theorem rightTurn_raw (left rest : List Bool) :
    WordPath ZipperEdge
      ⟨.B, left, true, true :: false :: rest⟩
      [true, true, false]
      (atRight .B (true :: false :: true :: left) rest) := by
  refine WordPath.cons
    (middle := ⟨.E, true :: left, true, false :: rest⟩) (by rfl) ?_
  refine WordPath.cons
    (middle := ⟨.A, false :: true :: left, false, rest⟩) (by rfl) ?_
  refine WordPath.cons (by rfl) ?_
  exact WordPath.nil _

/-- Concatenation is exactly addition of repetition counts. -/
theorem repeatedTen_add (n m : ℕ) :
    repeatedTen (n + m) = repeatedTen n ++ repeatedTen m := by
  induction n with
  | zero => simp [repeatedTen]
  | succ n ih => simp [repeatedTen, ih]

/-- The right-moving word has two reads per repeated pair. -/
theorem rightTen_one (left rest : List Bool) :
    WordPath ZipperEdge (atRight .B left (true :: false :: rest))
      [true, false] (atRight .B (false :: true :: left) rest) := by
  exact rightTen_one_raw left rest

/-- ARBITRARY repetition count: the actual read-word proof of Coq `goright_10`.
There is no finite bound on `n` and no condition on either tape context. -/
theorem goright_ten : ∀ (n : ℕ) (left rest : List Bool),
    WordPath ZipperEdge
      (atRight .B left (repeatedTen n ++ rest))
      (repeatedTen n)
      (atRight .B ((repeatedTen n).reverse ++ left) rest) := by
  intro n
  induction n with
  | zero =>
      intro left rest
      simpa [repeatedTen] using
        (WordPath.nil (atRight .B left rest) :
          WordPath ZipperEdge (atRight .B left rest) [] (atRight .B left rest))
  | succ n ih =>
      intro left rest
      have first := rightTen_one left (repeatedTen n ++ rest)
      have tail := ih (false :: true :: left) rest
      have path := zipperPath_append first tail
      simpa [repeatedTen, List.reverse_cons, List.append_assoc] using path

/-- An exact leftward pair-of-pairs step with arbitrary exterior contexts. -/
theorem goleft_two_ten (prefix rest : List Bool) :
    WordPath ZipperEdge
      (atLeft .C (prefix ++ [true, false, true, false]) rest)
      [false, true, false, true]
      (atLeft .C prefix ([true, false, true, false] ++ rest)) := by
  simpa [atLeft, List.reverse_append] using
    (leftTen_two_raw prefix.reverse rest)

/-- Reads used when crossing two `10` pairs repeatedly to the left. -/
def evenLeftReads : ℕ → List Bool
  | 0 => []
  | n + 1 => [false, true, false, true] ++ evenLeftReads n

private theorem repeatedTen_double_succ (n : ℕ) :
    repeatedTen (2 * (n + 1)) = repeatedTen (2 * n) ++ [true, false, true, false] := by
  rw [show 2 * (n + 1) = 2 * n + 2 by omega, repeatedTen_add]
  rfl

/-- ARBITRARY EVEN NUMBER of `10` pairs: Coq `goleft_even10`.
The original head reaches the preceding context, which may itself be empty. -/
theorem goleft_even_ten : ∀ (n : ℕ) (prefix rest : List Bool),
    WordPath ZipperEdge
      (atLeft .C (prefix ++ repeatedTen (2 * n)) rest)
      (evenLeftReads n)
      (atLeft .C prefix (repeatedTen (2 * n) ++ rest)) := by
  intro n
  induction n with
  | zero =>
      intro prefix rest
      simpa [repeatedTen, evenLeftReads] using
        (WordPath.nil (atLeft .C prefix rest) :
          WordPath ZipperEdge (atLeft .C prefix rest) [] (atLeft .C prefix rest))
  | succ n ih =>
      intro prefix rest
      have first := goleft_two_ten (prefix ++ repeatedTen (2 * n)) rest
      have tail := ih prefix ([true, false, true, false] ++ rest)
      have path := zipperPath_append first tail
      simpa [evenLeftReads, repeatedTen_double_succ, List.append_assoc] using path

/-- The 110-turn with any left prefix and any right-hand context. -/
theorem goleft_turn (prefix rest : List Bool) :
    WordPath ZipperEdge (atLeft .C (prefix ++ [true, true, false]) rest)
      [false, true, true, true, false]
      (atRight .B (true :: false :: true :: prefix.reverse) rest) := by
  simpa [atLeft, List.reverse_append] using
    (leftTurn_raw prefix.reverse rest)

/-- Turn right on 110, with the same externally visible context. -/
theorem goright_turn (left rest : List Bool) :
    WordPath ZipperEdge (atRight .B left ([true, true, false] ++ rest))
      [true, true, false]
      (atRight .B (true :: false :: true :: left) rest) := by
  exact rightTurn_raw left rest

/-- The complete actual read word from the Coq odd-left passage. -/
def oddLeftReads (n : ℕ) : List Bool :=
  evenLeftReads n ++ [false, true, true, true, false] ++ repeatedTen (2 * n)

private theorem odd_ten_prefix (n : ℕ) (prefix : List Bool) :
    prefix ++ [true] ++ repeatedTen (2 * n + 1) =
      (prefix ++ [true, true, false]) ++ repeatedTen (2 * n) := by
  rw [show 2 * n + 1 = 1 + 2 * n by omega, repeatedTen_add]
  simp [repeatedTen, List.append_assoc]

/-- ARBITRARY ODD NUMBER of `10` pairs:
left-even pass, the `110` turn, then rightward restoration.
This is the Coq `goleft_odd10` mechanism, with the complete read word. -/
theorem goleft_odd_ten (n : ℕ) (prefix rest : List Bool) :
    WordPath ZipperEdge
      (atLeft .C (prefix ++ [true] ++ repeatedTen (2 * n + 1)) rest)
      (oddLeftReads n)
      (atRight .B
        ((prefix ++ [true, false, true] ++ repeatedTen (2 * n)).reverse) rest) := by
  have first := goleft_even_ten n (prefix ++ [true, true, false]) rest
  have middle := goleft_turn prefix (repeatedTen (2 * n) ++ rest)
  have last := goright_ten (2 * n) (true :: false :: true :: prefix.reverse) rest
  have path := zipperPath_append (zipperPath_append first middle) last
  rw [odd_ten_prefix n prefix]
  simpa [oddLeftReads, List.reverse_append, List.append_assoc] using path

/-- One positive exponent `n+1` in the right-hand list encodes `1 10^(n+1)`.
The machine rewrites `110` to `101`, then passes `10^n`. -/
theorem goright_nonzero_one (n : ℕ) (left rest : List Bool) :
    WordPath ZipperEdge
      (atRight .B left (true :: repeatedTen (n + 1) ++ rest))
      ([true, true, false] ++ repeatedTen n)
      (atRight .B
        (([true, false, true] ++ repeatedTen n).reverse ++ left) rest) := by
  have first := goright_turn left (repeatedTen n ++ rest)
  have second := goright_ten n (true :: false :: true :: left) rest
  have path := zipperPath_append first second
  simpa [repeatedTen, List.reverse_append, List.append_assoc] using path

/-- Finite right-side block encoding: the nearest exponent comes first. -/
def rightBlocks : List ℕ → List Bool
  | [] => []
  | n :: ns => true :: (repeatedTen n ++ rightBlocks ns)

/-- The exact read word generated by passing strictly positive block exponents. -/
def positiveBlockReads : List ℕ → List Bool
  | [] => []
  | n :: ns => ([true, true, false] ++ repeatedTen (n - 1)) ++ positiveBlockReads ns

/-- The resulting tape word from each successful positive-block pass. -/
def positiveBlockWrites : List ℕ → List Bool
  | [] => []
  | n :: ns => ([true, false, true] ++ repeatedTen (n - 1)) ++ positiveBlockWrites ns

/-- ARBITRARY LIST of positive repeaters: Coq `goright_nonzero_steps`.
The rightward scan is not limited to a fixed list length or block size. -/
theorem goright_nonzero_list :
    ∀ (ns : List ℕ) (left rest : List Bool),
      (∀ n ∈ ns, 0 < n) →
      WordPath ZipperEdge
        (atRight .B left (rightBlocks ns ++ rest))
        (positiveBlockReads ns)
        (atRight .B ((positiveBlockWrites ns).reverse ++ left) rest) := by
  intro ns
  induction ns with
  | nil =>
      intro left rest _
      simpa [rightBlocks, positiveBlockReads, positiveBlockWrites] using
        (WordPath.nil (atRight .B left rest) :
          WordPath ZipperEdge (atRight .B left rest) [] (atRight .B left rest))
  | cons n ns ih =>
      intro left rest hn
      have hpos : 0 < n := hn n (by simp)
      cases n with
      | zero => omega
      | succ k =>
          have htail : ∀ t ∈ ns, 0 < t := by
            intro t ht
            exact hn t (by simp [ht])
          have first := goright_nonzero_one k left (rightBlocks ns ++ rest)
          have second := ih
            (([true, false, true] ++ repeatedTen k).reverse ++ left) rest htail
          have path := zipperPath_append first second
          simpa [rightBlocks, positiveBlockReads, positiveBlockWrites,
            List.reverse_append, List.append_assoc] using path



/-! ### Crossing an arbitrary list of even exponent blocks to the left -/

/-- Passing one separator `1` while state C moves left. -/
theorem goleft_separator (prefix rest : List Bool) :
    WordPath ZipperEdge (atLeft .C (prefix ++ [true]) rest)
      [true] (atLeft .C prefix (true :: rest)) := by
  refine WordPath.cons (by rfl) ?_
  exact WordPath.nil _

/-- The source `lowerL` equation for a nonempty prefix list. -/
theorem lowerLeftWord_cons_nonempty (n : ℕ) (xs : List ℕ)
    (hxs : xs ≠ []) :
    lowerLeftWord (n :: xs) =
      lowerLeftWord xs ++ [true] ++ repeatedTen n := by
  cases xs with
  | nil => contradiction
  | cons y ys => simp [lowerLeftWord]

/-- The `lowerR'` right-hand encoding is a list homomorphism. -/
theorem rightBlocks_append (xs ys : List ℕ) :
    rightBlocks (xs ++ ys) = rightBlocks xs ++ rightBlocks ys := by
  induction xs with
  | nil => simp [rightBlocks]
  | cons x xs ih => simp [rightBlocks, ih, List.append_assoc]

/-- A complete read word for a leftward passage through EVEN blocks, including
one separator read for each block. Odd exponents are not allowed by the lemma. -/
def evenBlockReads : List ℕ → List Bool
  | [] => []
  | x :: xs => (evenLeftReads (x / 2) ++ [true]) ++ evenBlockReads xs

/-- ARBITRARY LIST of even exponents: Coq's `goleft_even` mechanism. The
nonempty left remainder is necessary: a final block has no separator when
no further list element exists. The order of already-passed blocks is
reversed on the right, exactly as in the Coq statement. -/
theorem goleft_even_blocks :
    ∀ (xs rest : List ℕ) (right : List ℕ),
      (∀ x ∈ xs, x % 2 = 0) → rest ≠ [] →
      WordPath ZipperEdge
        (atLeft .C (lowerLeftWord (xs ++ rest)) (rightBlocks right))
        (evenBlockReads xs)
        (atLeft .C (lowerLeftWord rest)
          (rightBlocks (xs.reverse ++ right))) := by
  intro xs
  induction xs with
  | nil =>
      intro rest right _ _
      simpa [evenBlockReads, rightBlocks] using
        (WordPath.nil (atLeft .C (lowerLeftWord rest) (rightBlocks right)) :
          WordPath ZipperEdge _ [] _)
  | cons x xs ih =>
      intro rest right hx hnz
      have hxEven : x % 2 = 0 := hx x (by simp)
      have hxsEven : ∀ t ∈ xs, t % 2 = 0 := by
        intro t ht
        exact hx t (by simp [ht])
      have htail : xs ++ rest ≠ [] := by
        intro h
        have : rest = [] := by
          cases xs <;> simp_all
        exact hnz this
      have hxMul : 2 * (x / 2) = x := by omega
      have first := goleft_even_ten (x / 2)
        (lowerLeftWord (xs ++ rest) ++ [true]) (rightBlocks right)
      rw [hxMul] at first
      have second := goleft_separator (lowerLeftWord (xs ++ rest))
        (repeatedTen x ++ rightBlocks right)
      have third := ih rest (x :: right) hxsEven hnz
      have path := zipperPath_append (zipperPath_append first second) third
      have hsource : lowerLeftWord ((x :: xs) ++ rest) =
          (lowerLeftWord (xs ++ rest) ++ [true]) ++ repeatedTen x := by
        simpa only [List.cons_append] using
          (lowerLeftWord_cons_nonempty x (xs ++ rest) htail)
      simpa [hsource, evenBlockReads, rightBlocks,
        List.reverse_cons, List.append_assoc] using path

/-! ### A source list-state return for the odd one-block branch -/

/-- Scanning the blank immediately to the right turns B left into C.
The explicit zero in the right-hand list is retained: syntactic zipper lists
are not quotiented by zero-tail equivalence. -/
theorem goright_turnback_blank (prefix : List Bool) :
    WordPath ZipperEdge (atRight .B prefix.reverse []) [false]
      (atLeft .C prefix [false]) := by
  refine WordPath.cons (by rfl) ?_
  exact WordPath.nil _

/-- Adding one to an exponent appends one complete `10` pair. -/
theorem repeatedTen_succ_right (n : ℕ) :
    repeatedTen (n + 1) = repeatedTen n ++ [true, false] := by
  rw [repeatedTen_add]
  rfl

/-- The source's `lowerL` constructor has an explicit separator when a
further block lies to the left. This uses the EXISTING `lowerLeftWord`. -/
theorem lowerLeftWord_cons (n y : ℕ) (xs : List ℕ) :
    lowerLeftWord (n :: y :: xs) =
      lowerLeftWord (y :: xs) ++ [true] ++ repeatedTen n := by
  simp [lowerLeftWord, List.append_assoc]

/-- Incrementing the head-nearest repeat count appends `10` to the word.
The equation is literal for any finite list, including the singleton case. -/
theorem lowerLeftWord_increment (n : ℕ) (xs : List ℕ) :
    lowerLeftWord ((n + 1) :: xs) =
      lowerLeftWord (n :: xs) ++ [true, false] := by
  cases xs with
  | nil =>
      simp [lowerLeftWord, repeatedTen_succ_right]
  | cons y ys =>
      simp [lowerLeftWord_cons, repeatedTen_succ_right, List.append_assoc]

/-- A derived literal tape-word identity consumed by `increment_S_odd`.
It is independent of any TM execution or finite-observer acceptance. -/
theorem lowerLeftWord_odd_increment_identity
    (n y : ℕ) (xs : List ℕ) :
    lowerLeftWord (2 * n :: (y + 1) :: xs) =
      lowerLeftWord (y :: xs) ++ [true, false, true] ++
        repeatedTen (2 * n) := by
  rw [lowerLeftWord_cons, lowerLeftWord_increment]
  simp [List.append_assoc]

/-- The odd-exponent instance of Coq `increment_S_odd`, for ARBITRARY
`n,y,xs`, is proved on the real control table as a zipper path. The sole
representation discrepancy is ONE explicit exterior blank at the finish.
This is not identified with `encodePhysical` until zero-tail equivalence is
proved and transported to the finite-support physical tape. -/
theorem increment_odd_zipper (n y : ℕ) (xs : List ℕ) :
    ∃ reads : List Bool,
      WordPath ZipperEdge
        (atLeft .C (lowerLeftWord ((2 * n + 1) :: y :: xs)) []) reads
        (atLeft .C (lowerLeftWord ((2 * n) :: (y + 1) :: xs)) [false]) := by
  let prefix := lowerLeftWord (y :: xs)
  let body := prefix ++ [true, false, true] ++ repeatedTen (2 * n)
  let first := goleft_odd_ten n prefix []
  have back : WordPath ZipperEdge (atRight .B body.reverse []) [false]
      (atLeft .C body [false]) := goright_turnback_blank body
  have path := zipperPath_append first back
  refine ⟨oddLeftReads n ++ [false], ?_⟩
  have hstart : lowerLeftWord ((2 * n + 1) :: y :: xs) =
      prefix ++ [true] ++ repeatedTen (2 * n + 1) := by
    exact lowerLeftWord_cons (2 * n + 1) y xs
  have hend : lowerLeftWord ((2 * n) :: (y + 1) :: xs) = body := by
    exact lowerLeftWord_odd_increment_identity n y xs
  simpa only [hstart, hend] using path

/-- A witnessed **source** path stays a witnessed zipper path after path
concatenation; the labels are never replaced by entropy or spectral data. -/
theorem zipper_repeaters_compose
    {a b c : TapeZipper} {xs ys : List Bool}
    (h₁ : WordPath ZipperEdge a xs b)
    (h₂ : WordPath ZipperEdge b ys c) :
    ∃ readWord : List Bool,
      readWord = xs ++ ys ∧ WordPath ZipperEdge a readWord c :=
  ⟨xs ++ ys, rfl, zipperPath_append h₁ h₂⟩

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17
