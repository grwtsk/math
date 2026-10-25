/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Upstream mathematics retains its authorship and licenses. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentStrictOperatorMass
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

/-!
# Constructing the exact finite canonical arithmetic Gram operator

This is an actual linear endomorphism of the existing finite complex
coefficient space. Its diagonal entries are the source-derived square-tent
von Mangoldt Gram coefficients, NOT chosen positive substitutes.

The standard finite coordinate pairing of u with the endomorphism applied
to v equals the existing full polarized arithmetic form, including all
cross terms and normalizations. The source operator is positive
semidefinite. Its strict positivity is equivalent to strict positivity
of EVERY genuine square-window mass represented in the finite coefficient
space; no such arithmetic strict positivity is asserted unconditionally.

This finite linear operator is not yet a bounded Hilbert-space operator
on an explicitly completed geometric model. Neither a Connes spectral
realization nor an identification with the classical Guinand--Weil test
form, its topology, or its RH criterion is established here.

SOURCE_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFiniteGramOperator

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentStrictOperatorMass
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction
open GRWTSK.NumberTheory.Chebyshev.TentSource

/-- The exact source arithmetic Gram, represented by a diagonal linear
endomorphism of the existing finite complex coefficient space. -/
def canonicalGramOperator (M : ℕ) :
    Combination M →ₗ[ℂ] Combination M where
  toFun := fun u i => (arithmeticCrossCoefficient i i : ℂ) * u i
  map_add' := by
    intro u v
    funext i
    change (arithmeticCrossCoefficient i i : ℂ) * (u i + v i) =
      (arithmeticCrossCoefficient i i : ℂ) * u i +
        (arithmeticCrossCoefficient i i : ℂ) * v i
    ring
  map_smul' := by
    intro c u
    funext i
    change (arithmeticCrossCoefficient i i : ℂ) * (c * u i) =
      c * ((arithmeticCrossCoefficient i i : ℂ) * u i)
    ring

@[simp] theorem canonicalGramOperator_apply (M : ℕ)
    (u : Combination M) (i : Fin (M + 1)) :
    canonicalGramOperator M u i =
      (arithmeticCrossCoefficient i i : ℂ) * u i := rfl

/-- Ordinary finite complex-coordinate Hermitian pairing; no Weil
identification or operator completion is built into the definition. -/
def coordinatePairing {M : ℕ} (u v : Combination M) : ℂ :=
  ∑ i : Fin (M + 1), conj (u i) * v i

/-- EXACT reconstruction of the source-polarized arithmetic form from its
own concrete endomorphism. In particular it does not merely postulate
agreement of the forms. -/
theorem coordinatePairing_operator_eq_source {M : ℕ}
    (u v : Combination M) :
    coordinatePairing u (canonicalGramOperator M v) =
      sourcePolarizedForm u v := by
  classical
  rw [sourcePolarizedForm_eq_diagonal_sum]
  unfold coordinatePairing
  apply Finset.sum_congr rfl
  intro i hi
  rw [canonicalGramOperator_apply]
  ring

/-- Source-faithful Hermitian symmetry for the concrete arithmetic
endomorphism under the finite coordinate pairing. -/
theorem coordinatePairing_operator_hermitian {M : ℕ}
    (u v : Combination M) :
    coordinatePairing u (canonicalGramOperator M v) =
      conj (coordinatePairing v (canonicalGramOperator M u)) := by
  rw [coordinatePairing_operator_eq_source,
    coordinatePairing_operator_eq_source]
  exact sourcePolarizedForm_hermitian v u

/-- The actual arithmetic Gram endomorphism is positive semidefinite on
the finite coordinate carrier, with no strict-positivity assumption. -/
theorem canonicalGramOperator_nonnegative {M : ℕ}
    (u : Combination M) :
    0 ≤ (coordinatePairing u (canonicalGramOperator M u)).re := by
  rw [coordinatePairing_operator_eq_source]
  exact sourcePolarizedForm_self_re_nonnegative u

/-- An exact coefficientwise description of its kernel. Every vanishing
square-window mass contributes an unconstrained coordinate. -/
theorem canonicalGramOperator_eq_zero_iff {M : ℕ}
    (u : Combination M) :
    canonicalGramOperator M u = 0 ↔
      ∀ i : Fin (M + 1),
        arithmeticCrossCoefficient i i = 0 ∨ u i = 0 := by
  constructor
  · intro hu i
    have hi := congrArg (fun v : Combination M => v i) hu
    simp only [canonicalGramOperator_apply, Pi.zero_apply] at hi
    rcases mul_eq_zero.mp hi with hweight | hcoord
    · left
      exact_mod_cast hweight
    · right
      exact hcoord
  · intro hu
    funext i
    simp only [canonicalGramOperator_apply, Pi.zero_apply]
    rcases hu i with hweight | hcoord
    · simp [hweight]
    · simp [hcoord]

/-- The finite source quadratic form is strictly positive at every nonzero
coefficient vector exactly when ALL actual represented arithmetic stage
masses are strictly positive. The right side is an open arithmetic supplier. -/
theorem source_strictly_positive_iff_all_square_masses_positive (M : ℕ) :
    (∀ u : Combination M, u ≠ 0 → 0 < realTargetForm u u) ↔
      ∀ i : Fin (M + 1), 0 < squareTentMangoldt (i.1 + 2) := by
  constructor
  · intro h i
    exact strict_source_gram_forces_square_mass_positive h i
  · intro hmass u hu
    have hcoord : ∃ i : Fin (M + 1), u i ≠ 0 := by
      by_contra hnone
      apply hu
      funext i
      by_contra hi
      exact hnone ⟨i, hi⟩
    rcases hcoord with ⟨i, hi⟩
    change 0 < (sourcePolarizedForm u u).re
    rw [sourcePolarizedForm_self_re]
    unfold sourceDiagonal
    apply Finset.sum_pos'
    · intro j hj
      exact mul_nonneg (Complex.normSq_nonneg _)
        (arithmeticCrossCoefficient_diag_nonnegative j)
    · refine ⟨i, Finset.mem_univ _, ?_⟩
      exact mul_pos (Complex.normSq_pos.mpr hi)
        (by rw [arithmeticCrossCoefficient_diag_eq_mangoldt]; exact hmass i)

/-- The linear operator itself is strictly positive under the finite
coordinate pairing precisely at the same arithmetic boundary. -/
theorem canonicalGramOperator_strict_iff_square_masses (M : ℕ) :
    (∀ u : Combination M, u ≠ 0 →
        0 < (coordinatePairing u (canonicalGramOperator M u)).re) ↔
      ∀ i : Fin (M + 1), 0 < squareTentMangoldt (i.1 + 2) := by
  simpa only [coordinatePairing_operator_eq_source, realTargetForm] using
    source_strictly_positive_iff_all_square_masses_positive M


/-! ## Exact kernel and injectivity boundary

The finite Gram operator is injective exactly when every represented
arithmetic window has positive mass. This characterization uses its actual
kernel and stage coefficients. No positivity beyond the finite coefficient
space, classical Weil transport, or prime-gap assertion follows.
-/

/-- A vanishing source window gives a concrete nonzero kernel vector. -/
theorem canonicalGramOperator_basis_in_kernel_of_zero_mass
    {M : ℕ} (i : Fin (M + 1))
    (hzero : squareTentMangoldt (i.1 + 2) = 0) :
    canonicalGramOperator M (basisCombination i) = 0 := by
  apply (canonicalGramOperator_eq_zero_iff (basisCombination i)).2
  intro j
  by_cases hji : j = i
  · subst j
    left
    rw [arithmeticCrossCoefficient_diag_eq_mangoldt]
    exact hzero
  · right
    exact basisCombination_apply_of_ne hji

/-- Injectivity of the concrete finite operator is exactly positivity
of all actual arithmetic diagonal coefficients. Nonnegativity is
already supplied by the source; strict mass estimates are not. -/
theorem canonicalGramOperator_injective_iff_square_masses_positive (M : ℕ) :
    Function.Injective (canonicalGramOperator M) ↔
      ∀ i : Fin (M + 1), 0 < squareTentMangoldt (i.1 + 2) := by
  constructor
  · intro hinj i
    have hcoeff : arithmeticCrossCoefficient i i ≠ 0 := by
      intro hzero
      have hmass : squareTentMangoldt (i.1 + 2) = 0 := by
        rw [← arithmeticCrossCoefficient_diag_eq_mangoldt]
        exact hzero
      have hker := canonicalGramOperator_basis_in_kernel_of_zero_mass i hmass
      have heq : basisCombination i = (0 : Combination M) := by
        apply hinj
        simpa only [map_zero] using hker
      exact basisCombination_ne_zero i heq
    have hp : 0 < arithmeticCrossCoefficient i i :=
      lt_of_le_of_ne (arithmeticCrossCoefficient_diag_nonnegative i)
        (Ne.symm hcoeff)
    rwa [arithmeticCrossCoefficient_diag_eq_mangoldt] at hp
  · intro hmass u v huv
    have hzero : canonicalGramOperator M (u - v) = 0 := by
      simpa only [map_sub, sub_eq_zero] using huv
    have hcoord := (canonicalGramOperator_eq_zero_iff (u - v)).mp hzero
    have hdiff : u - v = 0 := by
      funext i
      rcases hcoord i with hweight | hcoordZero
      · have hp : 0 < arithmeticCrossCoefficient i i := by
          rw [arithmeticCrossCoefficient_diag_eq_mangoldt]
          exact hmass i
        exact (hp.ne' hweight).elim
      · exact hcoordZero
    exact sub_eq_zero.mp hdiff

/-- On the actual nonnegative arithmetic Gram, injectivity and
strict positive definiteness coincide and have the same exact
square-window mass obstruction. -/
theorem canonicalGramOperator_injective_iff_strict (M : ℕ) :
    Function.Injective (canonicalGramOperator M) ↔
      ∀ u : Combination M, u ≠ 0 →
        0 < (coordinatePairing u (canonicalGramOperator M u)).re := by
  exact (canonicalGramOperator_injective_iff_square_masses_positive M).trans
    (canonicalGramOperator_strict_iff_square_masses M).symm

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFiniteGramOperator
