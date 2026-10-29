/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's Bochner density and product integration results retain their
upstream authorship and Apache-2.0 license. Imported GRWTSK retains its licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSplitAction
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap

/-!
# Two-boundary gluing of the actual finite Wilson reflection form

The existing normalized density is returned to its reference-Haar integral
using its proved positive partition function. Conditional Haar gauge fixing,
the actual observable restriction, the full plaquette partition and the
two crossing orientations then give the exact double-integral identity.
No gluing, action-factorization or positivity witness is assumed.

Finite-product/continuous-integral positivity remains the next theorem.
This identity does not construct a Hilbert quotient, Hamiltonian, continuum
limit or physical mass gap and supplies no RH bridge.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
attribute [local instance] Classical.propDecidable
open scoped ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.WilsonReflectionGluing

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables
open GRWTSK.Geometry.GaugeTheory.BondTimeReflection
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionForm
open GRWTSK.Geometry.GaugeTheory.WilsonHaarCoordinates
open GRWTSK.Geometry.GaugeTheory.WilsonReflectedGauge
open GRWTSK.Geometry.GaugeTheory.WilsonBoundaryGaugeIntegration
open GRWTSK.Geometry.GaugeTheory.WilsonHalfObservables
open GRWTSK.Geometry.GaugeTheory.WilsonSplitAction

section ActualPeriod
variable (T : ℕ) [NeZero (2 * T)]

/-- Return the existing normalized form to its literal unnormalized Haar source. -/
theorem partition_mul_reflectionForm (hT : 2 ≤ T) (β : ℝ) (hβ : 0 ≤ β)
    (F : positiveTimeAlgebra T) :
    (wilsonPartition (2 * T) β : ℂ) * positiveReflectionForm T hT β F F =
      ∫ U, unnormalizedReflection T β F U ∂referenceMeasure (2 * T) := by
  let Z := wilsonPartition (2 * T) β
  let ρ : Config T → ℝ≥0∞ := fun U =>
    ENNReal.ofReal (Real.exp (-β * wilsonAction (2 * T) U) / Z)
  have hZ : 0 < Z := wilsonPartition_pos (2 * T) β hβ
  have hZc : (Z : ℂ) ≠ 0 := by exact_mod_cast hZ.ne'
  have hm : Measurable ρ :=
    ((Real.measurable_exp.comp
      (measurable_const.mul (measurable_wilsonAction (2 * T)))).div_const Z).ennreal_ofReal
  have hn (U : Config T) :
      0 ≤ Real.exp (-β * wilsonAction (2 * T) U) / Z :=
    div_nonneg (Real.exp_nonneg _) hZ.le
  have hform : positiveReflectionForm T hT β F F =
      ∫ U, (Z : ℂ)⁻¹ * unnormalizedReflection T β F U ∂referenceMeasure (2 * T) := by
    change (∫ U, conj (F.val (reflection U)) * F.val U
      ∂(referenceMeasure (2 * T)).withDensity ρ) = _
    rw [integral_withDensity_eq_integral_toReal_smul hm
      (ae_of_all _ (fun U => by simp [ρ]))]
    apply integral_congr_ae
    exact ae_of_all _ (fun U => by
      change (ENNReal.ofReal (Real.exp (-β * wilsonAction (2 * T) U) / Z)).toReal •
        (conj (F.val (reflection U)) * F.val U) = _
      rw [ENNReal.toReal_ofReal (hn U), RCLike.real_smul_eq_coe_mul,
        Complex.ofReal_div]
      unfold unnormalizedReflection
      ring)
  change (Z : ℂ) * positiveReflectionForm T hT β F F = _
  rw [hform, integral_const_mul, ← mul_assoc, mul_inv_cancel₀ hZc, one_mul]

/-- Pointwise source factorization, including both boundaries and the actual f. -/
theorem unnormalized_glue_factorization (hT : 2 ≤ T) (β : ℝ)
    (F : positiveTimeAlgebra T) (u v : HalfConfig T) :
    unnormalizedReflection T β F (glue T hT u v 1) =
      conj (halfObservable T hT F v) * halfObservable T hT F u *
        (Real.exp (-β * (halfAction T hT u + halfAction T hT v)) : ℂ) *
          (boundaryKernelProduct T hT β u v : ℂ) := by
  unfold unnormalizedReflection
  rw [reflectionProduct_glue_unit, boltzmann_glue_unit, Complex.ofReal_mul]
  ring

/-- Exact gluing of the existing normalized form, not an assumed factorization. -/
theorem gluing_identity (hT : 2 ≤ T) (β : ℝ) (hβ : 0 ≤ β)
    (F : positiveTimeAlgebra T) :
    (wilsonPartition (2 * T) β : ℂ) * positiveReflectionForm T hT β F F =
      ∫ u, ∫ v, conj (halfObservable T hT F v) * halfObservable T hT F u *
        (Real.exp (-β * (halfAction T hT u + halfAction T hT v)) : ℂ) *
          (boundaryKernelProduct T hT β u v : ℂ)
        ∂halfMeasure T ∂halfMeasure T := by
  calc
    _ = ∫ U, unnormalizedReflection T β F U ∂referenceMeasure (2 * T) :=
      partition_mul_reflectionForm T hT β hβ F
    _ = ∫ u, ∫ v, unnormalizedReflection T β F (glue T hT u v 1)
        ∂halfMeasure T ∂halfMeasure T :=
      unnormalizedReflection_boundary_gluing T hT β F
    _ = _ := by
      apply integral_congr_ae
      exact ae_of_all _ (fun u => by
        apply integral_congr_ae
        exact ae_of_all _ (fun v => unnormalized_glue_factorization T hT β F u v))

end ActualPeriod

/-- Requested finite-model consumer. NeZero is constructed from T>=2 in the
statement and proof; it is not retained as an additional research hypothesis. -/
theorem positiveReflectionForm_gluing (T : ℕ) (hT : 2 ≤ T)
    (β : ℝ) (hβ : 0 ≤ β) (F : positiveTimeAlgebra T) :
    letI : NeZero (2 * T) := ⟨by omega⟩
    (wilsonPartition (2 * T) β : ℂ) * positiveReflectionForm T hT β F F =
      ∫ u, ∫ v, conj (halfObservable T hT F v) * halfObservable T hT F u *
        (Real.exp (-β * (halfAction T hT u + halfAction T hT v)) : ℂ) *
          (boundaryKernelProduct T hT β u v : ℂ)
        ∂halfMeasure T ∂halfMeasure T := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  exact gluing_identity T hT β hβ F

end GRWTSK.Geometry.GaugeTheory.WilsonReflectionGluing
