# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.ThirteenthBlockControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a72f7124d352e40e672d258f433181a6adeda38` · SHA-256 `ea15c2143912d589a9f49b2584d21a6df3795a07afcd29c82f8cdf4c7f4389e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThirteenBlocksAndTerminal

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.ThirteenthBlockControls

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation

theorem base_boundaries : ConcreteNewtonThirteenthBlockData.base 0 = 769 ∧
    ConcreteNewtonThirteenthBlockData.base 63 = 832 := by
  norm_num [ConcreteNewtonThirteenthBlockData.base]

theorem prefix_boundaries : (ConcreteNewtonThirteenthBlock.prefixIndex 0).1 = 768 ∧
    (ConcreteNewtonThirteenthBlock.prefixIndex 63).1 = 831 := by
  norm_num [ConcreteNewtonThirteenthBlock.prefixIndex]

theorem thirteenth_block_endpoints :
    (⟨768, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 12 ∧
    (⟨831, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 12 := by
  constructor <;> rw [ConcreteNewtonThirteenthBlock.mem_thirteenth_block] <;> norm_num

theorem adjacent_positions_excluded :
    (⟨767, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 12 ∧
    (⟨832, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 12 := by
  constructor <;> rw [ConcreteNewtonThirteenthBlock.mem_thirteenth_block] <;> norm_num

theorem logarithm_reduction_uniform : (schedule 769).logExponent = 9 ∧
    (schedule 832).logExponent = 9 := by
  norm_num [schedule, logExponent]

theorem terminal_not_thirteenth_block (i : Fin 64) : ConcreteNewtonThirteenthBlockData.base i ≠ 4097 := by
  have := i.isLt
  unfold ConcreteNewtonThirteenthBlockData.base
  omega

theorem first_unfilled_preserved (later : Fin prefixLength → State) :
    (ConcreteNewtonThirteenBlocksAndTerminal.fill later).prefix ⟨832, by norm_num [prefixLength]⟩ =
      later ⟨832, by norm_num [prefixLength]⟩ :=
  ConcreteNewtonThirteenBlocksAndTerminal.later_record later _ (by norm_num)

theorem terminal_is_copied_exactly (later : Fin prefixLength → State) :
    (ConcreteNewtonThirteenBlocksAndTerminal.fill later).terminal =
      ConcreteNewtonTerminalEndpoint.terminalOutput := rfl

theorem remaining_label_boundaries :
    ConcreteNewtonThirteenBlocksAndTerminal.remainingBlock 0 = 13 ∧
      ConcreteNewtonThirteenBlocksAndTerminal.remainingBlock 50 = 63 := by
  constructor <;> apply Fin.ext <;>
    norm_num [ConcreteNewtonThirteenBlocksAndTerminal.remainingBlock]

end GRWTSK.RiemannHypothesis.ThirteenthBlockControls
```
