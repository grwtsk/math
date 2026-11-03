/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.RootHeatState
import GRWTSK.MeasureAndIntegration.CERNWaveformSignedGram
import GRWTSK.DifferentialGeometry.GodelObserverRootTransport
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Signed color diffusion, exact source returns, and Gödel geometry boundary

A source is an arbitrary rational finite waveform, not an assumed Möbius sign.
Red/blue parts of any source-minus-observation difference are transported
through the ORIGINAL column-stochastic finite RootHeatState.HeatKernel.
Separate masses, signed total mass, and full local residual are explicit.
The signed off-diagonal Gram is returned with BOTH mixed orientations.

An arbitrary diffusion can lose local information (even when both colors'
total masses remain fixed). The actual Gödel observer is recovered only if
one supplies and proves a source-to-tangent comparison. No such identification
is inferred from color conservation or a graph-sandwich edge alone.
-/

namespace GRWTSK.MeasureAndIntegration.ColoredDiffusiveGodelReturn

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
open GRWTSK.MeasureAndIntegration.UniversalWaveformInput
open GRWTSK.MeasureAndIntegration.CERNWaveformSignedGram
open GRWTSK.DifferentialGeometry.GodelObserverRootTransport
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

universe u
variable {Vertex : Type u} [Fintype Vertex] [DecidableEq Vertex]

/-- Red and blue channels are nonnegative for every signed source defect. -/
def red (d : Vertex → ℚ) (v : Vertex) : ℚ := max (d v) 0
def blue (d : Vertex → ℚ) (v : Vertex) : ℚ := max (-d v) 0

/-- No signed information is lost at encoding: d = red - blue. -/
theorem red_sub_blue (d : Vertex → ℚ) (v : Vertex) :
    red d v - blue d v = d v := by
  unfold red blue
  by_cases h : 0 ≤ d v
  · have hneg : -(d v) ≤ 0 := by linarith
    simp [max_eq_left h, max_eq_right hneg]
  · have hnonpos : d v ≤ 0 := le_of_lt (lt_of_not_ge h)
    have hpos : 0 ≤ -(d v) := by linarith
    simp [max_eq_right hnonpos, max_eq_left hpos]


/-- Exact reconstruction after nonnegative color diffusion, with
source-minus-diffused-reading retained as a *pointwise* residual. -/
def diffusedReading (K : HeatKernel Vertex) (d : Vertex → ℚ) : Vertex → ℚ :=
  fun v => K.step (red d) v - K.step (blue d) v

def localDefect (K : HeatKernel Vertex) (d : Vertex → ℚ) : Vertex → ℚ :=
  fun v => d v - diffusedReading K d v

theorem source_eq_diffused_add_defect (K : HeatKernel Vertex)
    (d : Vertex → ℚ) (v : Vertex) :
    diffusedReading K d v + localDefect K d v = d v := by
  unfold localDefect
  ring

/-- The two nonnegative channels retain their *separate* aggregate masses. -/
theorem red_mass_conserved (K : HeatKernel Vertex) (d : Vertex → ℚ) :
    ∑ v, K.step (red d) v = ∑ v, red d v := K.step_mass _

theorem blue_mass_conserved (K : HeatKernel Vertex) (d : Vertex → ℚ) :
    ∑ v, K.step (blue d) v = ∑ v, blue d v := K.step_mass _

/-- Signed aggregate defect is zero even though LOCAL defect need not be. -/
theorem localDefect_total_zero (K : HeatKernel Vertex) (d : Vertex → ℚ) :
    ∑ v, localDefect K d v = 0 := by
  classical
  unfold localDefect diffusedReading
  rw [Finset.sum_sub_distrib, Finset.sum_sub_distrib]
  rw [K.step_mass (red d), K.step_mass (blue d)]
  have hpoint : ∀ v, d v = red d v - blue d v := by
    intro v
    exact (red_sub_blue d v).symm
  simp_rw [hpoint]
  rw [Finset.sum_sub_distrib]
  ring

/-- A separate supplied observed waveform is not identified with its
colored diffusion: the *entire* original residual is still explicit. -/
def observedWithColorResidual
    (original observed : Vertex → ℚ) (K : HeatKernel Vertex) (v : Vertex) : ℚ :=
  observed v + diffusedReading K (fun s => original s - observed s) v

theorem observed_color_source_return
    (original observed : Vertex → ℚ) (K : HeatKernel Vertex) (v : Vertex) :
    observedWithColorResidual original observed K v +
      localDefect K (fun s => original s - observed s) v = original v := by
  unfold observedWithColorResidual
  have h := source_eq_diffused_add_defect K
    (fun s => original s - observed s) v
  linarith

/-- A universally valid complete ordered quadratic error identity is
available for the *actual* real-valued source and arbitrary kernel.
The colors are a visualization/transport, not a substitute source. -/
theorem full_gram_return
    (S : Finset Vertex)
    (original observation : UniversalInput Vertex ℝ)
    (kernel : Vertex → Vertex → ℝ) :
    orderedCross S original kernel =
      orderedCross S observation kernel +
        signedResidual S original observation kernel :=
  orderedCross_source_return S original observation kernel

/-- All mixed orientations and error-error terms are retained by the
existing source theorem; no symmetry or cancellation assumption on K. -/
theorem full_gram_mixed_return
    (S : Finset Vertex)
    (original observation : UniversalInput Vertex ℝ)
    (kernel : Vertex → Vertex → ℝ) :
    signedResidual S original observation kernel =
      ∑ i ∈ S, ∑ j ∈ S,
        if i ≠ j then
          ((original.source i - observation.source i) * observation.source j +
             observation.source i * (original.source j - observation.source j) +
             (original.source i - observation.source i) *
               (original.source j - observation.source j)) * kernel i j
        else 0 :=
  signedResidual_complete_mixed_expansion S original observation kernel

/-- An *actual supplied* Gödel tangent state may be transported through
its genuine metric-derived isometry. Color diffusion alone does not
construct that tangent state or a right inverse to its source map. -/
theorem godel_vorticity_return_of_supplied_state
    (p : Parameters) (x shift : ℝ) (v w : Tangent) :
    vorticity p (x + shift) (shiftTangent shift v) (shiftTangent shift w) =
      vorticity p x v w :=
  vorticity_shift p x shift v w

end GRWTSK.MeasureAndIntegration.ColoredDiffusiveGodelReturn
