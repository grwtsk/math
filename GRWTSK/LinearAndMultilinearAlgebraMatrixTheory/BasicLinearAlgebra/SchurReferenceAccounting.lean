/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.SchurObserverCertificate
import Mathlib.Basic.Complex.Basic

/-!
# Reference-energy accounting in the original Schur form

Consumer: the operator-to-scalar transition in the real odd Weil channel.
Comparison source: Marco Desogus, The Three Gates, arXiv:2609.20367v3
(6 October 2026; internally V4), pp.55--56, Lemma 8.1 and Corollary 8.2;
Theorem 8.6 on p.59. These statements are NOT imported as theorems.

The valid reference identity is
  R - E_actual = (R - E_reference) + (E_reference - E_actual).
A positive last difference does not license removing -E_reference. A repair
must bound the remainder AFTER that subtraction. This file supplies that
exact return, its finite-family version, and an adapter to the EXISTING
quadratic certificate checker. There is no new certificate or Schur framework.

The primary proof reuses SchurResidual.inverse_energy_defect. A real symmetric
form a and an actual variational solution a(x,v)=ell(v) give
  a(v,v)-2 ell(v)+R = R-ell(x)+a(v-x,v-x).
The minimum is R-ell(x). Inserting a reference vector cannot change it.
A two-source calculation retains the mixed inverse-energy term; individual
response energies cannot replace the energy of the summed forcing.

Hostile controls: a positive comparator gain with a negative exact Schur
value, two charges against the same reserve, and reinforcing sources. These
are finite algebra counterexamples, NOT counterexamples to Weil positivity.
The complex stationary-row identity also retains both quadratures exactly.

Mathematics: elementary square completion/accounting; no novelty claim.
Source baseline: grwtsk/math 41d523fbccff6a9fc6d844415632d15114bf93b2.
AI-assisted manual source drafting. Elaboration, fresh kernel checking,
transitive axiom audit and independent analytical review: NOT_RUN.
No arithmetic cofinal positivity, RH, or Dirichlet GRH is concluded.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.LinearAlgebra.SchurReference

open GRWTSK.LinearAlgebra.SchurResidual
open GRWTSK.LinearAlgebra.SchurObserver
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

section Form
variable {V : Type*} [AddCommGroup V] [Module ℝ V]

/-- Exact completion in the original form; the reference comparison is not
part of the definition of the source. -/
theorem source_row_completion
    (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ)
    (hsym : ∀ v w, a v w = a w v)
    (x : V) (hsolve : ∀ v, a x v = ell v) (R : ℝ) (v : V) :
    a v v - 2 * ell v + R = R - ell x + a (x - v) (x - v) := by
  have h := inverse_energy_defect a ell hsym x v hsolve
  linarith

/-- The exact minimum is obtained by the supplied solution, not by a reference. -/
theorem source_row_at_solution
    (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ)
    (x : V) (hsolve : ∀ v, a x v = ell v) (R : ℝ) :
    a x x - 2 * ell x + R = R - ell x := by
  rw [hsolve x]
  ring

/-- Both directions of the positivity test, on the SAME carrier/form domain. -/
theorem source_row_nonnegative_iff
    (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ)
    (hsym : ∀ v w, a v w = a w v) (hpos : ∀ v, 0 ≤ a v v)
    (x : V) (hsolve : ∀ v, a x v = ell v) (R : ℝ) :
    (∀ v, 0 ≤ a v v - 2 * ell v + R) ↔ ell x ≤ R := by
  constructor
  · intro h
    have hx := h x
    rw [source_row_at_solution a ell x hsolve R] at hx
    linarith
  · intro h v
    rw [source_row_completion a ell hsym x hsolve R v]
    exact add_nonneg (sub_nonneg.mpr h) (hpos (x - v))

/-- Keep the reference subtraction and gain together on the original source. -/
theorem reference_completion
    (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ)
    (hsym : ∀ v w, a v w = a w v)
    (x : V) (hsolve : ∀ v, a x v = ell v) (reference v : V) (R : ℝ) :
    a v v - 2 * ell v + R =
      (R - a reference reference) + (a reference reference - ell x) +
        a (x - v) (x - v) := by
  rw [source_row_completion a ell hsym x hsolve R v]
  ring

/-- The missing allocation is a bound on R minus the reference energy.
The gain estimate alone is deliberately insufficient. -/
theorem paid_reference_lower
    (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ)
    (hsym : ∀ v w, a v w = a w v) (hpos : ∀ v, 0 ≤ a v v)
    (x : V) (hsolve : ∀ v, a x v = ell v)
    (reference v : V) (R remaining gain : ℝ)
    (hremaining : remaining ≤ R - a reference reference)
    (hgain : gain ≤ a reference reference - ell x) :
    remaining + gain ≤ a v v - 2 * ell v + R := by
  rw [reference_completion a ell hsym x hsolve reference v R]
  linarith [hpos (x - v)]

/-- Common forcing has a common response; no separate minimizers are silently
substituted for a simultaneous Schur solve. -/
theorem combined_response
    (a : LinearMap.BilinForm ℝ V) (ell₁ ell₂ : V →ₗ[ℝ] ℝ)
    (x₁ x₂ : V)
    (h₁ : ∀ v, a x₁ v = ell₁ v) (h₂ : ∀ v, a x₂ v = ell₂ v) (v : V) :
    a (x₁ + x₂) v = (ell₁ + ell₂) v := by
  simp only [LinearMap.BilinForm.add_left, LinearMap.add_apply, h₁, h₂]

/-- The mixed term is part of the true inverse energy, with its original sign. -/
theorem combined_response_energy
    (a : LinearMap.BilinForm ℝ V) (ell₁ ell₂ : V →ₗ[ℝ] ℝ)
    (hsym : ∀ v w, a v w = a w v) (x₁ x₂ : V)
    (h₁ : ∀ v, a x₁ v = ell₁ v) (h₂ : ∀ v, a x₂ v = ell₂ v) :
    (ell₁ + ell₂) (x₁ + x₂) =
      ell₁ x₁ + ell₂ x₂ + 2 * a x₁ x₂ := by
  simp only [LinearMap.add_apply, map_add]
  rw [← h₁ x₂, ← h₂ x₁, hsym x₂ x₁]
  ring

end Form

/-- Literal complex source row, in the conjugate-linear-first convention. -/
def complexRow (p R : ℝ) (z forcing : ℂ) : ℝ :=
  p * Complex.normSq z - 2 * (star z * forcing).re + R

theorem complex_stationary_row (p R : ℝ) (z forcing : ℂ)
    (hstationary : forcing = (p : ℂ) * z) :
    complexRow p R z forcing = R - p * Complex.normSq z := by
  rw [hstationary]
  simp [complexRow, Complex.normSq_apply, Complex.mul_re, Complex.mul_im]
  <;> ring

/-- Quadratic homogeneity is correct; the reference debit is still present. -/
theorem complex_reference_identity (p R θ : ℝ) (z₀ : ℂ) :
    R - p * Complex.normSq ((θ : ℂ) * z₀) =
      (R - p * Complex.normSq z₀) +
        (1 - θ ^ 2) * p * Complex.normSq z₀ := by
  rw [Complex.normSq_mul, Complex.normSq_ofReal]
  ring

/-- Exact counterexample to promoting positive gain into a source lower sign. -/
theorem positive_gain_negative_source :
    complexRow 1 (1 / 2) 1 1 = (-1 / 2 : ℝ) ∧
      Complex.normSq (2 : ℂ) - Complex.normSq (1 : ℂ) = 3 ∧
      (1 / 2 : ℝ) + (4 - 1) > 0 := by
  norm_num [complexRow, Complex.normSq_apply]

/-- Checking each charge against a full copy of one reserve is unsound. -/
theorem reserve_cannot_be_reused :
    (3 / 4 : ℝ) ≤ 1 ∧ (3 / 4 : ℝ) ≤ 1 ∧
      (1 : ℝ) - 3 / 4 - 3 / 4 < 0 := by norm_num

/-- Two identical scalar sources have energy four, not the sum two. -/
theorem reinforcing_sources :
    ((1 : ℝ) + 1) ^ 2 = 4 ∧ (1 : ℝ) ^ 2 + 1 ^ 2 = 2 ∧
      (3 : ℝ) - (1 ^ 2 + 1 ^ 2) > 0 ∧
      (3 : ℝ) - (1 + 1) ^ 2 < 0 := by norm_num

section FiniteAccounting
variable {ι : Type*}

/-- These must be contributions to the SAME source after a justified split.
The identity does not assume independent sources or erase their mixed terms. -/
theorem reference_sum_identity (S : Finset ι) (R : ℝ) (reference actual : ι → ℝ) :
    R - ∑ i ∈ S, actual i =
      (R - ∑ i ∈ S, reference i) + ∑ i ∈ S, (reference i - actual i) := by
  rw [Finset.sum_sub_distrib]
  ring

theorem paid_reference_sum_lower (S : Finset ι)
    (reference actual gain : ι → ℝ) (R remaining : ℝ)
    (hremaining : remaining ≤ R - ∑ i ∈ S, reference i)
    (hgain : ∀ i ∈ S, gain i ≤ reference i - actual i) :
    remaining + ∑ i ∈ S, gain i ≤ R - ∑ i ∈ S, actual i := by
  rw [reference_sum_identity S R reference actual]
  exact add_le_add hremaining (Finset.sum_le_sum hgain)

end FiniteAccounting

section CheckedAllocation
variable {ι ν : Type*} [Fintype ι] [DecidableEq ι] [Fintype ν]

/-- Certify R - E_reference - G with the EXISTING checker. This proves that G
survives paying the reference energy. It is not a freely assigned reserve. -/
theorem checked_reference_allocation
    (R E G : Matrix ι ι ℝ) (C : Certificate ℝ ι Empty Empty ν)
    (hcheck : check (matrixProblem (R - E - G)) C = true) (u : ι → ℝ) :
    quadratic G u ≤ quadratic R u - quadratic E u := by
  have h := checked_matrix_nonneg (R - E - G) C hcheck u
  simp only [quadratic, Matrix.sub_mulVec, dotProduct_sub] at h ⊢
  linarith

/-- Source return after the actual debit has been independently identified.
This does not construct an arithmetic matrix certificate on any window. -/
theorem checked_reference_source_lower
    (R E G : Matrix ι ι ℝ) (C : Certificate ℝ ι Empty Empty ν)
    (hcheck : check (matrixProblem (R - E - G)) C = true)
    (source actual gain : (ι → ℝ) → ℝ)
    (hsource : ∀ u, source u = quadratic R u - actual u)
    (hgain : ∀ u, gain u ≤ quadratic E u - actual u) (u : ι → ℝ) :
    quadratic G u + gain u ≤ source u := by
  have hp := checked_reference_allocation R E G C hcheck u
  rw [hsource]
  linarith [hgain u]

end CheckedAllocation
end GRWTSK.LinearAlgebra.SchurReference
