/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.Skelet17MacroReadComposition
import Mathlib.Tactic

/-!
# Skelet 17: actual binary tape steps and bounded Coq-shaped returns

Source: Chris Xu, `CoqBB5/BB5/BB5_Skelet17.v` in ccz181078/Coq-BB5,
commit 9142e219229baf2245d3f70851947230ea28a318,
blob bcab294a41d115034c4cd630e2587473703cecc5.
In particular `Increment_toConfig`, `Zero_toConfig`, `Overflow_toConfig`.

This file defines a genuine physical tape (finite set of 1-cell positions,
all other positions 0), an absolute head position, and the exact five-state
machine table already supplied by Skelet17RadiusTwoReadObserver. The one-step
radius-two observation refinement is proved without postulating a source port.
The source `lower` encoding is rendered with a LEFT-facing C marker scanning
the rightmost symbol of its finite left-hand word; each exponent is a count
of `10` pairs, separated by a `1`.

Three concrete returns are checked through a finite-step interpreter and
an induction theorem validating its complete ordered read word. Zero and Overflow
return at absolute head +1 (not at head 0): the exact relative return is paid
by `translatePhysical_relative`. The earlier head-0 endpoint was incorrect. They illustrate
one `Increment;TryHalve`, one `Zero;TryHalve`, and one
`Overflow;Zero;TryHalve` chain. They do NOT prove the unbounded source returns
for arbitrary exponents or finite lists: those require the source's general
`goleft_even10`, `goleft_odd10`, `goright_10`, `goright_nonzero_steps`
and other list-tape lemmas. No Coq compilation or Lean elaboration is claimed.

The legacy `physicalReadPort` below expects absolute endpoint equality and is
too strong for the Zero and Overflow examples. It remains a CONDITIONAL port;
the head-relative consumer must use `RelativeTape` instead. The remaining
universal return is not inferred from finite examples.
-/
set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage

/-- A true bi-infinite zero-default tape, represented by its finite 1-support. -/
structure PhysicalTape where
  control : Control
  head : ℤ
  ones : Finset ℤ
  deriving DecidableEq

/-- The tape content at a relative signed offset from the head. -/
def PhysicalTape.readAt (c : PhysicalTape) (offset : ℤ) : Bool :=
  decide (c.head + offset ∈ c.ones)

/-- The unique updated support after writing at the scanned cell. -/
def writeOnes (ones : Finset ℤ) (at : ℤ) (write : Bool) : Finset ℤ :=
  if write then insert at ones else erase ones at

private theorem read_written_at (ones : Finset ℤ) (at : ℤ) (write : Bool) :
    decide (at ∈ writeOnes ones at write) = write := by
  cases write <;> simp [writeOnes]

private theorem read_written_away (ones : Finset ℤ) (at p : ℤ)
    (write : Bool) (h : p ≠ at) :
    decide (p ∈ writeOnes ones at write) = decide (p ∈ ones) := by
  cases write <;> simp [writeOnes, h]

/-- Actual write, motion, and next state, without using read graph edges. -/
def applyInstruction (c : PhysicalTape) (a : Instruction) : PhysicalTape :=
  { control := a.next
    head := match a.motion with
      | .left => c.head - 1
      | .right => c.head + 1
    ones := writeOnes c.ones c.head a.write }

/-- A physical step records the bit that was actually read from the tape. -/
inductive TapeReadStep : PhysicalTape → Bool → PhysicalTape → Prop where
  | step (c : PhysicalTape) (a : Instruction)
      (h : instruction c.control (c.readAt 0) = some a) :
      TapeReadStep c (c.readAt 0) (applyInstruction c a)

/-- Executable form of exactly the preceding transition, including halt. -/
def nextPhysical (c : PhysicalTape) : Option (Bool × PhysicalTape) := do
  let b := c.readAt 0
  let a ← instruction c.control b
  pure (b, applyInstruction c a)

/-- The executable function computes precisely one relational tape step. -/
theorem nextPhysical_sound {c : PhysicalTape} {b : Bool} {d : PhysicalTape}
    (h : nextPhysical c = some (b, d)) : TapeReadStep c b d := by
  unfold nextPhysical at h
  cases ha : instruction c.control (c.readAt 0) with
  | none => simp [ha] at h
  | some a =>
      simp [ha] at h
      rcases h with ⟨rfl, rfl⟩
      exact TapeReadStep.step c a ha

/-- Running exactly n nonhalting steps, returning ALL read bits in order. -/
def runPhysical : ℕ → PhysicalTape → Option (List Bool × PhysicalTape)
  | 0, c => some ([], c)
  | n + 1, c => do
      let (b, d) ← nextPhysical c
      let (tail, finish) ← runPhysical n d
      pure (b :: tail, finish)

/-- Every successful executable trace is a genuine path of physical steps. -/
theorem runPhysical_sound (n : ℕ) (c : PhysicalTape)
    {bits : List Bool} {finish : PhysicalTape}
    (h : runPhysical n c = some (bits, finish)) :
    WordPath TapeReadStep c bits finish := by
  induction n generalizing c bits finish with
  | zero =>
      simp [runPhysical] at h
      rcases h with ⟨rfl, rfl⟩
      exact WordPath.nil c
  | succ n ih =>
      simp only [runPhysical] at h
      cases hn : nextPhysical c with
      | none => simp [hn] at h
      | some pair =>
          rcases pair with ⟨b, d⟩
          simp [hn] at h
          cases ht : runPhysical n d with
          | none => simp [ht] at h
          | some pair =>
              rcases pair with ⟨tail, target⟩
              simp [ht] at h
              rcases h with ⟨rfl, rfl⟩
              exact WordPath.cons (nextPhysical_sound hn) (ih ht)

/-- The word `(10)^n`, left to right. -/
def repeatedTen : ℕ → List Bool
  | 0 => []
  | n + 1 => true :: false :: repeatedTen n

/-- The source's `lowerL` with the first exponent nearest the head.
For instance `[1,0]` gives `1 1 0` from left to right. -/
def lowerLeftWord : List ℕ → List Bool
  | [] => []
  | n :: xs => (if xs.isEmpty then [] else lowerLeftWord xs ++ [true]) ++ repeatedTen n

/-- Store a finite left-hand word ending at the scanned position 0.
All right-hand and more distant left-hand cells are blank. -/
def onesOfLeftWord : List Bool → ℤ → Finset ℤ
  | [], _ => ∅
  | b :: bs, i =>
      let rest := onesOfLeftWord bs (i + 1)
      if b then insert i rest else rest

/-- The literal `(x+1, xs) ↦ lower (x::xs)` source encoding.
The zero first-coordinate case is a totalization outside Coq `toConfig`. -/
def encodePhysical (u : MacroState) : PhysicalTape :=
  let w := lowerLeftWord (u.1 - 1 :: u.2)
  { control := .C
    head := 0
    ones := onesOfLeftWord w (1 - (w.length : ℤ)) }

/-- The new radius-two observer stores the five actual local bits where
known and forgets only the new cell exposed by a head movement. -/
def consistentCell (observed : Option Bool) (actual : Bool) : Prop :=
  observed = none ∨ observed = some actual

/-- A physical tape has exactly the control and five-cell information
claimed by the radius-two observer; `none` is never read as zero. -/
structure TapeCoherent (r : ReadNode) (c : PhysicalTape) : Prop where
  control_eq : r.control = c.control
  l2 : consistentCell r.memory.leftTwo (c.readAt (-2))
  l1 : consistentCell r.memory.leftOne (c.readAt (-1))
  center : consistentCell r.memory.center (c.readAt 0)
  r1 : consistentCell r.memory.rightOne (c.readAt 1)
  r2 : consistentCell r.memory.rightTwo (c.readAt 2)

/-- Every physical tape has at least one coherent radius-two observation. -/
theorem exists_initial_read (c : PhysicalTape) :
    ∃ r : ReadNode, TapeCoherent r c := by
  refine ⟨⟨c.control, unknownWindow⟩, ?_⟩
  exact ⟨rfl, Or.inl rfl, Or.inl rfl, Or.inl rfl,
    Or.inl rfl, Or.inl rfl⟩

private theorem right_other (c : PhysicalTape) (a : Instruction)
    (hr : a.motion = .right) (i : ℤ) (hi : i ≠ -1) :
    (applyInstruction c a).readAt i = c.readAt (i + 1) := by
  have hpos : c.head + (i + 1) ≠ c.head := by omega
  simp only [PhysicalTape.readAt, applyInstruction, hr]
  change decide ((c.head + 1) + i ∈ writeOnes c.ones c.head a.write) =
    decide (c.head + (i + 1) ∈ c.ones)
  rw [show c.head + 1 + i = c.head + (i + 1) by omega]
  exact read_written_away c.ones c.head _ a.write hpos

private theorem right_written (c : PhysicalTape) (a : Instruction)
    (hr : a.motion = .right) :
    (applyInstruction c a).readAt (-1) = a.write := by
  simp only [PhysicalTape.readAt, applyInstruction, hr]
  change decide (c.head + 1 + (-1) ∈ writeOnes c.ones c.head a.write) = a.write
  rw [show c.head + 1 + (-1) = c.head by omega]
  exact read_written_at _ _ _

private theorem left_other (c : PhysicalTape) (a : Instruction)
    (hl : a.motion = .left) (i : ℤ) (hi : i ≠ 1) :
    (applyInstruction c a).readAt i = c.readAt (i - 1) := by
  have hpos : c.head + (i - 1) ≠ c.head := by omega
  simp only [PhysicalTape.readAt, applyInstruction, hl]
  change decide ((c.head - 1) + i ∈ writeOnes c.ones c.head a.write) =
    decide (c.head + (i - 1) ∈ c.ones)
  rw [show c.head - 1 + i = c.head + (i - 1) by omega]
  exact read_written_away c.ones c.head _ a.write hpos

private theorem left_written (c : PhysicalTape) (a : Instruction)
    (hl : a.motion = .left) :
    (applyInstruction c a).readAt 1 = a.write := by
  simp only [PhysicalTape.readAt, applyInstruction, hl]
  change decide (c.head - 1 + 1 ∈ writeOnes c.ones c.head a.write) = a.write
  rw [show c.head - 1 + 1 = c.head by omega]
  exact read_written_at _ _ _

/-- The actual observer successor, not a manufactured physical step. -/
def observedAfter (r : ReadNode) (a : Instruction) : ReadNode :=
  let written : WindowTwo := { r.memory with center := some a.write }
  ⟨a.next, match a.motion with
    | .left => written.shiftLeft
    | .right => written.shiftRight⟩

/-- The read graph's computation of a physical instruction. -/
theorem readNext_observedAfter
    (r : ReadNode) (c : PhysicalTape) (a : Instruction)
    (hc : TapeCoherent r c)
    (hi : instruction c.control (c.readAt 0) = some a) :
    readNext r (c.readAt 0) = some (observedAfter r a) := by
  have hcenter := hc.center
  change r.memory.center = none ∨
    r.memory.center = some (c.readAt 0) at hcenter
  simp [readNext, hc.control_eq, hi, hcenter, observedAfter]

/-- Exact one-step physical tape to radius-two simulation.
No source-return hypothesis is used here. -/
theorem physicalStepToRead
    {c d : PhysicalTape} {bit : Bool} {r : ReadNode}
    (step : TapeReadStep c bit d) (hc : TapeCoherent r c) :
    ∃ r' : ReadNode, ReadEdge r bit r' ∧ TapeCoherent r' d := by
  cases step with
  | step c a hi =>
      let next := observedAfter r a
      refine ⟨next, ?_, ?_⟩
      · exact readNext_observedAfter r c a hc hi
      · cases hm : a.motion with
        | left =>
            dsimp [next, observedAfter, WindowTwo.shiftLeft]
            refine ⟨rfl, Or.inl rfl, ?_, ?_, ?_, ?_⟩
            · simpa [left_other c a hm (-1) (by decide)] using hc.l2
            · simpa [left_other c a hm 0 (by decide)] using hc.l1
            · simpa [consistentCell, left_written c a hm] using
                (Or.inr (rfl : (some a.write : Option Bool) = some a.write))
            · simpa [left_other c a hm 2 (by decide)] using hc.r1
        | right =>
            dsimp [next, observedAfter, WindowTwo.shiftRight]
            refine ⟨rfl, ?_, ?_, ?_, ?_, Or.inl rfl⟩
            · simpa [right_other c a hm (-2) (by decide)] using hc.l1
            · simpa [consistentCell, right_written c a hm] using
                (Or.inr (rfl : (some a.write : Option Bool) = some a.write))
            · simpa [right_other c a hm 0 (by decide)] using hc.r1
            · simpa [right_other c a hm 1 (by decide)] using hc.r2

/-- A physical read word lifts to the SAME binary word in radius two. -/
theorem physicalWordsToRead
    {c d : PhysicalTape} {bits : List Bool}
    (h : WordPath TapeReadStep c bits d)
    {r : ReadNode} (hc : TapeCoherent r c) :
    ∃ r' : ReadNode,
      WordPath ReadEdge r bits r' ∧ TapeCoherent r' d := by
  induction h generalizing r with
  | nil s => exact ⟨r, WordPath.nil r, hc⟩
  | @cons s m t b rest edge tail ih =>
      obtain ⟨rm, hr, hcm⟩ := physicalStepToRead edge hc
      obtain ⟨rt, ht, hct⟩ := ih hcm
      exact ⟨rt, WordPath.cons hr ht, hct⟩

/-- The three exact source-return shapes have been translated to Lean.
The *unbounded execution* premise below is still required; finite examples
are intentionally not used to fill this field. -/
def physicalReadPort
    (fullReturn : ∀ {u v : MacroState} {macroWord : List MacroLabel},
      ReturnedMacro u macroWord v →
        ∃ bits : List Bool,
          WordPath TapeReadStep (encodePhysical u) bits (encodePhysical v)) :
    SourceReadPort PhysicalTape where
  physicalStep := TapeReadStep
  encode := encodePhysical
  coherent := TapeCoherent
  initialCoherent := fun u => exists_initial_read (encodePhysical u)
  returnedToPhysical := fun h => fullReturn h
  physicalStepToRead := fun h hc =>
    GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17.physicalStepToRead h hc

/-- Given genuine physical return terms, the existing paired composition now
has only the unbounded return as an explicit input, not a second observation
axiom. -/
theorem pairedFromPhysicalReturns
    (fullReturn : ∀ {u v : MacroState} {macroWord : List MacroLabel},
      ReturnedMacro u macroWord v →
        ∃ bits : List Bool,
          WordPath TapeReadStep (encodePhysical u) bits (encodePhysical v))
    {u v : MacroState} {word : List MacroLabel}
    (h : ReturnedMacro u word v) :
    ∃ bits : List Bool, ∃ start finish : ReadNode,
      TapeCoherent start (encodePhysical u) ∧
      WordPath ReadEdge start bits finish ∧
      TapeCoherent finish (encodePhysical v) ∧
      WordPath GrayEdge (grayObserve u) word (grayObserve v) := by
  exact returnedMacro_paired (physicalReadPort fullReturn) h


/-! ### Absolute-head translations and correct relative-return semantics -/

/-- Translate both the scanning head and all 1-cells by the same amount.
This changes absolute coordinates but no head-relative tape observation. -/
def translatePhysical (c : PhysicalTape) (shift : ℤ) : PhysicalTape :=
  { control := c.control
    head := c.head + shift
    ones := c.ones.image (fun pos => pos + shift) }

/-- Same machine state and the same bit at EVERY offset from each head.
Unlike absolute equality, this is the source's head-relative tape equality. -/
structure RelativeTape (c d : PhysicalTape) : Prop where
  control_eq : c.control = d.control
  at : ∀ offset : ℤ, c.readAt offset = d.readAt offset

/-- Every translation preserves the exact head-relative tape content. -/
theorem translatePhysical_relative (c : PhysicalTape) (shift : ℤ) :
    RelativeTape (translatePhysical c shift) c := by
  constructor
  · rfl
  · intro offset
    have hmem :
        (c.head + shift + offset) ∈ c.ones.image (fun pos => pos + shift) ↔
          c.head + offset ∈ c.ones := by
      constructor
      · intro h
        rcases Finset.mem_image.mp h with ⟨pos, hpos, hp⟩
        have heq : pos = c.head + offset := by omega
        simpa [heq] using hpos
      · intro h
        apply Finset.mem_image.mpr
        exact ⟨c.head + offset, h, by omega⟩
    by_cases h : c.head + offset ∈ c.ones
    · have ht := hmem.mpr h
      simp [PhysicalTape.readAt, translatePhysical, ht, h]
    · have ht : (c.head + shift + offset) ∉
          c.ones.image (fun pos => pos + shift) := by
        intro x
        exact h (hmem.mp x)
      simp [PhysicalTape.readAt, translatePhysical, ht, h]

/-- Relative equality is reflexive. -/
theorem RelativeTape.refl (c : PhysicalTape) : RelativeTape c c :=
  ⟨rfl, fun _ => rfl⟩

/-- Relative equality is symmetric. -/
theorem RelativeTape.symm {c d : PhysicalTape}
    (h : RelativeTape c d) : RelativeTape d c :=
  ⟨h.control_eq.symm, fun i => (h.at i).symm⟩

/-- Relative equality is transitive. -/
theorem RelativeTape.trans {c d e : PhysicalTape}
    (h : RelativeTape c d) (h' : RelativeTape d e) : RelativeTape c e :=
  ⟨h.control_eq.trans h'.control_eq, fun i => (h.at i).trans (h'.at i)⟩

/-- Relative equality transports all five observed cells and the control state. -/
theorem TapeCoherent.transport
    {r : ReadNode} {c d : PhysicalTape}
    (h : TapeCoherent r c) (rel : RelativeTape c d) : TapeCoherent r d := by
  refine ⟨h.control_eq.trans rel.control_eq, ?_, ?_, ?_, ?_, ?_⟩
  · simpa only [← rel.at (-2)] using h.l2
  · simpa only [← rel.at (-1)] using h.l1
  · simpa only [← rel.at 0] using h.center
  · simpa only [← rel.at 1] using h.r1
  · simpa only [← rel.at 2] using h.r2

/-! ### Concrete source-return witnesses (not universal source return) -/

/-- An actual Increment and skipped TryHalve, witnessed by 6 tape reads. -/
def incrementSmall : ReturnedMacro (2, [0]) [.increment] (1, [1]) := by
  exact ReturnedMacro.increment
    (MacroEdge.incrementOdd 1 0 [] (by decide))
    (TryHalvePath.skip 0 [1])

/-- An actual Zero followed by the taken TryHalve, witnessed by 7 reads. -/
def zeroSmall : ReturnedMacro (1, [0]) [.zero, .halve] (2, [0, 0]) := by
  exact ReturnedMacro.zero
    (MacroEdge.zero 0 [] 0 (by decide) (by simp) (by simp) (by decide))
    (TryHalvePath.take 1 [0, 0])

/-- An actual Overflow, Zero, and taken TryHalve, witnessed by 21 reads.
The two intermediate abstract list states are not asserted to be visited tapes. -/
def overflowSmall :
    ReturnedMacro (1, [1]) [.overflow, .zero, .halve] (3, [1, 0, 0]) := by
  exact ReturnedMacro.overflow
    (MacroEdge.overflow 0 [] 1 (by decide) (by simp) (by simp) (by decide))
    (MacroEdge.zero 0 [2] 0 (by decide) (by simp) (by decide) (by decide))
    (TryHalvePath.take 2 [1, 0, 0])

/-- Literal read bit word, returned by the executable physical table. -/
def incrementReadBits : List Bool :=
  [false, true, true, true, false, false]

def zeroReadBits : List Bool :=
  [true, false, false, false, true, false, false]

def overflowReadBits : List Bool :=
  [true, false, true, false, false, false, false, false, true, true,
   false, false, false, true, true, false, true, false, true, false, false]

/-- Exact finite support, state and complete read-word equality. -/
theorem increment_small_run :
    runPhysical 6 (encodePhysical (2, [0])) =
      some (incrementReadBits, encodePhysical (1, [1])) := by
  decide

theorem zero_small_run :
    runPhysical 7 (encodePhysical (1, [0])) =
      some (zeroReadBits, translatePhysical (encodePhysical (2, [0, 0])) 1) := by
  decide

theorem overflow_small_run :
    runPhysical 21 (encodePhysical (1, [1])) =
      some (overflowReadBits, translatePhysical (encodePhysical (3, [1, 0, 0])) 1) := by
  decide

/-- A bounded instance of the Coq `Increment_toConfig` return. -/
theorem increment_small_physical :
    WordPath TapeReadStep (encodePhysical (2, [0]))
      incrementReadBits (encodePhysical (1, [1])) :=
  runPhysical_sound 6 _ increment_small_run

/-- A bounded instance of the Coq `Zero_toConfig` return. -/
theorem zero_small_physical :
    WordPath TapeReadStep (encodePhysical (1, [0]))
      zeroReadBits (translatePhysical (encodePhysical (2, [0, 0])) 1) :=
  runPhysical_sound 7 _ zero_small_run

/-- A bounded instance of the Coq `Overflow_toConfig` return. -/
theorem overflow_small_physical :
    WordPath TapeReadStep (encodePhysical (1, [1]))
      overflowReadBits (translatePhysical (encodePhysical (3, [1, 0, 0])) 1) :=
  runPhysical_sound 21 _ overflow_small_run

/-- These concrete physical paths give actual paired Gray/read evidence,
with no `fullReturn` premise and with the two distinct label types intact. -/
theorem paired_small
    {u v : MacroState} {events : List MacroLabel} {bits : List Bool}
    {finishPhysical : PhysicalTape}
    (macro : ReturnedMacro u events v)
    (physical : WordPath TapeReadStep (encodePhysical u) bits finishPhysical)
    (relative : RelativeTape finishPhysical (encodePhysical v)) :
    ∃ start finish : ReadNode,
      TapeCoherent start (encodePhysical u) ∧
      WordPath ReadEdge start bits finish ∧
      TapeCoherent finish (encodePhysical v) ∧
      WordPath GrayEdge (grayObserve u) events (grayObserve v) := by
  obtain ⟨start, hstart⟩ := exists_initial_read (encodePhysical u)
  obtain ⟨finish, hpath, hfinish⟩ := physicalWordsToRead physical hstart
  exact ⟨start, finish, hstart, hpath, hfinish.transport relative,
    macro.toGrayWordPath⟩

/-- The first increment example has a genuine (not hypothesized) paired path. -/
theorem increment_small_paired :
    ∃ start finish : ReadNode,
      TapeCoherent start (encodePhysical (2, [0])) ∧
      WordPath ReadEdge start incrementReadBits finish ∧
      TapeCoherent finish (encodePhysical (1, [1])) ∧
      WordPath GrayEdge (grayObserve (2, [0])) [.increment]
        (grayObserve (1, [1])) :=
  paired_small incrementSmall increment_small_physical (RelativeTape.refl _)

/-- The zero and overflow examples also instantiate the same physical port. -/
theorem zero_small_paired :
    ∃ start finish : ReadNode,
      TapeCoherent start (encodePhysical (1, [0])) ∧
      WordPath ReadEdge start zeroReadBits finish ∧
      TapeCoherent finish (encodePhysical (2, [0, 0])) ∧
      WordPath GrayEdge (grayObserve (1, [0])) [.zero, .halve]
        (grayObserve (2, [0, 0])) :=
  paired_small zeroSmall zero_small_physical (translatePhysical_relative _ 1)

theorem overflow_small_paired :
    ∃ start finish : ReadNode,
      TapeCoherent start (encodePhysical (1, [1])) ∧
      WordPath ReadEdge start overflowReadBits finish ∧
      TapeCoherent finish (encodePhysical (3, [1, 0, 0])) ∧
      WordPath GrayEdge (grayObserve (1, [1])) [.overflow, .zero, .halve]
        (grayObserve (3, [1, 0, 0])) :=
  paired_small overflowSmall overflow_small_physical (translatePhysical_relative _ 1)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17
