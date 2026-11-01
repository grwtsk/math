/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSquarefreeTriplingNegativePacket
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusDenseSquarefulZeroPacket
open GRWTSK.NumberTheory.MoebiusOddPrimeDoublingNegativePacket
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-!
# Symmetric-difference rays and a multiplicative-cube obstruction

For positive squarefree endpoint labels `m,n`, remove their common divisor.
The product of the two coprime remainders records the symmetric difference
of their prime supports.  The original Möbius pair sign is then the Möbius
sign of this single ray label.

The companion review proves the exact finite ray decomposition of the complete
endpoint cross and gives a rigorous counterexample to a tempting
multiplicative complete-monotonicity bootstrap.  At horizon `log 12`, the
third mixed prime difference based at ray `11` and primes `2,3,5` is strictly
negative.  The failure comes from the exact causal/cutoff boundary, not from a
surrogate kernel.

Only elementary definitions, nonnegativity, and scalar algebra are proved in
this source candidate.  The finite ray reindexing and exact `N=12` evaluation
remain named propositions pending Lean elaboration.  No endpoint estimate,
uniform energy theorem, or RH theorem is asserted.
-/

namespace GRWTSK.NumberTheory.MoebiusEndpointSymmetricDifferenceRays

classical

/-- Product of the two coprime residual labels after removing the common gcd. -/
def symmetricDifferenceProduct (m n : ℕ) : ℕ :=
  (m / Nat.gcd m n) * (n / Nat.gcd m n)

/-- Nonnegative causal Gram mass on one symmetric-difference ray.
Both ordered orientations are retained. -/
def endpointRayWeight (q : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ squarefreeEndpointIndex T, ∑ n ∈ squarefreeEndpointIndex T,
    if m ≠ n ∧ symmetricDifferenceProduct m n = q then
      pickupResponseGram T m n
    else 0

/-- Every active ray label lies in this finite range. -/
def endpointRayIndex (T : ℝ) : Finset ℕ :=
  Finset.Icc 2 (⌊Real.exp T⌋₊ ^ 2)

theorem endpointRayWeight_nonneg
    (q : ℕ) (T : ℝ) (hT : 0 ≤ T) :
    0 ≤ endpointRayWeight q T := by
  unfold endpointRayWeight
  apply Finset.sum_nonneg
  intro m hm
  apply Finset.sum_nonneg
  intro n hn
  split_ifs with h
  · have hmpos : 0 < m := by
      exact (Finset.mem_Icc.mp (Finset.mem_filter.mp hm).1).1
    have hnpos : 0 < n := by
      exact (Finset.mem_Icc.mp (Finset.mem_filter.mp hn).1).1
    exact pickupResponseGram_nonneg T hT m n hmpos hnpos
  · exact le_rfl

/-- Arithmetic sign identity on a squarefree pair.  Mathematically, if
`d=gcd(m,n)`, `m=d*a`, and `n=d*b`, then `d,a,b` are pairwise-coprime
squarefree labels and `mu(m)mu(n)=mu(a*b)`. -/
def SymmetricDifferenceMoebiusSignIdentity : Prop :=
  ∀ m n : ℕ, 1 ≤ m → 1 ≤ n → Squarefree m → Squarefree n →
    moebiusReal m * moebiusReal n =
      moebiusReal (symmetricDifferenceProduct m n)

/-- Exact finite partition of the complete ordered endpoint cross by the ray
label.  The diagonal corresponds to ray one and is absent on both sides. -/
def EndpointSymmetricDifferenceRayIdentity : Prop :=
  SymmetricDifferenceMoebiusSignIdentity →
    ∀ T : ℝ, 0 ≤ T →
      pickupCross T =
        ∑ q ∈ endpointRayIndex T,
          moebiusReal q * endpointRayWeight q T

/-- Multiplicative third difference of ray weights. -/
def rayThirdDifference (q p r s : ℕ) (T : ℝ) : ℝ :=
  endpointRayWeight q T
    - endpointRayWeight (p * q) T
    - endpointRayWeight (r * q) T
    - endpointRayWeight (s * q) T
    + endpointRayWeight (p * r * q) T
    + endpointRayWeight (p * s * q) T
    + endpointRayWeight (r * s * q) T
    - endpointRayWeight (p * r * s * q) T

/-- The global complete-monotonicity premise considered in the review. -/
def ThirdOrderRayCompleteMonotonicity : Prop :=
  ∀ (q p r s : ℕ) (T : ℝ),
    2 ≤ q → Nat.Prime p → Nat.Prime r → Nat.Prime s →
    ¬ p ∣ q → ¬ r ∣ q → ¬ s ∣ q →
    0 ≤ T → 0 ≤ rayThirdDifference q p r s T

/-- The exact `N=12`, `q=11`, `(p,r,s)=(2,3,5)` mixed difference. -/
def n12ThirdDifference : ℝ :=
  rayThirdDifference 11 2 3 5 (Real.log 12)

/-- Truncated divisor amplitude in the exact finite evaluation. -/
def n12Amplitude : ℝ :=
  1 - (Real.sqrt 2)⁻¹ - (Real.sqrt 3)⁻¹ - (Real.sqrt 5)⁻¹
    + (Real.sqrt 6)⁻¹ + (Real.sqrt 10)⁻¹

/-- Positive causal birth factor in the exact finite evaluation. -/
def n12BirthFactor : ℝ :=
  Real.log (12 / 11) / Real.sqrt 11 -
    2 * ((Real.sqrt 11)⁻¹ - (Real.sqrt 12)⁻¹)

/-- Pure algebraic factorization isolating the missing `15` and `30`
boundary faces. -/
theorem n12Amplitude_factorization :
    n12Amplitude =
      (1 - (Real.sqrt 2)⁻¹) *
        (1 - (Real.sqrt 3)⁻¹ - (Real.sqrt 5)⁻¹) := by
  unfold n12Amplitude
  have h6 : Real.sqrt 6 = Real.sqrt 2 * Real.sqrt 3 := by
    rw [show (6 : ℝ) = 2 * 3 by norm_num, Real.sqrt_mul (by positivity)]
  have h10 : Real.sqrt 10 = Real.sqrt 2 * Real.sqrt 5 := by
    rw [show (10 : ℝ) = 2 * 5 by norm_num, Real.sqrt_mul (by positivity)]
  rw [h6, h10, mul_inv_rev, mul_inv_rev]
  ring

/-- Exact finite evaluation proved mathematically in the companion review.
It is kept visible as a source qualification target. -/
def N12ThirdDifferenceFormula : Prop :=
  n12ThirdDifference = 8 * n12Amplitude * n12BirthFactor

/-- Elementary sign facts used by the counterexample. -/
def N12AmplitudeNegative : Prop := n12Amplitude < 0
def N12BirthFactorPositive : Prop := 0 < n12BirthFactor

theorem n12ThirdDifference_neg_of_formula
    (hformula : N12ThirdDifferenceFormula)
    (hamp : N12AmplitudeNegative)
    (hbirth : N12BirthFactorPositive) :
    n12ThirdDifference < 0 := by
  rw [hformula]
  dsimp [N12AmplitudeNegative] at hamp
  dsimp [N12BirthFactorPositive] at hbirth
  nlinarith

/-- Once the exact finite evaluation and its elementary signs are qualified,
third-order complete monotonicity is false. -/
theorem not_thirdOrderRayCompleteMonotonicity
    (hformula : N12ThirdDifferenceFormula)
    (hamp : N12AmplitudeNegative)
    (hbirth : N12BirthFactorPositive) :
    ¬ ThirdOrderRayCompleteMonotonicity := by
  intro hmono
  have hnonneg := hmono 11 2 3 5 (Real.log 12)
    (by norm_num) Nat.prime_two Nat.prime_three (by norm_num)
    (by norm_num) (by norm_num) (by norm_num)
    (Real.log_nonneg (by norm_num))
  have hneg := n12ThirdDifference_neg_of_formula hformula hamp hbirth
  linarith

/-- Research disposition.  The ray decomposition is exact, but the naive
Euler-product/complete-monotonicity route fails at a literal cutoff boundary. -/
def SymmetricDifferenceRayDisposition : Prop :=
  EndpointSymmetricDifferenceRayIdentity ∧
    N12ThirdDifferenceFormula ∧
      N12AmplitudeNegative ∧
        N12BirthFactorPositive ∧
          ¬ ThirdOrderRayCompleteMonotonicity

end GRWTSK.NumberTheory.MoebiusEndpointSymmetricDifferenceRays
