/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Imported Mathlib/GRWTSK declarations retain their source identities and licenses.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Do not import into GRWTSK.lean
without exact-commit transitive compilation, fresh kernel replay and axiom audit.
-/
import GRWTSK.NumberTheory.Farey.GaussianModularDirichletBridge
import GRWTSK.NumberTheory.Farey.GroupSuperwalk

/-!
# Gaussian/modular/Dirichlet arithmetic along exact Farey words

This module composes the integral Gaussian cross product, oriented Farey
frame, positive mediant shear words, modular additive-character projectors,
endpoint-local polynomial signs, and the limitation of multiplicative
Dirichlet characters at nonunit residues.

All statements are exact, finite algebra. In particular, a right numerator
need NOT remain a nonunit along a Farey walk: hNonunit is an explicit
hypothesis at the reached cell. A determinant-one frame does NOT make
individual coordinates units. An eye remains an endpoint-sign certificate,
not an existence or completeness theorem for rational polynomial roots.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Farey
open GRWTSK.NumberTheory.Farey.GroupSuperwalk
open GRWTSK.Analysis.Fourier.FiniteAdditiveProjector

/-- The Gaussian imaginary cross product and the determinant of the actual
orientation-correct integral Farey frame coincide at every cell. -/
theorem gaussian_cross_im_eq_frame_det (I : Cell) :
    (leftGaussian I * conjugateRightGaussian I).im = (frame I).det := by
  rw [gaussian_cross_im_eq_one, frame_det]

/-- The Gaussian determinant certificate is transported by the actual
chronological product of Farey matrix units, not a reversed word product. -/
theorem gaussian_cross_im_eq_word_frame_det (I : Cell) (w : List Turn) :
    (leftGaussian (walk I w) * conjugateRightGaussian (walk I w)).im =
      (frame I * (wordUnit w : MatZ)).det := by
  calc
    (leftGaussian (walk I w) * conjugateRightGaussian (walk I w)).im =
        (frame (walk I w)).det := gaussian_cross_im_eq_frame_det (walk I w)
    _ = (frame I * (wordUnit w : MatZ)).det :=
      congrArg Matrix.det (frame_walk I w)

/-- Every positive Farey word retains orientation-one Gaussian, integer
frame and mod-q determinant identities. No unit hypothesis on any
individual coordinate, or positivity hypothesis on q, is assumed. -/
theorem gaussian_modular_walk_certificates (I : Cell) (w : List Turn) (q : ℕ) :
    (leftGaussian (walk I w) * conjugateRightGaussian (walk I w)).im = 1 ∧
      (frame (walk I w)).det = 1 ∧
      modularDet (walk I w) q = 1 := by
  exact ⟨gaussian_cross_im_eq_one (walk I w),
    frame_det (walk I w), modularDet_eq_one (walk I w) q⟩

/-- The full additive-frequency average detects both mediant coordinates
modulo q; it does not lift congruence to integer equality without a no-wrap
hypothesis. -/
theorem walk_mediant_projectors (I : Cell) (w : List Turn) (q : ℕ) [NeZero q] :
    characterProjector q (walk I w).leftNum (walk I w).rightNum
      ((walk I w).leftNum + (walk I w).rightNum) = 1 ∧
    characterProjector q (walk I w).leftDen (walk I w).rightDen
      ((walk I w).leftDen + (walk I w).rightDen) = 1 := by
  exact ⟨mediant_numerator_projector (walk I w) q,
    mediant_denominator_projector (walk I w) q⟩

/-- The Gaussian/modular decoration preserves quintic-versus-cubic eye
equivalence when the extra factor is positive at both reached endpoints. -/
theorem gaussianModularEye_mul_iff_of_endpoint_pos_on_walk
    (factor cubic : Polynomial ℚ) (I : Cell) (w : List Turn)
    (modulus : ℕ) [NeZero modulus]
    (hleft : 0 < factor.eval (walk I w).left)
    (hright : 0 < factor.eval (walk I w).right) :
    GaussianModularEye (factor * cubic) modulus (walk I w) ↔
      GaussianModularEye cubic modulus (walk I w) := by
  calc
    GaussianModularEye (factor * cubic) modulus (walk I w) ↔
        ResolvableEye (factor * cubic) (walk I w) :=
      gaussianModularEye_iff (factor * cubic) modulus (walk I w)
    _ ↔ ResolvableEye cubic (walk I w) :=
      quintic_eye_on_walk_iff_of_endpoint_pos factor cubic I w hleft hright
    _ ↔ GaussianModularEye cubic modulus (walk I w) :=
      (gaussianModularEye_iff cubic modulus (walk I w)).symm

/-- Proposal that a pure finite sum of ordinary multiplicative Dirichlet
characters represents the exact right-numerator residue selector, with
neither gcd stratification nor an additive-character layer. -/
def PureDirichletRightSelectorRepresentation (I : Cell) (q : ℕ) : Prop :=
  ∃ S : Finset (DirichletCharacter ℂ q),
    ∃ coeff : DirichletCharacter ℂ q → ℂ,
      ∀ x : ZMod q,
        (if x = (I.rightNum : ZMod q) then (1 : ℂ) else 0) =
          ∑ χ ∈ S, coeff χ * χ x

/-- Multiplicative Dirichlet characters vanish at the specified nonunit;
unimodularity itself does not supply the nonunit premise. -/
theorem nonunit_right_dirichlet_zero (I : Cell) (q : ℕ) [NeZero q]
    (hNonunit : ¬ IsUnit (I.rightNum : ZMod q))
    (χ : DirichletCharacter ℂ q) :
    χ (I.rightNum : ZMod q) = 0 := by
  exact MulChar.map_nonunit χ hNonunit

/-- A finite pure Dirichlet combination vanishes at this same nonunit. -/
theorem nonunit_right_pure_dirichlet_sum_zero
    (I : Cell) (q : ℕ) [NeZero q]
    (hNonunit : ¬ IsUnit (I.rightNum : ZMod q))
    (S : Finset (DirichletCharacter ℂ q))
    (coeff : DirichletCharacter ℂ q → ℂ) :
    (∑ χ ∈ S, coeff χ * χ (I.rightNum : ZMod q)) = 0 := by
  apply Finset.sum_eq_zero
  intro χ _hχ
  rw [nonunit_right_dirichlet_zero I q hNonunit χ, mul_zero]

/-- The additive average detects the same congruence class at every
right numerator, including nonunits. -/
theorem right_additive_selector (I : Cell) (q : ℕ) [NeZero q] :
    characterAverage q ((I.rightNum : ZMod q) - (I.rightNum : ZMod q)) = 1 := by
  rw [characterAverage_eq_indicator]
  simp

/-- No pure finite Dirichlet sum can represent the nonunit residue selector.
This does not exclude gcd-stratified repairs or Dirichlet L-functions. -/
theorem nonunit_right_pure_dirichlet_indicator_impossible
    (I : Cell) (q : ℕ) [NeZero q]
    (hNonunit : ¬ IsUnit (I.rightNum : ZMod q)) :
    ¬ PureDirichletRightSelectorRepresentation I q := by
  intro h
  rcases h with ⟨S, coeff, hrepr⟩
  have heval := hrepr (I.rightNum : ZMod q)
  have hzero := nonunit_right_pure_dirichlet_sum_zero I q hNonunit S coeff
  simp only [if_pos rfl] at heval
  rw [hzero] at heval
  exact one_ne_zero heval

/-- A reached polynomial-sign eye plus separately supplied nonunit status
combines the Gaussian word identity, additive detection and the failure of
the pure Dirichlet selector. Neither hypothesis is implicit in a walk. -/
theorem gaussianModularEye_nonunit_obstruction_on_walk
    (p : Polynomial ℚ) (I : Cell) (w : List Turn) (q : ℕ) [NeZero q]
    (hEye : ResolvableEye p (walk I w))
    (hNonunit : ¬ IsUnit ((walk I w).rightNum : ZMod q)) :
    GaussianModularEye p q (walk I w) ∧
      (leftGaussian (walk I w) * conjugateRightGaussian (walk I w)).im =
        (frame I * (wordUnit w : MatZ)).det ∧
      characterAverage q
        (((walk I w).rightNum : ZMod q) - ((walk I w).rightNum : ZMod q)) = 1 ∧
      ¬ PureDirichletRightSelectorRepresentation (walk I w) q := by
  exact ⟨(gaussianModularEye_iff p q (walk I w)).mpr hEye,
    gaussian_cross_im_eq_word_frame_det I w,
    right_additive_selector (walk I w) q,
    nonunit_right_pure_dirichlet_indicator_impossible (walk I w) q hNonunit⟩

/-- The existing cell 1/2 < 2/3 instantiates the generalized nonunit
obstruction at modulus four. -/
theorem nonunitEye_no_pure_dirichlet_right_selector :
    ¬ PureDirichletRightSelectorRepresentation nonunitEye 4 := by
  exact nonunit_right_pure_dirichlet_indicator_impossible
    nonunitEye 4 nonunitEye_right_nonunit

end GRWTSK.NumberTheory.Farey
