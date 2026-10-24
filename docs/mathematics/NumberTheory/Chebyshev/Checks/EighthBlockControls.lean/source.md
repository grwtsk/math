# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.EighthBlockControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `597b3a8e8af37d64de0b10df00c28251e0153c05` · SHA-256 `b6711120a24fb0e600ca885bf470af0a3d2cba8b902f1003af7b1aabd53ee923`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonEightBlocksAndTerminal

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.EighthBlockControls

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation

theorem base_boundaries : ConcreteNewtonEighthBlockData.base 0 = 449 ∧
    ConcreteNewtonEighthBlockData.base 63 = 512 := by
  norm_num [ConcreteNewtonEighthBlockData.base]

theorem prefix_boundaries : (ConcreteNewtonEighthBlock.prefixIndex 0).1 = 448 ∧
    (ConcreteNewtonEighthBlock.prefixIndex 63).1 = 511 := by
  norm_num [ConcreteNewtonEighthBlock.prefixIndex]

theorem eighth_block_endpoints :
    (⟨448, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 7 ∧
    (⟨511, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 7 := by
  constructor <;> rw [ConcreteNewtonEighthBlock.mem_eighth_block] <;> norm_num

theorem adjacent_positions_excluded :
    (⟨447, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 7 ∧
    (⟨512, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 7 := by
  constructor <;> rw [ConcreteNewtonEighthBlock.mem_eighth_block] <;> norm_num

theorem logarithm_reduction_boundary : (schedule 511).logExponent = 8 ∧
    (schedule 512).logExponent = 9 := by
  norm_num [schedule, logExponent]

theorem terminal_not_eighth_block (i : Fin 64) : ConcreteNewtonEighthBlockData.base i ≠ 4097 := by
  have := i.isLt
  unfold ConcreteNewtonEighthBlockData.base
  omega

theorem first_unfilled_preserved (later : Fin prefixLength → State) :
    (ConcreteNewtonEightBlocksAndTerminal.fill later).prefix ⟨512, by norm_num [prefixLength]⟩ =
      later ⟨512, by norm_num [prefixLength]⟩ :=
  ConcreteNewtonEightBlocksAndTerminal.later_record later _ (by norm_num)

theorem terminal_is_copied_exactly (later : Fin prefixLength → State) :
    (ConcreteNewtonEightBlocksAndTerminal.fill later).terminal =
      ConcreteNewtonTerminalEndpoint.terminalOutput := rfl

theorem remaining_label_boundaries :
    ConcreteNewtonEightBlocksAndTerminal.remainingBlock 0 = 8 ∧
      ConcreteNewtonEightBlocksAndTerminal.remainingBlock 55 = 63 := by
  constructor <;> apply Fin.ext <;>
    norm_num [ConcreteNewtonEightBlocksAndTerminal.remainingBlock]

end GRWTSK.RiemannHypothesis.EighthBlockControls
```
