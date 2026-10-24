/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThirdEndpoint

set_option autoImplicit false

/-! Source controls only; NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Chebyshev.Checks.ThirdEndpointControls

open GRWTSK.Analysis.ComplexAnalysis
open RationalRoundedArithmetic IntegerDyadicTrace
open GRWTSK.Analysis.RealAnalysis.RationalLogEnclosure
open GRWTSK.RiemannHypothesis
open ConcreteNewtonPacket RationalZetaCenterEvaluation
open ConcreteNewtonSecondEndpoint ConcreteNewtonThirdSeed ConcreteNewtonThirdEndpoint
open ConcreteNewtonBlockAcceptance

theorem nonunit_mantissa : RationalPowerEvaluation.mantissa 3 (schedule 3) ≠ 1 := by
  rw [reduction_data.1]
  norm_num

theorem positive_mantissa_width : 0 < width (3 / 2) 18 := by
  rw [mantissa_width]
  norm_num

/-- Dropping just the mantissa width changes the exact required supplier,
even when both errors happen to round to the same coarse integer state. -/
theorem mantissa_uncertainty_not_discarded :
    width 2 18 / 2 < RationalPowerEvaluation.logError 3 (schedule 3) := by
  rw [log_decomposition.2, mantissa_width]
  linarith

theorem argument_keeps_both_negative_components : argNum.1 < 0 ∧ argNum.2 < 0 := by
  norm_num [argNum]

/-- Raising a negative imaginary floor by one fails the SAME seed window. -/
theorem wrong_initial_imaginary_rejected :
    ¬FloorWindow seedDen (scaleZ 64 * seedNum.2) (start.imagPart + 1) := by
  intro h
  exact (not_le_of_gt imag_integer_window.2) h.1

theorem intermediate_error_mutation_rejected :
    ¬StepValid 64 start ⟨18232749346025746264, -2222859347250586273, 18⟩ := by
  norm_num [StepValid, FloorWindow, CeilingWindow, start,
    realProduct, imagProduct, errorProduct, scaleZ]

theorem third_error_retained : thirdOutput.error = 7873 / 18446744073709551616 ∧
    0 < thirdOutput.error := by
  norm_num [thirdOutput]

theorem base_two_cannot_replace_base_three : secondOutput ≠ thirdOutput := by
  intro h
  have hr := congrArg (fun a : State => a.value.re) h
  norm_num [secondOutput, thirdOutput] at hr

/-- Smaller asserted error is rejected even at the unchanged value coordinates. -/
theorem zero_output_error_rejected (tolerance : ℚ) :
    RationalPowerEvaluation.verify 3 (sourceExponent center) (schedule 3) tolerance
      { thirdOutput with error := 0 } = false := by
  cases hv : RationalPowerEvaluation.verify 3 (sourceExponent center)
      (schedule 3) tolerance { thirdOutput with error := 0 } with
  | false => rfl
  | true =>
      have he := (RationalPowerEvaluation.verify_iff 3 (sourceExponent center)
        (schedule 3) tolerance { thirdOutput with error := 0 }).mp hv
      have hout := he.2.2
      rw [third_endpoint_compute] at hout
      have herr := congrArg State.error hout
      norm_num [thirdOutput] at herr

theorem exactly_three_prefix_positions : firstThree.card = 3 := by
  norm_num [firstThree, firstTwo]

/-- The first block still contains unproved entries after this third leaf. -/
theorem fourth_endpoint_remains :
    (⟨3, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ blockIndices 0 \ firstThree := by
  apply Finset.mem_sdiff.mpr
  constructor
  · rw [mem_blockIndices]
    norm_num
  · norm_num [firstThree, firstTwo]

end GRWTSK.NumberTheory.Chebyshev.Checks.ThirdEndpointControls
