/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.SearchSoficLanguage
import Mathlib.Tactic

/-!
# Skelet #17: radius-two binary-read observer

The transition table is transcribed from the original five-state machine in
Chris Xu, *Skelet #17 and the fifth Busy Beaver number*, arXiv:2407.02426,
and Coq-BB5 `CoqBB5/BB5/BB5_Skelet17.v` at
9142e219229baf2245d3f70851947230ea28a318,
blob bcab294a41d115034c4cd630e2587473703cecc5.

A local register stores five `Option Bool` symbols. `none` means UNKNOWN,
not tape symbol zero. On a matching read it records the actual write, shifts
with the machine head, and forgets the newly exposed outer cell. All five
states with completely unknown windows are allowed as starting configurations.

The code defines a *computable* upper graph of read words. The length-six test
is a finite proposition about this graph alone. It is not a proof that an
arbitrary initial tape has any particular orbit, nor that the graph realizes
precisely the reads of the blank-tape execution. The Coq multi-step returns
are not smuggled in through this finite observer.

Independent finite check: `skelet17_gray_macro_observer.py`, supplied as a
research diagnostic, reports 42 reachable local states and 59 of 64 six-bit
words. `by decide` below is a candidate Lean reduction; Lean execution has
NOT_RUN status in the authoring runtime. Neither numerical eigenvalues nor
entropy estimates are promoted to checked Lean theorems.
-/
set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage

inductive Control where
  | A | B | C | D | E
  deriving DecidableEq, Repr

inductive Move where
  | left | right
  deriving DecidableEq, Repr

structure Instruction where
  write : Bool
  motion : Move
  next : Control
  deriving DecidableEq, Repr

/-- `none` is exactly the original halting instruction `(A,1)`. -/
def instruction : Control → Bool → Option Instruction
  | .A, false => some ⟨true, .right, .B⟩
  | .A, true => none
  | .B, false => some ⟨false, .left, .C⟩
  | .B, true => some ⟨true, .right, .E⟩
  | .C, false => some ⟨false, .left, .D⟩
  | .C, true => some ⟨true, .left, .C⟩
  | .D, false => some ⟨true, .right, .A⟩
  | .D, true => some ⟨true, .left, .B⟩
  | .E, false => some ⟨false, .right, .B⟩
  | .E, true => some ⟨false, .right, .A⟩

/-- A fixed five-cell window centered at the scanning head. -/
structure WindowTwo where
  leftTwo : Option Bool
  leftOne : Option Bool
  center : Option Bool
  rightOne : Option Bool
  rightTwo : Option Bool
  deriving DecidableEq, Repr

/-- This initialization retains ALL possible contents of the five cells. -/
def unknownWindow : WindowTwo := ⟨none, none, none, none, none⟩

/-- Forget the newly exposed cell to the right, but retain the actual write. -/
def WindowTwo.shiftRight (w : WindowTwo) : WindowTwo :=
  ⟨w.leftOne, w.center, w.rightOne, w.rightTwo, none⟩

/-- Forget the newly exposed cell to the left, but retain the actual write. -/
def WindowTwo.shiftLeft (w : WindowTwo) : WindowTwo :=
  ⟨none, w.leftTwo, w.leftOne, w.center, w.rightOne⟩

/-- The control state and the declared local tape knowledge. -/
structure ReadNode where
  control : Control
  memory : WindowTwo
  deriving DecidableEq, Repr

/-- The deterministic partial local update on one READ symbol. -/
def readNext (s : ReadNode) (bit : Bool) : Option ReadNode :=
  match instruction s.control bit with
  | none => none
  | some action =>
      if s.memory.center = none ∨ s.memory.center = some bit then
        let written : WindowTwo := { s.memory with center := some action.write }
        let shifted :=
          match action.motion with
          | .left => written.shiftLeft
          | .right => written.shiftRight
        some ⟨action.next, shifted⟩
      else none

/-- A label is the BIT READ, never the bit written by the machine. -/
def ReadEdge (s : ReadNode) (bit : Bool) (t : ReadNode) : Prop :=
  readNext s bit = some t

/-- Arbitrary control state and entirely unknown local tape, not a blank-tape
initial condition. -/
def readStarts : List ReadNode :=
  [⟨.A, unknownWindow⟩, ⟨.B, unknownWindow⟩,
   ⟨.C, unknownWindow⟩, ⟨.D, unknownWindow⟩,
   ⟨.E, unknownWindow⟩]

/-- Exact finite-state subset propagation, with duplicate endpoints removed. -/
def readFollow : List ReadNode → List Bool → List ReadNode
  | states, [] => states
  | states, bit :: word =>
      readFollow ((states.filterMap (fun s => readNext s bit)).eraseDups) word

/-- True precisely when some locally consistent read-state path remains. -/
def readAccepted (word : List Bool) : Bool :=
  !(readFollow readStarts word).isEmpty

/-- Six bits in most-significant-bit-first order, `true` representing 1. -/
def sixBits (n : ℕ) : List Bool :=
  [n / 32 % 2 == 1, n / 16 % 2 == 1, n / 8 % 2 == 1,
   n / 4 % 2 == 1, n / 2 % 2 == 1, n % 2 == 1]

/-- Directly executable, exhaustive length-six enumeration. -/
def sixReadCount : ℕ :=
  ((List.range 64).filter (fun n => readAccepted (sixBits n))).length

/-- The radius-two observer rejects exactly five of the 64 binary words. -/
theorem sixReadCount_eq : sixReadCount = 59 := by
  decide

/-- A concrete forbidden read word: after writing zero to a revisited cell,
a later read of one there is impossible within radius two. -/
theorem forbidden_000010 :
    readAccepted [false, false, false, false, true, false] = false := by
  decide

/-- The halting `(A,1)` instruction is absent from the read graph. -/
theorem no_A_one (w : WindowTwo) (t : ReadNode) :
    ¬ ReadEdge ⟨.A, w⟩ true t := by
  simp [ReadEdge, readNext, instruction]

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17
