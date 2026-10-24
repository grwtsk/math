/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFirstBlock
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTerminalEndpoint

set_option autoImplicit false

/-!
# Compose the first prefix block and the separate terminal certificate

The first block and terminal concern the SAME original center, schedules and
full States. Both are supplied by closed, unexecuted source proof scripts.
Only positions 0..63 and terminal base 4097 are filled. Every other prefix
record remains untrusted and unchanged. The remaining Fin 63 indexes blocks
1..63, not a truncated set of successful labels. The complete final check is
retained. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonBoundaryAcceptance

open GRWTSK.Analysis.ComplexAnalysis.RationalRoundedArithmetic
open CanonicalZeroDivisor ConcreteNewtonPacket RationalZetaTranscript
open ConcreteNewtonBlockAcceptance

/-- Exact first-block computation and independently reconstructed terminal;
this definition does NOT validate the arbitrary later records. -/
def completed (later : Fin prefixLength → State) : Transcript prefixLength :=
  ConcreteNewtonFirstBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput

@[simp] theorem completed_terminal (later : Fin prefixLength → State) :
    (completed later).terminal = ConcreteNewtonTerminalEndpoint.terminalOutput := rfl

/-- Equality is of the WHOLE State, including the stored error. -/
theorem completed_first (later : Fin prefixLength → State) (i : Fin prefixLength)
    (hi : i.1 < 64) :
    (completed later).prefix i = ConcreteNewtonFirstBlock.output ⟨i.1, hi⟩ := by
  simp only [completed, ConcreteNewtonFirstBlock.fill, dif_pos hi]

/-- No omitted or overwritten record above the first block. -/
theorem completed_later (later : Fin prefixLength → State) (i : Fin prefixLength)
    (hi : 64 ≤ i.1) : (completed later).prefix i = later i := by
  simp only [completed, ConcreteNewtonFirstBlock.fill, dif_neg (not_lt.mpr hi)]

theorem first_block_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (completed later) (blockIndices 0) = true :=
  ConcreteNewtonFirstBlock.first_block_check later ConcreteNewtonTerminalEndpoint.terminalOutput

/-- Not a prefix leaf: this is the unchanged, separate checkTerminal. -/
theorem terminal_check (later : Fin prefixLength → State) :
    checkTerminal prefixLength center plan (completed later) = true :=
  ConcreteNewtonTerminalEndpoint.terminal_check (completed later) rfl

/-- Exactly 63 remaining prefix predicates, plus the ORIGINAL six-field and
both-tolerance final predicate. No final value or error is assumed correct. -/
def RemainingChecks (later : Fin prefixLength → State) : Prop :=
  (∀ b : Fin 63, checkPrefix prefixLength center plan (completed later)
    (blockIndices b.succ) = true) ∧
  checkFinal prefixLength center plan (completed later)
    valueTolerance slopeTolerance claimed = true

/-- An exact equivalence for this partially filled transcript. It does not
assert RemainingChecks, nor the existence of a passing completion. -/
theorem remaining_iff_original (later : Fin prefixLength → State) :
    RemainingChecks later ↔ BlockObligations (completed later) := by
  constructor
  · rintro ⟨hb, hf⟩
    refine ⟨?_, terminal_check later, hf⟩
    exact Fin.cases (first_block_check later) hb
  · intro h
    exact ⟨fun b => h.1 b.succ, h.2.2⟩

/-- SourceAcceptance is still a CONCLUSION conditional on all 64 remaining
checks. Neither the original definition nor any old consumer is modified. -/
theorem source_of_remaining (later : Fin prefixLength → State) (h : RemainingChecks later) :
    SourceAcceptance :=
  source_acceptance_of_blocks (completed later) ((remaining_iff_original later).mp h)

/-- The old local conclusion only; no line status, ordering, complete count,
prime margin, or unconditional source-acceptance claim is introduced. -/
theorem local_zero_of_remaining (later : Fin prefixLength → State)
    (h : RemainingChecks later) :
    ∃ z : ZeroPoint, ‖z.1 - QComplex.embed center‖ ≤ (newtonRadius : ℝ) ∧
      deriv riemannZeta z.1 ≠ 0 ∧
      ∀ w : ZeroPoint, ‖w.1 - QComplex.embed center‖ ≤ (newtonRadius : ℝ) → w = z :=
  local_zero_of_source_acceptance (source_of_remaining later h)

/-- A remaining block label never repeats block zero. -/
theorem remaining_block_ne_zero (b : Fin 63) : b.succ ≠ (0 : Fin 64) := by
  intro h
  have he := congrArg Fin.val h
  simp at he

/-- Every position outside the supplied first block belongs to a remaining
block. The terminal is not a position of Fin prefixLength. -/
theorem remaining_coverage (i : Fin prefixLength) (hi : 64 ≤ i.1) :
    ∃ b : Fin 63, i ∈ blockIndices b.succ := by
  have htop : i.1 < 4096 := i.isLt
  let b : Fin 63 := ⟨i.1 / 64 - 1, by omega⟩
  refine ⟨b, ?_⟩
  rw [mem_blockIndices]
  change i.1 / 64 = (i.1 / 64 - 1) + 1
  omega

/-- Supplying the two boundary portions does not erase any later payload. -/
theorem completion_injective_on_later (f g : Fin prefixLength → State)
    (h : completed f = completed g) (i : Fin prefixLength) (hi : 64 ≤ i.1) :
    f i = g i := by
  have he := congrArg (fun t : Transcript prefixLength => t.prefix i) h
  simpa only [completed_later f i hi, completed_later g i hi] using he

end GRWTSK.RiemannHypothesis.ConcreteNewtonBoundaryAcceptance
