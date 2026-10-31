/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib integration with density retains upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonCyclicPartition
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap

/-!
# Actual normalized Wilson expectations of spatial-history insertions

Continuous spatial-history observables are integrated against the actual
withDensity Wilson measure. Haar assembly, temporal integration and the actual
partition identity give their normalized cyclic-kernel expression. No law is
replaced by a principal-vector state. Temporal-link-dependent observables,
trace class, covariance decay and physical continuum reconstruction are separate.
SOURCE_PROOF_CANDIDATE; compile, replay, axioms and interface NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory
namespace GRWTSK.Geometry.GaugeTheory.WilsonSpatialMarginal
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonTemporalHistoryIntegral
open GRWTSK.Geometry.GaugeTheory.WilsonCyclicPartition
variable (L : ℕ) [NeZero L]

theorem integral_wilson_continuous_weight (β : ℝ) (hβ : 0 ≤ β)
    (H : C(Configuration L SU2, ℝ)) :
    (∫ U, H U ∂wilsonMeasure L β) =
      (∫ U, H U * Real.exp (-β * wilsonAction L U) ∂referenceMeasure L) /
        wilsonPartition L β := by
  let rho : Configuration L SU2 → ℝ := fun U =>
    Real.exp (-β * wilsonAction L U) / wilsonPartition L β
  have hr : Measurable rho :=
    (Real.continuous_exp.comp (continuous_const.mul (continuous_wilsonAction L))).measurable.div_const _
  have hpos : ∀ U, 0 ≤ rho U := fun U =>
    div_nonneg (Real.exp_pos _).le (wilsonPartition_pos L β hβ).le
  change (∫ U, H U ∂(referenceMeasure L).withDensity (fun U => ENNReal.ofReal (rho U))) = _
  calc
    _ = ∫ U, rho U * H U ∂referenceMeasure L := by
      rw [integral_withDensity_eq_integral_toReal_smul hr.ennreal_ofReal
        (ae_of_all _ (fun _ => ENNReal.ofReal_lt_top))]
      apply integral_congr_ae
      exact ae_of_all _ (fun U => by rw [ENNReal.toReal_ofReal (hpos U), smul_eq_mul])
    _ = _ := by
      rw [← integral_div]
      apply integral_congr_ae
      exact ae_of_all _ (fun U => by dsimp only [rho]; ring)

theorem spatial_observable_integrable (β : ℝ) (hβ : 0 ≤ β)
    (F : C(SpatialHistory L SU2, ℝ)) :
    Integrable (fun U : Configuration L SU2 => F (spatialHistory U)) (wilsonMeasure L β) := by
  letI := wilsonMeasure_isProbabilityMeasure L β hβ
  exact (F.continuous.comp continuous_spatialHistory).integrable_of_hasCompactSupport
    (HasCompactSupport.of_compactSpace _)

/-- Unnormalized insertion identity, with the full actual Boltzmann density. -/
theorem integral_spatial_insertion_weight (β : ℝ) (F : C(SpatialHistory L SU2, ℝ)) :
    (∫ U, F (spatialHistory U) * Real.exp (-β * wilsonAction L U) ∂referenceMeasure L) =
      ∫ a : SpatialHistory L SU2, F a *
        (∏ r : ZMod L, sliceKernel L β (a r) (a (r + 1))) ∂spatialHistoryHaar L := by
  let J : C(Configuration L SU2, ℝ) :=
    ⟨fun U => F (spatialHistory U) * Real.exp (-β * wilsonAction L U),
      (F.continuous.comp continuous_spatialHistory).mul
        (Real.continuous_exp.comp (continuous_const.mul (continuous_wilsonAction L)))⟩
  change (∫ U, J U ∂referenceMeasure L) = _
  rw [integral_assemble L J]
  apply integral_congr_ae
  apply ae_of_all
  intro a
  change (∫ g, F a * Real.exp (-β * wilsonAction L (assemble a g)) ∂temporalHistoryHaar L) = _
  rw [integral_const_mul, integral_temporal_boltzmann L β a]

/-- The actual normalized finite-periodic expectation, not a ground-state formula. -/
theorem normalized_spatial_insertion (β : ℝ) (hβ : 0 ≤ β)
    (F : C(SpatialHistory L SU2, ℝ)) :
    (∫ U, F (spatialHistory U) ∂wilsonMeasure L β) =
      (∫ a : SpatialHistory L SU2, F a *
        (∏ r : ZMod L, sliceKernel L β (a r) (a (r + 1))) ∂spatialHistoryHaar L) /
          cyclicPartition L β := by
  let H : C(Configuration L SU2, ℝ) :=
    ⟨fun U => F (spatialHistory U), F.continuous.comp continuous_spatialHistory⟩
  have h := integral_wilson_continuous_weight L β hβ H
  change (∫ U, F (spatialHistory U) ∂wilsonMeasure L β) =
    (∫ U, F (spatialHistory U) * Real.exp (-β * wilsonAction L U) ∂referenceMeasure L) /
      wilsonPartition L β at h
  rw [integral_spatial_insertion_weight L β F, wilsonPartition_eq_cyclic L β] at h
  exact h

end GRWTSK.Geometry.GaugeTheory.WilsonSpatialMarginal
