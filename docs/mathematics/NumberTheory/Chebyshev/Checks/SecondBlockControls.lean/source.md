# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.SecondBlockControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1aefe6f0fa4473b68c7607898a244b8a68c19330` · SHA-256 `6188fbf2d6110a371aa9c854c1d11d2f375f2977a9f681d172f0d26fe576b07a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTwoBlocksAndTerminal

set_option autoImplicit false

/-! Boundary and source-identity controls. SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.RiemannHypothesis.SecondBlockControls

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation

/-- Local positions 0 and 63 do not mean integer bases 1 and 64 here. -/
theorem base_boundaries : ConcreteNewtonSecondBlockData.base 0 = 65 ∧
    ConcreteNewtonSecondBlockData.base 63 = 128 := by
  norm_num [ConcreteNewtonSecondBlockData.base]

theorem prefix_boundaries : (ConcreteNewtonSecondBlock.prefixIndex 0).1 = 64 ∧
    (ConcreteNewtonSecondBlock.prefixIndex 63).1 = 127 := by
  norm_num [ConcreteNewtonSecondBlock.prefixIndex]

theorem second_block_endpoints :
    (⟨64, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 1 ∧
    (⟨127, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 1 := by
  constructor <;> rw [ConcreteNewtonSecondBlock.mem_second_block] <;> norm_num

theorem adjacent_positions_excluded :
    (⟨63, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 1 ∧
    (⟨128, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 1 := by
  constructor <;> rw [ConcreteNewtonSecondBlock.mem_second_block] <;> norm_num

/-- The last endpoint crosses a dyadic boundary; the exponent cannot stay six. -/
theorem logarithm_reduction_boundary : (schedule 127).logExponent = 6 ∧
    (schedule 128).logExponent = 7 := by
  norm_num [schedule, logExponent]

theorem terminal_not_second_block (i : Fin 64) : ConcreteNewtonSecondBlockData.base i ≠ 4097 := by
  have := i.isLt
  unfold ConcreteNewtonSecondBlockData.base
  omega

/-- Agreement of complex values alone cannot identify a complete record. -/
theorem changed_error_changes_record (a b : State) (he : a.error ≠ b.error) : a ≠ b := by
  intro h
  exact he (congrArg State.error h)

/-- The first unverified base is 129, at global index 128. -/
theorem first_unfilled_preserved (later : Fin prefixLength → State) :
    (ConcreteNewtonTwoBlocksAndTerminal.fill later).prefix ⟨128, by norm_num [prefixLength]⟩ =
      later ⟨128, by norm_num [prefixLength]⟩ :=
  ConcreteNewtonTwoBlocksAndTerminal.later_record later _ (by norm_num)

theorem terminal_is_copied_exactly (later : Fin prefixLength → State) :
    (ConcreteNewtonTwoBlocksAndTerminal.fill later).terminal =
      ConcreteNewtonTerminalEndpoint.terminalOutput := rfl

theorem remaining_label_boundaries :
    ConcreteNewtonTwoBlocksAndTerminal.remainingBlock 0 = 2 ∧
      ConcreteNewtonTwoBlocksAndTerminal.remainingBlock 61 = 63 := by
  constructor <;> apply Fin.ext <;>
    norm_num [ConcreteNewtonTwoBlocksAndTerminal.remainingBlock]

end GRWTSK.RiemannHypothesis.SecondBlockControls
```
