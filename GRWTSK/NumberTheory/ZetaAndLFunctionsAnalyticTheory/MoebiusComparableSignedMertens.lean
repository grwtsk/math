/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongComparableIncomparable
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongIncomparableGcdStrata
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongMertensAbel
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Remove the comparable ABSOLUTE-rate loss by keeping its signed ratio source

The earlier bound 48*T*sqrt(N) paid the POSITIVE comparable
packet alone and discarded its actual cancellation against the
already certified NEGATIVE odd-coprime quotient packet.

The right original signed object is their EXACT difference
  comparableSigned = positiveNonoddComparable - negativeOddCredit.
It is simply the full ORIGINAL selected comparable signed Gram,
both orientations retained and NO gcd or prime quotient relabeling.

For squarefree m and n=m*k with gcd(m,k)=1, the TRUE coefficient
is mu(m)^2 mu(k). The original response Gram K_T(m,m*k) is
nonnegative and MONOTONE in k. The actual positive-energy
physical selection, once squareful zero terms are disregarded,
is a contiguous integer interval in the multiplier k:
    k>=2 and m*(k-1)>H,
    m*k<=N,
    K_T(m*k,m*k)>=q_N(T)
and K_T(m,m)>=q_N(T). No arbitrary sign is inspected to
choose the interval. Therefore the ORIGINAL comparable signed
source admits one-dimensional Abel summation against the
COPRIME-MERTENS prefix sum
  M_m(X)=sum_(k<=X,gcd(k,m)=1)mu(k).

An actual finite Dirichlet convolution identity gives
  M_m(X)=sum_(d<=X, all prime factors of d divide m)
              M(floor(X/d)).
Under the source power premise |M(x)|<=C*x^theta,
1/2<theta<1, it follows that
  |M_m(X)|<=C*x^theta*F_theta(m),
  F_theta(m)=prod_(p|m)(1-p^(-theta))^(-1).
The monotone Abel estimate and |K_T(m,m*k)|<=4T/(m*sqrt k)
then give (paper-analytically)
  |comparableSigned(T,H,0)| <=
      C_theta*C*T*exp((theta-1/2)*T),
where C_theta depends ONLY on theta, not H or T, because
sum_(m>=1) mu(m)^2 F_theta(m)/m^(theta+1/2)
is a convergent Euler product.

This improves the one-half ABSOLUTE exponent whenever a
genuine source Mertens power theta<1 is supplied; no RH is
assumed by this conditional theorem. For classical PNT with
no fixed power saving, it yields only an o(exp(T/2))-type
gain, not an all-positive-rate RH result. As theta tends
to 1/2, the Euler-product constant diverges; a fixed
theta>1/2 does NOT prove every positive rate.

The exact signed source identity and endpoint consumer are
authored Lean PROOF CANDIDATES. The coprime-Mertens Dirichlet
convolution, interval-mask equivalence and signed Abel power
estimate are named UNPROVED Lean Props and are NEVER imported
as axioms or claimed kernel-certified. The companion review
gives the full finite analytical derivation, its hypotheses,
prior comparison and hostile controls.
-/

namespace GRWTSK.NumberTheory.Moebius.ComparableSignedMertens

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.StrongComparableIncomparable
open GRWTSK.NumberTheory.Moebius.StrongOddCoprimeDilation
open GRWTSK.NumberTheory.Moebius.StrongEarlyIndexCollar
open GRWTSK.NumberTheory.Moebius.StrongPacketEnergyReturn
open GRWTSK.NumberTheory.Moebius.EnergyMatchedWeakResidual
open GRWTSK.NumberTheory.Moebius.StrongIncomparableGcdStrata
open GRWTSK.NumberTheory.Moebius.StrongMertensAbel
open GRWTSK.NumberTheory.Moebius.FareyFaryKakeyaIncidence

classical

/-- Actual ORIGINAL net signed comparable packet. The
negative odd-coprime ratio credit is counted EXACTLY once,
with its original sign, alongside the nonnegative even/zero
quotient comparable packet. No geometric weights are substituted. -/
def originalSignedComparableStrong (H M : ℕ) (T : ℝ) : ℝ :=
  highHighComparableNonOddCross H M T -
    highHighOddCredit H M T

/-- Reassemble the original high-high strong packet before
taking absolute values. This removes the artificial separate
positive comparable absolute budget from the source ledger,
but does NOT yet bound the resulting signed comparable packet. -/
theorem highHighStrong_eq_signedComparable_add_incomparable
    {T : ℝ} (hT : 0 ≤ T) (H M : ℕ) :
    highHighStrongCross H M T =
      originalSignedComparableStrong H M T +
        highHighSquarefreeIncomparableCross H M T := by
  rw [highHighStrong_eq_comparable_incomparable_sub_credit hT]
  unfold originalSignedComparableStrong
  ring

/-- The ORIGINAL endpoint upper return with NO forced
48*T*sqrt(N) absolute comparable bill. The entire genuine
signed comparable source remains and must be controlled
arithmetically (or jointly with the incomparable source).
This statement is exact and makes NO RH-strength claim. -/
theorem endpointSum_le_signedComparable_and_incomparable
    {T : ℝ} (hT : 0 ≤ T) (H M : ℕ) :
    endpointSum T ≤
      4 * ((shortGapSet H).card : ℝ) * T^2 +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      32*T*Real.sqrt (M : ℝ) *
        Real.sqrt (⌊Real.exp T⌋₊ : ℝ) +
      originalSignedComparableStrong H M T +
      highHighSquarefreeIncomparableCross H M T + 1/4 := by
  have he := endpointSum_le_signed_highHigh_and_paid hT H M
  rw [highHighStrong_eq_signedComparable_add_incomparable hT] at he
  linarith

/-- The original signed comparable at the NO-EARLY source
cutoff M=0, with the unchanged far-gap/physical strong
mask selected from the actual T-dependent integer inventory. -/
def comparableSourceNoEarly (H : ℕ) (T : ℝ) : ℝ :=
  originalSignedComparableStrong H 0 T

/-- Honest source-Mertens power hypothesis. An arbitrary
fixed power theta in (1/2,1) is strictly weaker than the
full all-positive-rate Mertens/RH bound. The actual
Mertens function, not a model coprime pseudo-coefficient,
is used here. -/
def ActualMertensPower (θ C : ℝ) : Prop :=
  (1/2 : ℝ) < θ ∧ θ < 1 ∧ 0 ≤ C ∧
  ∀ x : ℝ, 1 ≤ x →
    |mertensPrefix x| ≤ C * Real.rpow x θ

/-- Genuine finite original coprime Möbius prefix. -/
def coprimeMertensPrefix (m X : ℕ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 X,
    if Nat.Coprime m k then moebiusReal k else 0

/-- Dirichlet-smooth factor; it depends on m, not on the
two-point source signs or the chosen cutoff T. -/
def coprimeEulerLoss (m : ℕ) (θ : ℝ) : ℝ :=
  ∏ p ∈ m.primeFactors,
    (1 - Real.rpow (p : ℝ) (-θ))⁻¹

/-- Arithmetic convolution gate, NOT a theorem:
  mu(n) 1_coprime(n,m)
    = (mu * b_m)(n)
where b_m(d)=1 for positive d supported on prime factors
of m, and 0 otherwise. This identity gives the finite
coprime Mertens prefix via the genuine original Mertens.
It is source-independent and should be proved in pinned
Mathlib before being consumed as a certified supplier. -/
def CoprimeMertensConvolutionTarget : Prop :=
  ∀ (m X : ℕ), 1 ≤ m →
    coprimeMertensPrefix m X =
      ∑ d ∈ Finset.Icc 1 X,
        if ∀ p : ℕ, p.Prime → p ∣ d → p ∣ m
        then mertensPrefix (((X / d : ℕ) : ℝ))
        else 0

/-- The required uniformly quantified analytic coprime-prefix
bound; the arithmetic factor is explicitly permitted and
summable in m. No fixed-g Chowla or arbitrary sign hypothesis
is inserted by calling it a theorem. -/
def CoprimeMertensPowerTarget : Prop :=
  ∀ (θ C : ℝ), ActualMertensPower θ C →
  ∀ (m X : ℕ), 1 ≤ m → 1 ≤ X →
    |coprimeMertensPrefix m X| ≤
      C * Real.rpow (X : ℝ) θ * coprimeEulerLoss m θ

/-- Genuine analytic missing gate: the selected comparable
multiplier k is an INTEGER INTERVAL on nonzero source terms,
and its positive original causal kernel is nonincreasing
with k. Summing the same coprime Mobius function by Abel,
and then over the original m, gives the exponent
(theta-1/2), with ONE constant independent of H,T.
The paper analytical proof is in the accompanying review.
This is NOT an inhabited Lean theorem yet. -/
def SignedComparablePowerTransferTarget : Prop :=
  ∀ (θ C : ℝ), ActualMertensPower θ C →
    ∃ K : ℝ, 0 ≤ K ∧
      ∀ (H : ℕ) (T : ℝ), 0 ≤ T →
        |comparableSourceNoEarly H T| ≤
          K * (1+T) * Real.exp ((θ-1/2)*T)

/-- Precise source-aware CONDITIONAL transfer of Mertens
power cancellation to the complete original endpoint, with
the genuine signed incomparable packet retained.
The theorem DOES NOT inhabit SignedComparablePowerTransferTarget
or assume an all-rate bound on the incomparable sector. -/
theorem endpointSum_le_of_signedComparablePower
    (hPower : SignedComparablePowerTransferTarget)
    (θ C : ℝ) (hMertens : ActualMertensPower θ C)
    (H : ℕ) :
    ∃ K : ℝ, 0 ≤ K ∧
      ∀ (T : ℝ), 0 ≤ T →
        endpointSum T ≤
          4 * ((shortGapSet H).card : ℝ) * T^2 +
          ((endpointIndex T).card : ℝ)^2 *
            Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
          K*(1+T)*Real.exp ((θ-1/2)*T) +
          highHighSquarefreeIncomparableCross H 0 T + 1/4 := by
  obtain ⟨K,hK,hbound⟩ := hPower θ C hMertens
  refine ⟨K,hK,?_⟩
  intro T hT
  have he := endpointSum_le_signedComparable_and_incomparable hT H 0
  have hc := hbound H T hT
  unfold comparableSourceNoEarly at hc
  simp only [Nat.cast_zero, Real.sqrt_zero, mul_zero,
    zero_mul, add_zero] at he
  linarith [le_abs_self (originalSignedComparableStrong H 0 T)]

end GRWTSK.NumberTheory.Moebius.ComparableSignedMertens
