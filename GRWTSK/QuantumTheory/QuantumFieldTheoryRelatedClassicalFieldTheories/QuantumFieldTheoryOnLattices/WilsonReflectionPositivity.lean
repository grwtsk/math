/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonBoundaryKernelIntegral
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonReflectionGluing

/-!
# Reflection positivity of the actual finite periodic SU(2) Wilson measure

The actual observable g=e^(-beta*Splus)*f is constructed as a continuous
complex function on the actual compact half configuration. The boundary
Haar quadratic integral is nonnegative by its proved tensor/series argument.
The existing exact two-boundary gluing identity and existing Z>0 return this
to the existing normalized Wilson reflection form.

This is semidefiniteness at fixed finite T. It constructs no quotient,
completion, time evolution, vacuum/ground sector, infinite-volume/continuum
limit or physical mass gap and supplies no RH bridge.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
attribute [local instance] Classical.propDecidable
open scoped ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.WilsonReflectionPositivity

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables
open GRWTSK.Geometry.GaugeTheory.BondTimeReflection
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionForm
open GRWTSK.Geometry.GaugeTheory.WilsonHaarCoordinates
open GRWTSK.Geometry.GaugeTheory.WilsonHalfObservables
open GRWTSK.Geometry.GaugeTheory.WilsonSplitAction
open GRWTSK.Geometry.GaugeTheory.WilsonBoundaryKernelIntegral
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionGluing

section ActualPeriod
variable (T : ℕ) [NeZero (2 * T)]

theorem continuous_positiveAction : Continuous (positiveAction T) := by
  unfold positiveAction
  apply continuous_finsetSum
  intro p _
  by_cases hp : positivePlaquette T p
  · simpa only [if_pos hp] using continuous_penalty.comp (continuous_holonomy p)
  · simpa only [if_neg hp] using
      (continuous_const : Continuous (fun _ : Config T => (0 : ℝ)))

theorem continuous_halfEmbedding (hT : 2 ≤ T) :
    Continuous (fun u : HalfConfig T => glue T hT u 1 1) := by
  have h : Continuous (fun u : HalfConfig T =>
      ((u, (1 : HalfConfig T)), (1 : CrossConfig T))) :=
    (continuous_id.prodMk continuous_const).prodMk continuous_const
  exact (continuous_glue T hT).comp h

theorem continuous_halfAction (hT : 2 ≤ T) : Continuous (halfAction T hT) :=
  (continuous_positiveAction T).comp (continuous_halfEmbedding T hT)

theorem continuous_halfObservable (hT : 2 ≤ T) (F : positiveTimeAlgebra T) :
    Continuous (halfObservable T hT F) :=
  F.val.continuous.comp (continuous_halfEmbedding T hT)

/-- The actual g in the existing gluing formula, with continuity supplied. -/
def weightedHalfObservable (hT : 2 ≤ T) (β : ℝ) (F : positiveTimeAlgebra T) :
    C(HalfConfig T, ℂ) :=
  ⟨fun u => (Real.exp (-β * halfAction T hT u) : ℂ) * halfObservable T hT F u,
    (Complex.continuous_ofReal.comp (Real.continuous_exp.comp
      (continuous_const.mul (continuous_halfAction T hT)))).mul
        (continuous_halfObservable T hT F)⟩

theorem integrable_weightedHalfObservable (hT : 2 ≤ T) (β : ℝ) (F : positiveTimeAlgebra T) :
    Integrable (weightedHalfObservable T hT β F) (halfMeasure T) :=
  (weightedHalfObservable T hT β F).continuous.integrable_of_hasCompactSupport
    (HasCompactSupport.of_compactSpace _)

/-- Product integrability for the actual weighted observable and full boundary kernel. -/
theorem integrable_weightedBoundaryProduct (hT : 2 ≤ T) (β : ℝ)
    (F : positiveTimeAlgebra T) :
    Integrable (fun p : HalfConfig T × HalfConfig T =>
      conj (weightedHalfObservable T hT β F p.2) * weightedHalfObservable T hT β F p.1 *
        (boundaryKernelProduct T hT β p.1 p.2 : ℂ))
      ((halfMeasure T).prod (halfMeasure T)) :=
  boundaryKernelProduct_integrable T hT β (weightedHalfObservable T hT β F)

theorem weightedBoundaryProduct_eq (hT : 2 ≤ T) (β : ℝ) (F : positiveTimeAlgebra T)
    (u v : HalfConfig T) :
    conj (weightedHalfObservable T hT β F v) * weightedHalfObservable T hT β F u *
      (boundaryKernelProduct T hT β u v : ℂ) =
        conj (halfObservable T hT F v) * halfObservable T hT F u *
          (Real.exp (-β * (halfAction T hT u + halfAction T hT v)) : ℂ) *
            (boundaryKernelProduct T hT β u v : ℂ) := by
  have he : Real.exp (-β * (halfAction T hT u + halfAction T hT v)) =
      Real.exp (-β * halfAction T hT v) * Real.exp (-β * halfAction T hT u) := by
    rw [← Real.exp_add]
    congr 1
    ring
  simp only [weightedHalfObservable, map_mul, Complex.conj_ofReal, he, Complex.ofReal_mul]
  ring

/-- The actual gluing identity with the continuous weighted observable constructed above. -/
theorem weighted_gluing (hT : 2 ≤ T) (β : ℝ) (hβ : 0 ≤ β) (F : positiveTimeAlgebra T) :
    (wilsonPartition (2 * T) β : ℂ) * positiveReflectionForm T hT β F F =
      ∫ u, ∫ v, conj (weightedHalfObservable T hT β F v) *
        weightedHalfObservable T hT β F u * (boundaryKernelProduct T hT β u v : ℂ)
        ∂halfMeasure T ∂halfMeasure T := by
  rw [gluing_identity T hT β hβ F]
  apply integral_congr_ae
  exact ae_of_all _ (fun u => by
    apply integral_congr_ae
    exact ae_of_all _ (fun v => (weightedBoundaryProduct_eq T hT β F u v).symm))

/-- Source-complete finite-model inequality; no positivity or gluing premise remains. -/
theorem reflectionForm_nonnegative (hT : 2 ≤ T) (β : ℝ) (hβ : 0 ≤ β)
    (F : positiveTimeAlgebra T) :
    0 ≤ (positiveReflectionForm T hT β F F).re := by
  have hp := boundaryKernelProduct_integral_nonnegative T hT β hβ
    (weightedHalfObservable T hT β F)
  rw [← weighted_gluing T hT β hβ F] at hp
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero] at hp
  apply (mul_le_mul_left (wilsonPartition_pos (2 * T) β hβ)).mp
  simpa only [mul_zero] using hp

end ActualPeriod

/-- Finite periodic SU(2) Wilson reflection positivity for the existing algebra.
The only hypotheses are T>=2, beta>=0 and membership in that actual algebra. -/
theorem finiteWilson_reflection_positive (T : ℕ) (hT : 2 ≤ T) (β : ℝ)
    (hβ : 0 ≤ β) (F : positiveTimeAlgebra T) :
    0 ≤ (positiveReflectionForm T hT β F F).re := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  exact reflectionForm_nonnegative T hT β hβ F

/-- Actual normalized integrability, real diagonal and nonnegative real part together.
No norm or strict positive-definiteness conclusion is made. -/
theorem finiteWilson_reflection_positive_properties (T : ℕ) (hT : 2 ≤ T) (β : ℝ)
    (hβ : 0 ≤ β) (F : positiveTimeAlgebra T) :
    Integrable (fun U : Config T => conj (F.val (reflection U)) * F.val U)
        (positiveWilsonMeasure T hT β) ∧
      (positiveReflectionForm T hT β F F).im = 0 ∧
        0 ≤ (positiveReflectionForm T hT β F F).re :=
  ⟨positiveReflectionForm_integrable T hT β hβ F F,
    positiveReflectionForm_diagonal_im_zero T hT β F,
    finiteWilson_reflection_positive T hT β hβ F⟩

end GRWTSK.Geometry.GaugeTheory.WilsonReflectionPositivity
