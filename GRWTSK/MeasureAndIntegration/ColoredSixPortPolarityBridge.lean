/- Copyright (c) 2026 grwtsk contributors. MIT.
Source formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.MeasureAndIntegration.ColoredDiffusiveGodelReconstruction
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ColoredSourcePorts
import GRWTSK.MeasureAndIntegration.ColoredDiffusiveGodelObserverReturn
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Six provenance colors × two signed error polarities

The ORIGINAL six canonical PortFiber.Channel colors label source provenance.
The independent red/blue sign is a sign decomposition of a REAL defect.
Their product therefore has twelve presentational channels, but no new
arithmetic integer or graph witness is created and none is discarded.

The sum over all six colors and both signs is the SAME original signed
diffused reading, followed by the SAME exact pointwise residual.
This compatibility is independent of whether K is invertible, and it
conveys no physical Gödel observer identification or RH estimate.
-/

namespace GRWTSK.MeasureAndIntegration.ColoredSixPortPolarityBridge

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
open GRWTSK.MeasureAndIntegration.ColoredDiffusiveGodelReconstruction
open GRWTSK.Topology.PortFiber.Colored

universe u
variable {Vertex : Type u} [Fintype Vertex] [DecidableEq Vertex]

/-- A canonical source provenance color and an independent error polarity. -/
inductive Polarity where
  | red
  | blue
  deriving DecidableEq, Repr

/-- The original, source-owned six colors are not replaced or renamed. -/
abbrev ProvenancePolarity := Channel × Polarity

/-- Keep only the source defect at vertices of this ORIGINAL port color. -/
def redByChannel
    (label : Vertex → Channel) (channel : Channel)
    (d : Vertex → ℝ) (v : Vertex) : ℝ :=
  if label v = channel then redReal d v else 0

def blueByChannel
    (label : Vertex → Channel) (channel : Channel)
    (d : Vertex → ℝ) (v : Vertex) : ℝ :=
  if label v = channel then blueReal d v else 0

/-- Exactly one provenance label owns each vertex's red error. -/
theorem sum_redByChannel
    (label : Vertex → Channel) (d : Vertex → ℝ) (v : Vertex) :
    (∑ c : Channel, redByChannel label c d v) = redReal d v := by
  classical
  simp [redByChannel, Finset.sum_ite_eq', eq_comm]

/-- Exactly one provenance label owns each vertex's blue error. -/
theorem sum_blueByChannel
    (label : Vertex → Channel) (d : Vertex → ℝ) (v : Vertex) :
    (∑ c : Channel, blueByChannel label c d v) = blueReal d v := by
  classical
  simp [blueByChannel, Finset.sum_ite_eq', eq_comm]

/-- Finite signed diffusion commutes with the WHOLE six-color partition.
There is no reindexing of actual vertices and no new heat kernel. -/
theorem sum_red_diffusion
    (K : HeatKernel Vertex) (label : Vertex → Channel)
    (d : Vertex → ℝ) (v : Vertex) :
    (∑ c : Channel, realStep K (redByChannel label c d) v) =
      realStep K (redReal d) v := by
  unfold realStep
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro source _
  calc
    (∑ c : Channel,
      (K.transition v source : ℝ) * redByChannel label c d source) =
      (K.transition v source : ℝ) *
        (∑ c : Channel, redByChannel label c d source) := by
        rw [Finset.mul_sum]
    _ = (K.transition v source : ℝ) * redReal d source := by
        rw [sum_redByChannel]

theorem sum_blue_diffusion
    (K : HeatKernel Vertex) (label : Vertex → Channel)
    (d : Vertex → ℝ) (v : Vertex) :
    (∑ c : Channel, realStep K (blueByChannel label c d) v) =
      realStep K (blueReal d) v := by
  unfold realStep
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro source _
  calc
    (∑ c : Channel,
      (K.transition v source : ℝ) * blueByChannel label c d source) =
      (K.transition v source : ℝ) *
        (∑ c : Channel, blueByChannel label c d source) := by
        rw [Finset.mul_sum]
    _ = (K.transition v source : ℝ) * blueReal d source := by
        rw [sum_blueByChannel]

/-- Twelve-channel signed transport is exactly the original
red-minus-blue diffusion. Neither presentation colors nor polarity
encode the original source without its local residual. -/
theorem six_color_two_polarity_exact
    (K : HeatKernel Vertex) (label : Vertex → Channel)
    (d : Vertex → ℝ) (v : Vertex) :
    (∑ c : Channel, realStep K (redByChannel label c d) v) -
      (∑ c : Channel, realStep K (blueByChannel label c d) v) =
        realColorStep K d v := by
  rw [sum_red_diffusion, sum_blue_diffusion]
  rfl

/-- Full original source return from 6 provenance colors × 2 error
polarities plus the COMPLETE source-minus-diffused local defect. -/
theorem twelve_channel_source_return
    (K : HeatKernel Vertex) (label : Vertex → Channel)
    (original observed : Vertex → ℝ) (v : Vertex) :
    observed v +
        ((∑ c : Channel, realStep K
            (redByChannel label c (fun s => original s - observed s)) v) -
         (∑ c : Channel, realStep K
            (blueByChannel label c (fun s => original s - observed s)) v)) +
        realLocalResidual K (fun s => original s - observed s) v =
      original v := by
  rw [six_color_two_polarity_exact]
  have h := recoveredRealChannel_eq_original K original observed v
  simpa [recoveredRealChannel, colorObservation] using h

end GRWTSK.MeasureAndIntegration.ColoredSixPortPolarityBridge
