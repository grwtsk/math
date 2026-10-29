/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib finite-product/Bochner integration retains its upstream authorship
and Apache-2.0 license. Other imports retain their attribution/licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceRegularity
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap

/-!
# Exact cyclic spatial marginal of the original finite Wilson measure

All temporal layers are integrated against their actual product Haar.
The literal action factorization and finite-product Fubini give the cyclic
product of the constructed K. The identity holds for EVERY continuous complex
insertion of the entire spatial history. Psi=1 recovers the ORIGINAL real
wilsonPartition. Its existing positive value normalizes the actual marginal.

No new normalizer, gauge fixing, transfer operator, spectral decomposition,
eigenfunction or accepted counterexample is introduced.
SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceMarginal

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Probability.StatisticalMechanics.FiniteBoltzmannNormalization

variable (L : ℕ) [NeZero L]

theorem continuous_cyclicKernel (β : ℝ) :
    Continuous (fun a : SpatialHistory L SU2 =>
      ∏ r : ZMod L, sliceKernel L β (a r) (a (r + 1))) := by
  apply continuous_finsetProd
  intro r _
  exact (continuous_K L β).comp ((continuous_apply r).prodMk (continuous_apply (r + 1)))

def spatialInsertion (Ψ : C(SpatialHistory L SU2, ℂ)) : C(Configuration L SU2, ℂ) :=
  ⟨fun U => Ψ (spatialHistory U), Ψ.continuous.comp continuous_spatialHistory⟩

def unnormalizedInsertion (β : ℝ) (Ψ : C(SpatialHistory L SU2, ℂ)) :
    C(Configuration L SU2, ℂ) :=
  ⟨fun U => Ψ (spatialHistory U) * (Real.exp (-β * wilsonAction L U) : ℂ),
    (Ψ.continuous.comp continuous_spatialHistory).mul
      (Complex.continuous_ofReal.comp (Real.continuous_exp.comp
        (continuous_const.mul (continuous_wilsonAction L))))⟩

theorem integrable_unnormalizedInsertion (β : ℝ) (Ψ : C(SpatialHistory L SU2, ℂ)) :
    Integrable (unnormalizedInsertion L β Ψ) (referenceMeasure L) :=
  (unnormalizedInsertion L β Ψ).continuous.integrable_of_hasCompactSupport
    (HasCompactSupport.of_compactSpace _)

theorem integrable_cyclicInsertion (β : ℝ) (Ψ : C(SpatialHistory L SU2, ℂ)) :
    Integrable (fun a => Ψ a *
      (((∏ r : ZMod L, sliceKernel L β (a r) (a (r + 1))) : ℝ) : ℂ)) (spatialHistoryHaar L) :=
  (Ψ.continuous.mul (Complex.continuous_ofReal.comp
    (continuous_cyclicKernel L β))).integrable_of_hasCompactSupport
      (HasCompactSupport.of_compactSpace _)

theorem integrable_spatialInsertion (β : ℝ) (hβ : 0 ≤ β)
    (Ψ : C(SpatialHistory L SU2, ℂ)) :
    Integrable (spatialInsertion L Ψ) (wilsonMeasure L β) := by
  letI : IsProbabilityMeasure (wilsonMeasure L β) :=
    wilsonMeasure_isProbabilityMeasure L β hβ
  exact (spatialInsertion L Ψ).continuous.integrable_of_hasCompactSupport
    (HasCompactSupport.of_compactSpace _)

/-- Each fixed spatial history also has an integrable full temporal weight. -/
theorem integrable_temporalWeight (β : ℝ) (a : SpatialHistory L SU2) :
    Integrable (fun g => Real.exp (-β * wilsonAction L (assemble a g)))
      (temporalHistoryHaar L) :=
  (Real.continuous_exp.comp (continuous_const.mul
    ((continuous_wilsonAction L).comp
      (continuous_assemble.comp (continuous_const.prodMk continuous_id))))).integrable_of_hasCompactSupport
        (HasCompactSupport.of_compactSpace _)

/-- Conditional integration still contains EVERY temporal Haar layer.
Finite-product Fubini evaluates it as one actual integral per layer. -/
theorem integral_temporalWeight (β : ℝ) (a : SpatialHistory L SU2) :
    (∫ g, Real.exp (-β * wilsonAction L (assemble a g)) ∂temporalHistoryHaar L) =
      ∏ r : ZMod L, sliceKernel L β (a r) (a (r + 1)) := by
  calc
    _ = ∫ g, (∏ r : ZMod L, Real.exp (-β * sliceAction L (a r))) *
        ∏ r : ZMod L, sliceWilsonProduct L β (a r)
          (sliceGaugeAction (g r) (a (r + 1))) ∂temporalHistoryHaar L := by
      apply integral_congr_ae
      exact ae_of_all _ (fun g => boltzmann_assemble L β a g)
    _ = (∏ r : ZMod L, Real.exp (-β * sliceAction L (a r))) *
        ∏ r : ZMod L, ∫ g, sliceWilsonProduct L β (a r)
          (sliceGaugeAction g (a (r + 1))) ∂sliceGaugeHaar L := by
      rw [integral_const_mul]
      congr 1
      exact integral_fintype_prod_eq_prod
        (fun r g => sliceWilsonProduct L β (a r) (sliceGaugeAction g (a (r + 1))))
    _ = _ := (cyclicKernel_factor L β a).symm

/-- Unnormalized actual source marginal for arbitrary continuous complex Psi.
All spatial/time indices and the original source action are retained. -/
theorem unnormalized_spatial_marginal (β : ℝ) (Ψ : C(SpatialHistory L SU2, ℂ)) :
    (∫ U, Ψ (spatialHistory U) * (Real.exp (-β * wilsonAction L U) : ℂ)
      ∂referenceMeasure L) =
      ∫ a, Ψ a * (((∏ r : ZMod L, sliceKernel L β (a r) (a (r + 1))) : ℝ) : ℂ)
        ∂spatialHistoryHaar L := by
  calc
    _ = ∫ a, ∫ g, Ψ a * (Real.exp (-β * wilsonAction L (assemble a g)) : ℂ)
        ∂temporalHistoryHaar L ∂spatialHistoryHaar L := by
      have h := integral_assemble L (unnormalizedInsertion L β Ψ)
      simpa only [unnormalizedInsertion, spatialHistory_assemble] using h
    _ = _ := by
      apply integral_congr_ae
      exact ae_of_all _ (fun a => by
        rw [integral_const_mul, integral_complex_ofReal, integral_temporalWeight L β a])

/-- Psi=1 recovers the same ORIGINAL partition, not a new normalization. -/
theorem wilsonPartition_eq_cyclicIntegral (β : ℝ) :
    wilsonPartition L β =
      ∫ a, ∏ r : ZMod L, sliceKernel L β (a r) (a (r + 1)) ∂spatialHistoryHaar L := by
  apply Complex.ofReal_injective
  have h := unnormalized_spatial_marginal L β
    (ContinuousMap.const (SpatialHistory L SU2) (1 : ℂ))
  simpa only [ContinuousMap.const_apply, one_mul, integral_complex_ofReal,
    wilsonPartition, partitionFunction, boltzmannWeight] using h

/-- Divide by the proved positive original partition through the actual
withDensity definition. No normalized marginal measure is assumed. -/
theorem normalized_spatial_marginal (β : ℝ) (hβ : 0 ≤ β)
    (Ψ : C(SpatialHistory L SU2, ℂ)) :
    (∫ U, Ψ (spatialHistory U) ∂wilsonMeasure L β) =
      (wilsonPartition L β : ℂ)⁻¹ *
        ∫ a, Ψ a * (((∏ r : ZMod L, sliceKernel L β (a r) (a (r + 1))) : ℝ) : ℂ)
          ∂spatialHistoryHaar L := by
  let Z := wilsonPartition L β
  let ρ : Configuration L SU2 → ℝ≥0∞ := fun U =>
    ENNReal.ofReal (Real.exp (-β * wilsonAction L U) / Z)
  have hZ : 0 < Z := wilsonPartition_pos L β hβ
  have hm : Measurable ρ :=
    ((Real.measurable_exp.comp
      (measurable_const.mul (measurable_wilsonAction L))).div_const Z).ennreal_ofReal
  have hn (U : Configuration L SU2) :
      0 ≤ Real.exp (-β * wilsonAction L U) / Z :=
    div_nonneg (Real.exp_nonneg _) hZ.le
  change (∫ U, Ψ (spatialHistory U) ∂(referenceMeasure L).withDensity ρ) = _
  rw [integral_withDensity_eq_integral_toReal_smul hm
    (ae_of_all _ (fun U => by simp [ρ]))]
  calc
    _ = ∫ U, (Z : ℂ)⁻¹ *
        (Ψ (spatialHistory U) * (Real.exp (-β * wilsonAction L U) : ℂ))
        ∂referenceMeasure L := by
      apply integral_congr_ae
      exact ae_of_all _ (fun U => by
        change (ENNReal.ofReal (Real.exp (-β * wilsonAction L U) / Z)).toReal •
          Ψ (spatialHistory U) = _
        rw [ENNReal.toReal_ofReal (hn U), RCLike.real_smul_eq_coe_mul,
          Complex.ofReal_div]
        ring)
    _ = (Z : ℂ)⁻¹ * ∫ U, Ψ (spatialHistory U) *
        (Real.exp (-β * wilsonAction L U) : ℂ) ∂referenceMeasure L :=
      integral_const_mul _ _
    _ = _ := congrArg (fun z : ℂ => (Z : ℂ)⁻¹ * z)
      (unnormalized_spatial_marginal L β Ψ)

/-- Requested T>=4 specialization. Nonzero period is constructed, not an
additional measure/source hypothesis. -/
theorem finiteWilson_cyclic_marginal (T : ℕ) (hT : 4 ≤ T) (β : ℝ) (hβ : 0 ≤ β)
    (Ψ : C(SpatialHistory (2 * T) SU2, ℂ)) :
    letI : NeZero (2 * T) := ⟨by omega⟩
    (∫ U, Ψ (spatialHistory U) ∂wilsonMeasure (2 * T) β) =
      (wilsonPartition (2 * T) β : ℂ)⁻¹ *
        ∫ a, Ψ a * (((∏ r : ZMod (2 * T),
          sliceKernel (2 * T) β (a r) (a (r + 1))) : ℝ) : ℂ)
          ∂spatialHistoryHaar (2 * T) := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  exact normalized_spatial_marginal (2 * T) β hβ Ψ

end GRWTSK.Geometry.GaugeTheory.WilsonSliceMarginal

