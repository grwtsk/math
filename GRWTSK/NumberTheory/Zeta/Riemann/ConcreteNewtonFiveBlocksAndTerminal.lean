/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFourBlocksAndTerminal
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFifthBlock

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonFiveBlocksAndTerminal

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation RationalZetaTranscript

def fill (later : Fin prefixLength → State) : Transcript prefixLength :=
  ConcreteNewtonFourBlocksAndTerminal.fill
    (ConcreteNewtonFifthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem first_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 0) = true :=
  ConcreteNewtonFourBlocksAndTerminal.first_check
    (ConcreteNewtonFifthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem second_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 1) = true :=
  ConcreteNewtonFourBlocksAndTerminal.second_check
    (ConcreteNewtonFifthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem third_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 2) = true :=
  ConcreteNewtonFourBlocksAndTerminal.third_check
    (ConcreteNewtonFifthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem fourth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 3) = true :=
  ConcreteNewtonFourBlocksAndTerminal.fourth_check
    (ConcreteNewtonFifthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem fifth_record (later : Fin prefixLength → State) (j : Fin 64) :
    (fill later).prefix (ConcreteNewtonFifthBlock.prefixIndex j) =
      ConcreteNewtonFifthBlock.output j := by
  have h256 : 256 ≤ (ConcreteNewtonFifthBlock.prefixIndex j).1 := by
    change 256 ≤ j.1 + 256
    omega
  rw [ConcreteNewtonFourBlocksAndTerminal.later_record _ _ h256]
  exact ConcreteNewtonFifthBlock.fill_record later ConcreteNewtonTerminalEndpoint.terminalOutput j

theorem fifth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 4) = true :=
  ConcreteNewtonFifthBlock.fifth_block_of_records (fill later) (fifth_record later)

theorem terminal_check (later : Fin prefixLength → State) :
    checkTerminal prefixLength center plan (fill later) = true :=
  ConcreteNewtonFourBlocksAndTerminal.terminal_check
    (ConcreteNewtonFifthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem later_record (later : Fin prefixLength → State) (i : Fin prefixLength)
    (hi : 320 ≤ i.1) : (fill later).prefix i = later i := by
  rw [ConcreteNewtonFourBlocksAndTerminal.later_record _ i (by omega)]
  exact ConcreteNewtonFifthBlock.fill_preserves_outside later
    ConcreteNewtonTerminalEndpoint.terminalOutput i (by omega)

def remainingBlock (j : Fin 59) : Fin 64 := ⟨j.1 + 5, by have := j.isLt; omega⟩

theorem remaining_cover (b : Fin 64)
    (h0 : b ≠ 0) (h1 : b ≠ 1) (h2 : b ≠ 2) (h3 : b ≠ 3) (h4 : b ≠ 4) :
    ∃ j : Fin 59, remainingBlock j = b := by
  have hb := b.isLt
  have hb0 : b.1 ≠ 0 := by intro h; apply h0; exact Fin.ext h
  have hb1 : b.1 ≠ 1 := by intro h; apply h1; exact Fin.ext h
  have hb2 : b.1 ≠ 2 := by intro h; apply h2; exact Fin.ext h
  have hb3 : b.1 ≠ 3 := by intro h; apply h3; exact Fin.ext h
  have hb4 : b.1 ≠ 4 := by intro h; apply h4; exact Fin.ext h
  refine ⟨⟨b.1 - 5, by omega⟩, ?_⟩
  apply Fin.ext
  change b.1 - 5 + 5 = b.1
  omega

theorem source_of_remaining (later : Fin prefixLength → State)
    (hrest : ∀ j : Fin 59, checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices (remainingBlock j)) = true)
    (hfinal : checkFinal prefixLength center plan (fill later)
      valueTolerance slopeTolerance claimed = true) : SourceAcceptance := by
  apply ConcreteNewtonBlockAcceptance.source_acceptance_of_blocks (fill later)
  refine ⟨?_, terminal_check later, hfinal⟩
  intro b
  by_cases hb0 : b = 0
  · subst b; exact first_check later
  · by_cases hb1 : b = 1
    · subst b; exact second_check later
    · by_cases hb2 : b = 2
      · subst b; exact third_check later
      · by_cases hb3 : b = 3
        · subst b; exact fourth_check later
        · by_cases hb4 : b = 4
          · subst b; exact fifth_check later
          · obtain ⟨j, rfl⟩ := remaining_cover b hb0 hb1 hb2 hb3 hb4
            exact hrest j

end GRWTSK.RiemannHypothesis.ConcreteNewtonFiveBlocksAndTerminal
