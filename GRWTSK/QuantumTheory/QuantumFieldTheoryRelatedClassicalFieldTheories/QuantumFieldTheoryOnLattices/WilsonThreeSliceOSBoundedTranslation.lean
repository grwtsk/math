/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonReflectionHilbertCompletion
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonThreeSliceTranslation
import Mathlib.Topology.Algebra.LinearMapCompletion

/-!
# Actual finite-period Wilson restricted translation as a bounded OS-norm map

Local mathematical attribution: grwtsk contributors.

For the true period-six (T=3) Wilson reflection quotient, the maintained
threeSlice_restrictedTranslation_contraction theorem is a statement in the
ACTUAL normalized Wilson reflection pairing. The newly constructed
positive-definite quotient norm converts its squared-form inequality
into a genuine linear operator norm bound C=1.

This constructs a continuous, contractive linear map from the EXACT
two-step supported quotient subspace into the whole algebraic OS normed
quotient, rather than falsely claiming a globally defined
endomorphism. The range is not proved invariant, and iterates are
NOT defined beyond the source domain without a separate theorem.
The distinct T>=4 cases and the full continuum OS construction
remain open; no mass gap, physical semigroup or spectral transfer
equivalence is claimed.

SOURCE_PROOF_CANDIDATE / LEAN_BUILD_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOMS_NOT_RUN / EXPECTED_TYPES_NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSBoundedTranslation

open GRWTSK.Geometry.GaugeTheory.WilsonReflectionQuotient
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionHilbertCompletion
open GRWTSK.Geometry.GaugeTheory.WilsonRestrictedTranslation
open GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceTranslation
open GRWTSK.Geometry.GaugeTheory.TwoStepPositiveTranslation

variable (β : ℝ) (hβ : 0 ≤ β)

/-- The exact previously existing quotient support range for period six.
Not asserted dense in the full reflection-positive quotient. -/
abbrev SupportedClasses :=
  restrictedClasses 3 (show 3 ≤ 3 from le_refl) β hβ

/-- The old source translation already maps from supported classes to the
WHOLE quotient. Its norm is now proved from the ACTUAL reflection form. -/
theorem restrictedTranslation_norm_le
    (q : SupportedClasses β hβ) :
    ‖restrictedTranslation 3 (show 3 ≤ 3 from le_refl) β hβ q‖ ≤ ‖q‖ := by
  have hform := threeSlice_restrictedTranslation_contraction β hβ q
  have hleft :
      ‖restrictedTranslation 3 (show 3 ≤ 3 from le_refl) β hβ q‖ ^ 2 =
        (quotientReflectionForm 3
            (atLeastTwo (show 3 ≤ 3 from le_refl)) β hβ
            (restrictedTranslation 3 (show 3 ≤ 3 from le_refl) β hβ q)
            (restrictedTranslation 3 (show 3 ≤ 3 from le_refl) β hβ q)).re :=
    norm_sq_eq_re_inner
  have hright :
      ‖(q : AlgebraicOSSpace 3
        (atLeastTwo (show 3 ≤ 3 from le_refl)) β hβ)‖ ^ 2 =
        (quotientReflectionForm 3
            (atLeastTwo (show 3 ≤ 3 from le_refl)) β hβ
            q.val q.val).re :=
    norm_sq_eq_re_inner
  have hsq :
      ‖restrictedTranslation 3 (show 3 ≤ 3 from le_refl) β hβ q‖ ^ 2 ≤
        ‖(q : AlgebraicOSSpace 3
          (atLeastTwo (show 3 ≤ 3 from le_refl)) β hβ)‖ ^ 2 := by
    rw [hleft, hright]
    exact hform
  have hh : ‖q‖ = ‖(q : AlgebraicOSSpace 3
      (atLeastTwo (show 3 ≤ 3 from le_refl)) β hβ)‖ := rfl
  rw [hh]
  nlinarith [norm_nonneg
    (restrictedTranslation 3 (show 3 ≤ 3 from le_refl) β hβ q),
    norm_nonneg (q : AlgebraicOSSpace 3
      (atLeastTwo (show 3 ≤ 3 from le_refl)) β hβ)]

/-- ACTUAL bounded complex-linear map, with C=1, on the precise supported
subspace. The target is the complete pre-Hilbert quotient, not a
fabricated finite-dimensional sector. -/
def restrictedTranslationCLM :
    SupportedClasses β hβ →L[ℂ]
      AlgebraicOSSpace 3
        (atLeastTwo (show 3 ≤ 3 from le_refl)) β hβ :=
  (restrictedTranslation 3 (show 3 ≤ 3 from le_refl) β hβ).mkContinuous 1
    (by
      intro q
      simpa only [one_mul] using restrictedTranslation_norm_le β hβ q)

/-- The source operator has true norm <=1, even though its source domain
has not been identified with the whole OS Hilbert. -/
theorem restrictedTranslationCLM_norm_le_one :
    ‖restrictedTranslationCLM β hβ‖ ≤ 1 := by
  exact LinearMap.mkContinuous_norm_le
    (restrictedTranslation 3 (show 3 ≤ 3 from le_rfl) β hβ)
    (by norm_num)
    (fun q => by
      simpa only [one_mul] using restrictedTranslation_norm_le β hβ q)

/-- The bounded source translation extends UNIQUELY by continuity from
the completion of its EXACT supported domain into the complete OS Hilbert.
This is NOT a global endomorphism of that Hilbert space: its domain is the
completion of the supported subspace, without a density or identification
theorem equating that subspace to the full positive-time quotient. -/
def completedRestrictedTranslation :
    UniformSpace.Completion (SupportedClasses β hβ) →L[ℂ]
      CompletedOSHilbert 3
        (atLeastTwo (show 3 ≤ 3 from le_rfl)) β hβ :=
  (restrictedTranslationCLM β hβ).completion

/-- On original supported classes, the extension is LITERALLY the old
source translation followed by the actual quotient completion embedding. -/
theorem completedRestrictedTranslation_class (q : SupportedClasses β hβ) :
    completedRestrictedTranslation β hβ
        (q : UniformSpace.Completion (SupportedClasses β hβ)) =
      ((restrictedTranslation 3 (show 3 ≤ 3 from le_rfl) β hβ q :
        AlgebraicOSSpace 3
          (atLeastTwo (show 3 ≤ 3 from le_rfl)) β hβ) :
          CompletedOSHilbert 3
            (atLeastTwo (show 3 ≤ 3 from le_rfl)) β hβ) := by
  exact ContinuousLinearMap.completion_apply_coe
    (restrictedTranslationCLM β hβ) q

/-- The completed restricted translation is still a contraction, by
continuity and density of the actual source supported classes. -/
theorem completedRestrictedTranslation_contracts
    (x : UniformSpace.Completion (SupportedClasses β hβ)) :
    ‖completedRestrictedTranslation β hβ x‖ ≤ ‖x‖ := by
  apply UniformSpace.Completion.induction_on x
    (isClosed_le
      (continuous_norm.comp (completedRestrictedTranslation β hβ).continuous)
      continuous_norm)
  intro q
  simpa only [completedRestrictedTranslation_class,
    UniformSpace.Completion.norm_coe] using restrictedTranslation_norm_le β hβ q

end GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSBoundedTranslation
