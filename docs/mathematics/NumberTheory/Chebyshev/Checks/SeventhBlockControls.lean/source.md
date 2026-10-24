# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.SeventhBlockControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4618c58a64d3d3949fd816ac17dbc3d59bede1a5` · SHA-256 `b8035b2ea6b86d99ca317ebdcdf76f6667b29e198b7173b16d99278a3e999028`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSevenBlocksAndTerminal

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.SeventhBlockControls

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation

theorem base_boundaries : ConcreteNewtonSeventhBlockData.base 0 = 385 ∧
    ConcreteNewtonSeventhBlockData.base 63 = 448 := by
  norm_num [ConcreteNewtonSeventhBlockData.base]

theorem prefix_boundaries : (ConcreteNewtonSeventhBlock.prefixIndex 0).1 = 384 ∧
    (ConcreteNewtonSeventhBlock.prefixIndex 63).1 = 447 := by
  norm_num [ConcreteNewtonSeventhBlock.prefixIndex]

theorem seventh_block_endpoints :
    (⟨384, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 6 ∧
    (⟨447, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 6 := by
  constructor <;> rw [ConcreteNewtonSeventhBlock.mem_seventh_block] <;> norm_num

theorem adjacent_positions_excluded :
    (⟨383, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 6 ∧
    (⟨448, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 6 := by
  constructor <;> rw [ConcreteNewtonSeventhBlock.mem_seventh_block] <;> norm_num

theorem logarithm_reduction_uniform : (schedule 385).logExponent = 8 ∧
    (schedule 448).logExponent = 8 := by
  norm_num [schedule, logExponent]

theorem terminal_not_seventh_block (i : Fin 64) : ConcreteNewtonSeventhBlockData.base i ≠ 4097 := by
  have := i.isLt
  unfold ConcreteNewtonSeventhBlockData.base
  omega

theorem first_unfilled_preserved (later : Fin prefixLength → State) :
    (ConcreteNewtonSevenBlocksAndTerminal.fill later).prefix ⟨448, by norm_num [prefixLength]⟩ =
      later ⟨448, by norm_num [prefixLength]⟩ :=
  ConcreteNewtonSevenBlocksAndTerminal.later_record later _ (by norm_num)

theorem terminal_is_copied_exactly (later : Fin prefixLength → State) :
    (ConcreteNewtonSevenBlocksAndTerminal.fill later).terminal =
      ConcreteNewtonTerminalEndpoint.terminalOutput := rfl

theorem remaining_label_boundaries :
    ConcreteNewtonSevenBlocksAndTerminal.remainingBlock 0 = 7 ∧
      ConcreteNewtonSevenBlocksAndTerminal.remainingBlock 56 = 63 := by
  constructor <;> apply Fin.ext <;>
    norm_num [ConcreteNewtonSevenBlocksAndTerminal.remainingBlock]

end GRWTSK.RiemannHypothesis.SeventhBlockControls
```
