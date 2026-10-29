/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's Bochner integral, continuous-map norm and Cauchy--Schwarz results
retain their upstream authorship and Apache-2.0 license. Other imports retain theirs. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonRestrictedTranslation
import Mathlib.Topology.ContinuousMap.Compact

/-!
# Actual mixed sup-norm bounds for restricted finite Wilson translation

The original observable's existing continuous-map sup norm bounds the two
values in the translated reflection integrand. The actual normalized Wilson
probability gives q(tau^2 F)<=norm(F)^2. Actual complex CS and the proved
translation identity give q(tau F)^2<=q(F)*q(tau^2 F), hence the requested
mixed bound. No sup-norm/form-norm comparison, operator bound, density or
continuum-uniform estimate is inferred.

SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay and transitive axiom
audit NOT_RUN, including the complete inherited chain.
-/
set_option autoImplicit false
noncomputable section
open scoped ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.WilsonTranslationMixedBound

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables
open GRWTSK.Geometry.GaugeTheory.BondTimeReflection
open GRWTSK.Geometry.GaugeTheory.PeriodicTimeTranslation
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.TwoStepPositiveTranslation
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionForm
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionPositivity
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionSesquilinear
open GRWTSK.Geometry.GaugeTheory.WilsonRestrictedTranslation

variable (T : ℕ) (hT : 3 ≤ T) (β : ℝ) (hβ : 0 ≤ β)

/-- The original map's actual sup norm, not an unproved quotient norm. -/
theorem translateTwice_diagonal_le_sup_sq (F : twoStepDomain T) :
    (positiveReflectionForm T (atLeastTwo hT) β
      (translateTwicePositive T hT F) (translateTwicePositive T hT F)).re ≤
        ‖F.val.val‖ ^ 2 := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  letI : IsProbabilityMeasure (positiveWilsonMeasure T (atLeastTwo hT) β) :=
    wilsonMeasure_isProbabilityMeasure (2 * T) β hβ
  have hn : ‖positiveReflectionForm T (atLeastTwo hT) β
      (translateTwicePositive T hT F) (translateTwicePositive T hT F)‖ ≤
        ‖F.val.val‖ ^ 2 := by
    have hpoint (U : Config T) :
        ‖conj (F.val.val (timeTranslation (timeTranslation (reflection U)))) *
          F.val.val (timeTranslation (timeTranslation U))‖ ≤ ‖F.val.val‖ ^ 2 := by
      rw [norm_mul, Complex.norm_conj, pow_two]
      exact mul_le_mul
        (F.val.val.norm_coe_le_norm (timeTranslation (timeTranslation (reflection U))))
        (F.val.val.norm_coe_le_norm (timeTranslation (timeTranslation U)))
        (norm_nonneg _) (norm_nonneg _)
    have h := norm_integral_le_of_norm_le_const
      (μ := positiveWilsonMeasure T (atLeastTwo hT) β)
      (ae_of_all _ hpoint)
    simpa only [probReal_univ, mul_one] using h
  exact (Complex.re_le_norm _).trans hn

/-- Exact CS bound with both translated observables proved positive-time. -/
theorem translation_quadratic_cauchySchwarz (F : twoStepDomain T) :
    (positiveReflectionForm T (atLeastTwo hT) β
        (translatePositive T hT F) (translatePositive T hT F)).re ^ 2 ≤
      (positiveReflectionForm T (atLeastTwo hT) β F.val F.val).re *
        (positiveReflectionForm T (atLeastTwo hT) β
          (translateTwicePositive T hT F) (translateTwicePositive T hT F)).re := by
  have h := positiveReflectionForm_cauchySchwarz T (atLeastTwo hT) β hβ
    F.val (translateTwicePositive T hT F)
  rw [← positiveReflectionForm_translate_diagonal T hT β F] at h
  have hr := Complex.re_le_norm (positiveReflectionForm T (atLeastTwo hT) β
    (translatePositive T hT F) (translatePositive T hT F))
  have hp := finiteWilson_reflection_positive T (atLeastTwo hT) β hβ
    (translatePositive T hT F)
  have hn := norm_nonneg (positiveReflectionForm T (atLeastTwo hT) β
    (translatePositive T hT F) (translatePositive T hT F))
  have hm := mul_nonneg (sub_nonneg.mpr hr) (add_nonneg hn hp)
  nlinarith

/-- This mixed estimate is not a bound by a constant times q(F). -/
theorem translation_mixed_sup_bound (F : twoStepDomain T) :
    (positiveReflectionForm T (atLeastTwo hT) β
        (translatePositive T hT F) (translatePositive T hT F)).re ^ 2 ≤
      (positiveReflectionForm T (atLeastTwo hT) β F.val F.val).re *
        ‖F.val.val‖ ^ 2 :=
  (translation_quadratic_cauchySchwarz T hT β hβ F).trans
    (mul_le_mul_of_nonneg_left (translateTwice_diagonal_le_sup_sq T hT β hβ F)
      (finiteWilson_reflection_positive T (atLeastTwo hT) β hβ F.val))

end GRWTSK.Geometry.GaugeTheory.WilsonTranslationMixedBound

