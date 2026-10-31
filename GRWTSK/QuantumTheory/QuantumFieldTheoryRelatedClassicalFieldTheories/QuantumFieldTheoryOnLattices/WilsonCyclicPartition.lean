/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonTemporalHistoryIntegral

/-!
# The actual Wilson partition function as a periodic kernel integral

Actual product-Haar assembly and the actual temporal Boltzmann identity
identify the finite Wilson partition function with the cyclic slice-kernel
integral. Positivity is inherited from the constructed Wilson partition
function, not assumed as a new normalization contract. Every periodic layer
and seam is retained. No trace-class identity, ground-state replacement,
observable transport or physical mass gap follows from this identity alone.
SOURCE_PROOF_CANDIDATE; compile, fresh replay, axioms and interface NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory
namespace GRWTSK.Geometry.GaugeTheory.WilsonCyclicPartition
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonTemporalHistoryIntegral
variable (L : ℕ) [NeZero L]

def cyclicPartition (β : ℝ) : ℝ :=
  ∫ a : SpatialHistory L SU2,
    ∏ r : ZMod L, sliceKernel L β (a r) (a (r + 1)) ∂spatialHistoryHaar L

theorem wilsonPartition_eq_cyclic (β : ℝ) : wilsonPartition L β = cyclicPartition L β := by
  let I : C(Configuration L SU2, ℝ) :=
    ⟨fun U => Real.exp (-β * wilsonAction L U),
      Real.continuous_exp.comp (continuous_const.mul (continuous_wilsonAction L))⟩
  change (∫ U, I U ∂referenceMeasure L) =
    ∫ a : SpatialHistory L SU2,
      ∏ r : ZMod L, sliceKernel L β (a r) (a (r + 1)) ∂spatialHistoryHaar L
  rw [integral_assemble L I]
  apply integral_congr_ae
  exact ae_of_all _ (fun a => integral_temporal_boltzmann L β a)

theorem cyclicPartition_pos (β : ℝ) (hβ : 0 ≤ β) : 0 < cyclicPartition L β := by
  rw [← wilsonPartition_eq_cyclic L β]
  exact wilsonPartition_pos L β hβ

end GRWTSK.Geometry.GaugeTheory.WilsonCyclicPartition
