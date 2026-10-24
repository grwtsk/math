/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSecondEndpoint

set_option autoImplicit false

/-! Source controls only; NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Chebyshev.Checks.SecondEndpointControls

open GRWTSK.Analysis.ComplexAnalysis
open RationalRoundedArithmetic IntegerDyadicTrace
open GRWTSK.RiemannHypothesis
open ConcreteNewtonPacket RationalZetaCenterEvaluation ConcreteNewtonFirstEndpoint
open ConcreteNewtonSecondSeed ConcreteNewtonSecondEndpoint ConcreteNewtonBlockAcceptance

theorem nonzero_log_data : 0 < lambdaTwo ∧ 0 < etaTwo := by
  norm_num [lambdaTwo, etaTwo]

theorem both_argument_components_negative :
    secondArgument.re < 0 ∧ secondArgument.im < 0 := by
  norm_num [secondArgument]

theorem initial_error_not_base_one : secondStart.errorPart = 8 ∧ secondStart.errorPart ≠ 2 := by
  norm_num [secondStart]

/-- The original log-uncertainty term prevents reusing base one's seed error. -/
theorem initial_error_two_rejected :
    ¬SeedValid 64 secondSeed secondSeedError
      ⟨secondStart.realPart, secondStart.imagPart, 2⟩ := by
  intro h
  have hlo := second_seed_error_window.2.1
  have hhi := h.2.2.2.2.2
  norm_num only [secondStart] at hlo hhi
  linarith

theorem intermediate_real_mutation_rejected :
    ¬StepValid 64 secondStart
      ⟨18343000008558004312, -1406768156894581479, 19⟩ := by
  norm_num [StepValid, FloorWindow, CeilingWindow, secondStart,
    realProduct, imagProduct, errorProduct, scaleZ]

theorem intermediate_imag_mutation_rejected :
    ¬StepValid 64 secondStart
      ⟨18343000008558004311, -1406768156894581478, 19⟩ := by
  norm_num [StepValid, FloorWindow, CeilingWindow, secondStart,
    realProduct, imagProduct, errorProduct, scaleZ]

theorem intermediate_error_mutation_rejected :
    ¬StepValid 64 secondStart
      ⟨18343000008558004311, -1406768156894581479, 18⟩ := by
  norm_num [StepValid, FloorWindow, CeilingWindow, secondStart,
    realProduct, imagProduct, errorProduct, scaleZ]

theorem output_error_retained : secondOutput.error = 8565 / 18446744073709551616 ∧
    0 < secondOutput.error := by
  norm_num [secondOutput]

theorem base_one_cannot_replace_base_two : firstOutput ≠ secondOutput := by
  intro h
  have he := congrArg (fun x : State => x.value.re) h
  norm_num [firstOutput, secondOutput, QComplex.one] at he

/-- Exact output equality rejects a smaller claimed error even at unchanged coordinates. -/
theorem smaller_output_error_rejected (tolerance : ℚ) :
    RationalPowerEvaluation.verify 2 (sourceExponent center) (schedule 2) tolerance
      { secondOutput with error := 0 } = false := by
  cases hv : RationalPowerEvaluation.verify 2 (sourceExponent center)
      (schedule 2) tolerance { secondOutput with error := 0 } with
  | false => rfl
  | true =>
      have he := (RationalPowerEvaluation.verify_iff 2 (sourceExponent center)
        (schedule 2) tolerance { secondOutput with error := 0 }).mp hv
      have hout := he.2.2
      rw [second_endpoint_compute] at hout
      have herr := congrArg State.error hout
      norm_num [secondOutput] at herr

/-- Third endpoint is still needed in block zero; two leaf proofs are not a block proof. -/
theorem third_endpoint_remains :
    (⟨2, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ blockIndices 0 \ firstTwo := by
  apply Finset.mem_sdiff.mpr
  constructor
  · rw [mem_blockIndices]
    norm_num
  · norm_num [firstTwo]

end GRWTSK.NumberTheory.Chebyshev.Checks.SecondEndpointControls
