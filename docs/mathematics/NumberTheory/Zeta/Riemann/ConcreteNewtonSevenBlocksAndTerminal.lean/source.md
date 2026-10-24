# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSevenBlocksAndTerminal

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `645cc69558f70c18ad6abb19a2dbffdcd0936fb8` · SHA-256 `f4d83495efbc64532c98b363e21943f7c6b2a64b0d429c20fa98cd3cdf71e79b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSixBlocksAndTerminal
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSeventhBlock

set_option autoImplicit false

/-!
# Compose the first SEVEN prefix blocks and the separate terminal leaf

The seventh partial fill changes only positions 384..447. Every later record
stays arbitrary. Fifty-seven other blocks plus the original final check remain
explicit premises.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonSevenBlocksAndTerminal

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation RationalZetaTranscript

def fill (later : Fin prefixLength → State) : Transcript prefixLength :=
  ConcreteNewtonSixBlocksAndTerminal.fill
    (ConcreteNewtonSeventhBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem first_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 0) = true :=
  ConcreteNewtonSixBlocksAndTerminal.first_check
    (ConcreteNewtonSeventhBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem second_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 1) = true :=
  ConcreteNewtonSixBlocksAndTerminal.second_check
    (ConcreteNewtonSeventhBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem third_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 2) = true :=
  ConcreteNewtonSixBlocksAndTerminal.third_check
    (ConcreteNewtonSeventhBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem fourth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 3) = true :=
  ConcreteNewtonSixBlocksAndTerminal.fourth_check
    (ConcreteNewtonSeventhBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem fifth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 4) = true :=
  ConcreteNewtonSixBlocksAndTerminal.fifth_check
    (ConcreteNewtonSeventhBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem sixth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 5) = true :=
  ConcreteNewtonSixBlocksAndTerminal.sixth_check
    (ConcreteNewtonSeventhBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem seventh_record (later : Fin prefixLength → State) (j : Fin 64) :
    (fill later).prefix (ConcreteNewtonSeventhBlock.prefixIndex j) =
      ConcreteNewtonSeventhBlock.output j := by
  have h384 : 384 ≤ (ConcreteNewtonSeventhBlock.prefixIndex j).1 := by
    change 384 ≤ j.1 + 384
    omega
  rw [ConcreteNewtonSixBlocksAndTerminal.later_record _ _ h384]
  exact ConcreteNewtonSeventhBlock.fill_record later ConcreteNewtonTerminalEndpoint.terminalOutput j

theorem seventh_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 6) = true :=
  ConcreteNewtonSeventhBlock.seventh_block_of_records (fill later) (seventh_record later)

theorem terminal_check (later : Fin prefixLength → State) :
    checkTerminal prefixLength center plan (fill later) = true :=
  ConcreteNewtonSixBlocksAndTerminal.terminal_check
    (ConcreteNewtonSeventhBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem later_record (later : Fin prefixLength → State) (i : Fin prefixLength)
    (hi : 448 ≤ i.1) : (fill later).prefix i = later i := by
  rw [ConcreteNewtonSixBlocksAndTerminal.later_record _ i (by omega)]
  exact ConcreteNewtonSeventhBlock.fill_preserves_outside later
    ConcreteNewtonTerminalEndpoint.terminalOutput i (by omega)

def remainingBlock (j : Fin 57) : Fin 64 := ⟨j.1 + 7, by have := j.isLt; omega⟩

theorem remaining_cover (b : Fin 64)
    (h0 : b ≠ 0) (h1 : b ≠ 1) (h2 : b ≠ 2)
    (h3 : b ≠ 3) (h4 : b ≠ 4) (h5 : b ≠ 5) (h6 : b ≠ 6) :
    ∃ j : Fin 57, remainingBlock j = b := by
  have hb := b.isLt
  have hb0 : b.1 ≠ 0 := by intro h; apply h0; exact Fin.ext h
  have hb1 : b.1 ≠ 1 := by intro h; apply h1; exact Fin.ext h
  have hb2 : b.1 ≠ 2 := by intro h; apply h2; exact Fin.ext h
  have hb3 : b.1 ≠ 3 := by intro h; apply h3; exact Fin.ext h
  have hb4 : b.1 ≠ 4 := by intro h; apply h4; exact Fin.ext h
  have hb5 : b.1 ≠ 5 := by intro h; apply h5; exact Fin.ext h
  have hb6 : b.1 ≠ 6 := by intro h; apply h6; exact Fin.ext h
  refine ⟨⟨b.1 - 7, by omega⟩, ?_⟩
  apply Fin.ext
  change b.1 - 7 + 7 = b.1
  omega

theorem source_of_remaining (later : Fin prefixLength → State)
    (hrest : ∀ j : Fin 57, checkPrefix prefixLength center plan (fill later)
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
          · by_cases hb5 : b = 5
            · subst b; exact sixth_check later
            · by_cases hb6 : b = 6
              · subst b; exact seventh_check later
              · obtain ⟨j, rfl⟩ := remaining_cover b hb0 hb1 hb2 hb3 hb4 hb5 hb6
                exact hrest j

end GRWTSK.RiemannHypothesis.ConcreteNewtonSevenBlocksAndTerminal
```
