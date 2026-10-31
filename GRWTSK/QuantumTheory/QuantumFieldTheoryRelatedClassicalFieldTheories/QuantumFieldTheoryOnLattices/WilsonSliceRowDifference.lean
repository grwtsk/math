/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceGroundStateRows

/-!
# Integral row differences after actual Wilson common minorization

Subtracting the common density leaves nonnegative rows of mass 1-c.
Their integrals against bounded continuous observables lie in the corresponding
interval; the common observable integral cancels between rows. No spectral
contraction, stationarity or physical continuum gap is assumed or concluded.
SOURCE_PROOF_CANDIDATE; compile, fresh replay, axioms and interface NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory
namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceRowDifference
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGroundStateRows
variable (L : ℕ) [NeZero L] (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
variable (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0)
variable (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f)

def residualDensity (a b : Slice L SU2) : ℝ :=
  rowDensity L β hβ f a b - Real.exp (-12 * β * (L : ℝ)^3) * commonDensity L β hβ f b

theorem residualDensity_nonnegative (a b : Slice L SU2) :
    0 ≤ residualDensity L β hβ f a b :=
  sub_nonneg.mpr (common_minorization L β hβ f hf hne he a b)

theorem residualDensity_continuous (a : Slice L SU2) :
    Continuous (residualDensity L β hβ f a) :=
  ((rowDensity_continuous L β hβ f hf hne).comp
    (continuous_const.prodMk continuous_id)).sub
    (continuous_const.mul (commonDensity_continuous L β hβ f))

theorem residualDensity_integrable (a : Slice L SU2) :
    Integrable (residualDensity L β hβ f a) (sliceHaar L) :=
  (rowDensity_integrable L β hβ f a).sub
    ((commonDensity_integrable L β hβ f).const_mul _)

theorem residualDensity_integral (a : Slice L SU2) :
    (∫ b, residualDensity L β hβ f a b ∂sliceHaar L) =
      1 - Real.exp (-12 * β * (L : ℝ)^3) := by
  rw [residualDensity, integral_sub (rowDensity_integrable L β hβ f a)
    ((commonDensity_integrable L β hβ f).const_mul _), integral_const_mul,
    rowDensity_integral L β hβ f hf hne he a,
    commonDensity_integral L β hβ f hf hne he, mul_one]

theorem residual_mixed_integrable (h : C(Slice L SU2, ℝ)) (a : Slice L SU2) :
    Integrable (fun b => residualDensity L β hβ f a b * h b) (sliceHaar L) :=
  ((residualDensity_continuous L β hβ f hf hne a).mul h.continuous).
    integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)

theorem row_mixed_integrable (h : C(Slice L SU2, ℝ)) (a : Slice L SU2) :
    Integrable (fun b => rowDensity L β hβ f a b * h b) (sliceHaar L) :=
  (((rowDensity_continuous L β hβ f hf hne).comp
    (continuous_const.prodMk continuous_id)).mul h.continuous).
    integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)

theorem common_mixed_integrable (h : C(Slice L SU2, ℝ)) :
    Integrable (fun b => commonDensity L β hβ f b * h b) (sliceHaar L) :=
  ((commonDensity_continuous L β hβ f).mul h.continuous).
    integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)

theorem residual_integral_bounds (h : C(Slice L SU2, ℝ)) (m M : ℝ)
    (hm : ∀ b, m ≤ h b) (hM : ∀ b, h b ≤ M) (a : Slice L SU2) :
    (1 - Real.exp (-12 * β * (L : ℝ)^3)) * m ≤
      (∫ b, residualDensity L β hβ f a b * h b ∂sliceHaar L) ∧
    (∫ b, residualDensity L β hβ f a b * h b ∂sliceHaar L) ≤
      (1 - Real.exp (-12 * β * (L : ℝ)^3)) * M := by
  have hi := residualDensity_integrable L β hβ f a
  have hj := residual_mixed_integrable L β hβ f hf hne h a
  constructor
  · have hb := integral_mono_ae (hi.mul_const m) hj (ae_of_all _ (fun b =>
      mul_le_mul_of_nonneg_left (hm b) (residualDensity_nonnegative L β hβ f hf hne he a b)))
    simpa only [integral_mul_const, residualDensity_integral L β hβ f hf hne he a] using hb
  · have hb := integral_mono_ae hj (hi.mul_const M) (ae_of_all _ (fun b =>
      mul_le_mul_of_nonneg_left (hM b) (residualDensity_nonnegative L β hβ f hf hne he a b)))
    simpa only [integral_mul_const, residualDensity_integral L β hβ f hf hne he a] using hb

theorem row_integral_decomposition (h : C(Slice L SU2, ℝ)) (a : Slice L SU2) :
    (∫ b, rowDensity L β hβ f a b * h b ∂sliceHaar L) =
      (∫ b, residualDensity L β hβ f a b * h b ∂sliceHaar L) +
      Real.exp (-12 * β * (L : ℝ)^3) *
        (∫ b, commonDensity L β hβ f b * h b ∂sliceHaar L) := by
  rw [← integral_const_mul, ← integral_add
    (residual_mixed_integrable L β hβ f hf hne h a)
    ((common_mixed_integrable L β hβ f h).const_mul _)]
  apply integral_congr_ae
  exact ae_of_all _ (fun b => by dsimp only [residualDensity]; ring)

theorem row_difference_bound (h : C(Slice L SU2, ℝ)) (m M : ℝ)
    (hm : ∀ b, m ≤ h b) (hM : ∀ b, h b ≤ M) (a a2 : Slice L SU2) :
    (∫ b, rowDensity L β hβ f a b * h b ∂sliceHaar L) -
      (∫ b, rowDensity L β hβ f a2 b * h b ∂sliceHaar L) ≤
      (1 - Real.exp (-12 * β * (L : ℝ)^3)) * (M - m) := by
  rw [row_integral_decomposition L β hβ f hf hne h a,
    row_integral_decomposition L β hβ f hf hne h a2]
  have hu := (residual_integral_bounds L β hβ f hf hne he h m M hm hM a).2
  have hl := (residual_integral_bounds L β hβ f hf hne he h m M hm hM a2).1
  nlinarith

end GRWTSK.Geometry.GaugeTheory.WilsonSliceRowDifference
