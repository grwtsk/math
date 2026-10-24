# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.TwelfthBlockControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25ca5ac0895094292a0db39e3ff39a62e0209ce7` · SHA-256 `869f9a7ff14b50742d4d10f4b37e0fe177d68e1edf640b9bb0aaf36760fb47b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTwelveBlocksAndTerminal

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.TwelfthBlockControls

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation

theorem base_boundaries : ConcreteNewtonTwelfthBlockData.base 0 = 705 ∧
    ConcreteNewtonTwelfthBlockData.base 63 = 768 := by
  norm_num [ConcreteNewtonTwelfthBlockData.base]

theorem prefix_boundaries : (ConcreteNewtonTwelfthBlock.prefixIndex 0).1 = 704 ∧
    (ConcreteNewtonTwelfthBlock.prefixIndex 63).1 = 767 := by
  norm_num [ConcreteNewtonTwelfthBlock.prefixIndex]

theorem twelfth_block_endpoints :
    (⟨704, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 11 ∧
    (⟨767, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 11 := by
  constructor <;> rw [ConcreteNewtonTwelfthBlock.mem_twelfth_block] <;> norm_num

theorem adjacent_positions_excluded :
    (⟨703, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 11 ∧
    (⟨768, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 11 := by
  constructor <;> rw [ConcreteNewtonTwelfthBlock.mem_twelfth_block] <;> norm_num

theorem logarithm_reduction_uniform : (schedule 705).logExponent = 9 ∧
    (schedule 768).logExponent = 9 := by
  norm_num [schedule, logExponent]

theorem terminal_not_twelfth_block (i : Fin 64) : ConcreteNewtonTwelfthBlockData.base i ≠ 4097 := by
  have := i.isLt
  unfold ConcreteNewtonTwelfthBlockData.base
  omega

theorem first_unfilled_preserved (later : Fin prefixLength → State) :
    (ConcreteNewtonTwelveBlocksAndTerminal.fill later).prefix ⟨768, by norm_num [prefixLength]⟩ =
      later ⟨768, by norm_num [prefixLength]⟩ :=
  ConcreteNewtonTwelveBlocksAndTerminal.later_record later _ (by norm_num)

theorem terminal_is_copied_exactly (later : Fin prefixLength → State) :
    (ConcreteNewtonTwelveBlocksAndTerminal.fill later).terminal =
      ConcreteNewtonTerminalEndpoint.terminalOutput := rfl

theorem remaining_label_boundaries :
    ConcreteNewtonTwelveBlocksAndTerminal.remainingBlock 0 = 12 ∧
      ConcreteNewtonTwelveBlocksAndTerminal.remainingBlock 51 = 63 := by
  constructor <;> apply Fin.ext <;>
    norm_num [ConcreteNewtonTwelveBlocksAndTerminal.remainingBlock]

end GRWTSK.RiemannHypothesis.TwelfthBlockControls
```
