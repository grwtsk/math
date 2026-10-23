/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization
import Mathlib.Tactic

set_option autoImplicit false

open scoped ComplexConjugate

/-!
# A faithful finite arithmetic image need not control a larger Hermitian form

The canonical square-tent source supplies a genuine prime-power arithmetic Gram
on `Combination M`, with source-proved nonnegative diagonal. This module
extends that exact polarized form by ONE additional complex direction carrying
the negative Hermitian form `-conj a * b`.

The arithmetic embedding is injective and preserves *every polarized pair*,
not just quadratic diagonals. Its image remains nonnegative, but the explicit
extra vector has diagonal -1. Thus neither an injective test-space inclusion
nor an exact source-form identity on its image transports positive
semidefiniteness to the full target.

This is a diagnostic countermodel, NOT a model of the classical zeta Weil form:
no completed-zeta normalization, Weil test-space admissibility, criterion
theorem, or dense/continuous extension is supplied. In particular, it is not
a counterexample to the Riemann hypothesis. All arithmetic coefficients and
positive-image proofs are imported from the canonical square-tent source.
SOURCE_DRAFT: no local Lean/Lake elaboration or kernel replay is represented.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization

/-- A finite arithmetic coefficient space plus one unconstrained complex mode. -/
abbrev Extension (M : ℕ) := Combination M × ℂ

/-- The inclusion preserves the exact finite arithmetic coefficients. -/
def arithmeticEmbed {M : ℕ} (u : Combination M) : Extension M :=
  (u, 0)

/-- The full polarized countermodel. Its negative complement is not an
arithmetic prime-power coefficient and must never be presented as one. -/
noncomputable def extensionForm {M : ℕ} (x y : Extension M) : ℂ :=
  sourcePolarizedForm x.1 y.1 - conj x.2 * y.2

/-- Nonnegativity is measured by the real Hermitian diagonal. -/
noncomputable def extensionDiagonal {M : ℕ} (x : Extension M) : ℝ :=
  (extensionForm x x).re

theorem arithmeticEmbed_injective {M : ℕ} :
    Function.Injective (arithmeticEmbed (M := M)) := by
  intro u v h
  exact congrArg Prod.fst h

/-- Exact all-pairs reconstruction on the image, with positive scale one. -/
@[simp] theorem extensionForm_arithmeticEmbed {M : ℕ}
    (u v : Combination M) :
    extensionForm (arithmeticEmbed u) (arithmeticEmbed v) =
      sourcePolarizedForm u v := by
  simp [extensionForm, arithmeticEmbed]

/-- The extension remains an honest Hermitian pairing; it is not merely an
arbitrary real diagonal assigned to each vector. -/
theorem extensionForm_hermitian {M : ℕ} (x y : Extension M) :
    extensionForm y x = conj (extensionForm x y) := by
  unfold extensionForm
  rw [sourcePolarizedForm_hermitian]
  simp only [map_sub, map_mul, Complex.conj_conj]
  ring

theorem extensionForm_add_left {M : ℕ} (x y z : Extension M) :
    extensionForm (x + y) z =
      extensionForm x z + extensionForm y z := by
  change sourcePolarizedForm (x.1 + y.1) z.1 -
      conj (x.2 + y.2) * z.2 =
    (sourcePolarizedForm x.1 z.1 - conj x.2 * z.2) +
      (sourcePolarizedForm y.1 z.1 - conj y.2 * z.2)
  rw [sourcePolarizedForm_add_left]
  simp only [map_add]
  ring

theorem extensionForm_add_right {M : ℕ} (x y z : Extension M) :
    extensionForm x (y + z) =
      extensionForm x y + extensionForm x z := by
  change sourcePolarizedForm x.1 (y.1 + z.1) -
      conj x.2 * (y.2 + z.2) =
    (sourcePolarizedForm x.1 y.1 - conj x.2 * y.2) +
      (sourcePolarizedForm x.1 z.1 - conj x.2 * z.2)
  rw [sourcePolarizedForm_add_right]
  ring

theorem extensionForm_smul_left {M : ℕ} (c : ℂ) (x y : Extension M) :
    extensionForm (c • x) y = conj c * extensionForm x y := by
  change sourcePolarizedForm (c • x.1) y.1 -
      conj (c * x.2) * y.2 =
    conj c * (sourcePolarizedForm x.1 y.1 - conj x.2 * y.2)
  rw [sourcePolarizedForm_smul_left]
  simp only [map_mul]
  ring

theorem extensionForm_smul_right {M : ℕ} (c : ℂ) (x y : Extension M) :
    extensionForm x (c • y) = c * extensionForm x y := by
  change sourcePolarizedForm x.1 (c • y.1) -
      conj x.2 * (c * y.2) =
    c * (sourcePolarizedForm x.1 y.1 - conj x.2 * y.2)
  rw [sourcePolarizedForm_smul_right]
  ring

/-- Source-constructed arithmetic positive semidefiniteness survives exactly
on the embedded finite coefficient space; no positivity assumption is made
about the extended form. -/
theorem extensionDiagonal_arithmeticEmbed_nonnegative {M : ℕ}
    (u : Combination M) :
    0 ≤ extensionDiagonal (arithmeticEmbed u) := by
  simpa [extensionDiagonal, extensionForm_arithmeticEmbed, realTargetForm] using
    (realTargetForm_diagonal_nonnegative u)

/-- A genuine zero-vector identity for the imported arithmetic polarization. -/
private theorem sourcePolarizedForm_zero_self (M : ℕ) :
    sourcePolarizedForm (0 : Combination M) (0 : Combination M) = 0 := by
  rw [sourcePolarizedForm_eq_diagonal_sum]
  simp

/-- An explicit one-coordinate witness outside the arithmetic image. -/
def negativeDirection (M : ℕ) : Extension M :=
  (0, 1)

theorem negativeDirection_not_in_arithmetic_image (M : ℕ) :
    negativeDirection M ∉ Set.range (arithmeticEmbed (M := M)) := by
  rintro ⟨u, hu⟩
  have hcoordinate := congrArg (fun x : Extension M => x.2) hu
  norm_num [arithmeticEmbed, negativeDirection] at hcoordinate

/-- Exact rational certificate, independent of zeros, tail heights or limits. -/
theorem extensionDiagonal_negativeDirection (M : ℕ) :
    extensionDiagonal (negativeDirection M) = -1 := by
  simp [extensionDiagonal, extensionForm, negativeDirection,
    sourcePolarizedForm_zero_self, Complex.sub_re]

/-- The bounded obstruction: an injective, all-pairs exact arithmetic
transport can be positive semidefinite on its entire image while its
larger Hermitian target has a strictly negative diagonal witness. -/
theorem arithmetic_image_positivity_does_not_imply_global (M : ℕ) :
    Function.Injective (arithmeticEmbed (M := M)) ∧
    (∀ u v : Combination M,
      extensionForm (arithmeticEmbed u) (arithmeticEmbed v) =
        sourcePolarizedForm u v) ∧
    (∀ u : Combination M, 0 ≤ extensionDiagonal (arithmeticEmbed u)) ∧
    (∃ x : Extension M,
      x ∉ Set.range (arithmeticEmbed (M := M)) ∧
      extensionDiagonal x < 0) := by
  refine ⟨arithmeticEmbed_injective, ?_, ?_, ?_⟩
  · intro u v
    exact extensionForm_arithmeticEmbed u v
  · intro u
    exact extensionDiagonal_arithmeticEmbed_nonnegative u
  · refine ⟨negativeDirection M,
      negativeDirection_not_in_arithmetic_image M, ?_⟩
    rw [extensionDiagonal_negativeDirection]
    norm_num

/-- A failed implication at the exact order-property level: image positivity
does not entail global nonnegativity even for a Hermitian, sesquilinear form. -/
theorem not_globally_nonnegative (M : ℕ) :
    ¬ ∀ x : Extension M, 0 ≤ extensionDiagonal x := by
  intro h
  have hwitness := h (negativeDirection M)
  rw [extensionDiagonal_negativeDirection] at hwitness
  norm_num at hwitness

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentImagePositivityObstruction
