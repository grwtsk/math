/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.Complex.Basic
import Mathlib.LinearAlgebra.SesquilinearForm.Basic
import Mathlib.Tactic.Module
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Ordinary and parity-twisted Hermitian forms

The form convention in this file is linear in the first argument and conjugate
linear in the second. A parity-invariant ordinary form splits as a SUM on the
two parity sectors. A DIFFERENCE appears only after inserting the parity map in
the second argument. Thus negative odd values of that intentionally twisted
form do not contradict positivity of the ordinary form.

All results are algebraic. Identifying a form here with a convergent full Weil
form, proving its reflection invariance for a specified L-function, or supplying
the two Kuznetsov identities is separate mathematical work. In particular a
nonreal character may be exchanged with its dual by reflection.

The off-line pair calculation concerns two transform coordinates, not spatial
parity. Arbitrary coordinate values need not be realizable by admissible tests.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.FunctionalAnalysis.WeilParityDecomposition

variable {V : Type*} [AddCommGroup V] [Module ℂ V]

/-- Linear-first, conjugate-linear-second complex form. -/
abbrev Form (V : Type*) [AddCommGroup V] [Module ℂ V] :=
  V →ₗ[ℂ] V →ₗ⋆[ℂ] ℂ

/-- Hermitian symmetry, with the convention used in the spectral Weil sum. -/
def IsHermitian (Q : Form V) : Prop := ∀ f h, conj (Q h f) = Q f h

/-- Nonnegativity of the real diagonal. Hermitian symmetry is a separate property. -/
def IsNonnegative (Q : Form V) : Prop := ∀ f, 0 ≤ (Q f f).re

theorem hermitian_diagonal_im_zero (Q : Form V) (hQ : IsHermitian Q) (f : V) :
    (Q f f).im = 0 := by
  have h := congrArg Complex.im (hQ f f)
  simp only [Complex.conj_im] at h
  linarith

/-- Invariance under simultaneous reflection of both arguments. -/
def IsParityInvariant (Q : Form V) (P : V →ₗ[ℂ] V) : Prop :=
  ∀ f h, Q (P f) (P h) = Q f h

/-- Projection onto the fixed sector of an involution. -/
def evenPart (P : V →ₗ[ℂ] V) : V →ₗ[ℂ] V :=
  (1 / 2 : ℂ) • (LinearMap.id + P)

/-- Projection onto the negated sector of an involution. -/
def oddPart (P : V →ₗ[ℂ] V) : V →ₗ[ℂ] V :=
  (1 / 2 : ℂ) • (LinearMap.id - P)

@[simp] theorem evenPart_apply (P : V →ₗ[ℂ] V) (f : V) :
    evenPart P f = (1 / 2 : ℂ) • (f + P f) := rfl

@[simp] theorem oddPart_apply (P : V →ₗ[ℂ] V) (f : V) :
    oddPart P f = (1 / 2 : ℂ) • (f - P f) := rfl

theorem evenPart_add_oddPart (P : V →ₗ[ℂ] V) (f : V) :
    evenPart P f + oddPart P f = f := by
  simp only [evenPart_apply, oddPart_apply]
  module

theorem parity_evenPart (P : V →ₗ[ℂ] V) (hP : Function.Involutive P) (f : V) :
    P (evenPart P f) = evenPart P f := by
  simp only [evenPart_apply, map_smul, map_add, hP f]
  rw [add_comm]

theorem parity_oddPart (P : V →ₗ[ℂ] V) (hP : Function.Involutive P) (f : V) :
    P (oddPart P f) = -oddPart P f := by
  simp only [oddPart_apply, map_smul, map_sub, hP f]
  module

theorem evenPart_of_even (P : V →ₗ[ℂ] V) {f : V} (hf : P f = f) :
    evenPart P f = f := by
  simp only [evenPart_apply, hf]
  module

theorem oddPart_of_odd (P : V →ₗ[ℂ] V) {f : V} (hf : P f = -f) :
    oddPart P f = f := by
  simp only [oddPart_apply, hf]
  module

theorem evenPart_of_odd (P : V →ₗ[ℂ] V) {f : V} (hf : P f = -f) :
    evenPart P f = 0 := by simp [hf]

theorem oddPart_of_even (P : V →ₗ[ℂ] V) {f : V} (hf : P f = f) :
    oddPart P f = 0 := by simp [hf]

theorem evenPart_idempotent (P : V →ₗ[ℂ] V) (hP : Function.Involutive P) (f : V) :
    evenPart P (evenPart P f) = evenPart P f :=
  evenPart_of_even P (parity_evenPart P hP f)

theorem oddPart_idempotent (P : V →ₗ[ℂ] V) (hP : Function.Involutive P) (f : V) :
    oddPart P (oddPart P f) = oddPart P f :=
  oddPart_of_odd P (parity_oddPart P hP f)

/-- Opposite parity sectors are orthogonal for the ordinary invariant form. -/
theorem even_odd_orthogonal (Q : Form V) (P : V →ₗ[ℂ] V)
    (hQ : IsParityInvariant Q P) {f h : V} (hf : P f = f) (hh : P h = -h) :
    Q f h = 0 := by
  have heq := hQ f h
  rw [hf, hh, map_neg] at heq
  exact CharZero.neg_eq_self_iff.mp heq

theorem odd_even_orthogonal (Q : Form V) (P : V →ₗ[ℂ] V)
    (hQ : IsParityInvariant Q P) {f h : V} (hf : P f = -f) (hh : P h = h) :
    Q f h = 0 := by
  have heq := hQ f h
  rw [hf, hh, LinearMap.map_neg₂] at heq
  exact CharZero.neg_eq_self_iff.mp heq

/-- This ordinary decomposition has a plus sign in BOTH sectors. -/
theorem ordinary_decomposition (Q : Form V) (P : V →ₗ[ℂ] V)
    (hP : Function.Involutive P) (hQ : IsParityInvariant Q P) (f h : V) :
    Q f h = Q (evenPart P f) (evenPart P h) + Q (oddPart P f) (oddPart P h) := by
  have heo := even_odd_orthogonal Q P hQ (parity_evenPart P hP f) (parity_oddPart P hP h)
  have hoe := odd_even_orthogonal Q P hQ (parity_oddPart P hP f) (parity_evenPart P hP h)
  calc
    Q f h = Q (evenPart P f + oddPart P f) (evenPart P h + oddPart P h) := by
      rw [evenPart_add_oddPart, evenPart_add_oddPart]
    _ = _ := by simp only [map_add, LinearMap.add_apply, heo, hoe, add_zero, zero_add]

/-- Insert parity in the second argument without changing sesquilinear convention. -/
def parityTwist (Q : Form V) (P : V →ₗ[ℂ] V) : Form V := Q.compl₂ P

@[simp] theorem parityTwist_apply (Q : Form V) (P : V →ₗ[ℂ] V) (f h : V) :
    parityTwist Q P f h = Q f (P h) := rfl

theorem parity_transfer (Q : Form V) (P : V →ₗ[ℂ] V)
    (hP : Function.Involutive P) (hQ : IsParityInvariant Q P) (f h : V) :
    Q (P f) h = Q f (P h) := by
  simpa only [hP h] using hQ f (P h)

theorem parityTwist_hermitian (Q : Form V) (P : V →ₗ[ℂ] V)
    (hP : Function.Involutive P) (hQ : IsParityInvariant Q P) (hH : IsHermitian Q) :
    IsHermitian (parityTwist Q P) := by
  intro f h
  rw [parityTwist_apply, parityTwist_apply, hH, parity_transfer Q P hP hQ]

theorem parityTwist_even (Q : Form V) (P : V →ₗ[ℂ] V) (f : V)
    {h : V} (hh : P h = h) : parityTwist Q P f h = Q f h := by simp [hh]

theorem parityTwist_odd (Q : Form V) (P : V →ₗ[ℂ] V) (f : V)
    {h : V} (hh : P h = -h) : parityTwist Q P f h = -Q f h := by simp [hh]

/-- The minus sign is contributed by the additional parity operator. -/
theorem twisted_decomposition (Q : Form V) (P : V →ₗ[ℂ] V)
    (hP : Function.Involutive P) (hQ : IsParityInvariant Q P) (f h : V) :
    parityTwist Q P f h =
      Q (evenPart P f) (evenPart P h) - Q (oddPart P f) (oddPart P h) := by
  have heo := even_odd_orthogonal Q P hQ (parity_evenPart P hP f) (parity_oddPart P hP h)
  have hoe := odd_even_orthogonal Q P hQ (parity_oddPart P hP f) (parity_evenPart P hP h)
  calc
    parityTwist Q P f h =
        Q (evenPart P f + oddPart P f) (P (evenPart P h + oddPart P h)) := by
      rw [evenPart_add_oddPart, evenPart_add_oddPart, parityTwist_apply]
    _ = _ := by
      simp only [map_add, parity_evenPart P hP, parity_oddPart P hP,
        LinearMap.add_apply, map_neg, heo, hoe, add_zero, zero_add, sub_eq_add_neg]

/-- Twisting twice returns the original form. -/
theorem parityTwist_twice (Q : Form V) (P : V →ₗ[ℂ] V)
    (hP : Function.Involutive P) : parityTwist (parityTwist Q P) P = Q := by
  apply LinearMap.ext₂
  intro f h
  simp only [parityTwist_apply, hP h]

/-- Checking both complete parity sectors suffices, whereas checking finitely
many vectors in either sector does not supply these universally quantified premises. -/
theorem nonnegative_iff_sectors (Q : Form V) (P : V →ₗ[ℂ] V)
    (hP : Function.Involutive P) (hQ : IsParityInvariant Q P) :
    IsNonnegative Q ↔
      (∀ f, 0 ≤ (Q (evenPart P f) (evenPart P f)).re) ∧
      (∀ f, 0 ≤ (Q (oddPart P f) (oddPart P f)).re) := by
  constructor
  · intro h
    exact ⟨fun _ => h _, fun _ => h _⟩
  · rintro ⟨he, ho⟩ f
    rw [ordinary_decomposition Q P hP hQ f f, Complex.add_re]
    exact add_nonneg (he f) (ho f)

/-- Ordinary nonnegativity restricts to both parity sectors. -/
theorem ordinary_sectors_nonnegative (Q : Form V) (P : V →ₗ[ℂ] V)
    (hQ : IsNonnegative Q) (f : V) :
    0 ≤ (Q (evenPart P f) (evenPart P f)).re ∧
    0 ≤ (Q (oddPart P f) (oddPart P f)).re := ⟨hQ _, hQ _⟩

theorem twisted_sectors_sign (Q : Form V) (P : V →ₗ[ℂ] V)
    (hP : Function.Involutive P) (hQ : IsNonnegative Q) (f : V) :
    0 ≤ (parityTwist Q P (evenPart P f) (evenPart P f)).re ∧
    (parityTwist Q P (oddPart P f) (oddPart P f)).re ≤ 0 := by
  constructor
  · rw [parityTwist_even Q P _ (parity_evenPart P hP f)]
    exact hQ _
  · rw [parityTwist_odd Q P _ (parity_oddPart P hP f), Complex.neg_re]
    exact neg_nonpos.mpr (hQ _)

/-- With linear-first convention the matrix entry indexed by row i, column j
is Q(phi j, phi i). This expansion fixes the coefficient/conjugation order. -/
theorem finite_gram_expansion {ι : Type*} (s : Finset ι) (Q : Form V)
    (phi : ι → V) (c : ι → ℂ) :
    Q (∑ j ∈ s, c j • phi j) (∑ i ∈ s, c i • phi i) =
      ∑ i ∈ s, ∑ j ∈ s, conj (c i) * Q (phi j) (phi i) * c j := by
  simp only [map_sum, LinearMap.sum_apply, map_smul, LinearMap.smul_apply,
    map_smulₛₗ, smul_eq_mul, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  ring

/-- Actual spatial reflection on logarithmic test functions. -/
def reflection : (ℝ → ℂ) →ₗ[ℂ] (ℝ → ℂ) where
  toFun f x := f (-x)
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

theorem reflection_involutive : Function.Involutive reflection := by
  intro f
  funext x
  simp [reflection]

/-- A reflected off-line pair in transform coordinates. Multiplicity is explicit. -/
def reflectedPairEnergy (m : ℝ) (a b : ℂ) : ℝ := 2 * m * (a * conj b).re

theorem reflectedPairEnergy_difference_of_squares (m : ℝ) (a b : ℂ) :
    reflectedPairEnergy m a b = m / 2 * (‖a + b‖ ^ 2 - ‖a - b‖ ^ 2) := by
  simp only [reflectedPairEnergy, Complex.sq_norm, Complex.normSq_add, Complex.normSq_sub]
  ring

theorem reflectedPairEnergy_same (m : ℝ) (a : ℂ) :
    reflectedPairEnergy m a a = 2 * m * ‖a‖ ^ 2 := by
  rw [reflectedPairEnergy, Complex.mul_conj, Complex.ofReal_re, Complex.normSq_eq_norm_sq]

theorem reflectedPairEnergy_opposite (m : ℝ) (a : ℂ) :
    reflectedPairEnergy m a (-a) = -(2 * m * ‖a‖ ^ 2) := by
  simp only [reflectedPairEnergy, map_neg, mul_neg, Complex.neg_re, Complex.mul_conj,
    Complex.ofReal_re, Complex.normSq_eq_norm_sq]

/-- The pair form has both signs on its unrestricted coordinate space when m > 0.
This is not an interpolation theorem for admissible test functions. -/
theorem reflectedPairEnergy_both_signs (m : ℝ) (hm : 0 < m) :
    0 < reflectedPairEnergy m 1 1 ∧ reflectedPairEnergy m 1 (-1) < 0 := by
  rw [reflectedPairEnergy_same, reflectedPairEnergy_opposite]
  norm_num
  exact hm

end GRWTSK.FunctionalAnalysis.WeilParityDecomposition
