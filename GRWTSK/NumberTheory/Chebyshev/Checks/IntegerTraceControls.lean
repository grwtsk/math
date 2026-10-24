/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFirstEndpoint

set_option autoImplicit false

/-! Source-only arithmetic controls. No Lean execution is represented. -/
namespace GRWTSK.NumberTheory.Chebyshev.Checks.IntegerTraceControls

open GRWTSK.Analysis.ComplexAnalysis.IntegerDyadicTrace
open GRWTSK.RiemannHypothesis.ConcreteNewtonFirstEndpoint

/-- Negative floor is not truncation toward zero. -/
theorem negative_floor : FloorWindow 4 (-1) (-1) ∧ ¬ FloorWindow 4 (-1) 0 := by
  norm_num [FloorWindow]

theorem exact_ceiling : CeilingWindow 4 8 2 ∧ ¬ CeilingWindow 4 8 3 := by
  norm_num [CeilingWindow]

theorem floor_upper_is_strict : ¬ FloorWindow 4 4 0 := by norm_num [FloorWindow]

theorem ceiling_lower_is_strict : ¬ CeilingWindow 4 4 2 := by norm_num [CeilingWindow]

/-- The exact state at one still carries an error allowance. -/
theorem first_error_not_zero : firstOutput.error ≠ 0 := by norm_num [firstOutput]

theorem nine_error_numerators :
    (firstTrace 0).errorPart = 2 ∧ (firstTrace 1).errorPart = 7 ∧
    (firstTrace 2).errorPart = 17 ∧ (firstTrace 3).errorPart = 37 ∧
    (firstTrace 4).errorPart = 77 ∧ (firstTrace 5).errorPart = 157 ∧
    (firstTrace 6).errorPart = 317 ∧ (firstTrace 7).errorPart = 637 ∧
    (firstTrace 8).errorPart = 1277 := by norm_num [firstTrace]

/-- Dropping the positive squared-error residue gives six rather than seven. -/
theorem understated_first_step_rejected :
    ¬ StepValid 64 (firstTrace 0) ⟨18446744073709551616, 0, 6⟩ := by
  norm_num [StepValid, FloorWindow, CeilingWindow, firstTrace,
    realProduct, imagProduct, errorProduct, scaleZ]

theorem changed_value_rejected :
    ¬ StepValid 64 (firstTrace 0) ⟨18446744073709551617, 0, 7⟩ := by
  norm_num [StepValid, FloorWindow, CeilingWindow, firstTrace,
    realProduct, imagProduct, errorProduct, scaleZ]

end GRWTSK.NumberTheory.Chebyshev.Checks.IntegerTraceControls
