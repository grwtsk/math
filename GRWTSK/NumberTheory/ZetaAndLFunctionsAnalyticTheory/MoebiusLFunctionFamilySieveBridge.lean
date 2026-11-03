/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionFamilySourceGraphBridge
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLowGcdSieveTargetClosures
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Universal finite gcd sieve for arbitrary complex L-family coefficients

The ORIGINAL gcd cutoff is arithmetic: its sieve coefficients
  c_D(d)=sum_(k|d,k<=D) mu_classical(d/k)
depend on gcd ONLY and are independent of which mu_L(n)
weights the two original causal responses.

Consequently the finite sieve formulas from
MoebiusLowGcdSieveSquareEnergy and MoebiusLowGcdSieveTargetClosures
apply to complex/Hermitian families, PROVIDED the real-to-Hermitian
finite interval-integral exchange is verified for that family.
The correct energy is a NONNEGATIVE complex norm square, not a
complex square without conjugation.

The first divisor collar D<d<=2D is a real NEGATIVE sum of
NONNEGATIVE family energies for every normalized L family,
because c_D(d)=-1 (the previously authored arithmetic proof
candidate is reused). For non-Dirichlet degree>1 families,
a universal O(T*N/D) bound on the cost does NOT follow:
the actual coefficients |mu_L(n)| can exceed one.

The full signed higher-divisor packet should be negative of
the full original high-gcd HERMITIAN Gram, including diagonal.
That exact new family statement is an explicit unproved Lean
target pending the finite complex integral and sum reorder.

All bodies are SOURCE PROOF CANDIDATES; no compilation,
expected types, fresh kernel or transitive axiom audit run.
No RH or GRH implication is claimed.
-/

namespace GRWTSK.NumberTheory.Moebius.LFunctionFamilySieveBridge

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.LFunctionFamilySourceGraphBridge
open GRWTSK.NumberTheory.Moebius.LowGcdSieveSquareEnergy
open GRWTSK.NumberTheory.Moebius.LowGcdSieveTargetClosures

classical

/-- True complex family amplitude on the original physical
birth-gated response, restricted only by d|n. -/
def familyDivisorRestrictedResponse
    (F : NormalizedCoefficients) (d : ℕ)
    (T u : ℝ) : ℂ :=
  ∑ n ∈ endpointIndex T,
    if d ∣ n then F.mobius n * (pickupResponse n u : ℂ)
    else 0

/-- The real positive energy of the ORIGINAL complex
Dirichlet coefficients' divisor-resolved response. -/
def familyDivisorRestrictedEnergy
    (F : NormalizedCoefficients) (d : ℕ) (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T,
    ‖familyDivisorRestrictedResponse F d T u‖^2

theorem familyDivisorRestrictedEnergy_nonneg
    (F : NormalizedCoefficients) (d : ℕ)
    {T : ℝ} (hT : 0 ≤ T) :
    0 ≤ familyDivisorRestrictedEnergy F d T := by
  unfold familyDivisorRestrictedEnergy
  exact intervalIntegral.integral_nonneg hT
    (fun u _ => sq_nonneg
      (‖familyDivisorRestrictedResponse F d T u‖))

/-- The TRUE low-gcd source diagonal includes only n<=D,
weighted by |mu_L(n)|^2, not ordinary mu(n)^2. -/
def familyLowGcdSourceDiagonal
    (F : NormalizedCoefficients) (D : ℕ) (T : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T,
    if n ≤ D then
      ‖F.mobius n‖^2 * pickupResponseGram T n n
    else 0

/-- The exact finite COMPLEX family sieve that must be verified
using the original birth supports and Hermitian integral:
  LowGcdCross_F(D,T) =
    sum_(1<=d<=N) c_D(d)*E_(F,d)(T)
      - Diag_(F,n<=D)(T).
The coefficients c_D are the same prior CLASSICAL gcd sieve.
This is a meaningful unproved target, not an axiom. -/
def FamilyHermitianDivisorSieveTarget : Prop :=
  ∀ (F : NormalizedCoefficients) (D : ℕ) (T : ℝ),
    0 ≤ T →
    familyLowGcdCross F D T =
      (∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        lowGcdSieveWeight D d *
          familyDivisorRestrictedEnergy F d T) -
      familyLowGcdSourceDiagonal F D T

/-- FIRST DIVISOR COLLAR: a universal NEGATIVE weighted-square
packet, true even when mu_L is complex, because its real
arithmetic coefficient c_D(d) is -1 for D<d<=2D.
The amount need not be small for higher-degree L functions. -/
theorem familyFirstDivisorCollar_nonpos
    (F : NormalizedCoefficients)
    (D : ℕ) (hD : 1 ≤ D) {T : ℝ} (hT : 0 ≤ T) :
    (∑ d ∈ Finset.Icc (D+1)
      (min (2*D) ⌊Real.exp T⌋₊),
        lowGcdSieveWeight D d *
          familyDivisorRestrictedEnergy F d T) ≤ 0 := by
  apply Finset.sum_nonpos
  intro d hd
  obtain ⟨hdlo,hdhi⟩ := Finset.mem_Icc.mp hd
  have hgt : D < d := by omega
  have htwo : d ≤ 2*D := hdhi.trans (min_le_left _ _)
  rw [firstDivisorCollarCoefficient_proof D d hD hgt htwo]
  have hn := familyDivisorRestrictedEnergy_nonneg F d hT
  nlinarith

/-- Original FULL high-gcd Hermitian Gram includes the n>D
diagonal, unlike the off-diagonal familyHighGcdCross.
Keep this distinction in exact sieve/energy book-keeping. -/
def familyHighGcdFullGram
    (F : NormalizedCoefficients) (D : ℕ) (T : ℝ) : ℝ :=
  (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if D < Nat.gcd m n then
      familyHermitianKernel F T m n else 0).re

/-- The complete higher-divisor signed family ENERGY packet
is an exact negative high-gcd FULL Gram only after the finite
Hermitian sieve-integral identity is proved. The existing real
source proof is not by itself a complex kernel verification. -/
def FamilyHigherDivisorHermitianReturnTarget : Prop :=
  ∀ (F : NormalizedCoefficients) (D : ℕ) (T : ℝ),
    1 ≤ D → 0 ≤ T →
      (∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        if D < d then
          lowGcdSieveWeight D d *
            familyDivisorRestrictedEnergy F d T
        else 0) =
      -familyHighGcdFullGram F D T

end GRWTSK.NumberTheory.Moebius.LFunctionFamilySieveBridge
