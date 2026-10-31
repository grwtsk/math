/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib finite-product integration retains upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceRegularity
import Mathlib.MeasureTheory.Integral.Pi

/-!
# Integrating the actual periodic temporal-history product

Each temporal layer depends on its own actual gauge-history coordinate. The
maintained temporalHistoryHaar is precisely the finite product of sliceGaugeHaar.
The full product therefore integrates into the product of actual layer integrals.
Continuity and integrability are supplied for both layers and full histories.
All cyclic indices, including the seam r+1, are retained. This is not yet the
normalized Wilson marginal, a trace identity or a ground-state comparison.
SOURCE_PROOF_CANDIDATE; compile, replay, axioms and expected interface NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory
namespace GRWTSK.Geometry.GaugeTheory.WilsonTemporalHistoryIntegral
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
variable (L : ℕ) [NeZero L]

def layerFactor (β : ℝ) (a : SpatialHistory L SU2) (r : ZMod L)
    (g : SliceGauge L SU2) : ℝ :=
  sliceWilsonProduct L β (a r) (sliceGaugeAction g (a (r + 1)))

def historyFactor (β : ℝ) (a : SpatialHistory L SU2) (g : TemporalHistory L SU2) : ℝ :=
  ∏ r : ZMod L, layerFactor L β a r (g r)

theorem continuous_layerFactor (β : ℝ) (a : SpatialHistory L SU2) (r : ZMod L) :
    Continuous (layerFactor L β a r) :=
  (continuous_temporalFactor L β).comp (continuous_const.prodMk continuous_id)

theorem integrable_layerFactor (β : ℝ) (a : SpatialHistory L SU2) (r : ZMod L) :
    Integrable (layerFactor L β a r) (sliceGaugeHaar L) :=
  (continuous_layerFactor L β a r).integrable_of_hasCompactSupport
    (HasCompactSupport.of_compactSpace _)

theorem continuous_historyFactor (β : ℝ) (a : SpatialHistory L SU2) :
    Continuous (historyFactor L β a) := by
  apply continuous_finsetProd
  intro r _
  exact (continuous_layerFactor L β a r).comp (continuous_apply r)

theorem integrable_historyFactor (β : ℝ) (a : SpatialHistory L SU2) :
    Integrable (historyFactor L β a) (temporalHistoryHaar L) :=
  (continuous_historyFactor L β a).integrable_of_hasCompactSupport
    (HasCompactSupport.of_compactSpace _)

/-- Independence is supplied by the actual product measure, not an extra contract. -/
theorem integral_temporal_product (β : ℝ) (a : SpatialHistory L SU2) :
    (∫ g, ∏ r : ZMod L,
      sliceWilsonProduct L β (a r) (sliceGaugeAction (g r) (a (r + 1)))
        ∂temporalHistoryHaar L) =
    ∏ r : ZMod L, ∫ g,
      sliceWilsonProduct L β (a r) (sliceGaugeAction g (a (r + 1))) ∂sliceGaugeHaar L := by
  exact integral_fintype_prod_eq_prod
    (fun r : ZMod L => fun g : SliceGauge L SU2 => layerFactor L β a r g)

end GRWTSK.Geometry.GaugeTheory.WilsonTemporalHistoryIntegral
