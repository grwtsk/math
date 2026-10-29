/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported finite-product Haar and Bochner integration results retain their
upstream authorship and licenses; other imports retain theirs. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonTranslationMixedBound

/-!
# Zero coupling: actual Haar factorization and translation isometry

At beta=0 the constructed partition is one and the Wilson measure is exactly
the original product Haar. The existing full coordinate disintegration splits
positive, reflected-positive and crossing coordinates. The crossing Haar
integration has mass one; it is integrated, not discarded. Literal dependence
on the positive links factors the mixed form into the two actual Haar means.

Full Haar translation preserves these means, so q(tau F)=q(F) on the precise
two-step domain for every T>=3. Thus the requested constant at beta=0 is C=1.
No kernel lower bound, spectral decomposition or transfer operator is assumed.

SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay and transitive axiom
audit NOT_RUN for the entire new and inherited chain.
-/
set_option autoImplicit false
noncomputable section
open scoped ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.WilsonZeroCouplingTranslation

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables
open GRWTSK.Geometry.GaugeTheory.BondTimeReflection
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionForm
open GRWTSK.Geometry.GaugeTheory.WilsonHaarCoordinates
open GRWTSK.Geometry.GaugeTheory.WilsonHalfObservables
open GRWTSK.Geometry.GaugeTheory.WilsonTimeTranslation
open GRWTSK.Geometry.GaugeTheory.PeriodicTimeTranslation
open GRWTSK.Geometry.GaugeTheory.TwoStepPositiveTranslation
open GRWTSK.Geometry.GaugeTheory.WilsonRestrictedTranslation
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionQuotient
open GRWTSK.Probability.StatisticalMechanics.FiniteBoltzmannNormalization

theorem wilsonPartition_zero (L : ℕ) [NeZero L] : wilsonPartition L 0 = 1 := by
  simp [wilsonPartition, partitionFunction, boltzmannWeight, integral_const, probReal_univ]

theorem wilsonMeasure_zero (L : ℕ) [NeZero L] :
    wilsonMeasure L 0 = referenceMeasure L := by
  change (referenceMeasure L).withDensity
    (fun U => ENNReal.ofReal (Real.exp (-(0 : ℝ) * wilsonAction L U) /
      wilsonPartition L 0)) = _
  simp only [neg_zero, zero_mul, Real.exp_zero, wilsonPartition_zero,
    div_one, ENNReal.ofReal_one]
  exact Measure.withDensity_one

section HalfCoordinates
variable (T : ℕ) [NeZero (2 * T)] (hT : 2 ≤ T)

/-- Reflected positive dependence is independent of the crossing variables,
by the actual reflected positive restriction, even at non-unit crossings. -/
theorem reflected_observable_glue (F : positiveTimeAlgebra T)
    (u v : HalfConfig T) (t : CrossConfig T) :
    F.val (reflection (glue T hT u v t)) = halfObservable T hT F v := by
  apply dependsOnPositiveLinks_of_mem T F
  intro e he
  exact (reflection_glue_plus T hT u v t ⟨e, he⟩).trans
    (glue_plus T hT v 1 1 ⟨e, he⟩).symm

/-- The half mean is the mean of the same source on the full product Haar. -/
theorem reference_mean_half (F : positiveTimeAlgebra T) :
    (∫ U, F.val U ∂referenceMeasure (2 * T)) =
      ∫ u, halfObservable T hT F u ∂halfMeasure T := by
  calc
    _ = ∫ a, ∫ t, halfObservable T hT F a.1 ∂crossMeasure T
        ∂((halfMeasure T).prod (halfMeasure T)) := by
      rw [integral_glue T hT F.val]
      apply integral_congr_ae
      exact ae_of_all _ (fun a => by
        apply integral_congr_ae
        exact ae_of_all _ (fun t => observable_glue T hT F a.1 a.2 t))
    _ = ∫ a, halfObservable T hT F a.1
        ∂((halfMeasure T).prod (halfMeasure T)) := by
      simp only [integral_const, probReal_univ, one_smul]
    _ = _ := by rw [integral_fun_fst, probReal_univ, one_smul]

/-- Actual mixed-observable factorization under the normalized beta=0 source. -/
theorem positiveReflectionForm_zero_factorization (F G : positiveTimeAlgebra T) :
    positiveReflectionForm T hT 0 F G =
      conj (∫ U, F.val U ∂referenceMeasure (2 * T)) *
        (∫ U, G.val U ∂referenceMeasure (2 * T)) := by
  let I : C(Config T, ℂ) :=
    ⟨fun U => conj (F.val (reflection U)) * G.val U,
      (Complex.continuous_conj.comp
        (F.val.continuous.comp continuous_reflection)).mul G.val.continuous⟩
  change (∫ U, I U ∂wilsonMeasure (2 * T) 0) = _
  rw [wilsonMeasure_zero]
  calc
    _ = ∫ a, ∫ t, conj (halfObservable T hT F a.2) * halfObservable T hT G a.1
        ∂crossMeasure T ∂((halfMeasure T).prod (halfMeasure T)) := by
      rw [integral_glue T hT I]
      apply integral_congr_ae
      exact ae_of_all _ (fun a => by
        apply integral_congr_ae
        exact ae_of_all _ (fun t => by
          dsimp only [I]
          rw [reflected_observable_glue, observable_glue]))
    _ = ∫ a, conj (halfObservable T hT F a.2) * halfObservable T hT G a.1
        ∂((halfMeasure T).prod (halfMeasure T)) := by
      simp only [integral_const, probReal_univ, one_smul]
    _ = ∫ a, halfObservable T hT G a.1 * conj (halfObservable T hT F a.2)
        ∂((halfMeasure T).prod (halfMeasure T)) := by
      apply integral_congr_ae
      exact ae_of_all _ (fun a => mul_comm _ _)
    _ = (∫ u, halfObservable T hT G u ∂halfMeasure T) *
        (∫ v, conj (halfObservable T hT F v) ∂halfMeasure T) :=
      integral_prod_mul _ _
    _ = _ := by
      rw [integral_conj, ← reference_mean_half T hT F, ← reference_mean_half T hT G]
      exact mul_comm _ _

end HalfCoordinates

/-- Exact beta=0 result, stronger than the requested form bound with C=1. -/
theorem zeroCoupling_translation_diagonal (T : ℕ) (hT : 3 ≤ T)
    (F : twoStepDomain T) :
    positiveReflectionForm T (atLeastTwo hT) 0
        (translatePositive T hT F) (translatePositive T hT F) =
      positiveReflectionForm T (atLeastTwo hT) 0 F.val F.val := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  rw [positiveReflectionForm_zero_factorization, positiveReflectionForm_zero_factorization]
  change conj (∫ U, F.val.val (timeTranslation U) ∂referenceMeasure (2 * T)) *
      (∫ U, F.val.val (timeTranslation U) ∂referenceMeasure (2 * T)) =
    conj (∫ U, F.val.val U ∂referenceMeasure (2 * T)) *
      (∫ U, F.val.val U ∂referenceMeasure (2 * T))
  rw [(measurePreserving_reference_timeTranslation (2 * T)).integral_comp
    (timeTranslationHomeomorph (2 * T) SU2).measurableEmbedding F.val.val]

theorem zeroCoupling_translation_re_eq (T : ℕ) (hT : 3 ≤ T)
    (F : twoStepDomain T) :
    (positiveReflectionForm T (atLeastTwo hT) 0
        (translatePositive T hT F) (translatePositive T hT F)).re =
      (positiveReflectionForm T (atLeastTwo hT) 0 F.val F.val).re :=
  congrArg Complex.re (zeroCoupling_translation_diagonal T hT F)

/-- The already constructed restricted quotient map preserves its actual
diagonal at beta=0. No quotient norm or completion is installed here. -/
theorem zeroCoupling_restrictedTranslation_diagonal (T : ℕ) (hT : 3 ≤ T)
    (q : restrictedClasses T hT 0 (show (0 : ℝ) ≤ 0 from le_rfl)) :
    quotientReflectionForm T (atLeastTwo hT) 0 (show (0 : ℝ) ≤ 0 from le_rfl)
        (restrictedTranslation T hT 0 (show (0 : ℝ) ≤ 0 from le_rfl) q)
        (restrictedTranslation T hT 0 (show (0 : ℝ) ≤ 0 from le_rfl) q) =
      quotientReflectionForm T (atLeastTwo hT) 0 (show (0 : ℝ) ≤ 0 from le_rfl)
        q.val q.val := by
  obtain ⟨F, hF⟩ := q.prop
  have hq : q = ⟨classMap T hT 0 (show (0 : ℝ) ≤ 0 from le_rfl) F, ⟨F, rfl⟩⟩ :=
    Subtype.ext hF.symm
  rw [hq]
  simpa only [restrictedTranslation_class, translatedClass_apply, classMap_apply,
    quotientReflectionForm_mk_mk] using zeroCoupling_translation_diagonal T hT F

end GRWTSK.Geometry.GaugeTheory.WilsonZeroCouplingTranslation

