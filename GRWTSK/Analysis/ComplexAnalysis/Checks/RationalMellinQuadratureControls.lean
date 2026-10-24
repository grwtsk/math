/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.RationalMellinQuadrature

set_option autoImplicit false

/-!
# Complete-uniform-quadrature controls

Literal rational checks and their analytic consequences are source candidates,
not executed Lean fixtures. No zeta zeros or arithmetic prime certificates.
NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.Checks.RationalMellinQuadratureControls

open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure
open GRWTSK.Analysis.ComplexAnalysis.RationalMellinQuadrature
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel

/-- Exact constant density on [2,3]. -/
def unitSample : Sample := ⟨⟨1, 1, 1, 0, 1⟩, ⟨[one], 0, []⟩⟩
def unitTrace : Trace := ⟨[unitSample], ⟨[zero, one], [0]⟩⟩

theorem unit_checked : checkWithin (1, 0) 2 3 1 unitTrace 0 = true := by decide +kernel

theorem unit_integral_enclosure : ‖kernel 2 3 1 - 1‖ ≤ (0 : ℝ) := by
  have h := checkWithin_sound unit_checked
  simpa [output, unitTrace, RationalFiniteSum.valueAt, one] using h

/-- Each complete node trace is inherited from the earlier nonconstant example. -/
def reciprocalSample : Sample :=
  ⟨RationalMellinNode.reciprocalResolution, RationalMellinNode.reciprocalTrace⟩
def reciprocalTrace : Trace := ⟨[reciprocalSample], ⟨[zero, (7921 / 16384, 0)], [0]⟩⟩

theorem reciprocal_checked :
    checkWithin (0, 0) 2 3 1 reciprocalTrace (4 / 5) = true := by decide +kernel

theorem reciprocal_integral_enclosure :
    ‖kernel 2 3 0 - (7921 / 16384 : ℂ)‖ ≤ (4 / 5 : ℝ) := by
  have h := checkWithin_sound reciprocal_checked
  simpa [output, reciprocalTrace, RationalFiniteSum.valueAt] using h

/-- An accurate node is not an integral certificate with the same tolerance. -/
theorem node_precision_is_not_kernel_precision :
    RationalMellinNode.checkWithin (0, 0) 2 reciprocalSample.resolution
      reciprocalSample.trace (3 / 10) = true ∧
    checkWithin (0, 0) 2 3 1 reciprocalTrace (3 / 10) = false := by decide +kernel

/-- Endpoint identity affects weights even when the single left sample is unchanged. -/
theorem changed_right_endpoint_rejected : check (1, 0) 2 4 1 unitTrace = false := by decide +kernel

theorem domain_controls :
    check (1, 0) 3 2 1 unitTrace = false ∧
    check (1, 0) 1 3 1 unitTrace = false ∧
    check (2, 0) 2 3 1 unitTrace = false ∧
    checkWithin (1, 0) 2 3 1 unitTrace (-1) = false := by decide +kernel

/-- Even a degenerate interval must meet this positive-cell-count interface. -/
theorem zero_cells_rejected :
    check (1, 0) 2 3 0 ⟨[], ⟨[zero], []⟩⟩ = false ∧
    check (1, 0) 2 2 0 ⟨[], ⟨[zero], []⟩⟩ = false := by decide +kernel

theorem sample_coverage_controls :
    check (1, 0) 2 3 1 ⟨[], unitTrace.accumulation⟩ = false ∧
    check (1, 0) 2 3 1 ⟨[unitSample, unitSample], unitTrace.accumulation⟩ = false := by decide +kernel

theorem sum_coverage_controls :
    check (1, 0) 2 3 1 ⟨[unitSample], ⟨[zero], [0]⟩⟩ = false ∧
    check (1, 0) 2 3 1 ⟨[unitSample], ⟨[zero, one], []⟩⟩ = false ∧
    check (1, 0) 2 3 1 ⟨[unitSample], ⟨[zero, one, one], [0]⟩⟩ = false := by decide +kernel

/-- Exact updates from a nonzero seed do not justify the desired sum. -/
theorem initialization_control :
    check (1, 0) 2 3 1 ⟨[unitSample], ⟨[one, (2, 0)], [0]⟩⟩ = false := by decide +kernel

def roundedTrace : Trace :=
  ⟨[unitSample, unitSample], ⟨[zero, (3 / 5, 0), (11 / 10, 0)], [1 / 10, 0]⟩⟩

theorem rounded_accumulation_control :
    checkWithin (1, 0) 2 3 2 roundedTrace (1 / 10) = true ∧
    checkWithin (1, 0) 2 3 2 roundedTrace (1 / 20) = false ∧
    check (1, 0) 2 3 2 ⟨roundedTrace.samples, ⟨roundedTrace.accumulation.values, [0, 0]⟩⟩ = false := by decide +kernel

theorem negative_radius_and_imaginary_defect_controls :
    check (1, 0) 2 3 1 ⟨[unitSample], ⟨[zero, one], [-1]⟩⟩ = false ∧
    check (1, 0) 2 3 1 ⟨[unitSample], ⟨[zero, (1, 1)], [0]⟩⟩ = false := by decide +kernel

/-- Equal endpoints are allowed with positive N; the weights and integral vanish. -/
theorem degenerate_interval_control :
    checkWithin (1, 0) 2 2 1 ⟨[unitSample], ⟨[zero, zero], [0]⟩⟩ 0 = true := by decide +kernel

end GRWTSK.Analysis.ComplexAnalysis.Checks.RationalMellinQuadratureControls
