/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Source formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.MeasureAndIntegration.ColoredDiffusiveGodelReturn
import GRWTSK.FunctionalAnalysis.NormedLinearSpacesAndBanachSpacesBanachLattices.ObservationSandwich
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Recover supplied Gödel tangent fields from full colored local residuals

The original RootHeatState.HeatKernel has rational nonnegative entries and
source-column mass one. Its real-coefficient extension transports any REAL
waveform, so irrational Gödel observer components are not rounded to rationals.

Source = observation + diffused (red minus blue error) + local residual,
pointwise and in each of the FOUR original Tangent coordinates. Therefore a
supplied, source-identified Gödel tangent field is recovered even if the
heat kernel is not injective, provided its COMPLETE local residual is kept.

Actual Gödel Lorentz metric, spatial tensor and vorticity then return through
the ORIGINAL shift isometry. A dataset without a proved source-to-Tangent map
cannot identify an unknown physical Gödel observer from colors alone.

No general RH arithmetic estimate or Lean kernel acceptance is asserted.
-/

namespace GRWTSK.MeasureAndIntegration.ColoredDiffusiveGodelReconstruction

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich
open GRWTSK.MeasureAndIntegration.UniversalWaveformInput
open GRWTSK.MeasureAndIntegration.ColoredDiffusiveGodelReturn
open GRWTSK.MeasureAndIntegration.CERNWaveformSignedGram
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

universe u
variable {Vertex : Type u} [Fintype Vertex] [DecidableEq Vertex]

/-- The ORIGINAL rational stochastic heat kernel acts on ALL real
waveforms by exact real casts; no rational approximation of the input. -/
def realStep (K : HeatKernel Vertex) (d : Vertex → ℝ) (target : Vertex) : ℝ :=
  ∑ source, (K.transition target source : ℝ) * d source

/-- Exact real-valued source-color decomposition. -/
def redReal (d : Vertex → ℝ) (v : Vertex) : ℝ := max (d v) 0
def blueReal (d : Vertex → ℝ) (v : Vertex) : ℝ := max (-d v) 0

theorem redReal_sub_blueReal (d : Vertex → ℝ) (v : Vertex) :
    redReal d v - blueReal d v = d v := by
  unfold redReal blueReal
  rcases le_total 0 (d v) with h | h
  · have hn : -(d v) ≤ 0 := by linarith
    simp [max_eq_left h, max_eq_right hn]
  · have hn : 0 ≤ -(d v) := by linarith
    simp [max_eq_right h, max_eq_left hn]

/-- Each sign channel diffuses independently with nonnegative weights.
Only their returned DIFFERENCE is signed. -/
def realColorStep (K : HeatKernel Vertex) (d : Vertex → ℝ) (v : Vertex) : ℝ :=
  realStep K (redReal d) v - realStep K (blueReal d) v

theorem realColorStep_eq_realStep (K : HeatKernel Vertex)
    (d : Vertex → ℝ) (v : Vertex) :
    realColorStep K d v = realStep K d v := by
  unfold realColorStep realStep
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro source _
  rw [← mul_sub, redReal_sub_blueReal]

/-- Rational column stochasticity transports exactly to arbitrary
REAL input amplitudes. This is not an invertibility theorem. -/
theorem realStep_mass (K : HeatKernel Vertex) (d : Vertex → ℝ) :
    ∑ target, realStep K d target = ∑ source, d source := by
  unfold realStep
  rw [Finset.sum_comm]
  calc
    (∑ source : Vertex, ∑ target : Vertex,
        (K.transition target source : ℝ) * d source) =
      ∑ source : Vertex, (∑ target : Vertex,
        (K.transition target source : ℝ)) * d source := by
        apply Finset.sum_congr rfl
        intro source _
        rw [Finset.sum_mul]
    _ = ∑ source : Vertex, d source := by
      apply Finset.sum_congr rfl
      intro source _
      have hs : (∑ target : Vertex, (K.transition target source : ℝ)) = 1 := by
        exact_mod_cast K.stochastic source
      rw [hs, one_mul]

/-- Every real red/blue mass is separately conserved. -/
theorem redReal_mass (K : HeatKernel Vertex) (d : Vertex → ℝ) :
    ∑ v, realStep K (redReal d) v = ∑ v, redReal d v :=
  realStep_mass K (redReal d)

theorem blueReal_mass (K : HeatKernel Vertex) (d : Vertex → ℝ) :
    ∑ v, realStep K (blueReal d) v = ∑ v, blueReal d v :=
  realStep_mass K (blueReal d)

/-- The indispensable pointwise source-minus-diffused-reading defect. -/
def realLocalResidual (K : HeatKernel Vertex)
    (d : Vertex → ℝ) (v : Vertex) : ℝ :=
  d v - realColorStep K d v

/-- The pointwise residual may be nonzero; only its aggregate is zero. -/
theorem realLocalResidual_total_zero (K : HeatKernel Vertex)
    (d : Vertex → ℝ) :
    ∑ v, realLocalResidual K d v = 0 := by
  calc
    (∑ v, realLocalResidual K d v) =
        (∑ v, d v) - ∑ v, realColorStep K d v := by
      simp only [realLocalResidual, Finset.sum_sub_distrib]
    _ = (∑ v, d v) - ∑ v, realStep K d v := by
      simp_rw [realColorStep_eq_realStep]
    _ = 0 := by rw [realStep_mass]; ring

/-- The sharp quantitative leakage theorem to be compiled/closed
separately: for column-stochastic K, local loss is bounded by twice the
source mass escaping the diagonal. It is a NAMED OPEN Lean Prop target;
finite diagnostics and its ordinary mathematical proof do not confer
kernel acceptance. -/
def SharpSelfLoopLeakage (K : HeatKernel Vertex) : Prop :=
  ∀ d : Vertex → ℝ,
    (∑ v, |realLocalResidual K d v|) ≤
      2 * ∑ source, (1 - (K.transition source source : ℝ)) * |d source|

/-- The color-transported observation still retains the FULL source
only when one includes its local signed residual. -/
def colorObservation
    (K : HeatKernel Vertex) (original observed : Vertex → ℝ)
    (v : Vertex) : ℝ :=
  observed v + realColorStep K (fun s => original s - observed s) v

/-- Pointwise complete source decoder, without assuming K invertible. -/
def recoveredRealChannel
    (K : HeatKernel Vertex) (original observed : Vertex → ℝ)
    (v : Vertex) : ℝ :=
  colorObservation K original observed v +
    realLocalResidual K (fun s => original s - observed s) v

@[simp] theorem recoveredRealChannel_eq_original
    (K : HeatKernel Vertex) (original observed : Vertex → ℝ)
    (v : Vertex) :
    recoveredRealChannel K original observed v = original v := by
  unfold recoveredRealChannel colorObservation realLocalResidual
  ring

/-- The source-to-observation difference is EXACTLY minus the local
residual; it cannot be hidden in the aggregate color mass. -/
theorem colorObservation_abs_error
    (K : HeatKernel Vertex) (original observed : Vertex → ℝ)
    (v : Vertex) :
    |colorObservation K original observed v - original v| =
      |realLocalResidual K (fun s => original s - observed s) v| := by
  have h := recoveredRealChannel_eq_original K original observed v
  have hdiff : colorObservation K original observed v - original v =
      -realLocalResidual K (fun s => original s - observed s) v := by
    unfold recoveredRealChannel at h
    linarith
  rw [hdiff, abs_neg]

/-- Instantiate the canonical ACTUAL observation sandwich with the
exact local color residual as its certified pointwise error radius.
The source guard remains a separate, explicitly supplied relation. -/
def coloredGraphSandwich
    (K : HeatKernel Vertex) (original observed : Vertex → ℝ)
    (guard : EdgeRelation Vertex)
    (tolerance : Vertex → Vertex → ℝ) : Sandwich Vertex :=
  fromErrorBounds guard original (colorObservation K original observed)
    (fun v => |realLocalResidual K
      (fun s => original s - observed s) v|) tolerance (by
        intro v
        simpa only [Real.norm_eq_abs] using
          le_of_eq (colorObservation_abs_error K original observed v))

/-- Every *actual* guarded proximity edge remains in the returned
upper observation graph. No graph edge is invented by diffusion. -/
theorem actual_edge_retained_by_colored_sandwich
    (K : HeatKernel Vertex) (original observed : Vertex → ℝ)
    (guard : EdgeRelation Vertex) (tolerance : Vertex → Vertex → ℝ)
    {u v : Vertex}
    (h : (coloredGraphSandwich K original observed guard tolerance).middle u v) :
    (coloredGraphSandwich K original observed guard tolerance).upper u v :=
  (coloredGraphSandwich K original observed guard tolerance).middle_le_upper h

/-- A SOURCE-GIVEN four-component real tangent field is not identified
from CMS event masses or arbitrary colors. It is an explicit input. -/
def recoveredTangent
    (K : HeatKernel Vertex) (original observed : Vertex → Tangent)
    (v : Vertex) : Tangent where
  t := recoveredRealChannel K (fun s => (original s).t)
    (fun s => (observed s).t) v
  x := recoveredRealChannel K (fun s => (original s).x)
    (fun s => (observed s).x) v
  y := recoveredRealChannel K (fun s => (original s).y)
    (fun s => (observed s).y) v
  z := recoveredRealChannel K (fun s => (original s).z)
    (fun s => (observed s).z) v

/-- All FOUR original real components are recovered, including
irrational source amplitudes, even under a noninjective diffusion. -/
@[simp] theorem recoveredTangent_eq_original
    (K : HeatKernel Vertex) (original observed : Vertex → Tangent)
    (v : Vertex) : recoveredTangent K original observed v = original v := by
  apply Tangent.ext
  · exact recoveredRealChannel_eq_original K
      (fun s => (original s).t) (fun s => (observed s).t) v
  · exact recoveredRealChannel_eq_original K
      (fun s => (original s).x) (fun s => (observed s).x) v
  · exact recoveredRealChannel_eq_original K
      (fun s => (original s).y) (fun s => (observed s).y) v
  · exact recoveredRealChannel_eq_original K
      (fun s => (original s).z) (fun s => (observed s).z) v

/-- Reuse the original Godel LORENTZ metric, not a colored surrogate.
Full source identification is a theorem because the local defect is kept. -/
theorem recovered_godel_lorentz
    (K : HeatKernel Vertex) (original observed : Vertex → Tangent)
    (p : Parameters) (x shift : ℝ) (v w : Vertex) :
    lorentzMetric p (x + shift)
      (shiftTangent shift (recoveredTangent K original observed v))
      (shiftTangent shift (recoveredTangent K original observed w)) =
        lorentzMetric p x (original v) (original w) := by
  simpa only [recoveredTangent_eq_original] using
    lorentzMetric_shift p x shift (original v) (original w)

/-- The original POSITIVE observer-rest spatial tensor also returns. -/
theorem recovered_godel_spatial
    (K : HeatKernel Vertex) (original observed : Vertex → Tangent)
    (p : Parameters) (x shift : ℝ) (v w : Vertex) :
    spatialMetric p (x + shift)
      (shiftTangent shift (recoveredTangent K original observed v))
      (shiftTangent shift (recoveredTangent K original observed w)) =
        spatialMetric p x (original v) (original w) := by
  simpa only [recoveredTangent_eq_original] using
    spatialMetric_shift p x shift (original v) (original w)

/-- Actual original antisymmetric Godel observer vorticity returns. -/
theorem recovered_godel_vorticity
    (K : HeatKernel Vertex) (original observed : Vertex → Tangent)
    (p : Parameters) (x shift : ℝ) (v w : Vertex) :
    vorticity p (x + shift)
      (shiftTangent shift (recoveredTangent K original observed v))
      (shiftTangent shift (recoveredTangent K original observed w)) =
        vorticity p x (original v) (original w) := by
  simpa only [recoveredTangent_eq_original] using
    vorticity_shift p x shift (original v) (original w)

/-- The selected Godel boost observer is recovered only if the
source field was genuinely proved to encode that observer. -/
theorem recovered_is_boosted_observer_of_source
    (K : HeatKernel Vertex) (original observed : Vertex → Tangent)
    (p : Parameters) (v : Vertex)
    (source_is_observer : original v = boostedObserver p) :
    recoveredTangent K original observed v = boostedObserver p := by
  simpa only [recoveredTangent_eq_original] using source_is_observer

end GRWTSK.MeasureAndIntegration.ColoredDiffusiveGodelReconstruction
