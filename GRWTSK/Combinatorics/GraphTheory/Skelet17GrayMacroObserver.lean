/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.SearchSoficLanguage
import Mathlib.Tactic

/-!
# Skelet #17: the source list transitions and a four-state Gray observer

Primary source: Chris Xu's Skelet #17 proof, Coq-BB5 at
9142e219229baf2245d3f70851947230ea28a318,
`CoqBB5/BB5/BB5_Skelet17.v` (blob bcab294a41d115034c4cd630e2587473703cecc5),
constructors `Increment`, `Halve`, `Zero`, `Overflow` and the `to_n`/`to_s`
comparison lemmas. This is a source-faithful transcription of the *list-state*
relations, not a port of Coq's verified multi-step machine execution.

The observer stores `(1 - to_s, to_n mod 2)` as two Nat residues in {0,1};
this convention lets omega prove the source transitions by elementary parity
arithmetic. The projection is a FORWARD simulation only. In particular a Gray
edge is not evidence that its source constructor is enabled on a particular
list state, and Gray labels are not physical read bits. No new nonhalting theorem.

Analytic argument: the low bit of the suffix-XOR Gray decode is the parity of
the sum of the exponent list. Increment toggles both the first exponent parity
and the list parity, or toggles two list entries, preserving direction. Halve
removes the first exponent and complements direction. Zero/Overflow change the
terminal parity and reset direction. These are precisely the source case splits.
The `Nonzero`/`Even` side conditions of the Coq constructors are retained.
Novelty: mathematical mechanism established in the cited Coq source; the
finite-state observer is an additional abstraction, not a novel Coq proof.
AI-assisted Lean drafting; independent review, compilation and kernel replay
NOT_RUN. Root imports and dependency pins are unchanged.
-/
set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage

/-- Labels for macro relations, NOT bits read at individual TM steps. -/
inductive MacroLabel where
  | increment | halve | zero | overflow
  deriving DecidableEq, Repr

/-- The exact Coq macro carrier, with the head-nearest exponent first. -/
abbrev MacroState := ℕ × List ℕ

/-- The four original constructors, including all relevant parity and
nonzero guards. The Coq `S x` is written `x + 1` here. -/
inductive MacroEdge : MacroState → MacroLabel → MacroState → Prop where
  | incrementEven (x : ℕ) (xs : List ℕ) (y z : ℕ) (zs : List ℕ)
      (hx : x % 2 = 0)
      (hnz : ∀ t ∈ xs, t ≠ 0)
      (he : ∀ t ∈ xs, t % 2 = 0)
      (hy : y % 2 = 1) :
      MacroEdge (x + 1, xs ++ (y :: z :: zs)) .increment
        (x, xs ++ (y :: (z + 1) :: zs))
  | incrementOdd (x y : ℕ) (xs : List ℕ) (hx : x % 2 = 1) :
      MacroEdge (x + 1, y :: xs) .increment (x, (y + 1) :: xs)
  | halve (x : ℕ) (xs : List ℕ) :
      MacroEdge (0, x :: xs) .halve (x + 1, xs)
  | zero (x : ℕ) (xs : List ℕ) (y : ℕ)
      (hx : x % 2 = 0)
      (hnz : ∀ t ∈ xs, t ≠ 0)
      (he : ∀ t ∈ xs, t % 2 = 0)
      (hy : y % 2 = 0) :
      MacroEdge (x + 1, xs ++ [y]) .zero
        (x, xs ++ [y + 1, 0, 0])
  | overflow (x : ℕ) (xs : List ℕ) (y : ℕ)
      (hx : x % 2 = 0)
      (hnz : ∀ t ∈ xs, t ≠ 0)
      (he : ∀ t ∈ xs, t % 2 = 0)
      (hy : y % 2 = 1) :
      MacroEdge (x + 1, xs ++ [y]) .overflow
        (x + 1, xs ++ [y + 1, 0])

/-- Gray's suffix-XOR binary decode, represented as 0/1 naturals.
The first element is the least significant decoded binary digit. -/
def grayBinaryDigits : List ℕ → List ℕ
  | [] => []
  | x :: xs =>
      let rest := grayBinaryDigits xs
      ((x + rest.headD 0) % 2) :: rest

/-- The first decoded binary bit is the parity of all Gray exponents. -/
theorem grayBinaryDigits_head_eq_sum (xs : List ℕ) :
    (grayBinaryDigits xs).headD 0 = xs.sum % 2 := by
  induction xs with
  | nil => rfl
  | cons x xs ih =>
      simp [grayBinaryDigits, List.sum_cons, ih]
      omega

/-- Little-endian binary numeral used by the source `binary_to_nat`. -/
def binaryToNat : List ℕ → ℕ
  | [] => 0
  | b :: bs => b + 2 * binaryToNat bs

/-- The low bit of a binary numeral equals its head bit modulo two. -/
theorem binaryToNat_mod_two (bs : List ℕ) :
    binaryToNat bs % 2 = bs.headD 0 % 2 := by
  cases bs with
  | nil => rfl
  | cons b bs =>
      simp only [binaryToNat, List.headD_cons]
      omega

/-- Direct formal comparison with the Coq low bit of `to_n`. -/
theorem gray_counter_low_bit (u : MacroState) :
    binaryToNat (grayBinaryDigits u.2) % 2 = u.2.sum % 2 := by
  rw [binaryToNat_mod_two, grayBinaryDigits_head_eq_sum]
  omega

/-- A parity-zero list has a parity-zero total sum. -/
theorem sum_even_mod_two (xs : List ℕ) :
    (∀ x ∈ xs, x % 2 = 0) → xs.sum % 2 = 0 := by
  induction xs with
  | nil => simp
  | cons x xs ih =>
      intro h
      have hx : x % 2 = 0 := h x (by simp)
      have hxs : ∀ y ∈ xs, y % 2 = 0 := by
        intro y hy
        exact h y (by simp [hy])
      have htail := ih hxs
      simp only [List.sum_cons]
      omega

/-- Finite observer coordinates, encoded as residues. `phase=0` means
Coq's `to_s=true` (incrementing), `phase=1` means decrementing.
The second coordinate is `to_n mod 2`. -/
abbrev GrayNode := ℕ × ℕ

def grayObserve (u : MacroState) : GrayNode :=
  ((u.1 + u.2.sum) % 2, u.2.sum % 2)

/-- Exactly the four reachable residue labels; not an unbounded state coding. -/
def grayStates : List GrayNode := [(0, 0), (0, 1), (1, 0), (1, 1)]

/-- The source projection lands in the finite four-state set. -/
theorem grayObserve_in_range (u : MacroState) :
    (grayObserve u).1 < 2 ∧ (grayObserve u).2 < 2 := by
  simp only [grayObserve]
  omega

/-- The finite observer's edge relation. Halve retains an unknown *next*
parity; no false deterministic choice of that parity is made. -/
def GrayEdge (s : GrayNode) (a : MacroLabel) (t : GrayNode) : Prop :=
  s.1 < 2 ∧ s.2 < 2 ∧ t.1 < 2 ∧ t.2 < 2 ∧
  match a with
  | .increment => t.1 = s.1 ∧ s.2 + t.2 = 1
  | .halve => s.1 = s.2 ∧ s.1 + t.1 = 1
  | .zero => s = (1, 0) ∧ t = (1, 1)
  | .overflow => s = (0, 1) ∧ t = (1, 0)

/-- Exact forward simulation from each Coq-shaped *source constructor*.
This does not assert the converse or a correspondence with TM read symbols. -/
theorem macroEdge_to_gray
    {u v : MacroState} {a : MacroLabel}
    (h : MacroEdge u a v) : GrayEdge (grayObserve u) a (grayObserve v) := by
  cases h with
  | incrementEven x xs y z zs hx hnz he hy =>
      simp only [GrayEdge, grayObserve, List.sum_append,
        List.sum_cons, List.sum_nil, Prod.mk.injEq]
      omega
  | incrementOdd x y xs hx =>
      simp only [GrayEdge, grayObserve, List.sum_cons]
      omega
  | halve x xs =>
      simp only [GrayEdge, grayObserve, List.sum_cons]
      omega
  | zero x xs y hx hnz he hy =>
      have hs : xs.sum % 2 = 0 := sum_even_mod_two xs he
      simp only [GrayEdge, grayObserve, List.sum_append,
        List.sum_cons, List.sum_nil, Prod.mk.injEq]
      omega
  | overflow x xs y hx hnz he hy =>
      have hs : xs.sum % 2 = 0 := sum_even_mod_two xs he
      simp only [GrayEdge, grayObserve, List.sum_append,
        List.sum_cons, List.sum_nil, Prod.mk.injEq]
      omega

/-- Preserve every ordered macro label while projecting a source path. -/
theorem macroPath_to_gray
    {u v : MacroState} {word : List MacroLabel}
    (h : WordPath MacroEdge u word v) :
    WordPath GrayEdge (grayObserve u) word (grayObserve v) := by
  induction h with
  | nil s => exact WordPath.nil (grayObserve s)
  | cons edge tail ih => exact WordPath.cons (macroEdge_to_gray edge) ih

/-- The exact, finite graph can be evaluated independently of source lists. -/
def grayNext (s : GrayNode) (a : MacroLabel) : List GrayNode :=
  grayStates.filter (fun t => decide (GrayEdge s a t))

/-- The four-label alphabet has a fixed, auditable order. -/
def macroAlphabet : List MacroLabel :=
  [.increment, .halve, .zero, .overflow]

/-- Ten edges: four Increment, four Halve, one Zero, one Overflow. -/
theorem gray_edge_count :
    (grayStates.flatMap (fun s => macroAlphabet.flatMap (grayNext s))).length = 10 := by
  decide

/-- Count DISTINCT accepted macro words by subset propagation. At each
symbol, all possible successors are merged before counting the next symbol;
parallel state paths therefore do not multiply the language count. -/
def grayWordCount : ℕ → List GrayNode → ℕ
  | 0, states => if states.isEmpty then 0 else 1
  | n + 1, states =>
      (macroAlphabet.map (fun a =>
        grayWordCount n ((states.flatMap (fun s => grayNext s a)).eraseDups))).sum

/-- Candidate kernel computation: 595 of the 4096 six-event words survive. -/
theorem gray_six_macro_count : grayWordCount 6 grayStates = 595 := by
  decide

/-- The direction-only quotient in the same residue convention. -/
def directionNext (s : ℕ) : MacroLabel → List ℕ
  | .increment => [s]
  | .halve => [1 - s]
  | .zero => if s = 1 then [1] else []
  | .overflow => if s = 0 then [1] else []

def directionWordCount : ℕ → List ℕ → ℕ
  | 0, states => if states.isEmpty then 0 else 1
  | n + 1, states =>
      (macroAlphabet.map (fun a =>
        directionWordCount n
          ((states.flatMap (fun s => directionNext s a)).eraseDups))).sum

/-- Candidate kernel computation: the direction-only quotient admits 1394
six-event words. This count is NOT a physical six-read-bit count. -/
theorem direction_six_macro_count :
    directionWordCount 6 [0, 1] = 1394 := by
  decide

/-- The observer also refines a direction-only relation; projecting away
Gray parity can only enlarge the accepted macro language. -/
def DirectionEdge (s : ℕ) (a : MacroLabel) (t : ℕ) : Prop :=
  ∃ p q : ℕ, GrayEdge (s, p) a (t, q)

theorem grayPath_to_direction
    {u v : GrayNode} {w : List MacroLabel}
    (path : WordPath GrayEdge u w v) :
    WordPath DirectionEdge u.1 w v.1 := by
  induction path with
  | nil s => exact WordPath.nil s.1
  | @cons s m t a w edge tail ih =>
      exact WordPath.cons ⟨s.2, m.2, edge⟩ ih

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17
