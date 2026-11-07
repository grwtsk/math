/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_ONLY / LEAN_NOT_RUN / KERNEL_NOT_RUN / AXIOMS_NOT_AUDITED.
-/
import Mathlib

/-!
# Skelet17 finite transition table

This table transcribes the published BBCH spelling
`1RB---_0LC1RE_0LD1LC_1RA1LB_0RB0RA`.
It specifies a *local read/write/move* transition, not the unbounded
bi-infinite tape, Gray-code simulation or the Coq non-halting result.
Its role is a bounded adversarial input to a different factor/braid checker.
-/

set_option autoImplicit false

namespace GRWTSK.ComputerScience.Algorithms.Skelet17

inductive State where
  | A | B | C | D | E
  deriving DecidableEq, Repr

inductive Direction where
  | L | R
  deriving DecidableEq, Repr

structure Instruction where
  write : Bool
  move : Direction
  next : State
  deriving DecidableEq, Repr

/-- The five-state, two-symbol instruction reader. -/
def instruction : State → Bool → Option Instruction
  | .A, false => some ⟨true, .R, .B⟩
  | .A, true  => none
  | .B, false => some ⟨false, .L, .C⟩
  | .B, true  => some ⟨true, .R, .E⟩
  | .C, false => some ⟨false, .L, .D⟩
  | .C, true  => some ⟨true, .L, .C⟩
  | .D, false => some ⟨true, .R, .A⟩
  | .D, true  => some ⟨true, .L, .B⟩
  | .E, false => some ⟨false, .R, .B⟩
  | .E, true  => some ⟨false, .R, .A⟩

/-- A local halt instruction appears only at A reading one. -/
theorem undefined_iff (s : State) (bit : Bool) :
    instruction s bit = none ↔ (s = .A ∧ bit = true) := by
  cases s <;> cases bit <;> decide

end GRWTSK.ComputerScience.Algorithms.Skelet17
