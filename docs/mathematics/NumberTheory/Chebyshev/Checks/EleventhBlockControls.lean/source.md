# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.EleventhBlockControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7d8ec3ba7c3802c183e48a5f195130f570f4f65` · SHA-256 `8545c33b37fd2d997a020f32dad6a54c253957fb91a08cfd4133d996a036af7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonElevenBlocksAndTerminal

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.EleventhBlockControls

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation

theorem base_boundaries : ConcreteNewtonEleventhBlockData.base 0 = 641 ∧
    ConcreteNewtonEleventhBlockData.base 63 = 704 := by
  norm_num [ConcreteNewtonEleventhBlockData.base]

theorem prefix_boundaries : (ConcreteNewtonEleventhBlock.prefixIndex 0).1 = 640 ∧
    (ConcreteNewtonEleventhBlock.prefixIndex 63).1 = 703 := by
  norm_num [ConcreteNewtonEleventhBlock.prefixIndex]

theorem eleventh_block_endpoints :
    (⟨640, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 10 ∧
    (⟨703, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 10 := by
  constructor <;> rw [ConcreteNewtonEleventhBlock.mem_eleventh_block] <;> norm_num

theorem adjacent_positions_excluded :
    (⟨639, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 10 ∧
    (⟨704, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 10 := by
  constructor <;> rw [ConcreteNewtonEleventhBlock.mem_eleventh_block] <;> norm_num

theorem logarithm_reduction_uniform : (schedule 641).logExponent = 9 ∧
    (schedule 704).logExponent = 9 := by
  norm_num [schedule, logExponent]

theorem terminal_not_eleventh_block (i : Fin 64) : ConcreteNewtonEleventhBlockData.base i ≠ 4097 := by
  have := i.isLt
  unfold ConcreteNewtonEleventhBlockData.base
  omega

theorem first_unfilled_preserved (later : Fin prefixLength → State) :
    (ConcreteNewtonElevenBlocksAndTerminal.fill later).prefix ⟨704, by norm_num [prefixLength]⟩ =
      later ⟨704, by norm_num [prefixLength]⟩ :=
  ConcreteNewtonElevenBlocksAndTerminal.later_record later _ (by norm_num)

theorem terminal_is_copied_exactly (later : Fin prefixLength → State) :
    (ConcreteNewtonElevenBlocksAndTerminal.fill later).terminal =
      ConcreteNewtonTerminalEndpoint.terminalOutput := rfl

theorem remaining_label_boundaries :
    ConcreteNewtonElevenBlocksAndTerminal.remainingBlock 0 = 11 ∧
      ConcreteNewtonElevenBlocksAndTerminal.remainingBlock 52 = 63 := by
  constructor <;> apply Fin.ext <;>
    norm_num [ConcreteNewtonElevenBlocksAndTerminal.remainingBlock]

end GRWTSK.RiemannHypothesis.EleventhBlockControls
```
