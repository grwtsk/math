# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.FourteenthBlockControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `080e2d172186636000103f932846cba62b471c2b` · SHA-256 `59ed4d4565607b51171f6c14326b9704c3a7806137b2cd39bff5ae2888239b37`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFourteenBlocksAndTerminal

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.FourteenthBlockControls

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation

theorem base_boundaries : ConcreteNewtonFourteenthBlockData.base 0 = 833 ∧
    ConcreteNewtonFourteenthBlockData.base 63 = 896 := by
  norm_num [ConcreteNewtonFourteenthBlockData.base]

theorem prefix_boundaries : (ConcreteNewtonFourteenthBlock.prefixIndex 0).1 = 832 ∧
    (ConcreteNewtonFourteenthBlock.prefixIndex 63).1 = 895 := by
  norm_num [ConcreteNewtonFourteenthBlock.prefixIndex]

theorem fourteenth_block_endpoints :
    (⟨832, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 13 ∧
    (⟨895, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 13 := by
  constructor <;> rw [ConcreteNewtonFourteenthBlock.mem_fourteenth_block] <;> norm_num

theorem adjacent_positions_excluded :
    (⟨831, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 13 ∧
    (⟨896, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 13 := by
  constructor <;> rw [ConcreteNewtonFourteenthBlock.mem_fourteenth_block] <;> norm_num

theorem logarithm_reduction_uniform : (schedule 833).logExponent = 9 ∧
    (schedule 896).logExponent = 9 := by
  norm_num [schedule, logExponent]

theorem terminal_not_fourteenth_block (i : Fin 64) : ConcreteNewtonFourteenthBlockData.base i ≠ 4097 := by
  have := i.isLt
  unfold ConcreteNewtonFourteenthBlockData.base
  omega

theorem first_unfilled_preserved (later : Fin prefixLength → State) :
    (ConcreteNewtonFourteenBlocksAndTerminal.fill later).prefix ⟨896, by norm_num [prefixLength]⟩ =
      later ⟨896, by norm_num [prefixLength]⟩ :=
  ConcreteNewtonFourteenBlocksAndTerminal.later_record later _ (by norm_num)

theorem terminal_is_copied_exactly (later : Fin prefixLength → State) :
    (ConcreteNewtonFourteenBlocksAndTerminal.fill later).terminal =
      ConcreteNewtonTerminalEndpoint.terminalOutput := rfl

theorem remaining_label_boundaries :
    ConcreteNewtonFourteenBlocksAndTerminal.remainingBlock 0 = 14 ∧
      ConcreteNewtonFourteenBlocksAndTerminal.remainingBlock 49 = 63 := by
  constructor <;> apply Fin.ext <;>
    norm_num [ConcreteNewtonFourteenBlocksAndTerminal.remainingBlock]

end GRWTSK.RiemannHypothesis.FourteenthBlockControls
```
