/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceRegularity
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.ReflectionHaar

/-!
# Symmetry and independent slice-gauge invariance of the constructed K

The actual temporal Haar variable is changed by fixed two-sided gauge
translations or inversion. These are genuine measure-preserving bijections,
proved from the maintained one-link Haar results. No gauge is fixed.
The scalar kernel symmetries are derived, not supplied as operator data.

SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceKernelSymmetry

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2WilsonPositiveType
open GRWTSK.Geometry.GaugeTheory.SU2Haar
open GRWTSK.Geometry.GaugeTheory.ReflectionHaar

variable (L : ℕ) [NeZero L]

def gaugeTranslateHomeomorph (h k : SliceGauge L SU2) :
    SliceGauge L SU2 ≃ₜ SliceGauge L SU2 where
  toEquiv :=
    { toFun := fun g => h * g * k
      invFun := fun g => h⁻¹ * g * k⁻¹
      left_inv := by intro g; group
      right_inv := by intro g; group }
  continuous_toFun := (continuous_const.mul continuous_id).mul continuous_const
  continuous_invFun := (continuous_const.mul continuous_id).mul continuous_const

theorem measurePreserving_gaugeTranslate (h k : SliceGauge L SU2) :
    MeasurePreserving (gaugeTranslateHomeomorph L h k)
      (sliceGaugeHaar L) (sliceGaugeHaar L) :=
  measurePreserving_twoSidedProduct h k

def gaugeInverseHomeomorph : SliceGauge L SU2 ≃ₜ SliceGauge L SU2 where
  toEquiv :=
    { toFun := Inv.inv
      invFun := Inv.inv
      left_inv := inv_inv
      right_inv := inv_inv }
  continuous_toFun := continuous_inv
  continuous_invFun := continuous_inv

theorem measurePreserving_gaugeInverse :
    MeasurePreserving (gaugeInverseHomeomorph L)
      (sliceGaugeHaar L) (sliceGaugeHaar L) := by
  have h := measurePreserving_selectiveInverse (fun _ : SpatialVertex L => True)
  simpa only [selectiveInverse, if_pos True.intro] using h

theorem M_gauge (β : ℝ) (h : SliceGauge L SU2) (a : Slice L SU2) :
    halfSpatialWeight L β (sliceGaugeAction h a) = halfSpatialWeight L β a := by
  unfold halfSpatialWeight
  rw [sliceAction_gauge]

theorem W_gauge_first (β : ℝ) (h : SliceGauge L SU2) (a b : Slice L SU2) :
    sliceWilsonProduct L β (sliceGaugeAction h a) b =
      sliceWilsonProduct L β a (sliceGaugeAction h⁻¹ b) := by
  have hh := W_gauge L β h⁻¹ (sliceGaugeAction h a) b
  rw [← sliceGauge_mul, inv_mul_cancel, sliceGauge_one] at hh
  exact hh.symm

/-- Both gauges are independent, with a proved conditional Haar variable change. -/
theorem K_gauge (β : ℝ) (h k : SliceGauge L SU2) (a b : Slice L SU2) :
    sliceKernel L β (sliceGaugeAction h a) (sliceGaugeAction k b) = sliceKernel L β a b := by
  have hH :
      (∫ g, sliceWilsonProduct L β (sliceGaugeAction h a)
        (sliceGaugeAction g (sliceGaugeAction k b)) ∂sliceGaugeHaar L) =
      ∫ g, sliceWilsonProduct L β a (sliceGaugeAction g b) ∂sliceGaugeHaar L := by
    calc
      _ = ∫ g, sliceWilsonProduct L β a
          (sliceGaugeAction (h⁻¹ * g * k) b) ∂sliceGaugeHaar L := by
        apply integral_congr_ae
        exact ae_of_all _ (fun g => by
          rw [W_gauge_first, ← sliceGauge_mul, ← sliceGauge_mul])
      _ = _ := (measurePreserving_gaugeTranslate L h⁻¹ k).integral_comp
        (gaugeTranslateHomeomorph L h⁻¹ k).measurableEmbedding
        (fun g => sliceWilsonProduct L β a (sliceGaugeAction g b))
  unfold sliceKernel
  rw [M_gauge, M_gauge, hH]

/-- Actual Haar inversion pays the exchange of the two slice arguments. -/
theorem K_symm (β : ℝ) (a b : Slice L SU2) :
    sliceKernel L β a b = sliceKernel L β b a := by
  have hH :
      (∫ g, sliceWilsonProduct L β a (sliceGaugeAction g b) ∂sliceGaugeHaar L) =
      ∫ g, sliceWilsonProduct L β b (sliceGaugeAction g a) ∂sliceGaugeHaar L := by
    calc
      _ = ∫ g, sliceWilsonProduct L β b (sliceGaugeAction g⁻¹ a) ∂sliceGaugeHaar L := by
        apply integral_congr_ae
        exact ae_of_all _ (fun g => by
          rw [W_symm L β a (sliceGaugeAction g b), W_gauge_first])
      _ = _ := (measurePreserving_gaugeInverse L).integral_comp
        (gaugeInverseHomeomorph L).measurableEmbedding
        (fun g => sliceWilsonProduct L β b (sliceGaugeAction g a))
  unfold sliceKernel
  rw [hH]
  ring

/-- The constructed beta=0 kernel is literally one, preserving the exception. -/
theorem K_zero (a b : Slice L SU2) : sliceKernel L 0 a b = 1 := by
  simp [sliceKernel, halfSpatialWeight, sliceWilsonProduct,
    integral_const, probReal_univ]

end GRWTSK.Geometry.GaugeTheory.WilsonSliceKernelSymmetry

