/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTenBlocksAndTerminal

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.TenthBlockControls

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation

theorem base_boundaries : ConcreteNewtonTenthBlockData.base 0 = 577 ∧
    ConcreteNewtonTenthBlockData.base 63 = 640 := by
  norm_num [ConcreteNewtonTenthBlockData.base]

theorem prefix_boundaries : (ConcreteNewtonTenthBlock.prefixIndex 0).1 = 576 ∧
    (ConcreteNewtonTenthBlock.prefixIndex 63).1 = 639 := by
  norm_num [ConcreteNewtonTenthBlock.prefixIndex]

theorem tenth_block_endpoints :
    (⟨576, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 9 ∧
    (⟨639, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 9 := by
  constructor <;> rw [ConcreteNewtonTenthBlock.mem_tenth_block] <;> norm_num

theorem adjacent_positions_excluded :
    (⟨575, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 9 ∧
    (⟨640, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 9 := by
  constructor <;> rw [ConcreteNewtonTenthBlock.mem_tenth_block] <;> norm_num

theorem logarithm_reduction_uniform : (schedule 577).logExponent = 9 ∧
    (schedule 640).logExponent = 9 := by
  norm_num [schedule, logExponent]

theorem terminal_not_tenth_block (i : Fin 64) : ConcreteNewtonTenthBlockData.base i ≠ 4097 := by
  have := i.isLt
  unfold ConcreteNewtonTenthBlockData.base
  omega

theorem first_unfilled_preserved (later : Fin prefixLength → State) :
    (ConcreteNewtonTenBlocksAndTerminal.fill later).prefix ⟨640, by norm_num [prefixLength]⟩ =
      later ⟨640, by norm_num [prefixLength]⟩ :=
  ConcreteNewtonTenBlocksAndTerminal.later_record later _ (by norm_num)

theorem terminal_is_copied_exactly (later : Fin prefixLength → State) :
    (ConcreteNewtonTenBlocksAndTerminal.fill later).terminal =
      ConcreteNewtonTerminalEndpoint.terminalOutput := rfl

theorem remaining_label_boundaries :
    ConcreteNewtonTenBlocksAndTerminal.remainingBlock 0 = 10 ∧
      ConcreteNewtonTenBlocksAndTerminal.remainingBlock 53 = 63 := by
  constructor <;> apply Fin.ext <;>
    norm_num [ConcreteNewtonTenBlocksAndTerminal.remainingBlock]

end GRWTSK.RiemannHypothesis.TenthBlockControls
