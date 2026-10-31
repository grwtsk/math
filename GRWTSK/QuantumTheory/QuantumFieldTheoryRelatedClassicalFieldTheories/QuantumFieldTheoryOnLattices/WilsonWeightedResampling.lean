/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonResamplingHaarSplit

/-!
# The correctly weighted Wilson resampling integral

The exterior weight is its actual A-link partition divided by the actual global
Wilson partition. It is not raw complement Haar. The identity is for normalized
finite integrals; no regular-conditional-kernel or independence claim is made.
SOURCE_PROOF_CANDIDATE; all four qualification facets NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonWeightedResampling
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.SU2Topology
open GRWTSK.Geometry.GaugeTheory.SU2Haar
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonResamplingHaarSplit
open GRWTSK.Probability.StatisticalMechanics.FiniteBoltzmannNormalization
variable (L : ℕ) [NeZero L]

def weight (β : ℝ) (U : Configuration L SU2) : ℝ :=
  Real.exp (-β*wilsonAction L U)

theorem continuous_weight (β : ℝ) : Continuous (weight L β) :=
  Real.continuous_exp.comp (continuous_const.mul (continuous_wilsonAction L))

def fiberPartition (A : Finset (Link L)) (β : ℝ)
    (v : {l : Link L // l ∉ A} → SU2) : ℝ :=
  ∫ u, weight L β (assemble L A (u,v)) ∂productHaar {l : Link L // l ∈ A}

def fiberNumerator (A : Finset (Link L)) (β : ℝ)
    (F : Configuration L SU2 → ℝ) (v : {l : Link L // l ∉ A} → SU2) : ℝ :=
  ∫ u, F (assemble L A (u,v))*weight L β (assemble L A (u,v))
    ∂productHaar {l : Link L // l ∈ A}

def fiberMean (A : Finset (Link L)) (β : ℝ)
    (F : Configuration L SU2 → ℝ) (v : {l : Link L // l ∉ A} → SU2) : ℝ :=
  fiberNumerator L A β F v / fiberPartition L A β v

theorem fiberPartition_pos (A : Finset (Link L)) (β : ℝ) (hβ : 0 ≤ β)
    (v : {l : Link L // l ∉ A} → SU2) : 0 < fiberPartition L A β v := by
  have hc : Continuous (fun u => wilsonAction L (assemble L A (u,v))) :=
    (continuous_wilsonAction L).comp
      ((continuous_assemble L A).comp (continuous_id.prodMk continuous_const))
  exact partitionFunction_pos _ hβ hc.measurable
    (fun u => wilsonAction_bounds L (assemble L A (u,v)))

/-- Fubini with actual positive fiber partitions; no exterior density is discarded. -/
theorem weighted_integral (A : Finset (Link L)) (β : ℝ) (hβ : 0 ≤ β)
    (F : Configuration L SU2 → ℝ) (hF : Continuous F) :
    (∫ U, F U*weight L β U ∂referenceMeasure L) =
      ∫ v, fiberPartition L A β v*fiberMean L A β F v
        ∂productHaar {l : Link L // l ∉ A} := by
  have hc := (hF.mul (continuous_weight L β)).comp (continuous_assemble L A)
  have hi : Integrable (fun uv => F (assemble L A uv)*weight L β (assemble L A uv))
      ((productHaar {l : Link L // l ∈ A}).prod
        (productHaar {l : Link L // l ∉ A})) :=
    hc.integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)
  rw [integral_split L A _ (hF.mul (continuous_weight L β)), integral_integral_swap hi]
  apply integral_congr_ae
  exact ae_of_all _ (fun v => by
    dsimp [fiberMean, fiberNumerator]
    field_simp [ne_of_gt (fiberPartition_pos L A β hβ v)] <;> ring)

/-- The exact normalized formula displays the nonconstant exterior marginal. -/
theorem normalized_weighted_integral (A : Finset (Link L)) (β : ℝ) (hβ : 0 ≤ β)
    (F : Configuration L SU2 → ℝ) (hF : Continuous F) :
    (∫ U, F U*weight L β U ∂referenceMeasure L) / wilsonPartition L β =
      ∫ v, (fiberPartition L A β v / wilsonPartition L β)*fiberMean L A β F v
        ∂productHaar {l : Link L // l ∉ A} := by
  rw [weighted_integral L A β hβ F hF, ← integral_div]
  apply integral_congr_ae
  exact ae_of_all _ (fun v => by ring)

end GRWTSK.Geometry.GaugeTheory.WilsonWeightedResampling
