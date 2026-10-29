/- Copyright (c) 2026 grwtsk. MIT.
Imported results retain their upstream attribution and licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensSignedAbelResponseLaw
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensSignedAbelReadoutHeat

/-!
# Source-preserving consumers for the arithmetic operator neighborhood

The same head packet, signed triple readout, and old two-unit boundary error
are used in every criterion. Estimates for the model AND its error remain
explicit, for every positive exponent and every scale. Neither a finite law,
a finite matrix, a projection, nor a heat contraction supplies these estimates.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelNeighborhoodCriterion

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelTripleOperator
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelReadoutGeometry
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelCoefficientKernel
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelResponseLaw

/-- The full signed model and its signed-readout defect are separate arithmetic obligations. -/
theorem riemannHypothesis_of_readout_models (b : ℕ → ℕ → ℝ)
    (hmodel : ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      headPacket sqrtWidth j - signedReadout (b j) / 6 ≤ C * (((2 ^ j : ℕ) : ℝ) ^ δ))
    (herror : ∀ δ : ℝ, 0 < δ → ∃ D : ℝ, 0 ≤ D ∧ ∀ j : ℕ,
      |signedReadout (responseProfile sqrtWidth j moebiusReal) - signedReadout (b j)| ≤
        D * (((2 ^ j : ℕ) : ℝ) ^ δ)) : _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_subpolynomialDyadicSignedAbelDepthPacket
  intro δ hδ
  obtain ⟨C, hC, hmod⟩ := hmodel δ hδ
  obtain ⟨D, hD, herr⟩ := herror δ hδ
  refine ⟨C + D / 6 + 2, by positivity, ?_⟩
  intro j
  have hp := (abs_le.mp (abs_packet_sub_readout_model_le j (b j) (herr j))).2
  have hpow := one_le_dyadic_rpow hδ j
  have hm := hmod j
  nlinarith

/-- An actual approximate arithmetic input can be used only after paying its weighted error. -/
theorem riemannHypothesis_of_weighted_input_models (g : ℕ → ℕ → ℝ)
    (hmodel : ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      headPacket sqrtWidth j - signedReadout (responseProfile sqrtWidth j (g j)) / 6 ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ))
    (herror : ∀ δ : ℝ, 0 < δ → ∃ D : ℝ, 0 ≤ D ∧ ∀ j : ℕ,
      (∑ a ∈ sourceIndices j, |signedCoefficient sqrtWidth j a| *
        |moebiusReal a - g j a|) ≤ D * (((2 ^ j : ℕ) : ℝ) ^ δ)) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_readout_models (fun j => responseProfile sqrtWidth j (g j)) hmodel
  intro δ hδ
  obtain ⟨D, hD, he⟩ := herror δ hδ
  refine ⟨D, hD, ?_⟩
  intro j
  exact (signed_error_le_weighted_input_error sqrtWidth j moebiusReal (g j)).trans (he j)

/-- Independence cannot be assumed: its actual mass-weighted discrepancy is an explicit supplier.
The marginal model includes the unchanged unsifted, one-prime and two-prime head. -/
theorem riemannHypothesis_of_finite_law_models
    (hmodel : ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      headPacket sqrtWidth j - independentReadout sqrtWidth j moebiusReal / 6 ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ))
    (hdependence : ∀ δ : ℝ, 0 < δ → ∃ D : ℝ, 0 ≤ D ∧ ∀ j : ℕ,
      dependenceCost sqrtWidth j ≤ D * (((2 ^ j : ℕ) : ℝ) ^ δ)) :
    _root_.RiemannHypothesis := by
  let b : ℕ → ℕ → ℝ := fun j => recoverProfile (independentReadout sqrtWidth j moebiusReal) 0 0
  have hb (j : ℕ) : signedReadout (b j) = independentReadout sqrtWidth j moebiusReal := by
    simp [b, signedReadout, recoverProfile]
  apply riemannHypothesis_of_readout_models b
  · simpa only [hb] using hmodel
  · intro δ hδ
    obtain ⟨D, hD, hd⟩ := hdependence δ hδ
    refine ⟨D, hD, ?_⟩
    intro j
    rw [hb]
    exact (readout_sub_independent_le_all sqrtWidth j moebiusReal
      (fun a _ => moebiusReal_abs_le_one a)).trans (hd j)

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelNeighborhoodCriterion
