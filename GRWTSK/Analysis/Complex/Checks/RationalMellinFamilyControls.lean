/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalMellinFamily

set_option autoImplicit false

/-!
# Finite-family scope controls

These are literal rational checks and source proof candidates, NOT_RUN.
The parameters zero and one are elementary kernel examples, not zeta zeros.
Equal centers with different keys are retained; duplicate keys are rejected.
-/

namespace GRWTSK.Analysis.Complex.Checks.RationalMellinFamilyControls

open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure
open RationalMellinFamily

def unitQuadrature : RationalMellinQuadrature.Trace :=
  ⟨[⟨⟨1, 1, 1, 0, 1⟩, ⟨[one], 0, []⟩⟩], ⟨[zero, one], [0]⟩⟩

def unitFamily : List Member := [⟨10, one, 2⟩, ⟨20, one, 3⟩]
def unitEvaluations : List Evaluation := [⟨10, 1, unitQuadrature⟩, ⟨20, 1, unitQuadrature⟩]
def unitTrace : Trace := withExactAccumulation unitFamily unitEvaluations

theorem weighted_unit_checked : checkWithin unitFamily 2 3 unitTrace 0 = true := by decide +kernel

theorem weighted_unit_output : output unitFamily unitTrace = (5, 0) := by decide +kernel

/-- Analytic composition of the literal check; not execution of the Lean proof term. -/
theorem weighted_unit_analytic :
    ‖centerSum unitFamily 2 3 - (5 : ℂ)‖ ≤ 0 := by
  simpa [weighted_unit_output] using
    checkWithin_sound weighted_unit_checked

/-- Same numerical center is not a reason to delete either distinct record. -/
theorem equal_centers_distinct_keys :
    (memberAt unitFamily 0).center = (memberAt unitFamily 1).center ∧
      (memberAt unitFamily 0).key ≠ (memberAt unitFamily 1).key := by decide +kernel

theorem duplicate_keys_rejected :
    check [⟨10, one, 2⟩, ⟨10, one, 3⟩] 2 3
      (withExactAccumulation [⟨10, one, 2⟩, ⟨10, one, 3⟩]
        [⟨10, 1, unitQuadrature⟩, ⟨10, 1, unitQuadrature⟩]) = false := by decide +kernel

theorem zero_weight_rejected :
    check [⟨10, one, 0⟩] 2 3
      (withExactAccumulation [⟨10, one, 0⟩] [⟨10, 1, unitQuadrature⟩]) = false := by decide +kernel

theorem wrong_key_rejected :
    check unitFamily 2 3 ⟨[⟨11, 1, unitQuadrature⟩, ⟨20, 1, unitQuadrature⟩],
      unitTrace.accumulation⟩ = false := by decide +kernel

theorem reordered_evaluations_rejected :
    check unitFamily 2 3 ⟨unitEvaluations.reverse, unitTrace.accumulation⟩ = false := by decide +kernel

theorem changed_multiplicity_rejected :
    check [⟨10, one, 1⟩, ⟨20, one, 3⟩] 2 3 unitTrace = false := by decide +kernel

theorem missing_extra_evaluations_rejected :
    check unitFamily 2 3 ⟨unitEvaluations.take 1, unitTrace.accumulation⟩ = false ∧
    check unitFamily 2 3 ⟨unitEvaluations ++ [⟨30, 1, unitQuadrature⟩], unitTrace.accumulation⟩ = false := by decide +kernel

theorem wrong_external_inputs_rejected :
    check unitFamily 2 3 ⟨unitEvaluations, unitTrace.accumulation⟩ = true ∧
    check unitFamily 2 4 unitTrace = false ∧
    check [⟨10, (0, 1), 2⟩, ⟨20, one, 3⟩] 2 3 unitTrace = false := by decide +kernel

/-- Correct final answer alone does not validate the intermediate weighted update. -/
theorem false_intermediate_rejected :
    check unitFamily 2 3 ⟨unitEvaluations, ⟨[zero, (0, 2), (5, 0)], [0, 0]⟩⟩ = false := by decide +kernel

theorem negative_radius_rejected :
    check unitFamily 2 3 ⟨unitEvaluations, ⟨[zero, (2, 0), (5, 0)], [-1, 0]⟩⟩ = false := by decide +kernel

def roundedTrace : Trace :=
  ⟨unitEvaluations, ⟨[zero, (2, 1/10), (5, 1/10)], [1/10, 0]⟩⟩

theorem rounded_family_controls :
    checkWithin unitFamily 2 3 roundedTrace (1/10) = true ∧
    checkWithin unitFamily 2 3 roundedTrace (1/20) = false := by decide +kernel

/-- Empty external family means the empty finite sum, not the complete zeta divisor. -/
theorem empty_family_controls :
    checkWithin [] 2 3 (withExactAccumulation [] []) 0 = true ∧
    check [] 2 3 ⟨[], ⟨[], []⟩⟩ = false ∧
    check [] 1 3 (withExactAccumulation [] []) = false := by decide +kernel

def nonconstantQuadrature : RationalMellinQuadrature.Trace :=
  ⟨[⟨⟨1, 1, 1, 1, 3⟩, ⟨[(89/128, 0), (7921/16384, 0)], 0, [0]⟩⟩],
    ⟨[zero, (7921/16384, 0)], [0]⟩⟩

def nonconstantFamily : List Member := [⟨10, zero, 2⟩, ⟨20, zero, 3⟩]
def nonconstantTrace : Trace := withExactAccumulation nonconstantFamily
  [⟨10, 1, nonconstantQuadrature⟩, ⟨20, 1, nonconstantQuadrature⟩]

/-- Multiplicity scales the error as well as the approximation. Local tolerance is not global. -/
theorem nonconstant_budget_controls :
    error nonconstantFamily 2 3 nonconstantTrace = 1029525/262144 ∧
    checkWithin nonconstantFamily 2 3 nonconstantTrace 4 = true ∧
    checkWithin nonconstantFamily 2 3 nonconstantTrace (4/5) = false := by decide +kernel

theorem nonconstant_analytic :
    ‖centerSum nonconstantFamily 2 3 - toComplex (output nonconstantFamily nonconstantTrace)‖ ≤ 4 := by
  simpa using checkWithin_sound nonconstant_budget_controls.2.1

end GRWTSK.Analysis.Complex.Checks.RationalMellinFamilyControls
