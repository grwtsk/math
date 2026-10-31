/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSlicePrincipalOneSign
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSlicePositivityImproving

/-!
# An actual strictly positive principal Wilson eigenvector

Orient the constructed unit principal vector using its AE one-sign alternative.
Its positive eigenvalue is obtained from strict quadratic positivity, rather than
assumed. Actual positivity improvement and the eigenvector equation give strict
positivity AE of the oriented vector. Inputs remain L2 classes; their pointwise
representatives are only compared using the actual AE scalar/negation laws.
This does not establish simplicity, quantitative separation, a regulator-uniform
physical gap or continuum construction. SOURCE_PROOF_CANDIDATE; compilation,
fresh replay, transitive axiom and expected-interface checks NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2StrictPositivity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalOneSign
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivityImproving
variable (L : ℕ) [NeZero L]

/-- Positivity follows from the actual unit principal eigenvector and operator. -/
theorem lambda0_pos (β : ℝ) (hβ : 0 < β) : 0 < lambda0 L β hβ.le := by
  obtain ⟨f, hn, he⟩ := principal_eigenvector L β hβ
  have hf : f ≠ 0 := by
    intro hz
    simpa [hz] using hn
  have hp := invariantOperator_inner_pos L β hβ f hf
  rw [he, inner_smul_right, real_inner_self_eq_norm_sq, hn] at hp
  simpa using hp

/-- Orientation changes neither norm nor the actual eigenvector equation. -/
theorem exists_unit_principal_nonnegative (β : ℝ) (hβ : 0 < β) :
    ∃ f : gaugeInvariantSpace L, ‖f‖ = 1 ∧
      invariantOperator L β hβ.le f = lambda0 L β hβ.le • f ∧
      (∀ᵐ a ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) a) := by
  obtain ⟨f, hn, he, hs⟩ := exists_unit_principal_one_sign L β hβ
  rcases hs with hp | hm
  · exact ⟨f, hn, he, hp⟩
  · refine ⟨-f, by simpa using hn, ?_, ?_⟩
    · rw [map_neg, he, smul_neg]
    · have hneg := Lp.coeFn_neg (f : RealSliceL2 L)
      filter_upwards [hm, hneg] with a ha hna
      change 0 ≤ (-(f : RealSliceL2 L)) a
      rw [hna]
      exact neg_nonneg.mpr ha

/-- Strict positivity is transported through the actual AE eigenvector equation. -/
theorem principal_strictly_positive_ae (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L) (hf : f ≠ 0)
    (hn : ∀ᵐ a ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) a)
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f) :
    ∀ᵐ a ∂sliceHaar L, 0 < (f : RealSliceL2 L) a := by
  have hp := invariantOperator_strictly_positive_ae L β hβ.le f hn hf
  rw [he] at hp
  have hsmul := Lp.coeFn_smul (lambda0 L β hβ.le) (f : RealSliceL2 L)
  filter_upwards [hp, hsmul] with a ha hsa
  change 0 < ((lambda0 L β hβ.le) • (f : RealSliceL2 L)) a at ha
  rw [hsa] at ha
  have hm : 0 < lambda0 L β hβ.le * (f : RealSliceL2 L) a := ha
  exact (mul_pos_iff_of_pos_left (lambda0_pos L β hβ)).mp hm

/-- A nonvacuous consumer: the existing actual unit principal vector is positive. -/
theorem exists_unit_principal_strictly_positive (β : ℝ) (hβ : 0 < β) :
    ∃ f : gaugeInvariantSpace L, ‖f‖ = 1 ∧
      invariantOperator L β hβ.le f = lambda0 L β hβ.le • f ∧
      (∀ᵐ a ∂sliceHaar L, 0 < (f : RealSliceL2 L) a) := by
  obtain ⟨f, hn, he, hp⟩ := exists_unit_principal_nonnegative L β hβ
  have hf : f ≠ 0 := by
    intro hz
    simpa [hz] using hn
  exact ⟨f, hn, he, principal_strictly_positive_ae L β hβ f hf hp he⟩

end GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
