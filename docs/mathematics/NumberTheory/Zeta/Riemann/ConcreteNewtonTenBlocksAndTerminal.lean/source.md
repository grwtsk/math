# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTenBlocksAndTerminal

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3781b9915aedb31f2f5ff6ab9f8bb66835eadb50` · SHA-256 `074044011eb32c2265a36027e0c7481a1321b010cff4df51e2ebcdeacba2b9f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonNineBlocksAndTerminal
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTenthBlock

set_option autoImplicit false

/-!
# Compose the first TEN prefix blocks and the separate terminal leaf

The tenth partial fill changes only positions 576..639. Every later record
stays arbitrary. Fifty-four other blocks plus the original final check remain
explicit premises.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonTenBlocksAndTerminal

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation RationalZetaTranscript

def fill (later : Fin prefixLength → State) : Transcript prefixLength :=
  ConcreteNewtonNineBlocksAndTerminal.fill
    (ConcreteNewtonTenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem first_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 0) = true :=
  ConcreteNewtonNineBlocksAndTerminal.first_check
    (ConcreteNewtonTenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem second_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 1) = true :=
  ConcreteNewtonNineBlocksAndTerminal.second_check
    (ConcreteNewtonTenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem third_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 2) = true :=
  ConcreteNewtonNineBlocksAndTerminal.third_check
    (ConcreteNewtonTenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem fourth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 3) = true :=
  ConcreteNewtonNineBlocksAndTerminal.fourth_check
    (ConcreteNewtonTenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem fifth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 4) = true :=
  ConcreteNewtonNineBlocksAndTerminal.fifth_check
    (ConcreteNewtonTenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem sixth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 5) = true :=
  ConcreteNewtonNineBlocksAndTerminal.sixth_check
    (ConcreteNewtonTenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem seventh_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 6) = true :=
  ConcreteNewtonNineBlocksAndTerminal.seventh_check
    (ConcreteNewtonTenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem eighth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 7) = true :=
  ConcreteNewtonNineBlocksAndTerminal.eighth_check
    (ConcreteNewtonTenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem ninth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 8) = true :=
  ConcreteNewtonNineBlocksAndTerminal.ninth_check
    (ConcreteNewtonTenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem tenth_record (later : Fin prefixLength → State) (j : Fin 64) :
    (fill later).prefix (ConcreteNewtonTenthBlock.prefixIndex j) =
      ConcreteNewtonTenthBlock.output j := by
  have h576 : 576 ≤ (ConcreteNewtonTenthBlock.prefixIndex j).1 := by
    change 576 ≤ j.1 + 576
    omega
  rw [ConcreteNewtonNineBlocksAndTerminal.later_record _ _ h576]
  exact ConcreteNewtonTenthBlock.fill_record later ConcreteNewtonTerminalEndpoint.terminalOutput j

theorem tenth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 9) = true :=
  ConcreteNewtonTenthBlock.tenth_block_of_records (fill later) (tenth_record later)

theorem terminal_check (later : Fin prefixLength → State) :
    checkTerminal prefixLength center plan (fill later) = true :=
  ConcreteNewtonNineBlocksAndTerminal.terminal_check
    (ConcreteNewtonTenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem later_record (later : Fin prefixLength → State) (i : Fin prefixLength)
    (hi : 640 ≤ i.1) : (fill later).prefix i = later i := by
  rw [ConcreteNewtonNineBlocksAndTerminal.later_record _ i (by omega)]
  exact ConcreteNewtonTenthBlock.fill_preserves_outside later
    ConcreteNewtonTerminalEndpoint.terminalOutput i (by omega)

def remainingBlock (j : Fin 54) : Fin 64 := ⟨j.1 + 10, by have := j.isLt; omega⟩

theorem remaining_cover (b : Fin 64)
    (h0 : b ≠ 0) (h1 : b ≠ 1) (h2 : b ≠ 2) (h3 : b ≠ 3) (h4 : b ≠ 4) (h5 : b ≠ 5) (h6 : b ≠ 6) (h7 : b ≠ 7) (h8 : b ≠ 8) (h9 : b ≠ 9) :
    ∃ j : Fin 54, remainingBlock j = b := by
  have hb := b.isLt
  have hb0 : b.1 ≠ 0 := by intro h; apply h0; exact Fin.ext h
  have hb1 : b.1 ≠ 1 := by intro h; apply h1; exact Fin.ext h
  have hb2 : b.1 ≠ 2 := by intro h; apply h2; exact Fin.ext h
  have hb3 : b.1 ≠ 3 := by intro h; apply h3; exact Fin.ext h
  have hb4 : b.1 ≠ 4 := by intro h; apply h4; exact Fin.ext h
  have hb5 : b.1 ≠ 5 := by intro h; apply h5; exact Fin.ext h
  have hb6 : b.1 ≠ 6 := by intro h; apply h6; exact Fin.ext h
  have hb7 : b.1 ≠ 7 := by intro h; apply h7; exact Fin.ext h
  have hb8 : b.1 ≠ 8 := by intro h; apply h8; exact Fin.ext h
  have hb9 : b.1 ≠ 9 := by intro h; apply h9; exact Fin.ext h
  refine ⟨⟨b.1 - 10, by omega⟩, ?_⟩
  apply Fin.ext
  change b.1 - 10 + 10 = b.1
  omega

theorem source_of_remaining (later : Fin prefixLength → State)
    (hrest : ∀ j : Fin 54, checkPrefix prefixLength center plan (fill later)
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
              · by_cases hb7 : b = 7
                · subst b; exact eighth_check later
                · by_cases hb8 : b = 8
                  · subst b; exact ninth_check later
                  · by_cases hb9 : b = 9
                    · subst b; exact tenth_check later
                    · obtain ⟨j, rfl⟩ := remaining_cover b hb0 hb1 hb2 hb3 hb4 hb5 hb6 hb7 hb8 hb9
                      exact hrest j

end GRWTSK.RiemannHypothesis.ConcreteNewtonTenBlocksAndTerminal
```
