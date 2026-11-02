/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionFamilyInverse
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Genuine ideal-to-integer norm-fiber Möbius transport

For a Dedekind zeta or Hecke L function of a number field K,
the Dirichlet series is over NONZERO INTEGRAL IDEALS:
  L_K(s,psi)=sum_(a!=0) psi(a) * N(a)^(-s).
Its inverse on the ideal monoid is
  mu_K(a)*psi(a) for a completely multiplicative ideal character
(with conductor-excluded ideals already assigned coefficient 0).

The integer-indexed Dirichlet series coefficients are NOT
  mu(n)*chi(n) in general and should never be silently replaced:
  a_K,psi(n) = sum_(N(a)=n) psi(a),
  mu_K,psi(n) = sum_(N(a)=n) mu_K(a)*psi(a).

The norm fibers must be finite, must contain EVERY and ONLY
the ideals of the specified norm, and ideal convolution must
push forward to integer Dirichlet convolution. The latter is a
genuine separate source proof target. This module defines
the exact typed interface and its conditional inverse transfer.

The actual grwtsk/math HeckeRingDefsPublic.lean describes Hecke
double-coset rings, not this missing number-field ideal norm
multiplicative transport; it cannot certify the latter by name.
No concrete K, ideal factorization, ray character or conductor
is invented here.

For K=Q a sound adapter can recover ordinary zeta. For other K,
split primes already show that the grouped ideal inverse is
NOT ordinary integer Möbius. No GRH or RH assertion.
-/

namespace GRWTSK.NumberTheory.Moebius.LFunctionIdealNormFamilies

open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse

/-- Data indexed by genuine ideal-like objects; the caller must
provide the actual nonzero ideal index type and norm fibers.
The declared fiber_sound condition prevents silently inventing
or dropping ideals at a specified integer norm. -/
structure NormFiberDirichletData (IdealIndex : Type*) where
  idealNorm : IdealIndex → ℕ
  normFiber : ℕ → Finset IdealIndex
  fiber_sound : ∀ (n : ℕ) (a : IdealIndex),
    a ∈ normFiber n ↔ idealNorm a = n
  idealCoefficient : IdealIndex → ℂ
  idealReciprocalCoefficient : IdealIndex → ℂ
  unitNormCoefficient :
    (∑ a ∈ normFiber 1, idealCoefficient a) = 1

namespace NormFiberDirichletData

/-- Integer coefficient of the actual ideal Dirichlet series,
with the arithmetic-function zero convention. -/
def normGroupedCoefficients {ι : Type*}
    (F : NormFiberDirichletData ι) : ArithmeticFunction ℂ where
  toFun n :=
    if n = 0 then 0
    else ∑ a ∈ F.normFiber n, F.idealCoefficient a
  map_zero' := by simp

/-- Integer coefficient of the ideal reciprocal series.
This is a source definition; its Dirichlet inverse identity
requires a genuine ideal-monoid convolution/norm proof. -/
def normGroupedReciprocal {ι : Type*}
    (F : NormFiberDirichletData ι) : ArithmeticFunction ℂ where
  toFun n :=
    if n = 0 then 0
    else ∑ a ∈ F.normFiber n, F.idealReciprocalCoefficient a
  map_zero' := by simp

/-- The actual integer Dirichlet coefficients form a normalized
family, using the norm-one fiber rather than an arbitrary choice. -/
def normalizedFamily {ι : Type*}
    (F : NormFiberDirichletData ι) : NormalizedCoefficients where
  coeff := F.normGroupedCoefficients
  coeff_one := by
    simpa only [normGroupedCoefficients, ArithmeticFunction.coe_mk,
      show (1 : ℕ) ≠ 0 by norm_num, if_neg] using
        F.unitNormCoefficient

/-- Mandatory exact bridge from ideal inversion to INTEGER
Dirichlet convolution. Fiber completeness alone does not imply
this: ideal-factorization uniqueness and norm multiplicativity
must enter its proof for the actual number-field ring. -/
def NormPushforwardConvolutionTarget {ι : Type*}
    (F : NormFiberDirichletData ι) : Prop :=
  F.normGroupedCoefficients * F.normGroupedReciprocal = 1

/-- Once the true norm pushforward is proved, the grouped ideal
reciprocal IS the universal family Möbius from pinned Mathlib. -/
theorem groupedReciprocal_eq_familyMobius {ι : Type*}
    (F : NormFiberDirichletData ι)
    (htransport : F.NormPushforwardConvolutionTarget) :
    F.normalizedFamily.mobius = F.normGroupedReciprocal := by
  exact F.normalizedFamily.mobius_unique
    F.normGroupedReciprocal htransport

end NormFiberDirichletData

/-- A sign description on ideal PRIME-FACTORIZATIONS.
The label is not proved to be an actual number-field ideal
Mobius function unless supplied squarefreeness/omega data
are tied to unique prime-ideal decomposition. -/
structure IdealMobiusFactorizationData (IdealIndex : Type*) where
  squarefreeIdeal : IdealIndex → Prop
  distinctPrimeIdealCount : IdealIndex → ℕ

/-- Genuine ideal Möbius sign given actual factorization data;
squareful ideals receive exactly zero. -/
def idealMobiusOfFactorization {ι : Type*}
    (F : IdealMobiusFactorizationData ι) (a : ι) : ℂ :=
  if F.squarefreeIdeal a
  then ((-1 : ℂ) ^ F.distinctPrimeIdealCount a)
  else 0

/-- The correct Hecke twist of IDEAL Möbius coefficients.
There is no automatic identification with integer μ(n). -/
def heckeIdealMobiusCoefficient {ι : Type*}
    (F : IdealMobiusFactorizationData ι)
    (psi : ι → ℂ) (a : ι) : ℂ :=
  F.idealMobiusOfFactorization a * psi a

/-- The norm-grouped ideal Möbius formula, to be verified using
the ACTUAL number-field ideal structure and character conductor. -/
def HeckeNormGroupedMobiusCompatibilityTarget {ι : Type*}
    (F : NormFiberDirichletData ι)
    (P : IdealMobiusFactorizationData ι)
    (psi : ι → ℂ) : Prop :=
  (∀ a, F.idealCoefficient a = psi a) ∧
  (∀ a, F.idealReciprocalCoefficient a =
    heckeIdealMobiusCoefficient P psi a) ∧
  F.NormPushforwardConvolutionTarget

/-- Dedekind zeta is the special ideal character psi=1.
Its integer grouped coefficients depend on prime splitting;
being a 'zeta' function does not force ordinary μ(n). -/
def DedekindZetaNormCompatibilityTarget {ι : Type*}
    (F : NormFiberDirichletData ι)
    (P : IdealMobiusFactorizationData ι) : Prop :=
  HeckeNormGroupedMobiusCompatibilityTarget F P (fun _ => 1)

/-- Restricting the ideal norm data to K=Q requires a separate
source-level proof that its norm-one and norm-n ideals are the
ordinary positive integers, with no unproved ideal count. -/
def RationalIdealZetaIdentificationTarget {ι : Type*}
    (F : NormFiberDirichletData ι) : Prop :=
  F.normalizedFamily.coeff = zetaCoefficients.coeff

end GRWTSK.NumberTheory.Moebius.LFunctionIdealNormFamilies
