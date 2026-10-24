/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThreeBlocksAndTerminal

set_option autoImplicit false

/-! Boundary and source-identity controls. SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.RiemannHypothesis.ThirdBlockControls

open GRWTSK.Analysis.ComplexAnalysis.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation

theorem base_boundaries : ConcreteNewtonThirdBlockData.base 0 = 129 ∧
    ConcreteNewtonThirdBlockData.base 63 = 192 := by
  norm_num [ConcreteNewtonThirdBlockData.base]

theorem prefix_boundaries : (ConcreteNewtonThirdBlock.prefixIndex 0).1 = 128 ∧
    (ConcreteNewtonThirdBlock.prefixIndex 63).1 = 191 := by
  norm_num [ConcreteNewtonThirdBlock.prefixIndex]

theorem third_block_endpoints :
    (⟨128, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 2 ∧
    (⟨191, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 2 := by
  constructor <;> rw [ConcreteNewtonThirdBlock.mem_third_block] <;> norm_num

theorem adjacent_positions_excluded :
    (⟨127, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 2 ∧
    (⟨192, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 2 := by
  constructor <;> rw [ConcreteNewtonThirdBlock.mem_third_block] <;> norm_num

theorem logarithm_reduction_uniform :
    (schedule 129).logExponent = 7 ∧ (schedule 192).logExponent = 7 := by
  norm_num [schedule, logExponent]

theorem terminal_not_third_block (i : Fin 64) : ConcreteNewtonThirdBlockData.base i ≠ 4097 := by
  have := i.isLt
  unfold ConcreteNewtonThirdBlockData.base
  omega

theorem first_unfilled_preserved (later : Fin prefixLength → State) :
    (ConcreteNewtonThreeBlocksAndTerminal.fill later).prefix ⟨192, by norm_num [prefixLength]⟩ =
      later ⟨192, by norm_num [prefixLength]⟩ :=
  ConcreteNewtonThreeBlocksAndTerminal.later_record later _ (by norm_num)

theorem terminal_is_copied_exactly (later : Fin prefixLength → State) :
    (ConcreteNewtonThreeBlocksAndTerminal.fill later).terminal =
      ConcreteNewtonTerminalEndpoint.terminalOutput := rfl

theorem remaining_label_boundaries :
    ConcreteNewtonThreeBlocksAndTerminal.remainingBlock 0 = 3 ∧
      ConcreteNewtonThreeBlocksAndTerminal.remainingBlock 60 = 63 := by
  constructor <;> apply Fin.ext <;>
    norm_num [ConcreteNewtonThreeBlocksAndTerminal.remainingBlock]

end GRWTSK.RiemannHypothesis.ThirdBlockControls
