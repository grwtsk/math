/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonLocalDensityCancellation

/-!
# Positive finite local Wilson normalizers and density bounds

The lower bound depends on affected plaquettes, not the full plaquette volume.
It is not a uniform block contraction or a regular conditional probability
identification. SOURCE_PROOF_CANDIDATE; all four verification facets NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Geometry.GaugeTheory.WilsonLocalDensityBounds
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.SU2Topology
open GRWTSK.Geometry.GaugeTheory.SU2Haar
open GRWTSK.Geometry.GaugeTheory.WilsonBlockArithmeticCovariance
open GRWTSK.Geometry.GaugeTheory.WilsonLocalAction
open GRWTSK.Geometry.GaugeTheory.WilsonLocalDensityCancellation
open GRWTSK.Probability.StatisticalMechanics.FiniteBoltzmannNormalization
variable (L : ℕ) [NeZero L]

theorem continuous_resample (A : Finset (Link L)) (V : Configuration L SU2) :
    Continuous (resample L A V) := by
  apply continuous_pi
  intro l
  by_cases h : l ∈ A
  · simpa only [resample, dif_pos h] using
      (continuous_apply (⟨l,h⟩ : {l // l ∈ A}))
  · simpa only [resample, dif_neg h] using
      (continuous_const : Continuous (fun _ : ({l // l ∈ A} → SU2) => V l))

theorem localAction_bounds (A : Finset (Link L)) (U : Configuration L SU2) :
    0 ≤ localAction L A U ∧
      localAction L A U ≤ 2*((affected L A).card : ℝ) := by
  constructor
  · exact Finset.sum_nonneg (fun p _ => (plaquetteEnergy_bounds L p U).1)
  · calc
      _ ≤ ∑ _p ∈ affected L A, (2 : ℝ) :=
        Finset.sum_le_sum (fun p _ => (plaquetteEnergy_bounds L p U).2)
      _ = _ := by simp [mul_comm]

theorem continuous_localAction (A : Finset (Link L)) (V : Configuration L SU2) :
    Continuous (fun u => localAction L A (resample L A V u)) := by
  exact (blockEnergy_continuous L (affected L A)).comp (continuous_resample L A V)

def localPartition (A : Finset (Link L)) (V : Configuration L SU2) (β : ℝ) : ℝ :=
  ∫ u, localWeight L A V β u ∂productHaar {l : Link L // l ∈ A}

theorem localWeight_integrable (A : Finset (Link L)) (V : Configuration L SU2)
    (β : ℝ) (hβ : 0 ≤ β) :
    Integrable (localWeight L A V β) (productHaar {l : Link L // l ∈ A}) := by
  exact integrable_boltzmannWeight _ hβ (continuous_localAction L A V).measurable
    (fun u => localAction_bounds L A (resample L A V u))

theorem localPartition_bounds (A : Finset (Link L)) (V : Configuration L SU2)
    (β : ℝ) (hβ : 0 ≤ β) :
    Real.exp (-β*(2*((affected L A).card : ℝ))) ≤ localPartition L A V β ∧
      localPartition L A V β ≤ 1 := by
  exact partitionFunction_bounds _ hβ (continuous_localAction L A V).measurable
    (fun u => localAction_bounds L A (resample L A V u))

theorem localPartition_pos (A : Finset (Link L)) (V : Configuration L SU2)
    (β : ℝ) (hβ : 0 ≤ β) : 0 < localPartition L A V β :=
  (Real.exp_pos _).trans_le (localPartition_bounds L A V β hβ).1

/-- A genuine positive denominator and actual local Boltzmann weight. -/
theorem normalized_local_density_lower (A : Finset (Link L))
    (V : Configuration L SU2) (β : ℝ) (hβ : 0 ≤ β)
    (u : {l // l ∈ A} → SU2) :
    Real.exp (-β*(2*((affected L A).card : ℝ))) ≤
      localWeight L A V β u / localPartition L A V β := by
  have hw := boltzmannWeight_bounds hβ
    (fun v => localAction_bounds L A (resample L A V v)) u
  have hp := localPartition_pos L A V β hβ
  have hpu := (localPartition_bounds L A V β hβ).2
  have hlo := Real.exp_pos (-β*(2*((affected L A).card : ℝ)))
  apply (le_div_iff₀ hp).mpr
  exact (mul_le_of_le_one_right hlo.le hpu).trans hw.1

end GRWTSK.Geometry.GaugeTheory.WilsonLocalDensityBounds
