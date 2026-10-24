/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.RationalPowerEvaluation

set_option autoImplicit false

/-! Source controls for exact data and rejection. These declarations have NOT
been elaborated or executed. Their rational examples are not zeta-zero data. -/

namespace GRWTSK.Analysis.ComplexAnalysis.Checks.RationalPowerControls

open GRWTSK.Analysis.ComplexAnalysis.RationalRoundedArithmetic
open GRWTSK.Analysis.ComplexAnalysis.RationalPowerEvaluation

/-- Floor, not truncation toward zero, on a negative component. -/
theorem negative_component : downQ 2 (-1 / 8) = -1 / 4 := by
  norm_num [downQ, scaleQ]

theorem upward_negative_component : upQ 2 (-1 / 8) = 0 := by
  norm_num [upQ, downQ, scaleQ]

theorem both_components_needed : (3 / 4 : ℚ) ^ 2 + (3 / 4 : ℚ) ^ 2 > 1 := by norm_num

theorem zero_squarings_rounds_seed :
    (run 2 ⟨3 / 8, 0⟩ 0 0).value.re = 1 / 4 := by
  norm_num [run, initialState, quantizeQ, downQ, scaleQ]

theorem upward_error_storage :
    (run 4 QComplex.one (1 / 100) 0).error = 3 / 16 := by
  norm_num [run, initialState, upQ, downQ, roundoffQ, scaleQ]

theorem quadratic_error_not_optional : (11 / 10 : ℚ) ^ 2 - 1 > 2 * (1 / 10) := by norm_num

/-- No degree-zero schedule is allowed to exploit a permissive target. -/
theorem zero_degree_rejected (q : ℚ) (z : QComplex) (p : Schedule) (h : p.degree = 0)
    (tolerance : ℚ) : evaluate q z p tolerance = none := by
  apply (evaluate_none_iff q z p tolerance).mpr
  left
  intro ha
  have hd := ha.2.1
  omega

theorem invalid_mantissa_rejected (q : ℚ) (z : QComplex) (p : Schedule)
    (hq : mantissa q p < 1) (tolerance : ℚ) : evaluate q z p tolerance = none := by
  apply (evaluate_none_iff q z p tolerance).mpr
  exact Or.inl (fun ha => (not_le_of_gt hq) ha.1)

/-- Runtime guards, rather than a claimed budget, decide whether raw data may pass. -/
theorem excessive_radius_rejected (q : ℚ) (z : QComplex) (p : Schedule)
    (hr : 1 < radius q z p) (tolerance : ℚ) : evaluate q z p tolerance = none := by
  apply (evaluate_none_iff q z p tolerance).mpr
  exact Or.inl (fun ha => (not_le_of_gt hr) ha.2.2.1)

theorem empty_search (q : ℚ) (z : QComplex) (tolerance : ℚ) :
    select q z tolerance [] = none := rfl

/-- Equality is permitted for numerical error; this does not relax prime margins. -/
theorem equal_tolerance_passes (q : ℚ) (z : QComplex) (p : Schedule)
    (hp : Admissible q z p) :
    evaluate q z p (compute q z p).error = some (compute q z p) := by
  simp [evaluate, hp]

/-- A supplied output cannot disagree with the recomputed value OR its error. -/
theorem forged_output_rejected (q : ℚ) (z : QComplex) (p : Schedule)
    (tolerance : ℚ) (out : State) (hne : compute q z p ≠ out) :
    evaluate q z p tolerance ≠ some out := by
  intro h
  exact hne ((evaluate_some_iff q z p tolerance out).mp h).2.2

end GRWTSK.Analysis.ComplexAnalysis.Checks.RationalPowerControls
