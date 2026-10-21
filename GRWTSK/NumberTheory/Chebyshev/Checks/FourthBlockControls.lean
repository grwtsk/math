/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFourBlocksAndTerminal

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.FourthBlockControls

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation

theorem base_boundaries : ConcreteNewtonFourthBlockData.base 0 = 193 ∧
    ConcreteNewtonFourthBlockData.base 63 = 256 := by
  norm_num [ConcreteNewtonFourthBlockData.base]

theorem prefix_boundaries : (ConcreteNewtonFourthBlock.prefixIndex 0).1 = 192 ∧
    (ConcreteNewtonFourthBlock.prefixIndex 63).1 = 255 := by
  norm_num [ConcreteNewtonFourthBlock.prefixIndex]

theorem fourth_block_endpoints :
    (⟨192, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 3 ∧
    (⟨255, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 3 := by
  constructor <;> rw [ConcreteNewtonFourthBlock.mem_fourth_block] <;> norm_num

theorem adjacent_positions_excluded :
    (⟨191, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 3 ∧
    (⟨256, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 3 := by
  constructor <;> rw [ConcreteNewtonFourthBlock.mem_fourth_block] <;> norm_num

theorem logarithm_reduction_boundary : (schedule 255).logExponent = 7 ∧
    (schedule 256).logExponent = 8 := by
  norm_num [schedule, logExponent]

theorem terminal_not_fourth_block (i : Fin 64) : ConcreteNewtonFourthBlockData.base i ≠ 4097 := by
  have := i.isLt
  unfold ConcreteNewtonFourthBlockData.base
  omega

theorem first_unfilled_preserved (later : Fin prefixLength → State) :
    (ConcreteNewtonFourBlocksAndTerminal.fill later).prefix ⟨256, by norm_num [prefixLength]⟩ =
      later ⟨256, by norm_num [prefixLength]⟩ :=
  ConcreteNewtonFourBlocksAndTerminal.later_record later _ (by norm_num)

theorem terminal_is_copied_exactly (later : Fin prefixLength → State) :
    (ConcreteNewtonFourBlocksAndTerminal.fill later).terminal =
      ConcreteNewtonTerminalEndpoint.terminalOutput := rfl

theorem remaining_label_boundaries :
    ConcreteNewtonFourBlocksAndTerminal.remainingBlock 0 = 4 ∧
      ConcreteNewtonFourBlocksAndTerminal.remainingBlock 59 = 63 := by
  constructor <;> apply Fin.ext <;>
    norm_num [ConcreteNewtonFourBlocksAndTerminal.remainingBlock]

end GRWTSK.RiemannHypothesis.FourthBlockControls
