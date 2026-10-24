/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFiveBlocksAndTerminal

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.FifthBlockControls

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation

theorem base_boundaries : ConcreteNewtonFifthBlockData.base 0 = 257 ∧
    ConcreteNewtonFifthBlockData.base 63 = 320 := by
  norm_num [ConcreteNewtonFifthBlockData.base]

theorem prefix_boundaries : (ConcreteNewtonFifthBlock.prefixIndex 0).1 = 256 ∧
    (ConcreteNewtonFifthBlock.prefixIndex 63).1 = 319 := by
  norm_num [ConcreteNewtonFifthBlock.prefixIndex]

theorem fifth_block_endpoints :
    (⟨256, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 4 ∧
    (⟨319, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 4 := by
  constructor <;> rw [ConcreteNewtonFifthBlock.mem_fifth_block] <;> norm_num

theorem adjacent_positions_excluded :
    (⟨255, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 4 ∧
    (⟨320, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 4 := by
  constructor <;> rw [ConcreteNewtonFifthBlock.mem_fifth_block] <;> norm_num

theorem logarithm_reduction_uniform : (schedule 257).logExponent = 8 ∧
    (schedule 320).logExponent = 8 := by
  norm_num [schedule, logExponent]

theorem terminal_not_fifth_block (i : Fin 64) : ConcreteNewtonFifthBlockData.base i ≠ 4097 := by
  have := i.isLt
  unfold ConcreteNewtonFifthBlockData.base
  omega

theorem first_unfilled_preserved (later : Fin prefixLength → State) :
    (ConcreteNewtonFiveBlocksAndTerminal.fill later).prefix ⟨320, by norm_num [prefixLength]⟩ =
      later ⟨320, by norm_num [prefixLength]⟩ :=
  ConcreteNewtonFiveBlocksAndTerminal.later_record later _ (by norm_num)

theorem terminal_is_copied_exactly (later : Fin prefixLength → State) :
    (ConcreteNewtonFiveBlocksAndTerminal.fill later).terminal =
      ConcreteNewtonTerminalEndpoint.terminalOutput := rfl

theorem remaining_label_boundaries :
    ConcreteNewtonFiveBlocksAndTerminal.remainingBlock 0 = 5 ∧
      ConcreteNewtonFiveBlocksAndTerminal.remainingBlock 58 = 63 := by
  constructor <;> apply Fin.ext <;>
    norm_num [ConcreteNewtonFiveBlocksAndTerminal.remainingBlock]

end GRWTSK.RiemannHypothesis.FifthBlockControls
