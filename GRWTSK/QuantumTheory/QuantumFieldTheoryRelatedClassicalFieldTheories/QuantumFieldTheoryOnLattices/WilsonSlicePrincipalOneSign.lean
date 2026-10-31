/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceSpectralApproximation
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceSignMass

/-!
# Actual principal Wilson eigenvectors have one sign almost everywhere

The upper bound is derived from the actual unit-ball supremum defining lambda0.
The absolute-value competitor has the same norm in the actual invariant space.
Strict improvement for two nonzero sign masses therefore contradicts the
principal eigenvector equation. No simplicity or spectral-gap premise is used.
This is a fixed finite regulator result, not a continuum mass-gap theorem.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay, axiom audit and expected
interface verification NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalOneSign
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantAbsoluteValue
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAbsoluteRayleigh
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSignMass
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Analysis.InnerProductSpace.VariationalSpectralBracket
variable (L : ℕ) [NeZero L]

/-- Homogeneous maximality, obtained from the actual variational definition. -/
theorem quadratic_le_principal (β : ℝ) (hβ : 0 ≤ β)
    (f : gaugeInvariantSpace L) :
    inner ℝ f (invariantOperator L β hβ f) ≤ lambda0 L β hβ * ‖f‖ ^ 2 := by
  by_cases hf : f = 0
  · subst f
    simp
  · have hb := quotient_le_ballValue (invariantOperator L β hβ) ⊤
      (Submodule.mem_top : f ∈ (⊤ : Submodule ℝ (gaugeInvariantSpace L))) hf
    have hn : 0 < ‖f‖ ^ 2 := sq_pos_of_pos (norm_pos_iff.mpr hf)
    exact (div_le_iff₀ hn).mp hb

/-- A principal eigenvector cannot have both strict sign masses. -/
theorem principal_not_two_sign_masses (β : ℝ) (hβ : 0 ≤ β)
    (f : gaugeInvariantSpace L)
    (he : invariantOperator L β hβ f = lambda0 L β hβ • f) :
    ¬ (0 < (∫ a, |(f : RealSliceL2 L) a| ∂sliceHaar L) +
        (∫ a, (f : RealSliceL2 L) a ∂sliceHaar L) ∧
      0 < (∫ a, |(f : RealSliceL2 L) a| ∂sliceHaar L) -
        (∫ a, (f : RealSliceL2 L) a ∂sliceHaar L)) := by
  rintro ⟨hp, hn⟩
  have hs := invariant_quadratic_lt_of_two_sign_masses L β hβ f hp hn
  have hb := quadratic_le_principal L β hβ (invariantAbsoluteValue L f)
  rw [invariantAbsoluteValue_norm] at hb
  have hq : inner ℝ f (invariantOperator L β hβ f) =
      lambda0 L β hβ * ‖f‖ ^ 2 := by
    rw [he, inner_smul_right, real_inner_self_eq_norm_sq]
  linarith

/-- The conclusion concerns AE classes, including the zero boundary. -/
theorem principal_one_sign_ae (β : ℝ) (hβ : 0 ≤ β)
    (f : gaugeInvariantSpace L)
    (he : invariantOperator L β hβ f = lambda0 L β hβ • f) :
    (∀ᵐ a ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) a) ∨
      (∀ᵐ a ∂sliceHaar L, (f : RealSliceL2 L) a ≤ 0) := by
  have hp : 0 ≤ (∫ a, |(f : RealSliceL2 L) a| ∂sliceHaar L) +
      (∫ a, (f : RealSliceL2 L) a ∂sliceHaar L) := by
    rw [← integral_positiveLift]
    exact integral_nonneg (positiveLift_nonnegative L f)
  have hn : 0 ≤ (∫ a, |(f : RealSliceL2 L) a| ∂sliceHaar L) -
      (∫ a, (f : RealSliceL2 L) a ∂sliceHaar L) := by
    rw [← integral_negativeLift]
    exact integral_nonneg (negativeLift_nonnegative L f)
  by_cases hz : (∫ a, |(f : RealSliceL2 L) a| ∂sliceHaar L) -
      (∫ a, (f : RealSliceL2 L) a ∂sliceHaar L) = 0
  · exact Or.inl ((negative_mass_zero_iff_nonnegative_ae L f).mp hz)
  · right
    apply (positive_mass_zero_iff_nonpositive_ae L f).mp
    have hnot := principal_not_two_sign_masses L β hβ f he
    by_contra hpz
    exact hnot ⟨lt_of_le_of_ne hp (Ne.symm hpz), lt_of_le_of_ne hn (Ne.symm hz)⟩

/-- The already constructed actual unit principal eigenvector has one sign. -/
theorem exists_unit_principal_one_sign (β : ℝ) (hβ : 0 < β) :
    ∃ f : gaugeInvariantSpace L, ‖f‖ = 1 ∧
      invariantOperator L β hβ.le f = lambda0 L β hβ.le • f ∧
      ((∀ᵐ a ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) a) ∨
        (∀ᵐ a ∂sliceHaar L, (f : RealSliceL2 L) a ≤ 0)) := by
  obtain ⟨f, hn, he⟩ := principal_eigenvector L β hβ
  exact ⟨f, hn, he, principal_one_sign_ae L β hβ.le f he⟩

end GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalOneSign
