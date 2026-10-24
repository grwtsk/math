# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.NinthBlockControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9c164088622cba62a9a67d2601c032bdebf4f14` · SHA-256 `d69dd3d07da0ec72bd0bd82b36a714f2133b8474e12f5dcf1af4f9202913aa98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonNineBlocksAndTerminal

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.NinthBlockControls

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation

theorem base_boundaries : ConcreteNewtonNinthBlockData.base 0 = 513 ∧
    ConcreteNewtonNinthBlockData.base 63 = 576 := by
  norm_num [ConcreteNewtonNinthBlockData.base]

theorem prefix_boundaries : (ConcreteNewtonNinthBlock.prefixIndex 0).1 = 512 ∧
    (ConcreteNewtonNinthBlock.prefixIndex 63).1 = 575 := by
  norm_num [ConcreteNewtonNinthBlock.prefixIndex]

theorem ninth_block_endpoints :
    (⟨512, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 8 ∧
    (⟨575, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 8 := by
  constructor <;> rw [ConcreteNewtonNinthBlock.mem_ninth_block] <;> norm_num

theorem adjacent_positions_excluded :
    (⟨511, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 8 ∧
    (⟨576, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 8 := by
  constructor <;> rw [ConcreteNewtonNinthBlock.mem_ninth_block] <;> norm_num

theorem logarithm_reduction_uniform : (schedule 513).logExponent = 9 ∧
    (schedule 576).logExponent = 9 := by
  norm_num [schedule, logExponent]

theorem terminal_not_ninth_block (i : Fin 64) : ConcreteNewtonNinthBlockData.base i ≠ 4097 := by
  have := i.isLt
  unfold ConcreteNewtonNinthBlockData.base
  omega

theorem first_unfilled_preserved (later : Fin prefixLength → State) :
    (ConcreteNewtonNineBlocksAndTerminal.fill later).prefix ⟨576, by norm_num [prefixLength]⟩ =
      later ⟨576, by norm_num [prefixLength]⟩ :=
  ConcreteNewtonNineBlocksAndTerminal.later_record later _ (by norm_num)

theorem terminal_is_copied_exactly (later : Fin prefixLength → State) :
    (ConcreteNewtonNineBlocksAndTerminal.fill later).terminal =
      ConcreteNewtonTerminalEndpoint.terminalOutput := rfl

theorem remaining_label_boundaries :
    ConcreteNewtonNineBlocksAndTerminal.remainingBlock 0 = 9 ∧
      ConcreteNewtonNineBlocksAndTerminal.remainingBlock 54 = 63 := by
  constructor <;> apply Fin.ext <;>
    norm_num [ConcreteNewtonNineBlocksAndTerminal.remainingBlock]

end GRWTSK.RiemannHypothesis.NinthBlockControls
```
