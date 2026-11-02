/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionFamilyInverse
import Mathlib.Algebra.Polynomial.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Full local Euler-polynomial Möbius vocabulary for L-function families

For each good/unramified rational prime p the local L factor is
  L_p(s) = 1 / P_p(p^(-s)).
The generalized Möbius coefficients at p^r are EXACTLY
  mu_L(p^r) = coeff_r(P_p).
This is a definition of the local reciprocal coefficients, not
the original L(s) coefficients. Global compatibility with the
Dirichlet inverse is a separately stated field.

Linear degree-one factors:
  Dirichlet: P_p(X)=1-chi(p)*X, mu_chi(p)=-chi(p), higher r=0.
  ζ:        P_p(X)=1-X, mu(p)=-1, higher r=0.
Quadratic degree-two factors:
  Classical elliptic (good p): P_p(X)=1-a_p*X+p*X^2.
  Bad elliptic: P_p(X)=1-a_p*X.
  Unitary centered E(s+1/2): P_p(X)=1-a_p/sqrt(p)*X+X^2
    at good p; P_p(X)=1-a_p/sqrt(p)*X at bad p.
  A general GL(2) family uses 1-lambda_p*X+omega_p*X^2.

General higher-degree local factors use determinant(1-X*Frob)
on an explicitly supplied finite-dimensional inertia-invariant
space. The actual Artin/Galois representation, conductor and local
Euler factor equivalence are NOT constructed by this polynomial
adapter. Other degree-k automorphic products require their own
eigenvalue/local compatibility evidence.

No claim that every L function has an Euler product or finite
local polynomial. Only a verified Euler-compatible subfamily
can instantiate the structure below. No GRH or RH result.
-/

namespace GRWTSK.NumberTheory.Moebius.LFunctionLocalEuler

open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse

/-- A concrete local reciprocal Euler polynomial for each rational
prime and a canonical global Dirichlet inverse from Mathlib.
The field local_matches_global is an honest SOURCE obligation. -/
structure EulerPolynomialFamily where
  global : NormalizedCoefficients
  reciprocalPolynomial : ℕ → Polynomial ℂ
  constant_one : ∀ p : ℕ, p.Prime →
    (reciprocalPolynomial p).coeff 0 = 1
  local_matches_global : ∀ (p r : ℕ), p.Prime →
    global.mobius (p^r) = (reciprocalPolynomial p).coeff r

/-- All local prime-power reciprocity coefficients are recovered
without rebuilding any global Dirichlet convolution. -/
def EulerPolynomialFamily.primePowerMobius
    (F : EulerPolynomialFamily) (p r : ℕ) : ℂ :=
  (F.reciprocalPolynomial p).coeff r

theorem EulerPolynomialFamily.primePowerMobius_eq_global
    (F : EulerPolynomialFamily) (p r : ℕ) (hp : p.Prime) :
    F.primePowerMobius p r = F.global.mobius (p^r) :=
  (F.local_matches_global p r hp).symm

/-- Local first-degree reciprocal, including the all-ramified
channel alpha_p=0 and the genuine constant term 1. -/
def linearReciprocalCoefficient (alpha : ℕ → ℂ)
    (p r : ℕ) : ℂ :=
  if r = 0 then 1 else if r = 1 then -alpha p else 0

def linearReciprocalPolynomial (alpha : ℕ → ℂ)
    (p : ℕ) : Polynomial ℂ :=
  Polynomial.C 1 - Polynomial.C (alpha p) * Polynomial.X

theorem linearReciprocalCoefficient_ge_two
    (alpha : ℕ → ℂ) (p r : ℕ) (hr : 2 ≤ r) :
    linearReciprocalCoefficient alpha p r = 0 := by
  simp [linearReciprocalCoefficient, show r ≠ 0 by omega,
    show r ≠ 1 by omega]

/-- Generic GL2 reciprocal polynomial. The quadratic coefficient
omega_p may be 0 at a bad local prime or a nontrivial central
character at a good automorphic prime. -/
def quadraticReciprocalPolynomial
    (lambda omega : ℕ → ℂ) (p : ℕ) : Polynomial ℂ :=
  Polynomial.C 1 -
    Polynomial.C (lambda p) * Polynomial.X +
      Polynomial.C (omega p) * Polynomial.X^2

def quadraticReciprocalCoefficient
    (lambda omega : ℕ → ℂ) (p r : ℕ) : ℂ :=
  if r = 0 then 1
  else if r = 1 then -lambda p
  else if r = 2 then omega p
  else 0

theorem quadraticReciprocalCoefficient_zero_ge_three
    (lambda omega : ℕ → ℂ) (p r : ℕ) (hr : 3 ≤ r) :
    quadraticReciprocalCoefficient lambda omega p r = 0 := by
  simp [quadraticReciprocalCoefficient,
    show r ≠ 0 by omega, show r ≠ 1 by omega,
    show r ≠ 2 by omega]

/-- Exact classical unshifted elliptic local degree:
    mu_E(p)=-a_p;
    mu_E(p^2)=p at a good prime, 0 at bad reduction;
    mu_E(p^r)=0 for r>=3.
The curve trace and true reduction type must be supplied. -/
def ellipticClassicalLocal
    (frobeniusTrace : ℕ → ℤ) (good : ℕ → Prop)
    (p r : ℕ) : ℂ :=
  quadraticReciprocalCoefficient
    (fun p => (frobeniusTrace p : ℂ))
    (fun p => if good p then (p : ℂ) else 0) p r

/-- For L(E,s+1/2), the unitary normalized local factor has
    mu(p)=-a_p/sqrt(p), mu(p^2)=1 at GOOD primes,
    and mu(p^2)=0 at BAD primes. No completion is asserted. -/
def ellipticCenteredLocal
    (frobeniusTrace : ℕ → ℤ) (good : ℕ → Prop)
    (p r : ℕ) : ℂ :=
  quadraticReciprocalCoefficient
    (fun p => (frobeniusTrace p : ℂ) /
      (Real.sqrt (p : ℝ) : ℂ))
    (fun p => if good p then 1 else 0) p r

theorem ellipticClassical_prime_sq_good
    (a : ℕ → ℤ) (good : ℕ → Prop)
    (p : ℕ) (hp : good p) :
    ellipticClassicalLocal a good p 2 = (p : ℂ) := by
  simp [ellipticClassicalLocal, quadraticReciprocalCoefficient, hp]

theorem ellipticCentered_prime_sq_good
    (a : ℕ → ℤ) (good : ℕ → Prop)
    (p : ℕ) (hp : good p) :
    ellipticCenteredLocal a good p 2 = 1 := by
  simp [ellipticCenteredLocal, quadraticReciprocalCoefficient, hp]

theorem ellipticCentered_prime_sq_bad
    (a : ℕ → ℤ) (good : ℕ → Prop)
    (p : ℕ) (hp : ¬good p) :
    ellipticCenteredLocal a good p 2 = 0 := by
  simp [ellipticCenteredLocal, quadraticReciprocalCoefficient, hp]

theorem ellipticClassical_zero_ge_three
    (a : ℕ → ℤ) (good : ℕ → Prop)
    (p r : ℕ) (hr : 3 ≤ r) :
    ellipticClassicalLocal a good p r = 0 := by
  exact quadraticReciprocalCoefficient_zero_ge_three _ _ p r hr

/-- Prime-dependent finite-dimensional Frobenius action on the
inertia-invariant space, not an unramified-only matrix.
These matrices must come from an actual Artin representation
or from an independently supplied automorphic local parameter. -/
structure FrobeniusInvariantLocalData where
  dimension : ℕ → ℕ
  operator : (p : ℕ) →
    Matrix (Fin (dimension p)) (Fin (dimension p)) ℂ

/-- The determinant polynomial det(I-X*Frob) on the SUPPLIED
inertia-invariant space. A ramified prime can have smaller degree. -/
def FrobeniusInvariantLocalData.reciprocalPolynomial
    (F : FrobeniusInvariantLocalData) (p : ℕ) : Polynomial ℂ :=
  Matrix.det ((1 : Matrix (Fin (F.dimension p))
      (Fin (F.dimension p)) (Polynomial ℂ)) -
    (fun i j => Polynomial.C (F.operator p i j) * Polynomial.X))

def FrobeniusInvariantLocalData.primePowerMobius
    (F : FrobeniusInvariantLocalData) (p r : ℕ) : ℂ :=
  (F.reciprocalPolynomial p).coeff r

/-- Compatibility for an actual GL2/elliptic L-series. This is
NOT provided merely by naming some traces or local polynomials. -/
def QuadraticGlobalEulerCompatibilityTarget
    (A : NormalizedCoefficients)
    (lambda omega : ℕ → ℂ) : Prop :=
  ∀ (p r : ℕ), p.Prime →
    A.mobius (p^r) =
      quadraticReciprocalCoefficient lambda omega p r

/-- Artin representation local-to-global exact matching is
a genuine separate number-theoretic and representation-theoretic
theorem, not derivable from arbitrary supplied matrices. -/
def FrobeniusGlobalEulerCompatibilityTarget
    (A : NormalizedCoefficients)
    (F : FrobeniusInvariantLocalData) : Prop :=
  ∀ (p r : ℕ), p.Prime →
    A.mobius (p^r) = F.primePowerMobius p r

end GRWTSK.NumberTheory.Moebius.LFunctionLocalEuler
