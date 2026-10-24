/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.RationalTentQuadrature

set_option autoImplicit false

/-! Exact elementary controls; not zeta data. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.ComplexAnalysis.Checks.RationalTentQuadratureControls

open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
open GRWTSK.Analysis.ComplexAnalysis
open RationalTentQuadrature

def unitResolution : RationalMellinNode.Resolution := ⟨1, 1, 1, 0, 1⟩
def unitTrace : Trace := referenceTrace (1, 0) 3 1 1
  (fun _ => unitResolution) (fun _ => unitResolution)

theorem midpoint_mass_control :
    node 3 1 1 0 false = 5 / 2 ∧ node 3 1 1 0 true = 7 / 2 ∧
    mass 1 1 0 false = 1 / 2 ∧ mass 1 1 0 true = 1 / 2 := by decide +kernel

theorem constant_exact_control :
    checkWithin (1, 0) 3 1 1 unitTrace 0 = true ∧ output 1 unitTrace = (1, 0) := by decide +kernel

/-- Same parameter and support interval, different observable. -/
theorem tent_not_unweighted_interval :
    TentMellinKernel.tentKernel 3 1 1 ≠ IntervalMellinKernel.kernel 2 4 1 := by
  rw [TentMellinKernel.tentKernel_one 3 1 (by norm_num) (by norm_num),
    IntervalMellinKernel.kernel_one]
  norm_num

/-- A direct four-kernel numerical call would leave the inherited node domain. -/
theorem shifted_center_domain_control :
    ((1 / 2 : ℚ) ≤ 1) ∧ ¬ ((1 / 2 : ℚ) + 1 ≤ 1) := by norm_num

def nonconstantResolution : RationalMellinNode.Resolution := ⟨1, 1, 1, 1, 3⟩
def nonconstantTrace : Trace := referenceTrace (0, 0) 3 1 1
  (fun _ => nonconstantResolution) (fun _ => nonconstantResolution)

theorem nonconstant_control :
    checkWithin (0, 0) 3 1 1 nonconstantTrace 1 = true ∧
    checkWithin (0, 0) 3 1 1 nonconstantTrace (3 / 4) = false ∧
    output 1 nonconstantTrace = (138886839793 / 393379840000, 0) ∧
    error (0, 0) 3 1 1 nonconstantTrace = 30450085893789473 / 30840979456000000 := by decide +kernel

/-- Both node tolerances pass, but the full tent tolerance still pays the mesh. -/
theorem node_precision_not_tent_precision :
    RationalMellinNode.checkWithin (0, 0) (5 / 2) nonconstantResolution
      (RationalMellinNode.exactTrace (0, 0) (5 / 2) nonconstantResolution) (3 / 4) = true ∧
    RationalMellinNode.checkWithin (0, 0) (7 / 2) nonconstantResolution
      (RationalMellinNode.exactTrace (0, 0) (7 / 2) nonconstantResolution) (3 / 4) = true := by decide +kernel

/-- Uses the literal finite control and the new analytic refinement, not a new log oracle. -/
theorem actual_tent_enclosure :
    ‖TentMellinKernel.tentKernel 3 1 0 -
      (138886839793 / 393379840000 : ℂ)‖ ≤ 1 := by
  have h := checkWithin_sound nonconstant_control.1
  rw [nonconstant_control.2.2.1] at h
  simpa using h

theorem geometry_rejections :
    check (1, 0) 3 0 1 unitTrace = false ∧
    check (1, 0) 3 1 0 unitTrace = false ∧
    check (1, 0) 2 1 1 unitTrace = false ∧
    check (2, 0) 3 1 1 unitTrace = false := by decide +kernel

theorem missing_half_rejected :
    check (1, 0) 3 1 1 { unitTrace with leftSamples := [] } = false ∧
    check (1, 0) 3 1 1 { unitTrace with rightSamples := [] } = false := by decide +kernel

theorem doubled_normalization_rejected :
    check (1, 0) 3 1 1 { unitTrace with accumulation :=
      ⟨[(0, 0), (1, 0), (2, 0)], [0, 0]⟩ } = false := by decide +kernel

theorem correct_final_wrong_middle_rejected :
    check (1, 0) 3 1 1 { unitTrace with accumulation :=
      ⟨[(0, 0), (0, 0), (1, 0)], [0, 0]⟩ } = false := by decide +kernel

def roundedTrace : Trace := { unitTrace with accumulation :=
  ⟨[(0, 0), (1 / 2, 1 / 10), (1, 1 / 10)], [1 / 10, 0]⟩ }

theorem imaginary_rounding_retained :
    checkWithin (1, 0) 3 1 1 roundedTrace (1 / 10) = true ∧
    checkWithin (1, 0) 3 1 1 roundedTrace (1 / 20) = false := by decide +kernel

theorem negative_radius_rejected :
    check (1, 0) 3 1 1 { unitTrace with accumulation :=
      ⟨[(0, 0), (1 / 2, 0), (1, 0)], [-1, 0]⟩ } = false := by decide +kernel

theorem negative_tolerance_rejected : checkWithin (1, 0) 3 1 1 unitTrace (-1) = false := by decide +kernel

end GRWTSK.Analysis.ComplexAnalysis.Checks.RationalTentQuadratureControls
