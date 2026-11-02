/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionLocalEuler
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Global Möbius synthesis from the actual local reciprocal polynomials

This supplies a GLOBAL INTEGER n -> generalized Mobius coefficient:
  mu_L(0)=0,
  mu_L(1)=1,
  mu_L(n)=prod_(p|n) [X^(v_p(n))] P_p(X), n>0.

The global Dirichlet series coefficients are then defined as the
Dirichlet CONVOLUTION INVERSE of this synthesized Mobius function,
using the actual pinned ArithmeticFunction.dirichletInverse.
This is the correct Euler product-to-Dirichlet coefficient direction.

Finite local-degree conditions give arithmetic support restrictions.
For GL2 good primes, p^2 is NOT automatically zero. At a good
elliptic prime it equals p (classical) or 1 (centered).
The global model is mathematical even when a real Hasse-Weil /
automorphic / Artin source identification is not yet supplied.
The latter is a separately stated, genuinely missing compatibility
target; defining a local factor does NOT prove a new modularity,
L-function equality or GRH theorem.
-/

namespace GRWTSK.NumberTheory.Moebius.LFunctionEulerSynthesis

open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionLocalEuler

/-- Source of all prime Euler polynomials, with the exact unit
constant term at every ACTUAL rational prime. -/
structure PrimeEulerPolynomialSource where
  polynomial : ℕ → Polynomial ℂ
  constant_one : ∀ p : ℕ, p.Prime → (polynomial p).coeff 0 = 1

/-- Global integer-coefficient generalized Möbius function:
multiply the degree-r local inverse Euler coefficients at each
prime's ACTUAL valuation r=v_p(n). There is no arbitrary choice
of multiplicative signs or a surrogate μ(n). -/
def PrimeEulerPolynomialSource.mobius
    (F : PrimeEulerPolynomialSource) : ArithmeticFunction ℂ where
  toFun n :=
    if n = 0 then 0 else
      ∏ p ∈ n.primeFactors,
        (F.polynomial p).coeff (n.factorization p)
  map_zero' := by simp

theorem PrimeEulerPolynomialSource.mobius_one
    (F : PrimeEulerPolynomialSource) :
    F.mobius 1 = 1 := by
  simp [PrimeEulerPolynomialSource.mobius]

private def PrimeEulerPolynomialSource.invertibleOne
    (F : PrimeEulerPolynomialSource) :
    Invertible (F.mobius 1) := by
  rw [F.mobius_one]
  infer_instance

/-- An actual global coefficient function whose Dirichlet inverse
is the Euler-factor-generated Möbius coefficient. This does
not assert agreement with any external analytic L-function. -/
def PrimeEulerPolynomialSource.coefficients
    (F : PrimeEulerPolynomialSource) : ArithmeticFunction ℂ :=
  ArithmeticFunction.dirichletInverse F.mobius F.invertibleOne

theorem PrimeEulerPolynomialSource.coefficients_one
    (F : PrimeEulerPolynomialSource) :
    F.coefficients 1 = 1 := by
  simp [PrimeEulerPolynomialSource.coefficients,
    ArithmeticFunction.dirichletInverse,
    ArithmeticFunction.dirichletInverseFun_apply_one,
    F.mobius_one]

/-- Universal global normalized family synthesized solely from
the local Euler reciprocal factor coefficients. -/
def PrimeEulerPolynomialSource.family
    (F : PrimeEulerPolynomialSource) : NormalizedCoefficients where
  coeff := F.coefficients
  coeff_one := F.coefficients_one

theorem PrimeEulerPolynomialSource.family_mobius_eq
    (F : PrimeEulerPolynomialSource) :
    F.family.mobius = F.mobius := by
  apply F.family.mobius_unique
  exact ArithmeticFunction.dirichletInverse_mul_self
    F.mobius F.invertibleOne

/-- Exact local-to-prime-power agreement, to verify once against
p^r factorization in pinned Lean. The constant term r=0 is
required explicitly; this is a purely finite UFD identity. -/
def SynthesizedPrimePowerCompatibilityTarget
    (F : PrimeEulerPolynomialSource) : Prop :=
  ∀ (p r : ℕ), p.Prime →
    F.mobius (p^r) = (F.polynomial p).coeff r

/-- The degree-one Dirichlet factor from actual mathlib χ values.
It does not assert that this generated family already equals the
pinned analytic DirichletCharacter.LFunction at every s. -/
def dirichletEulerSource {q : ℕ}
    (χ : DirichletCharacter ℂ q) : PrimeEulerPolynomialSource where
  polynomial := linearReciprocalPolynomial
    (fun p => χ (p : ZMod q))
  constant_one := by
    intro p hp
    simp [linearReciprocalPolynomial]

/-- The classical elliptic Hasse-Weil local factor has p at
the good-prime quadratic reciprocal coefficient. -/
def ellipticClassicalEulerSource
    (trace : ℕ → ℤ) (good : ℕ → Prop) :
    PrimeEulerPolynomialSource where
  polynomial := quadraticReciprocalPolynomial
    (fun p => (trace p : ℂ))
    (fun p => if good p then (p : ℂ) else 0)
  constant_one := by
    intro p hp
    simp [quadraticReciprocalPolynomial]

/-- The s -> s+1/2 shifted elliptic source is unitary centered,
giving +1 at good-prime square powers. -/
def ellipticCenteredEulerSource
    (trace : ℕ → ℤ) (good : ℕ → Prop) :
    PrimeEulerPolynomialSource where
  polynomial := quadraticReciprocalPolynomial
    (fun p => (trace p : ℂ)/(Real.sqrt (p : ℝ) : ℂ))
    (fun p => if good p then 1 else 0)
  constant_one := by
    intro p hp
    simp [quadraticReciprocalPolynomial]

/-- General finite Artin/Galois inertia-invariant Frobenius
polynomials, requiring an ACTUAL field representation to be
supplied by a separate consumer. -/
def frobeniusEulerSource
    (F : FrobeniusInvariantLocalData)
    (hconst : ∀ p : ℕ, p.Prime →
      (F.reciprocalPolynomial p).coeff 0 = 1) :
    PrimeEulerPolynomialSource where
  polynomial := F.reciprocalPolynomial
  constant_one := hconst

/-- Identifying the algebraic Dirichlet-character Euler synthesis
with the existing exact character coefficients is a separate
finite Euler-product/multiplicativity proof target. -/
def DirichletEulerSourceIdentificationTarget {q : ℕ}
    (χ : DirichletCharacter ℂ q) : Prop :=
  (dirichletEulerSource χ).family.coeff =
    (dirichletCharacterCoefficients χ).coeff

/-- Elliptic curve Hasse-Weil/GL2 modularity and conductor
information must be supplied by an ACTUAL source. Purely local
polynomials do not identify an arbitrary named elliptic curve. -/
def EllipticClassicalSourceIdentificationTarget
    (trace : ℕ → ℤ) (good : ℕ → Prop)
    (actualCurveCoefficients : ArithmeticFunction ℂ) : Prop :=
  (ellipticClassicalEulerSource trace good).family.coeff =
    actualCurveCoefficients

/-- An Artin, tensor-product, Rankin-Selberg or symmetric-power
source requires its genuine local parameter matrices AND an
independent identification of its global analytic coefficients. -/
def FrobeniusSourceIdentificationTarget
    (F : FrobeniusInvariantLocalData)
    (hconst : ∀ p : ℕ, p.Prime →
      (F.reciprocalPolynomial p).coeff 0 = 1)
    (actualLcoefficients : ArithmeticFunction ℂ) : Prop :=
  (frobeniusEulerSource F hconst).family.coeff =
    actualLcoefficients

end GRWTSK.NumberTheory.Moebius.LFunctionEulerSynthesis
