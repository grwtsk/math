/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/

import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.QuadraticCertificateCore
import Mathlib

/-!
# Exact finite Weil invariant diffusers with a reversible two-site heat

An involution on a finite index set pairs source coordinates; fixed points
are admitted and remain unchanged. The Euler heat step on each orbit is

  H x(i) = (3*x(i)+x(swap i))/4,
  R y(i) = (3*y(i)-y(swap i))/2.

On two-site orbits this is the Markov matrix
  [3/4,1/4;1/4,3/4],
with eigenvalues 1 and 1/2, and inverse
  [3/2,-1/2;-1/2,3/2].

The full data is preserved: R(H(x))=x and H(R(y))=y.
These laws apply to REAL physical sine coefficients, COMPLEX unpaired
character coefficients and REAL completed conjugate-pair coefficients.
For a finite source matrix A, the transported quadratic readout is
Q_H(w)=Q_A(R(w)), not Q_A(w). Exact source return and all-vector
positivity equivalence follow WITHOUT assuming source positivity.
A negative source witness also survives.

For complex sources the antilinear-first Hermitian readout is
  sum_i conj(x_i) * (A x)_i.
The theorem does not assert Hermiticity of an arbitrary matrix A:
the original source must supply that property. A transported finite
operator is H A R, so its eigenvectors and eigenvalues correspond
exactly. This is a similarity, not entrywise averaging of reciprocal
roots, zeta zeros or L-function values.

For two real coordinates a,b the source heat preserves a+b and loses
3/8*(a-b)^2 of squared norm. Its inverse has operator norm 2 on a
two-site orbit; squared errors may be magnified fourfold. The source
metric for zeta compact sine forms is physical Lebesgue L2 via the
existing sine Parseval law. A theta-weighted Gram is NOT automatically
contracted by this Euclidean heat.

This module contains finite algebra ONLY; source bindings to literal
Weil forms and character sector data are in WeilTypedSourceDiffusers.
No prime coefficient, gamma parity, pole sign, high complement or
remote tail is altered. In particular no signed arithmetic inequality,
RH or Dirichlet GRH is inferred from positive heat weights.

Compared source: RootHeatState.HeatKernel (coverage/stochastic heat),
QuadraticCertificates.quadratic (original finite sign), the existing
WeilRadiusTwoSignedDiffusion (64+pole specialization), and
WeilPrimePhaseDiffusion (arithmetic prime overlaps, NOT this heat).
These are distinct mathematical roles and share no claimed
noncircular positive sign.

SOURCE_PROOF_CANDIDATE; COMPILATION_NOT_RUN; FRESH_KERNEL_NOT_RUN;
TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_ANALYTIC_REVIEW_NOT_RUN.
Authoring source baseline grwtsk/math@
9404b5698d0da5ee97d289a830f76ab75e3ef84f.
-/

set_option autoImplicit false
noncomputable section
open Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FiniteInvariantDiffusion

open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- Typed coordinate involution. A singleton/fixed pole has no heat mixing. -/
structure Involution (ι : Type*) where
  swap : ι → ι
  involutive : ∀ i, swap (swap i) = i

namespace Involution

variable {ι : Type*} (d : Involution ι)

/-- Full finite source can always use the identity diffuser, including an
empty physical head. Nontrivial diffusers use two-element orbits. -/
def identity (ι : Type*) : Involution ι where
  swap := id
  involutive := fun _ => rfl

/-- A concrete nontrivial two-site source diffuser. -/
def bitFlip : Involution Bool where
  swap := Bool.not
  involutive := by
    intro b
    cases b <;> rfl

/-- Keep the actual scalar zeta pole in a separate, fixed coordinate. -/
def withPole : Involution (ι ⊕ Unit) where
  swap
    | .inl i => .inl (d.swap i)
    | .inr u => .inr u
  involutive := by
    intro idx
    rcases idx with i | ⟨⟩
    · change Sum.inl (d.swap (d.swap i)) = Sum.inl i
      rw [d.involutive]
    · rfl

/-- One positive rational Markov Euler step on every two-site orbit. -/
def heatReal (v : ι → ℝ) (i : ι) : ℝ :=
  (3 * v i + v (d.swap i)) / 4

/-- The signed inverse must be applied BEFORE checking the original source. -/
def recoverReal (v : ι → ℝ) (i : ι) : ℝ :=
  (3 * v i - v (d.swap i)) / 2

theorem recover_heatReal (v : ι → ℝ) :
    d.recoverReal (d.heatReal v) = v := by
  funext i
  change
    (3 * ((3 * v i + v (d.swap i)) / 4) -
      ((3 * v (d.swap i) + v (d.swap (d.swap i))) / 4)) / 2 = v i
  rw [d.involutive i]
  ring

theorem heat_recoverReal (v : ι → ℝ) :
    d.heatReal (d.recoverReal v) = v := by
  funext i
  change
    (3 * ((3 * v i - v (d.swap i)) / 2) +
      ((3 * v (d.swap i) - v (d.swap (d.swap i))) / 2)) / 4 = v i
  rw [d.involutive i]
  ring

theorem heatReal_nonneg (v : ι → ℝ) (hv : ∀ i, 0 ≤ v i) :
    ∀ i, 0 ≤ d.heatReal v i := by
  intro i
  unfold heatReal
  positivity

/-- The complex coefficient diffuser uses the SAME real stochastic weights;
there is no phase erasure, conjugation of chi, or replacement by norms. -/
def heatComplex (v : ι → ℂ) (i : ι) : ℂ :=
  (3 * v i + v (d.swap i)) / 4

def recoverComplex (v : ι → ℂ) (i : ι) : ℂ :=
  (3 * v i - v (d.swap i)) / 2

theorem recover_heatComplex (v : ι → ℂ) :
    d.recoverComplex (d.heatComplex v) = v := by
  funext i
  change
    (3 * ((3 * v i + v (d.swap i)) / 4) -
      ((3 * v (d.swap i) + v (d.swap (d.swap i))) / 4)) / 2 = v i
  rw [d.involutive i]
  ring

theorem heat_recoverComplex (v : ι → ℂ) :
    d.heatComplex (d.recoverComplex v) = v := by
  funext i
  change
    (3 * ((3 * v i - v (d.swap i)) / 2) +
      ((3 * v (d.swap i) - v (d.swap (d.swap i))) / 2)) / 4 = v i
  rw [d.involutive i]
  ring

/-- The physical heat respects the complex scalar action exactly. -/
theorem heatComplex_mul_left (c : ℂ) (v : ι → ℂ) :
    d.heatComplex (fun i => c * v i) =
      fun i => c * d.heatComplex v i := by
  funext i
  unfold heatComplex
  ring

/-- One genuine Euler heat step transports the finite operator by
similarity; no spectral value is manufactured. -/
def diffusedOperator (A : (ι → ℂ) → (ι → ℂ)) (w : ι → ℂ) : ι → ℂ :=
  d.heatComplex (A (d.recoverComplex w))

/-- Exact eigenvector equivalence for every scalar, with the SAME eigenvalue. -/
theorem eigenvalue_return (A : (ι → ℂ) → (ι → ℂ))
    (c : ℂ) (v : ι → ℂ) :
    (A v = fun i => c * v i) ↔
      (d.diffusedOperator A (d.heatComplex v) =
        fun i => c * d.heatComplex v i) := by
  constructor
  · intro h
    unfold diffusedOperator
    rw [d.recover_heatComplex, h, d.heatComplex_mul_left]
  · intro h
    have hh : d.heatComplex (A v) =
        d.heatComplex (fun i => c * v i) := by
      simpa only [diffusedOperator, d.recover_heatComplex,
        d.heatComplex_mul_left] using h
    have hrec := congrArg d.recoverComplex hh
    simpa only [d.recover_heatComplex] using hrec

/-- Source-polynomial finite real quadratic, with an exact inverse
readout so no unproved sign or norm estimate is hidden in the heat. -/
def diffusedRealQuadratic [Fintype ι] (A : Matrix ι ι ℝ)
    (w : ι → ℝ) : ℝ :=
  quadratic A (d.recoverReal w)

theorem realQuadratic_return [Fintype ι] (A : Matrix ι ι ℝ) (v : ι → ℝ) :
    d.diffusedRealQuadratic A (d.heatReal v) = quadratic A v := by
  simp only [diffusedRealQuadratic, d.recover_heatReal]

theorem realQuadratic_nonneg_iff [Fintype ι] (A : Matrix ι ι ℝ) :
    (∀ w, 0 ≤ d.diffusedRealQuadratic A w) ↔
      (∀ v, 0 ≤ quadratic A v) := by
  constructor
  · intro h v
    simpa only [d.realQuadratic_return] using h (d.heatReal v)
  · intro h w
    exact h (d.recoverReal w)

theorem realQuadratic_negative_survives [Fintype ι]
    (A : Matrix ι ι ℝ) (v : ι → ℝ)
    (h : quadratic A v < 0) :
    d.diffusedRealQuadratic A (d.heatReal v) < 0 := by
  simpa only [d.realQuadratic_return] using h

/-- Antilinear-first pairing for any finite COMPLEX source matrix.
Hermiticity of the actual source matrix is a separate source theorem. -/
def complexPairing [Fintype ι] (A : Matrix ι ι ℂ)
    (v : ι → ℂ) : ℂ :=
  ∑ i, star (v i) * (A.mulVec v i)

def diffusedComplexPairing [Fintype ι] (A : Matrix ι ι ℂ)
    (w : ι → ℂ) : ℂ :=
  complexPairing A (d.recoverComplex w)

theorem complexPairing_return [Fintype ι] (A : Matrix ι ι ℂ) (v : ι → ℂ) :
    d.diffusedComplexPairing A (d.heatComplex v) = complexPairing A v := by
  simp only [diffusedComplexPairing, d.recover_heatComplex]

theorem complexPairing_real_nonneg_iff [Fintype ι]
    (A : Matrix ι ι ℂ) :
    (∀ w, 0 ≤ (d.diffusedComplexPairing A w).re) ↔
      (∀ v, 0 ≤ (complexPairing A v).re) := by
  constructor
  · intro h v
    simpa only [d.complexPairing_return] using h (d.heatComplex v)
  · intro h w
    exact h (d.recoverComplex w)

/-- Exact two-site mass preservation for the pointwise Markov step. -/
theorem twoSite_mass (a b : ℝ) :
    (3 * a + b) / 4 + (a + 3 * b) / 4 = a + b := by
  ring

/-- Physical Euclidean contraction on every two-site orbit. -/
theorem twoSite_square_loss (a b : ℝ) :
    a ^ 2 + b ^ 2 -
      (((3 * a + b) / 4) ^ 2 + ((a + 3 * b) / 4) ^ 2) =
      (3 / 8 : ℝ) * (a - b) ^ 2 := by
  ring

/-- Inverse heat is not sign preserving and may quadruple squared error. -/
theorem twoSite_inverse_error (a b : ℝ) :
    ((3 * a - b) / 2) ^ 2 + ((-a + 3 * b) / 2) ^ 2 ≤
      4 * (a ^ 2 + b ^ 2) := by
  have heq :
      4 * (a ^ 2 + b ^ 2) -
        (((3 * a - b) / 2) ^ 2 + ((-a + 3 * b) / 2) ^ 2) =
        (3 / 2 : ℝ) * (a + b) ^ 2 := by ring
  nlinarith [sq_nonneg (a + b)]

end Involution
end GRWTSK.NumberTheory.WeilQuadraticForm.FiniteInvariantDiffusion
