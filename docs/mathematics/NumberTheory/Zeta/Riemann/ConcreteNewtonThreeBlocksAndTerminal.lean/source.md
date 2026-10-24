# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThreeBlocksAndTerminal

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e384a9005001967888e142aadbf41686338253b8` · SHA-256 `ef67591f082fc601dc58265d4b1c8f06a393d2f00508c5c8b4c0f65db5db9590`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTwoBlocksAndTerminal
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThirdBlock

set_option autoImplicit false

/-!
# Compose the first THREE prefix blocks and the separate terminal leaf

The first two blocks and terminal are reused from PR #348. The third partial
fill changes only positions 128..191. Every later record stays arbitrary.
Sixty-one other blocks plus the original final check remain explicit premises.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonThreeBlocksAndTerminal

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation RationalZetaTranscript

def fill (later : Fin prefixLength → State) : Transcript prefixLength :=
  ConcreteNewtonTwoBlocksAndTerminal.fill
    (ConcreteNewtonThirdBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem first_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 0) = true :=
  ConcreteNewtonTwoBlocksAndTerminal.first_check
    (ConcreteNewtonThirdBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem second_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 1) = true :=
  ConcreteNewtonTwoBlocksAndTerminal.second_check
    (ConcreteNewtonThirdBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem third_record (later : Fin prefixLength → State) (j : Fin 64) :
    (fill later).prefix (ConcreteNewtonThirdBlock.prefixIndex j) =
      ConcreteNewtonThirdBlock.output j := by
  have h128 : 128 ≤ (ConcreteNewtonThirdBlock.prefixIndex j).1 := by
    change 128 ≤ j.1 + 128
    omega
  rw [ConcreteNewtonTwoBlocksAndTerminal.later_record _ _ h128]
  exact ConcreteNewtonThirdBlock.fill_record later ConcreteNewtonTerminalEndpoint.terminalOutput j

theorem third_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 2) = true :=
  ConcreteNewtonThirdBlock.third_block_of_records (fill later) (third_record later)

theorem terminal_check (later : Fin prefixLength → State) :
    checkTerminal prefixLength center plan (fill later) = true :=
  ConcreteNewtonTwoBlocksAndTerminal.terminal_check
    (ConcreteNewtonThirdBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem later_record (later : Fin prefixLength → State) (i : Fin prefixLength)
    (hi : 192 ≤ i.1) : (fill later).prefix i = later i := by
  rw [ConcreteNewtonTwoBlocksAndTerminal.later_record _ i (by omega)]
  exact ConcreteNewtonThirdBlock.fill_preserves_outside later
    ConcreteNewtonTerminalEndpoint.terminalOutput i (by omega)

def remainingBlock (j : Fin 61) : Fin 64 := ⟨j.1 + 3, by have := j.isLt; omega⟩

theorem remaining_cover (b : Fin 64) (h0 : b ≠ 0) (h1 : b ≠ 1) (h2 : b ≠ 2) :
    ∃ j : Fin 61, remainingBlock j = b := by
  have hb := b.isLt
  have hb0 : b.1 ≠ 0 := by intro h; apply h0; exact Fin.ext h
  have hb1 : b.1 ≠ 1 := by intro h; apply h1; exact Fin.ext h
  have hb2 : b.1 ≠ 2 := by intro h; apply h2; exact Fin.ext h
  refine ⟨⟨b.1 - 3, by omega⟩, ?_⟩
  apply Fin.ext
  change b.1 - 3 + 3 = b.1
  omega

theorem source_of_remaining (later : Fin prefixLength → State)
    (hrest : ∀ j : Fin 61, checkPrefix prefixLength center plan (fill later)
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
      · obtain ⟨j, rfl⟩ := remaining_cover b hb0 hb1 hb2
        exact hrest j

end GRWTSK.RiemannHypothesis.ConcreteNewtonThreeBlocksAndTerminal
```
