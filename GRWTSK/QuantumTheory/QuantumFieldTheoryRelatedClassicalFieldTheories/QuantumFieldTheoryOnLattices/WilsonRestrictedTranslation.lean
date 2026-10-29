/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's submodule lifts and first isomorphism theorem retain Johannes Hölzl,
Mario Carneiro, Kevin Buzzard and Yury Kudryashov's upstream authorship and
Apache-2.0 license. Other imports retain their authorship and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.TwoStepPositiveTranslation
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonReflectionQuotient
import Mathlib.LinearAlgebra.Isomorphisms

/-!
# Restricted translation descends to an actual subspace of the null quotient

For T>=3 the source domain has both link endpoints in 1,...,T-2.
The already constructed first and second pullbacks are actual positive-time
observables. The exact integral identity B(tau F,tau F)=B(F,tau^2 F), combined
with the proved radical annihilation, gives null preservation on this domain.

The quotient domain is precisely the range of its inclusion into the existing
null quotient. Mathlib's first isomorphism theorem and liftQ construct a
linear map FROM this range INTO the full quotient. No equality with the full
quotient, density, invariance of the range, boundedness, contraction, completion
or physical time evolution is asserted. Symmetry is proved on this exact
common range domain. Both periodic boundaries remain in the measure.

SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay and transitive axiom
audit NOT_RUN for this source and its entire inherited chain.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonRestrictedTranslation

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables
open GRWTSK.Geometry.GaugeTheory.PeriodicTimeTranslation
open GRWTSK.Geometry.GaugeTheory.WilsonTimeTranslation
open GRWTSK.Geometry.GaugeTheory.TwoStepPositiveTranslation
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionForm
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionRadical
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionQuotient

variable (T : ℕ) (hT : 3 ≤ T) (β : ℝ) (hβ : 0 ≤ β)

theorem measurePreserving_positive_timeTranslation :
    MeasurePreserving (timeTranslation : Config T → Config T)
      (positiveWilsonMeasure T (atLeastTwo hT) β)
      (positiveWilsonMeasure T (atLeastTwo hT) β) := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  exact measurePreserving_wilson_timeTranslation (2 * T) β

/-- Both slots are actual positive-time members; the same normalized integral
and mixed-observable integrability supplier remain in force. -/
theorem positiveReflectionForm_translate_symmetry (F G : twoStepDomain T) :
    positiveReflectionForm T (atLeastTwo hT) β (translatePositive T hT F) G.val =
      positiveReflectionForm T (atLeastTwo hT) β F.val (translatePositive T hT G) := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  exact reflectionForm_translate_left (2 * T) β F.val.val G.val.val

/-- Two steps of support room are consumed here. The second pullback is NOT
assumed to be positive-time for an arbitrary positive-time observable. -/
theorem positiveReflectionForm_translate_diagonal (F : twoStepDomain T) :
    positiveReflectionForm T (atLeastTwo hT) β
        (translatePositive T hT F) (translatePositive T hT F) =
      positiveReflectionForm T (atLeastTwo hT) β F.val
        (translateTwicePositive T hT F) := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  exact reflectionForm_translate_left (2 * T) β F.val.val
    (translateObservable F.val.val)

/-- Genuine radical preservation only for the two-step-margin source domain. -/
theorem translate_mem_null (F : twoStepDomain T)
    (hF : F.val ∈ nullSubmodule T (atLeastTwo hT) β hβ) :
    translatePositive T hT F ∈ nullSubmodule T (atLeastTwo hT) β hβ := by
  apply (mem_nullSubmodule_iff T (atLeastTwo hT) β hβ _).mpr
  rw [positiveReflectionForm_translate_diagonal T hT β F,
    null_annihilates_left T (atLeastTwo hT) β hβ F.val hF
      (translateTwicePositive T hT F)]
  rfl

/-- Inclusion of the literal margin domain followed by the existing quotient map. -/
def classMap : twoStepDomain T →ₗ[ℂ] ReflectionQuotient T (atLeastTwo hT) β hβ :=
  (nullSubmodule T (atLeastTwo hT) β hβ).mkQ.comp (twoStepDomain T).subtype

/-- The translated class is constructed from the actual positive first shift. -/
def translatedClass : twoStepDomain T →ₗ[ℂ] ReflectionQuotient T (atLeastTwo hT) β hβ :=
  (nullSubmodule T (atLeastTwo hT) β hβ).mkQ.comp (translatePositive T hT)

@[simp] theorem classMap_apply (F : twoStepDomain T) :
    classMap T hT β hβ F = Submodule.Quotient.mk F.val := rfl

@[simp] theorem translatedClass_apply (F : twoStepDomain T) :
    translatedClass T hT β hβ F =
      Submodule.Quotient.mk (translatePositive T hT F) := rfl

theorem ker_classMap_le_ker_translatedClass :
    LinearMap.ker (classMap T hT β hβ) ≤
      LinearMap.ker (translatedClass T hT β hβ) := by
  intro F hF
  have hz : (Submodule.Quotient.mk F.val :
      ReflectionQuotient T (atLeastTwo hT) β hβ) = 0 := hF
  have hn := (Submodule.Quotient.mk_eq_zero).mp hz
  change (Submodule.Quotient.mk (translatePositive T hT F) :
    ReflectionQuotient T (atLeastTwo hT) β hβ) = 0
  exact Submodule.Quotient.mk_eq_zero.mpr (translate_mem_null T hT β hβ F hn)

/-- Exact representative independence among representatives in this domain. -/
theorem translatedClass_eq_of_classMap_eq (F G : twoStepDomain T)
    (h : classMap T hT β hβ F = classMap T hT β hβ G) :
    translatedClass T hT β hβ F = translatedClass T hT β hβ G := by
  have hk : F - G ∈ LinearMap.ker (classMap T hT β hβ) := by
    change classMap T hT β hβ (F - G) = 0
    rw [map_sub, h, sub_self]
  have ht := ker_classMap_le_ker_translatedClass T hT β hβ hk
  change translatedClass T hT β hβ (F - G) = 0 at ht
  rw [map_sub, sub_eq_zero] at ht
  exact ht

/-- The actual domain inside the existing quotient; no density is asserted. -/
def restrictedClasses : Submodule ℂ (ReflectionQuotient T (atLeastTwo hT) β hβ) :=
  LinearMap.range (classMap T hT β hβ)

theorem mem_restrictedClasses_iff
    (q : ReflectionQuotient T (atLeastTwo hT) β hβ) :
    q ∈ restrictedClasses T hT β hβ ↔
      ∃ F : twoStepDomain T, (Submodule.Quotient.mk F.val :
        ReflectionQuotient T (atLeastTwo hT) β hβ) = q := Iff.rfl

/-- Internal quotient lift, consumed below by the canonical range equivalence. -/
def translationLift :
    (twoStepDomain T ⧸ LinearMap.ker (classMap T hT β hβ)) →ₗ[ℂ]
      ReflectionQuotient T (atLeastTwo hT) β hβ :=
  (LinearMap.ker (classMap T hT β hβ)).liftQ (translatedClass T hT β hβ)
    (ker_classMap_le_ker_translatedClass T hT β hβ)

/-- A linear map on precisely the image of the two-step support domain.
Its codomain is the full quotient; range invariance is not asserted. -/
def restrictedTranslation :
    restrictedClasses T hT β hβ →ₗ[ℂ] ReflectionQuotient T (atLeastTwo hT) β hβ :=
  (translationLift T hT β hβ).comp
    (classMap T hT β hβ).quotKerEquivRange.symm.toLinearMap

theorem restrictedTranslation_class (F : twoStepDomain T) :
    restrictedTranslation T hT β hβ
      ⟨classMap T hT β hβ F, ⟨F, rfl⟩⟩ = translatedClass T hT β hβ F := by
  change translationLift T hT β hβ
    ((classMap T hT β hβ).quotKerEquivRange.symm
      ⟨classMap T hT β hβ F, ⟨F, rfl⟩⟩) = translatedClass T hT β hβ F
  rw [LinearMap.quotKerEquivRange_symm_apply_image]
  rfl

/-- Symmetric pairing identity on the proved common restricted quotient domain.
Neither the translated vectors nor their iterates are claimed in that domain. -/
theorem restrictedTranslation_symmetric (q r : restrictedClasses T hT β hβ) :
    quotientReflectionForm T (atLeastTwo hT) β hβ
        (restrictedTranslation T hT β hβ q) r.val =
      quotientReflectionForm T (atLeastTwo hT) β hβ q.val
        (restrictedTranslation T hT β hβ r) := by
  obtain ⟨F, hF⟩ := q.prop
  obtain ⟨G, hG⟩ := r.prop
  have eqF : q = ⟨classMap T hT β hβ F, ⟨F, rfl⟩⟩ := Subtype.ext hF.symm
  have eqG : r = ⟨classMap T hT β hβ G, ⟨G, rfl⟩⟩ := Subtype.ext hG.symm
  rw [eqF, eqG, restrictedTranslation_class, restrictedTranslation_class]
  change positiveReflectionForm T (atLeastTwo hT) β
      (translatePositive T hT F) G.val =
    positiveReflectionForm T (atLeastTwo hT) β F.val (translatePositive T hT G)
  exact positiveReflectionForm_translate_symmetry T hT β F G

end GRWTSK.Geometry.GaugeTheory.WilsonRestrictedTranslation

