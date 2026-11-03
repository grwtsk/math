/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonThreeSliceOSBoundedTranslation
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.FiniteSU2Wilson
import Mathlib

/-!
# Source-normalized vacuum and supported time translation in the true Wilson OS Hilbert

Local attribution: grwtsk contributors.

The constant positive-time gauge-invariant observable 1 really belongs to
the source two-step margin domain. Its exact ORIGINAL normalized Wilson
reflection integral equals 1 because the full finite Wilson measure is a
probability, with the temporal crossing links retained in that measure.

The earlier source-proved strict quotient norm and completion therefore
give a UNIT vacuum in the genuine finite-period reflection-positive
complex Hilbert space. At the actual T=3 period-six source, the existing
restricted translation fixes that exact vacuum. The SOURCE-proved
Hermitian translation identity then preserves its inner product with
every two-step-supported quotient observable. This gives the actual
vacuum-sector invariance and fixes the operator norm at EXACTLY 1,
rather than only at most 1, for the supported translation.

The quotient translation remains defined only on the source-supported
subspace and its completion. It is NOT a globally defined semigroup on
the full OS Hilbert; no reflection-space/real-slice Hilbert
identification, continuum Hamiltonian, or mass gap is claimed.

SOURCE_PROOF_CANDIDATE; LEAN_BUILD_NOT_RUN; FRESH_KERNEL_NOT_RUN;
TRANSITIVE_AXIOMS_NOT_RUN; EXPECTED_TYPES_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSVacuum

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionForm
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionQuotient
open GRWTSK.Geometry.GaugeTheory.TwoStepPositiveTranslation
open GRWTSK.Geometry.GaugeTheory.WilsonRestrictedTranslation
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionHilbertCompletion
open GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSBoundedTranslation

variable (β : ℝ) (hβ : 0 ≤ β)

private theorem hThree : (2 : ℕ) ≤ 3 := by decide

/-- The literal constant is an actual TWO-STEP supported observable.
This does not discard a crossing-link integral. -/
def unitTwoStep : twoStepDomain 3 :=
  ⟨(1 : positiveTimeAlgebra 3), by
    intro U V hUV
    rfl⟩

/-- True time translation fixes the original full-configuration constant. -/
theorem translate_unitTwoStep :
    translatePositive 3 (le_refl 3) unitTwoStep =
      (1 : positiveTimeAlgebra 3) := by
  apply Subtype.ext
  apply ContinuousMap.ext
  intro U
  rfl

/-- The source normalized Wilson measure, not an inserted vacuum
normalization, gives reflection norm one for constant 1. -/
theorem reflection_one_one :
    positiveReflectionForm 3 (hThree) β
      (1 : positiveTimeAlgebra 3) 1 = 1 := by
  letI : NeZero 6 := ⟨by decide⟩
  letI : IsProbabilityMeasure (positiveWilsonMeasure 3 hThree β) :=
    wilsonMeasure_isProbabilityMeasure 6 β hβ
  simp [positiveReflectionForm]

/-- The source-defined supported class of constant one, with a concrete
two-step witness rather than a density hypothesis. -/
def vacuumSupported : SupportedClasses β hβ :=
  ⟨classMap 3 (le_refl 3) β hβ unitTwoStep,
    ⟨unitTwoStep, rfl⟩⟩

/-- The supported vector is the ACTUAL full OS quotient class of 1. -/
theorem vacuumSupported_coe :
    (vacuumSupported β hβ :
      AlgebraicOSSpace 3 hThree β hβ) =
      (Submodule.Quotient.mk (1 : positiveTimeAlgebra 3) :
        AlgebraicOSSpace 3 hThree β hβ) := by
  rfl

/-- The original normalized reflection form makes the REAL supported
vacuum norm one (and hence nonzero). -/
theorem vacuumSupported_norm :
    ‖vacuumSupported β hβ‖ = 1 := by
  have hsq :
      ‖(vacuumSupported β hβ :
        AlgebraicOSSpace 3 hThree β hβ)‖ ^ 2 = 1 := by
    rw [norm_sq_eq_re_inner, vacuumSupported_coe]
    change (positiveReflectionForm 3 hThree β
      (1 : positiveTimeAlgebra 3) 1).re = 1
    rw [reflection_one_one β hβ]
    norm_num
  have hnorm :
      ‖vacuumSupported β hβ‖ =
        ‖(vacuumSupported β hβ :
          AlgebraicOSSpace 3 hThree β hβ)‖ := rfl
  rw [hnorm]
  nlinarith [norm_nonneg
    (vacuumSupported β hβ :
      AlgebraicOSSpace 3 hThree β hβ)]

/-- The actual unit vacuum in the completed COMPLEX Wilson OS Hilbert. -/
def vacuumOS : CompletedOSHilbert 3 hThree β hβ :=
  observableClass 3 hThree β hβ (1 : positiveTimeAlgebra 3)

/-- The completed Wilson OS vacuum has norm one directly from the source
normalized reflection integral; no substitute probability is used. -/
theorem vacuumOS_unit :
    ‖vacuumOS β hβ‖ = 1 := by
  have hsq : ‖vacuumOS β hβ‖ ^ 2 = 1 := by
    change ‖observableClass 3 hThree β hβ
      (1 : positiveTimeAlgebra 3)‖ ^ 2 = 1
    rw [observableClass_norm_sq, reflection_one_one β hβ]
    norm_num
  nlinarith [norm_nonneg (vacuumOS β hβ)]

theorem vacuumOS_ne_zero : vacuumOS β hβ ≠ 0 := by
  intro hz
  have hn := vacuumOS_unit β hβ
  rw [hz, norm_zero] at hn
  norm_num at hn

/-- The actual T=3 quotient time translation fixes the true constant
vacuum, although it is not defined on ALL quotient states. -/
theorem restrictedTranslation_vacuum :
    restrictedTranslation 3 (le_refl 3) β hβ
      (vacuumSupported β hβ) =
      (vacuumSupported β hβ :
        AlgebraicOSSpace 3 hThree β hβ) := by
  change restrictedTranslation 3 (le_refl 3) β hβ
    ⟨classMap 3 (le_refl 3) β hβ unitTwoStep,
      ⟨unitTwoStep, rfl⟩⟩ = _
  rw [restrictedTranslation_class]
  change (Submodule.Quotient.mk
    (translatePositive 3 (le_refl 3) unitTwoStep) :
      AlgebraicOSSpace 3 hThree β hβ) = _
  rw [translate_unitTwoStep, ← vacuumSupported_coe β hβ]

/-- This exact old supported vacuum also survives the canonical
completion extension, with no full-range density assumption. -/
theorem completedRestrictedTranslation_vacuum :
    completedRestrictedTranslation β hβ
        (vacuumSupported β hβ :
          UniformSpace.Completion (SupportedClasses β hβ)) =
      vacuumOS β hβ := by
  rw [completedRestrictedTranslation_class,
    restrictedTranslation_vacuum]
  exact congrArg (fun q : AlgebraicOSSpace 3 hThree β hβ =>
    (q : CompletedOSHilbert 3 hThree β hβ))
    (vacuumSupported_coe β hβ)

/-- The actual source Hermitian translation identity preserves the
vacuum pairing on EVERY genuinely two-step-supported OS class.
This is the exact physical vacuum/excitation test at period six. -/
theorem restrictedTranslation_preserves_vacuum_pairing
    (q : SupportedClasses β hβ) :
    inner ℂ
      (vacuumSupported β hβ :
        AlgebraicOSSpace 3 hThree β hβ)
      (restrictedTranslation 3 (le_refl 3) β hβ q) =
    inner ℂ
      (vacuumSupported β hβ :
        AlgebraicOSSpace 3 hThree β hβ)
      (q : AlgebraicOSSpace 3 hThree β hβ) := by
  have hs := restrictedTranslation_symmetric 3 (le_refl 3)
    β hβ (vacuumSupported β hβ) q
  rw [restrictedTranslation_vacuum] at hs
  exact hs.symm

/-- Orthogonality to the literal OS vacuum survives the restricted
translation, without inventing a full physical Hamiltonian domain. -/
theorem restrictedTranslation_preserves_vacuum_orthogonality
    (q : SupportedClasses β hβ)
    (hq : inner ℂ
      (vacuumSupported β hβ :
        AlgebraicOSSpace 3 hThree β hβ)
      (q : AlgebraicOSSpace 3 hThree β hβ) = 0) :
    inner ℂ
      (vacuumSupported β hβ :
        AlgebraicOSSpace 3 hThree β hβ)
      (restrictedTranslation 3 (le_refl 3) β hβ q) = 0 := by
  rw [restrictedTranslation_preserves_vacuum_pairing β hβ q, hq]

/-- The supported operator's C=1 is SHARP: its actual source vacuum is
a fixed unit vector. No strictly contractive bound can hold on all
supported classes, precisely because the vacuum survives. -/
theorem restrictedTranslationCLM_norm_eq_one :
    ‖restrictedTranslationCLM β hβ‖ = 1 := by
  have hv : ‖restrictedTranslationCLM β hβ (vacuumSupported β hβ)‖ = 1 := by
    change ‖restrictedTranslation 3 (le_refl 3) β hβ
      (vacuumSupported β hβ)‖ = 1
    rw [restrictedTranslation_vacuum]
    exact vacuumSupported_norm β hβ
  have hbound := (restrictedTranslationCLM β hβ).le_opNorm
    (vacuumSupported β hβ)
  have hlow : (1 : ℝ) ≤ ‖restrictedTranslationCLM β hβ‖ := by
    calc
      1 = ‖restrictedTranslationCLM β hβ (vacuumSupported β hβ)‖ := hv.symm
      _ ≤ ‖restrictedTranslationCLM β hβ‖ *
        ‖vacuumSupported β hβ‖ := hbound
      _ = ‖restrictedTranslationCLM β hβ‖ := by
        rw [vacuumSupported_norm, mul_one]
  exact le_antisymm
    (restrictedTranslationCLM_norm_le_one β hβ) hlow

end GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSVacuum
