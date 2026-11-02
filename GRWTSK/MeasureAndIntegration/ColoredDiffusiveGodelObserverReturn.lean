/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.MeasureAndIntegration.CERNWaveformSignedGram
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ColoredSourcePorts
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.RelationSandwich
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FinitePhaseDiffusion
import GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Color-routed signed waveform defects and diffusive graph sandwich

The source is an arbitrary original real UniversalInput on a finite index.
The signed coefficient defect is routed through the six ACTUAL canonical
presentation channels. Graph edges are lower-certified, middle-actual, or
upper-candidate; ONLY middle edges enter Gaussian phase diffusion.
The signed graph-complement and diffusion residuals are retained exactly.
Gödel observer data are recovered from the ACTUAL metric only when the
physical chart/parameters/four-tangent states are separately provided.

No physical identification of CERN events with Gödel spacetime, no source
inference from color, no signed-energy monotonicity, no RH supplier.
-/
namespace GRWTSK.Analysis.OperatorTheory.ColoredDiffusiveGodelObserverReturn

open GRWTSK.MeasureAndIntegration.UniversalWaveformInput
open GRWTSK.MeasureAndIntegration.CERNWaveformSignedGram
open GRWTSK.Topology.PortFiber.Colored
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich
open GRWTSK.Analysis.OperatorTheory.FinitePhaseDiffusion
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

universe u
variable {V : Type u} [Fintype V] [DecidableEq V]

/-- Complete ORIGINAL ordered off-diagonal signed packet. -/
def packet (src : UniversalInput V ℝ) (K : Matrix V V ℝ) : ℝ :=
  orderedCross Finset.univ src (fun i j => K i j)

/-- The canonical port color is a label, never a coefficient or proof. -/
def colorHex (c : Channel) : String := Channel.hex c

/-- Signed error in its source-index color. -/
def paintedError (label : V → Channel) (c : Channel)
    (src obs : UniversalInput V ℝ) (i : V) : ℝ :=
  if label i = c then src.source i - obs.source i else 0

theorem paintedError_sum (label : V → Channel)
    (src obs : UniversalInput V ℝ) (i : V) :
    (∑ c : Channel, paintedError label c src obs i) =
      src.source i - obs.source i := by
  classical
  simp [paintedError]

/-- True middle edges only: an upper-envelope candidate is not an edge. -/
noncomputable def middleKernel (S : Sandwich V) (K : Matrix V V ℝ) :
    Matrix V V ℝ := by
  classical
  exact fun i j => if S.middle i j then K i j else 0

noncomputable def lowerKernel (S : Sandwich V) (K : Matrix V V ℝ) :
    Matrix V V ℝ := by
  classical
  exact fun i j => if S.lower i j then K i j else 0

/-- The uncertified but ACTUAL part of the middle kernel. -/
def uncertifiedKernel (S : Sandwich V) (K : Matrix V V ℝ) :
    Matrix V V ℝ :=
  fun i j => middleKernel S K i j - lowerKernel S K i j

theorem middleKernel_of_lower (S : Sandwich V) (K : Matrix V V ℝ)
    {i j : V} (h : S.lower i j) :
    middleKernel S K i j = K i j := by
  classical
  simp [middleKernel, S.lower_le_middle h]

theorem middleKernel_zero_outside_upper (S : Sandwich V)
    (K : Matrix V V ℝ) {i j : V} (h : ¬ S.upper i j) :
    middleKernel S K i j = 0 := by
  classical
  have hm : ¬ S.middle i j := fun hmid => h (S.middle_le_upper hmid)
  simp [middleKernel, hm]

/-- Existing source heat kernel with actual color phases. -/
def heatMiddle (S : Sandwich V) (label : V → Channel)
    (phase : Channel → ℝ) (time : ℝ) (K : Matrix V V ℝ) :
    Matrix V V ℝ :=
  heat (fun i => phase (label i)) time (middleKernel S K)

def heatLower (S : Sandwich V) (label : V → Channel)
    (phase : Channel → ℝ) (time : ℝ) (K : Matrix V V ℝ) :
    Matrix V V ℝ :=
  heat (fun i => phase (label i)) time (lowerKernel S K)

def heatUncertified (S : Sandwich V) (label : V → Channel)
    (phase : Channel → ℝ) (time : ℝ) (K : Matrix V V ℝ) :
    Matrix V V ℝ :=
  heat (fun i => phase (label i)) time (uncertifiedKernel S K)

theorem heatMiddle_zero (S : Sandwich V) (label : V → Channel)
    (phase : Channel → ℝ) (K : Matrix V V ℝ) :
    heatMiddle S label phase 0 K = middleKernel S K :=
  heat_zero (fun i => phase (label i)) (middleKernel S K)

theorem heatMiddle_split (S : Sandwich V) (label : V → Channel)
    (phase : Channel → ℝ) (time : ℝ) (K : Matrix V V ℝ) :
    heatMiddle S label phase time K =
      (fun i j => heatLower S label phase time K i j +
        heatUncertified S label phase time K i j) := by
  ext i j
  unfold heatMiddle heatLower heatUncertified heat uncertifiedKernel
  ring

/-- Signed coefficient defect, retaining BOTH mixed orientations. -/
def coefficientDefect (src obs : UniversalInput V ℝ)
    (K : Matrix V V ℝ) : ℝ :=
  signedResidual Finset.univ src obs (fun i j => K i j)

/-- The complete ordered source readout defect is kept at its
ORIGINAL i,j pair before its source-index color is attached. -/
def colorDefect (label : V → Channel) (c : Channel)
    (src obs : UniversalInput V ℝ) (K : Matrix V V ℝ) : ℝ :=
  ∑ i : V, ∑ j : V, if label i = c then
    (if i ≠ j then
      ((src.source i - obs.source i) * obs.source j +
         obs.source i * (src.source j - obs.source j) +
         (src.source i - obs.source i) *
           (src.source j - obs.source j)) * K i j else 0)
    else 0

/-- All SIX colors reconstruct the exact signed source defect. -/
theorem colorDefect_sum (label : V → Channel)
    (src obs : UniversalInput V ℝ) (K : Matrix V V ℝ) :
    (∑ c : Channel, colorDefect label c src obs K) =
      coefficientDefect src obs K := by
  classical
  rw [show coefficientDefect src obs K =
      (∑ i : V, ∑ j : V,
        if i ≠ j then
          ((src.source i - obs.source i) * obs.source j +
             obs.source i * (src.source j - obs.source j) +
             (src.source i - obs.source i) *
               (src.source j - obs.source j)) * K i j else 0) from
    signedResidual_complete_mixed_expansion Finset.univ src obs
      (fun i j => K i j)]
  simp only [colorDefect]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro j _
  simp

private theorem packet_sub (src : UniversalInput V ℝ) (A B : Matrix V V ℝ) :
    packet src (fun i j => A i j - B i j) =
      packet src A - packet src B := by
  classical
  unfold packet orderedCross
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i _
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro j _
  by_cases h : i ≠ j
  · simp only [if_pos h]
    ring
  · simp [h]

private theorem packet_add (src : UniversalInput V ℝ) (A B : Matrix V V ℝ) :
    packet src (fun i j => A i j + B i j) =
      packet src A + packet src B := by
  classical
  unfold packet orderedCross
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i _
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j _
  by_cases h : i ≠ j
  · simp only [if_pos h]
    ring
  · simp [h]

/-- The full original kernel outside the ACTUAL middle relation. -/
def graphDefect (S : Sandwich V) (obs : UniversalInput V ℝ)
    (K : Matrix V V ℝ) : ℝ :=
  packet obs (fun i j => K i j - middleKernel S K i j)

/-- Source-signed damping error on the existing middle relation. -/
def diffusionDefect (S : Sandwich V) (label : V → Channel)
    (phase : Channel → ℝ) (time : ℝ)
    (obs : UniversalInput V ℝ) (K : Matrix V V ℝ) : ℝ :=
  packet obs (fun i j =>
    middleKernel S K i j - heatMiddle S label phase time K i j)

/-- The complete original signed waveform packet, with the
lower-certified, middle-uncertified, outside-graph, Gaussian and
coefficient losses each accounted for exactly. -/
theorem complete_polarized_sandwich_return
    (S : Sandwich V) (label : V → Channel)
    (phase : Channel → ℝ) (time : ℝ)
    (src obs : UniversalInput V ℝ) (K : Matrix V V ℝ) :
    packet src K =
      packet obs (heatLower S label phase time K) +
      packet obs (heatUncertified S label phase time K) +
      (∑ c : Channel, colorDefect label c src obs K) +
      graphDefect S obs K + diffusionDefect S label phase time obs K := by
  have hc : packet src K = packet obs K + coefficientDefect src obs K :=
    orderedCross_source_return Finset.univ src obs (fun i j => K i j)
  have ho : graphDefect S obs K =
      packet obs K - packet obs (middleKernel S K) :=
    packet_sub obs K (middleKernel S K)
  have hd : diffusionDefect S label phase time obs K =
      packet obs (middleKernel S K) -
        packet obs (heatMiddle S label phase time K) :=
    packet_sub obs (middleKernel S K) (heatMiddle S label phase time K)
  have hs : packet obs (heatMiddle S label phase time K) =
      packet obs (heatLower S label phase time K) +
        packet obs (heatUncertified S label phase time K) := by
    rw [heatMiddle_split]
    exact packet_add obs (heatLower S label phase time K)
      (heatUncertified S label phase time K)
  rw [colorDefect_sum]
  rw [ho, hd]
  linear_combination hc + hs

/-- Genuine Gödel observer-rest spatial signal from SUPPLIED chart,
boost/scale parameters and full four-tangent states. -/
def godelEnergyInput (p : Parameters) (chart : V → ℝ)
    (state : V → Tangent) : UniversalInput V ℝ :=
  UniversalInput.ofFunction (fun i =>
    spatialMetric p (chart i) (state i) (state i))

theorem godelEnergy_nonneg (p : Parameters) (chart : V → ℝ)
    (state : V → Tangent) (i : V) :
    0 ≤ (godelEnergyInput p chart state).source i :=
  spatialMetric_self_nonneg p (chart i) (state i)

theorem godelEnergy_root_iff_zero (p : Parameters) (chart : V → ℝ)
    (state : V → Tangent) (i : V) :
    (godelEnergyInput p chart state).source i = 0 ↔
      SpatialRoot p (chart i) (state i) :=
  spatialMetric_self_zero_iff_root p (chart i) (state i)

/-- Actual chart isometry, not just a color/heat symmetry. -/
theorem godelEnergy_chart_shift (p : Parameters) (chart : V → ℝ)
    (state : V → Tangent) (shift : ℝ) (i : V) :
    (godelEnergyInput p (fun j => chart j + shift)
      (fun j => shiftTangent shift (state j))).source i =
        (godelEnergyInput p chart state).source i :=
  spatialMetric_shift p (chart i) shift (state i) (state i)

/-- The original antisymmetric vorticity is also exactly preserved. -/
theorem godelVorticity_chart_shift (p : Parameters) (chart : V → ℝ)
    (v w : V → Tangent) (shift : ℝ) (i : V) :
    vorticity p (chart i + shift)
      (shiftTangent shift (v i)) (shiftTangent shift (w i)) =
        vorticity p (chart i) (v i) (w i) :=
  vorticity_shift p (chart i) shift (v i) (w i)

/-- Conditional complete signed return of the ACTUAL metric-derived
Gödel observer energy. Neither color nor CERN mass supplies p/chart/state. -/
theorem godelEnergy_full_signed_return
    (S : Sandwich V) (label : V → Channel) (phase : Channel → ℝ)
    (time : ℝ) (p : Parameters) (chart : V → ℝ)
    (state : V → Tangent) (obs : UniversalInput V ℝ)
    (K : Matrix V V ℝ) :
    packet (godelEnergyInput p chart state) K =
      packet obs (heatLower S label phase time K) +
      packet obs (heatUncertified S label phase time K) +
      (∑ c : Channel,
        colorDefect label c (godelEnergyInput p chart state) obs K) +
      graphDefect S obs K + diffusionDefect S label phase time obs K :=
  complete_polarized_sandwich_return S label phase time
    (godelEnergyInput p chart state) obs K

end GRWTSK.Analysis.OperatorTheory.ColoredDiffusiveGodelObserverReturn
