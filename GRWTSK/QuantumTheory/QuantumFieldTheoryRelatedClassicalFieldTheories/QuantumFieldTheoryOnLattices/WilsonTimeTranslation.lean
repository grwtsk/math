/- Copyright (c) 2026 grwtsk contributors. MIT.
The imported finite product/Haar theory retains Floris van Doorn and
Sébastien Gouëzel's upstream authorship. Mathlib's Bochner integral results
retain their authorship and Apache-2.0 license. Other imports retain theirs. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.PeriodicTimeTranslation
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonReflectionForm

/-!
# Time translation preserves the actual finite Wilson measure

The full link permutation consumes the proved product-Haar reindexing lemma.
The full plaquette permutation preserves the literal action, with every
direction and both periodic crossing layers retained. The existing constructed
Boltzmann density then supplies actual Wilson-measure preservation.

The reflection-integral identity uses U=S V and S Theta S=Theta; it is proved
for actual continuous maps before any restricted-support specialization.
There is no assumed translation, measure-invariance or positivity certificate.

SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.WilsonTimeTranslation

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.BondTimeReflection
open GRWTSK.Geometry.GaugeTheory.PeriodicTimeTranslation
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.ReflectionHaar
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionForm
open GRWTSK.Probability.StatisticalMechanics.FiniteBoltzmannNormalization

/-- Pullback on actual continuous observables, with no support claim. -/
def translateObservable {L : ℕ} (F : C(Configuration L SU2, ℂ)) :
    C(Configuration L SU2, ℂ) :=
  ⟨fun U => F (timeTranslation U), F.continuous.comp continuous_timeTranslation⟩

@[simp] theorem translateObservable_apply {L : ℕ}
    (F : C(Configuration L SU2, ℂ)) (U : Configuration L SU2) :
    translateObservable F U = F (timeTranslation U) := rfl

variable (L : ℕ) [NeZero L]

theorem wilsonAction_timeTranslation (U : Configuration L SU2) :
    wilsonAction L (timeTranslation U) = wilsonAction L U := by
  unfold wilsonAction
  calc
    _ = ∑ p : Plaquette L, penalty (holonomy U (timePlaquetteEquiv L p)) :=
      Finset.sum_congr rfl (fun p _ => congrArg penalty (holonomy_timeTranslation U p))
    _ = ∑ p : Plaquette L, penalty (holonomy U p) :=
      (timePlaquetteEquiv L).sum_comp (fun p => penalty (holonomy U p))

/-- This is actual product-Haar reindexing, not gauge invariance. -/
theorem measurePreserving_reference_timeTranslation :
    MeasurePreserving (timeTranslation : Configuration L SU2 → Configuration L SU2)
      (referenceMeasure L) (referenceMeasure L) :=
  measurePreserving_reindex (timeLinkEquiv L)

/-- Density preservation uses the constructed reference measure and action. -/
theorem wilsonMeasure_map_timeTranslation (β : ℝ) :
    (wilsonMeasure L β).map (timeTranslation : Configuration L SU2 → Configuration L SU2) =
      wilsonMeasure L β :=
  boltzmannMeasure_map_eq (referenceMeasure L) (measurable_wilsonAction L)
    (measurePreserving_reference_timeTranslation L) (wilsonAction_timeTranslation L)

theorem measurePreserving_wilson_timeTranslation (β : ℝ) :
    MeasurePreserving (timeTranslation : Configuration L SU2 → Configuration L SU2)
      (wilsonMeasure L β) (wilsonMeasure L β) :=
  ⟨continuous_timeTranslation.measurable, wilsonMeasure_map_timeTranslation L β⟩

/-- Exact change-of-variables direction. Symmetry holds for every real beta;
the positive-time integrability/positivity consumers separately use beta>=0. -/
theorem reflectionForm_translate_left (β : ℝ)
    (F G : C(Configuration L SU2, ℂ)) :
    reflectionForm L β (translateObservable F) G =
      reflectionForm L β F (translateObservable G) := by
  have h := (measurePreserving_wilson_timeTranslation L β).integral_comp
    (timeTranslationHomeomorph L SU2).measurableEmbedding
    (fun U : Configuration L SU2 => conj (F (timeTranslation (reflection U))) * G U)
  change (∫ U, conj (F (timeTranslation (reflection U))) * G U ∂wilsonMeasure L β) =
    ∫ U, conj (F (reflection U)) * G (timeTranslation U) ∂wilsonMeasure L β
  calc
    _ = ∫ U, conj (F (timeTranslation (reflection (timeTranslation U)))) *
        G (timeTranslation U) ∂wilsonMeasure L β := h.symm
    _ = _ := by simp only [timeTranslation_reflection_timeTranslation]

end GRWTSK.Geometry.GaugeTheory.WilsonTimeTranslation

