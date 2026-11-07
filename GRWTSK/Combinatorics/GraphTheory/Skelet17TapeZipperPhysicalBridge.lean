/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.Skelet17TapeRepeaterInduction

/-!
# Skelet 17: full local-cell semantic relation from a zipper to a physical tape

A finite zipper denotes infinitely many implicit zeros. Its physical meaning
is therefore NOT syntactic equality of left or right lists. `ZipperModels`
requires equality of the actual bit read at EVERY signed offset, including all
implicit zero cells. Every original one-step physical instruction is accounted
for, with its write exactly at the old head position; off-head reads are
unchanged. The source is the Coq-BB5 transition table at
ccz181078/Coq-BB5@9142e219229baf2245d3f70851947230ea28a318.

The central source-level theorem proves that a zipper-labeled step, from a
physical tape satisfying the semantic relation, has a corresponding REAL
`TapeReadStep`, retaining the same bit and producing a new semantically
related zipper. Its path induction then consumes arbitrary numbers of steps.

IMPORTANT: The two endpoint representation obligations are separate. One must
still prove that `atLeft .C (lowerLeftWord ...) []` denotes `encodePhysical u`
for each source macro state, and that a zipper target with an additional
explicit terminal zero denotes the SAME physical configuration. Moreover the
other arbitrary-source macro cases are still outstanding. This module does
not silently instantiate the full `physicalReadPort` premise.

Lean, Lake, independent checking and transitive axiom audit NOT_RUN.
-/
set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage

/-- The i-th bit nearest a zipper boundary, or zero beyond finite storage. -/
def nearBit : List Bool → ℕ → Bool
  | [], _ => false
  | x :: _, 0 => x
  | _ :: xs, n + 1 => nearBit xs n

private theorem nearBit_first (xs : List Bool) :
    nearBit xs 0 = xs.headD false := by
  cases xs <;> rfl

private theorem nearBit_tail (xs : List Bool) (n : ℕ) :
    nearBit xs.tail n = nearBit xs (n + 1) := by
  cases xs <;> rfl

/-- A zipper and a physical tape agree on EVERY cell, not merely five cells.
The index i=0 is the immediate neighbor; the head is `scan`. -/
structure ZipperModels (z : TapeZipper) (c : PhysicalTape) : Prop where
  control_eq : z.control = c.control
  scan_eq : z.scan = c.readAt 0
  left_eq : ∀ n : ℕ,
    nearBit z.left n = c.readAt (-((n : ℤ) + 1))
  right_eq : ∀ n : ℕ,
    nearBit z.right n = c.readAt ((n : ℤ) + 1)

private theorem zipper_written_at (ones : Finset ℤ) (p : ℤ) (write : Bool) :
    decide (p ∈ writeOnes ones p write) = write := by
  cases write <;> simp [writeOnes]

private theorem zipper_written_away (ones : Finset ℤ) (p q : ℤ)
    (write : Bool) (hne : q ≠ p) :
    decide (q ∈ writeOnes ones p write) = decide (q ∈ ones) := by
  cases write <;> simp [writeOnes, hne]

private theorem zipper_after_right_away (c : PhysicalTape) (a : Instruction)
    (hm : a.motion = .right) (offset : ℤ) (ho : offset ≠ -1) :
    (applyInstruction c a).readAt offset = c.readAt (offset + 1) := by
  have hne : c.head + (offset + 1) ≠ c.head := by omega
  simp only [PhysicalTape.readAt, applyInstruction, hm]
  change decide ((c.head + 1) + offset ∈ writeOnes c.ones c.head a.write) =
    decide (c.head + (offset + 1) ∈ c.ones)
  rw [show c.head + 1 + offset = c.head + (offset + 1) by omega]
  exact zipper_written_away c.ones c.head _ a.write hne

private theorem zipper_after_right_written (c : PhysicalTape) (a : Instruction)
    (hm : a.motion = .right) :
    (applyInstruction c a).readAt (-1) = a.write := by
  simp only [PhysicalTape.readAt, applyInstruction, hm]
  change decide (c.head + 1 + (-1) ∈ writeOnes c.ones c.head a.write) = a.write
  rw [show c.head + 1 + (-1) = c.head by omega]
  exact zipper_written_at _ _ _

private theorem zipper_after_left_away (c : PhysicalTape) (a : Instruction)
    (hm : a.motion = .left) (offset : ℤ) (ho : offset ≠ 1) :
    (applyInstruction c a).readAt offset = c.readAt (offset - 1) := by
  have hne : c.head + (offset - 1) ≠ c.head := by omega
  simp only [PhysicalTape.readAt, applyInstruction, hm]
  change decide ((c.head - 1) + offset ∈ writeOnes c.ones c.head a.write) =
    decide (c.head + (offset - 1) ∈ c.ones)
  rw [show c.head - 1 + offset = c.head + (offset - 1) by omega]
  exact zipper_written_away c.ones c.head _ a.write hne

private theorem zipper_after_left_written (c : PhysicalTape) (a : Instruction)
    (hm : a.motion = .left) :
    (applyInstruction c a).readAt 1 = a.write := by
  simp only [PhysicalTape.readAt, applyInstruction, hm]
  change decide (c.head - 1 + 1 ∈ writeOnes c.ones c.head a.write) = a.write
  rw [show c.head - 1 + 1 = c.head by omega]
  exact zipper_written_at _ _ _

/-- Each concrete zipper step has a corresponding physical TM step whenever
the complete input tapes agree; the semantic relation is preserved. -/
theorem zipper_step_to_physical
    {z z' : TapeZipper} {bit : Bool} {c : PhysicalTape}
    (hz : ZipperEdge z bit z') (hc : ZipperModels z c) :
    ∃ d : PhysicalTape, TapeReadStep c bit d ∧ ZipperModels z' d := by
  have hInstr : instruction c.control (c.readAt 0) =
      instruction z.control z.scan := by
    rw [hc.control_eq, hc.scan_eq]
  unfold ZipperEdge zipperNext at hz
  cases hi : instruction z.control z.scan with
  | none => simp [hi] at hz
  | some a =>
      cases hm : a.motion with
      | right =>
          simp [hi, hm] at hz
          rcases hz with ⟨rfl, rfl⟩
          let d := applyInstruction c a
          have hreal : TapeReadStep c (c.readAt 0) d := by
            exact TapeReadStep.step c a (by rw [hInstr, hi])
          refine ⟨d, ?_, ?_⟩
          · simpa [hc.scan_eq] using hreal
          · refine ⟨rfl, ?_, ?_, ?_⟩
            · change z.right.headD false = d.readAt 0
              rw [zipper_after_right_away c a hm 0 (by omega)]
              simpa [nearBit_first] using hc.right_eq 0
            · intro n
              cases n with
              | zero =>
                  change a.write = d.readAt (-1)
                  exact (zipper_after_right_written c a hm).symm
              | succ n =>
                  change nearBit z.left n = d.readAt (-(((n + 1 : ℕ) : ℤ) + 1))
                  rw [zipper_after_right_away c a hm _ (by omega)]
                  convert hc.left_eq n using 1 <;> omega
            · intro n
              change nearBit z.right.tail n = d.readAt ((n : ℤ) + 1)
              rw [nearBit_tail]
              rw [zipper_after_right_away c a hm _ (by omega)]
              convert hc.right_eq (n + 1) using 1 <;> omega
      | left =>
          simp [hi, hm] at hz
          rcases hz with ⟨rfl, rfl⟩
          let d := applyInstruction c a
          have hreal : TapeReadStep c (c.readAt 0) d := by
            exact TapeReadStep.step c a (by rw [hInstr, hi])
          refine ⟨d, ?_, ?_⟩
          · simpa [hc.scan_eq] using hreal
          · refine ⟨rfl, ?_, ?_, ?_⟩
            · change z.left.headD false = d.readAt 0
              rw [zipper_after_left_away c a hm 0 (by omega)]
              simpa [nearBit_first] using hc.left_eq 0
            · intro n
              change nearBit z.left.tail n = d.readAt (-((n : ℤ) + 1))
              rw [nearBit_tail]
              rw [zipper_after_left_away c a hm _ (by omega)]
              convert hc.left_eq (n + 1) using 1 <;> omega
            · intro n
              cases n with
              | zero =>
                  change a.write = d.readAt 1
                  exact (zipper_after_left_written c a hm).symm
              | succ n =>
                  change nearBit z.right n = d.readAt (((n + 1 : ℕ) : ℤ) + 1)
                  rw [zipper_after_left_away c a hm _ (by omega)]
                  convert hc.right_eq n using 1 <;> omega

/-- Universal finite-path lifting from a real zipper path to a real physical
read path, assuming a complete source tape relationship at its START. -/
theorem zipper_path_to_physical
    {z t : TapeZipper} {bits : List Bool} {c : PhysicalTape}
    (path : WordPath ZipperEdge z bits t)
    (hc : ZipperModels z c) :
    ∃ d : PhysicalTape, WordPath TapeReadStep c bits d ∧ ZipperModels t d := by
  induction path generalizing c with
  | nil z =>
      exact ⟨c, WordPath.nil c, hc⟩
  | @cons z m t bit rest step tail ih =>
      obtain ⟨cm, hs, hm⟩ := zipper_step_to_physical step hc
      obtain ⟨ct, ht, hc'⟩ := ih hm
      exact ⟨ct, WordPath.cons hs ht, hc'⟩

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Skelet17
