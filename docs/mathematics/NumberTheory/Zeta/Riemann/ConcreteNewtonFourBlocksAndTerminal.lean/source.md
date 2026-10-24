# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFourBlocksAndTerminal

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd891171268c1dfafbf83125c9aff7e0ca7bdd96` · SHA-256 `0c6bbf9d129924310ed56949ed608334ed512e862816a568f3483fe52a3bb477`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThreeBlocksAndTerminal
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFourthBlock

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonFourBlocksAndTerminal

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation RationalZetaTranscript

def fill (later : Fin prefixLength → State) : Transcript prefixLength :=
  ConcreteNewtonThreeBlocksAndTerminal.fill
    (ConcreteNewtonFourthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem first_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 0) = true :=
  ConcreteNewtonThreeBlocksAndTerminal.first_check
    (ConcreteNewtonFourthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem second_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 1) = true :=
  ConcreteNewtonThreeBlocksAndTerminal.second_check
    (ConcreteNewtonFourthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem third_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 2) = true :=
  ConcreteNewtonThreeBlocksAndTerminal.third_check
    (ConcreteNewtonFourthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem fourth_record (later : Fin prefixLength → State) (j : Fin 64) :
    (fill later).prefix (ConcreteNewtonFourthBlock.prefixIndex j) =
      ConcreteNewtonFourthBlock.output j := by
  have h192 : 192 ≤ (ConcreteNewtonFourthBlock.prefixIndex j).1 := by
    change 192 ≤ j.1 + 192
    omega
  rw [ConcreteNewtonThreeBlocksAndTerminal.later_record _ _ h192]
  exact ConcreteNewtonFourthBlock.fill_record later ConcreteNewtonTerminalEndpoint.terminalOutput j

theorem fourth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 3) = true :=
  ConcreteNewtonFourthBlock.fourth_block_of_records (fill later) (fourth_record later)

theorem terminal_check (later : Fin prefixLength → State) :
    checkTerminal prefixLength center plan (fill later) = true :=
  ConcreteNewtonThreeBlocksAndTerminal.terminal_check
    (ConcreteNewtonFourthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem later_record (later : Fin prefixLength → State) (i : Fin prefixLength)
    (hi : 256 ≤ i.1) : (fill later).prefix i = later i := by
  rw [ConcreteNewtonThreeBlocksAndTerminal.later_record _ i (by omega)]
  exact ConcreteNewtonFourthBlock.fill_preserves_outside later
    ConcreteNewtonTerminalEndpoint.terminalOutput i (by omega)

def remainingBlock (j : Fin 60) : Fin 64 := ⟨j.1 + 4, by have := j.isLt; omega⟩

theorem remaining_cover (b : Fin 64)
    (h0 : b ≠ 0) (h1 : b ≠ 1) (h2 : b ≠ 2) (h3 : b ≠ 3) :
    ∃ j : Fin 60, remainingBlock j = b := by
  have hb := b.isLt
  have hb0 : b.1 ≠ 0 := by intro h; apply h0; exact Fin.ext h
  have hb1 : b.1 ≠ 1 := by intro h; apply h1; exact Fin.ext h
  have hb2 : b.1 ≠ 2 := by intro h; apply h2; exact Fin.ext h
  have hb3 : b.1 ≠ 3 := by intro h; apply h3; exact Fin.ext h
  refine ⟨⟨b.1 - 4, by omega⟩, ?_⟩
  apply Fin.ext
  change b.1 - 4 + 4 = b.1
  omega

theorem source_of_remaining (later : Fin prefixLength → State)
    (hrest : ∀ j : Fin 60, checkPrefix prefixLength center plan (fill later)
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
        · obtain ⟨j, rfl⟩ := remaining_cover b hb0 hb1 hb2 hb3
          exact hrest j

end GRWTSK.RiemannHypothesis.ConcreteNewtonFourBlocksAndTerminal
```
