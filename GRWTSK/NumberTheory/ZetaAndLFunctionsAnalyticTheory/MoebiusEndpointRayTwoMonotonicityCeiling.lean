/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointSymmetricDifferenceRays
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusDenseSquarefulZeroPacket
open GRWTSK.NumberTheory.MoebiusEndpointSymmetricDifferenceRays
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-!
# The exact ray weights are two-monotone, but not completely monotone

This source records the strongest positivity furnished by the literal causal
response after the complete squarefree Möbius endpoint cross is grouped by its
symmetric-difference ray label.

For a prime `p`, the first response difference

  `r_n - r_(p*n)`

is pointwise nonnegative.  For two distinct primes, the mixed response
difference

  `r_n - r_(p*n) - r_(q*n) + r_(p*q*n)`

is also pointwise nonnegative.  Exact finite ray reindexing therefore gives
nonnegative first and second prime differences of `endpointRayWeight`.

The third difference already fails at the existing literal `N=12` fixture.
The companion review proves that the same failure persists at every order at
least three by adjoining primes larger than the horizon.  Thus an unsigned
Euler-product or completely-monotone-capacity argument cannot prove the
all-positive-rate endpoint or uniform-energy estimate.

The finite reindexing identities and the pointwise hinge analysis remain named
formalization targets.  The scalar insertion algebra and an abstract six-label
method ceiling are proved below as source proof candidates.  No complete
endpoint estimate, uniform-energy theorem, or Riemann Hypothesis theorem is
asserted.
-/

namespace GRWTSK.NumberTheory.MoebiusEndpointRayTwoMonotonicityCeiling

classical

/-- First multiplicative difference of one ray weight. -/
def rayFirstDifference (q p : ℕ) (T : ℝ) : ℝ :=
  endpointRayWeight q T - endpointRayWeight (p * q) T

/-- Mixed second multiplicative difference of one ray weight. -/
def raySecondDifference (q p r : ℕ) (T : ℝ) : ℝ :=
  endpointRayWeight q T - endpointRayWeight (p * q) T -
    endpointRayWeight (r * q) T + endpointRayWeight (p * r * q) T

/-- Complete alternating multiplicative difference over a finite prime set. -/
def rayPrimeSetDifference (q : ℕ) (P : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ S ∈ P.powerset,
    (-1 : ℝ) ^ S.card *
      endpointRayWeight (q * ∏ p ∈ S, p) T

/-- First difference of the literal positive-index response. -/
def responsePrimeDifference (p n : ℕ) (u : ℝ) : ℝ :=
  pickupResponse n u - pickupResponse (p * n) u

/-- Mixed second difference of the literal response. -/
def responsePrimePairDifference (p r n : ℕ) (u : ℝ) : ℝ :=
  pickupResponse n u - pickupResponse (p * n) u -
    pickupResponse (r * n) u + pickupResponse (p * r * n) u

/-- Ordered coprime ray factorizations with a common squarefree factor from
which every selected difference prime has been removed.  This is the finite
source inventory used in the exact Gram reindexings. -/
def rayBaseTriples (q : ℕ) (P : Finset ℕ) (T : ℝ) : Finset (ℕ × ℕ × ℕ) :=
  let N := ⌊Real.exp T⌋₊
  (((Finset.Icc 1 N).product (Finset.Icc 1 N)).product (Finset.Icc 1 N)).filter
    (fun x =>
      let a := x.1.1
      let b := x.1.2
      let g := x.2
      a * b = q ∧ Nat.Coprime a b ∧
        Squarefree (g * a) ∧ Squarefree (g * b) ∧
        (∀ p ∈ P, ¬ p ∣ g))

/-- Exact first-difference Gram identity.  The mathematical proof partitions
whether `p` is absent, common, or assigned to one endpoint.  Out-of-horizon
terms vanish through the unchanged causal response. -/
def FirstRayDifferenceGramIdentity : Prop :=
  ∀ (q p : ℕ) (T : ℝ), 0 ≤ T → Nat.Prime p → ¬ p ∣ q →
    rayFirstDifference q p T =
      ∑ x ∈ rayBaseTriples q {p} T,
        ∫ u in (0 : ℝ)..T,
          responsePrimeDifference p (x.2 * x.1.1) u *
            responsePrimeDifference p (x.2 * x.1.2) u

/-- Exact second-difference Gram identity.  The sixteen placement terms for
`p` and `r` factor into the product of the two mixed response differences. -/
def SecondRayDifferenceGramIdentity : Prop :=
  ∀ (q p r : ℕ) (T : ℝ), 0 ≤ T →
    Nat.Prime p → Nat.Prime r → p ≠ r → ¬ p ∣ q → ¬ r ∣ q →
    raySecondDifference q p r T =
      ∑ x ∈ rayBaseTriples q {p, r} T,
        ∫ u in (0 : ℝ)..T,
          responsePrimePairDifference p r (x.2 * x.1.1) u *
            responsePrimePairDifference p r (x.2 * x.1.2) u

/-- Pointwise first response differences are nonnegative. -/
def ResponseFirstDifferenceNonnegative : Prop :=
  ∀ (p n : ℕ) (u : ℝ), Nat.Prime p → 1 ≤ n →
    0 ≤ responsePrimeDifference p n u

/-- Pointwise mixed second response differences are nonnegative. -/
def ResponseSecondDifferenceNonnegative : Prop :=
  ∀ (p r n : ℕ) (u : ℝ),
    Nat.Prime p → Nat.Prime r → p ≠ r → 1 ≤ n →
      0 ≤ responsePrimePairDifference p r n u

/-- Exact first-order monotonicity target for the ray weights. -/
def RayFirstOrderMonotonicity : Prop :=
  ∀ (q p : ℕ) (T : ℝ), 0 ≤ T → Nat.Prime p → ¬ p ∣ q →
    endpointRayWeight (p * q) T ≤ endpointRayWeight q T

/-- Exact second-order monotonicity target for the ray weights. -/
def RaySecondOrderMonotonicity : Prop :=
  ∀ (q p r : ℕ) (T : ℝ), 0 ≤ T →
    Nat.Prime p → Nat.Prime r → p ≠ r → ¬ p ∣ q → ¬ r ∣ q →
      0 ≤ raySecondDifference q p r T

/-- Quantitative one-prime insertion factor. -/
def primeInsertionFactor (p : ℕ) : ℝ :=
  2 * Real.sqrt (p : ℝ) / ((p : ℝ) + 1)

/-- Scalar algebra behind the sharp insertion comparison.  If two response
ratios `alpha,beta` lie in `[0,a]`, the mixed placement mass is at most
`2a/(1+a^2)` times the absent-plus-common mass. -/
theorem scalar_insertion_ratio
    {a α β : ℝ}
    (ha0 : 0 ≤ a) (hα0 : 0 ≤ α) (hβ0 : 0 ≤ β)
    (hαa : α ≤ a) (hβa : β ≤ a)
    (haβ : a * β ≤ 1) (haα : a * α ≤ 1) :
    (1 + a ^ 2) * (α + β) ≤ 2 * a * (1 + α * β) := by
  have h₁ : 0 ≤ (a - α) * (1 - a * β) :=
    mul_nonneg (sub_nonneg.mpr hαa) (sub_nonneg.mpr haβ)
  have h₂ : 0 ≤ (a - β) * (1 - a * α) :=
    mul_nonneg (sub_nonneg.mpr hβa) (sub_nonneg.mpr haα)
  nlinarith

/-- Exact quantitative ray insertion identity and comparison. -/
def RayInsertionContraction : Prop :=
  ∀ (q p : ℕ) (T : ℝ), 0 ≤ T → Nat.Prime p → ¬ p ∣ q →
    endpointRayWeight (p * q) T ≤
      primeInsertionFactor p * endpointRayWeight q T

/-- The response/ray positivity package which remains to be elaborated. -/
def RayTwoMonotonicityPackage : Prop :=
  FirstRayDifferenceGramIdentity ∧
    SecondRayDifferenceGramIdentity ∧
      ResponseFirstDifferenceNonnegative ∧
        ResponseSecondDifferenceNonnegative ∧
          RayFirstOrderMonotonicity ∧
            RaySecondOrderMonotonicity ∧
              RayInsertionContraction

/-- A six-label scalar fixture showing that even decreasing weights, positive
second differences, and a factor-one-half insertion contraction do not force
an alternating parity sum to be nonpositive. -/
def TwoMonotoneHalfContractiveSixLabelFixture : Prop :=
  ∃ w₀ w₁ w₂ w₃ w₄ w₅ w₆ : ℝ,
    0 ≤ w₆ ∧ w₆ ≤ w₅ ∧ w₅ ≤ w₄ ∧ w₄ ≤ w₃ ∧
    w₃ ≤ w₂ ∧ w₂ ≤ w₁ ∧ w₁ ≤ w₀ ∧
    0 ≤ w₀ - 2 * w₁ + w₂ ∧
    0 ≤ w₁ - 2 * w₂ + w₃ ∧
    0 ≤ w₂ - 2 * w₃ + w₄ ∧
    w₁ ≤ (1 / 2 : ℝ) * w₀ ∧
    w₂ ≤ (1 / 2 : ℝ) * w₁ ∧
    w₃ ≤ (1 / 2 : ℝ) * w₂ ∧
    0 < -6 * w₁ + 15 * w₂ - 20 * w₃ +
      15 * w₄ - 6 * w₅ + w₆

theorem twoMonotoneHalfContractiveSixLabelFixture :
    TwoMonotoneHalfContractiveSixLabelFixture := by
  refine ⟨1, 1 / 2, 1 / 4, 0, 0, 0, 0, ?_⟩
  norm_num

/-- The already published literal third-order counterexample is inherited
without strengthening its verification status. -/
theorem thirdOrderFailure_of_n12
    (hformula : N12ThirdDifferenceFormula)
    (hamp : N12AmplitudeNegative)
    (hbirth : N12BirthFactorPositive) :
    ¬ ThirdOrderRayCompleteMonotonicity :=
  not_thirdOrderRayCompleteMonotonicity hformula hamp hbirth

/-- At the horizon `log 12`, every ray containing a prime greater than twelve
is empty.  This finite support fact is a named reindexing target. -/
def N12LargePrimeRayVanishes : Prop :=
  ∀ q ℓ : ℕ, Nat.Prime ℓ → 12 < ℓ →
    endpointRayWeight (ℓ * q) (Real.log 12) = 0

/-- The review proves that the negative third difference persists after any
number of further differences at distinct primes greater than twelve. -/
def NoHigherOrderRayCompleteMonotonicity : Prop :=
  N12ThirdDifferenceFormula →
    N12AmplitudeNegative →
      N12BirthFactorPositive →
        N12LargePrimeRayVanishes →
          ∀ k : ℕ, 3 ≤ k →
            ∃ (q : ℕ) (P : Finset ℕ),
              P.card = k ∧ 2 ≤ q ∧
                (∀ p ∈ P, Nat.Prime p) ∧
                  (∀ p ∈ P, ¬ p ∣ q) ∧
                    rayPrimeSetDifference q P (Real.log 12) < 0

/-- Uniform-energy disposition.  First and second ray positivity are genuine,
but neither they nor the quantitative one-prime contraction imply the complete
signed parity estimate.  Higher-order positivity fails at the literal source. -/
def RayTwoMonotonicityCeilingDisposition : Prop :=
  RayTwoMonotonicityPackage ∧
    TwoMonotoneHalfContractiveSixLabelFixture ∧
      ¬ ThirdOrderRayCompleteMonotonicity ∧
        NoHigherOrderRayCompleteMonotonicity

end GRWTSK.NumberTheory.MoebiusEndpointRayTwoMonotonicityCeiling
