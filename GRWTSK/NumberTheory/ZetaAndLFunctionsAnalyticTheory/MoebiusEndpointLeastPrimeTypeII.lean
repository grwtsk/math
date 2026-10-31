/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleRoughSignedConsumerTransfer
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleSignedBuchstabTypeII
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.GoodScaleEnergyCriterion
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.LiouvilleRoughCausalBuchstab
open GRWTSK.NumberTheory.LiouvilleRoughUpperCancellation
open GRWTSK.NumberTheory.LiouvilleRoughSignedConsumerTransfer
open GRWTSK.NumberTheory.LiouvilleSignedBuchstabTypeII

/-!
# Least-small-prime Type II decomposition of the Möbius endpoint consumer

This source partitions the actual ordered Möbius endpoint cross sum by the
least selected prime of each original integer index.  The partition is exact
before any norm or absolute-value estimate.

For the initial prime band, tag zero is the tuned rough sector.  Nonzero tags
give the two mixed orientations and the complete ordered Type II sector.
Because the tag is unique, distinct prime tags have no shared-index diagonal.
For Möbius, a repeated copy of the first prime has coefficient zero.

The tuned rough estimate therefore enters the endpoint consumer through one
specific signed compensation problem.  A generic transfer theorem is proved
below.  The source does not prove that compensation, an all-positive-rate
endpoint bound, or the Riemann Hypothesis.
-/

namespace GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII

classical

/-- Original endpoint index inventory. -/
def endpointIndex (T : ℝ) : Finset ℕ :=
  Finset.Icc 1 ⌊Real.exp T⌋₊

/-- One ordered endpoint packet selected by zero/nonzero least-selected-prime
status.  Original integer indices, Möbius signs, both orientations, and the
literal response Gram are retained. -/
def firstTagRoughCross (P : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ firstSelectedDivisor P m = 0 ∧
        firstSelectedDivisor P n = 0 then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- Exactly one coordinate has a nonzero least selected prime. -/
def firstTagMixedCross (P : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧
        ((firstSelectedDivisor P m = 0 ∧
            firstSelectedDivisor P n ≠ 0) ∨
         (firstSelectedDivisor P m ≠ 0 ∧
            firstSelectedDivisor P n = 0)) then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- Both coordinates have nonzero least-selected-prime tags.  This is the
complete ordered endpoint Type II packet, before reindexing by descendants. -/
def firstTagTypeIICross (P : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ firstSelectedDivisor P m ≠ 0 ∧
        firstSelectedDivisor P n ≠ 0 then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- Exact three-sector partition of the complete endpoint cross sum. -/
theorem pickupCross_eq_firstTag_sectors (P : Finset ℕ) (T : ℝ) :
    pickupCross T =
      firstTagRoughCross P T +
        firstTagMixedCross P T +
          firstTagTypeIICross P T := by
  unfold pickupCross firstTagRoughCross firstTagMixedCross firstTagTypeIICross
    endpointIndex
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m = n
  · simp [hmn]
  · by_cases hm0 : firstSelectedDivisor P m = 0 <;>
      by_cases hn0 : firstSelectedDivisor P n = 0 <;>
        simp [hmn, hm0, hn0]

/-- A least-selected-divisor is either zero or a member of the selected band. -/
theorem firstSelectedDivisor_mem_insert_zero (P : Finset ℕ) (n : ℕ) :
    firstSelectedDivisor P n ∈ insert 0 P := by
  by_cases h : ∃ p : ℕ, p ∈ P ∧ p ∣ n
  · have hm : Nat.find h ∈ P := (Nat.find_spec h).1
    simp [firstSelectedDivisor, h, hm]
  · simp [firstSelectedDivisor, h]

theorem firstSelectedDivisor_mem_of_ne_zero
    {P : Finset ℕ} {n : ℕ}
    (h0 : firstSelectedDivisor P n ≠ 0) :
    firstSelectedDivisor P n ∈ P := by
  have hmem := firstSelectedDivisor_mem_insert_zero P n
  simpa [Finset.mem_insert, h0] using hmem

/-- Repeating the first prime kills the actual Möbius coefficient. -/
theorem moebiusReal_prime_mul_eq_zero_of_dvd
    (p a : ℕ) (hp : Nat.Prime p) (hpa : p ∣ a) :
    moebiusReal (p * a) = 0 := by
  have hnot : ¬Squarefree (p * a) := by
    intro hs
    have hsq := (Nat.squarefree_iff_prime_squarefree.mp hs) p hp
    apply hsq
    obtain ⟨b, rfl⟩ := hpa
    exact ⟨b, by ring⟩
  simp [moebiusReal, ArithmeticFunction.moebius_eq_zero_of_not_squarefree hnot]

/-- If the first prime does not repeat, extracting it changes the Möbius sign
exactly once. -/
theorem moebiusReal_prime_mul_of_not_dvd
    (p a : ℕ) (hp : Nat.Prime p) (hpa : ¬p ∣ a) :
    moebiusReal (p * a) = -moebiusReal a := by
  have hcop : Nat.Coprime p a :=
    (Nat.Prime.coprime_iff_not_dvd hp).2 hpa
  unfold moebiusReal
  rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hcop,
    ArithmeticFunction.moebius_apply_prime hp]
  push_cast
  ring

/-- Diagonal carried by nonzero least-prime tags.  Uniqueness of the tag means
there is no distinct-prime shared-index diagonal in this decomposition. -/
def firstTagNonroughDiagonal (P : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T,
    if firstSelectedDivisor P n ≠ 0 then
      moebiusReal n ^ 2 * pickupResponseGram T n n
    else 0

theorem pickupResponseGram_diag_nonneg
    {T : ℝ} (hT : 0 ≤ T) (n : ℕ) :
    0 ≤ pickupResponseGram T n n := by
  unfold pickupResponseGram
  exact intervalIntegral.integral_nonneg_of_forall hT
    (fun u => mul_self_nonneg (pickupResponse n u))

/-- The complete nonrough diagonal is harmless: it is a sub-sum of the already
proved quadratic endpoint diagonal. -/
theorem firstTagNonroughDiagonal_bounds
    (P : Finset ℕ) {T : ℝ} (hT : 0 ≤ T) :
    0 ≤ firstTagNonroughDiagonal P T ∧
      firstTagNonroughDiagonal P T ≤ 2 * T ^ 2 := by
  have hnonneg : 0 ≤ firstTagNonroughDiagonal P T := by
    unfold firstTagNonroughDiagonal
    exact Finset.sum_nonneg fun n hn => by
      by_cases htag : firstSelectedDivisor P n ≠ 0
      · simp only [if_pos htag]
        exact mul_nonneg (sq_nonneg _) (pickupResponseGram_diag_nonneg hT n)
      · simp [htag]
  have hsub : firstTagNonroughDiagonal P T ≤ pickupDiagonal T := by
    unfold firstTagNonroughDiagonal pickupDiagonal endpointIndex
    apply Finset.sum_le_sum
    intro n hn
    by_cases htag : firstSelectedDivisor P n ≠ 0
    · simp [htag]
    · simp only [if_neg htag]
      exact mul_nonneg (sq_nonneg _) (pickupResponseGram_diag_nonneg hT n)
  exact ⟨hnonneg, hsub.trans (pickupDiagonal_quadratic_bound hT).2⟩

/-- For the initial band, zero tag is exactly the rough predicate.  This
finite number-theoretic normalization is kept visible until formally replayed. -/
def InitialPrimeTagRoughBridge : Prop :=
  ∀ (Y n : ℕ),
    firstSelectedDivisor (initialPrimeBand Y).primes n = 0 ↔ roughAbove Y n

/-- Exact reindexing of one nonzero tag by its least prime.  The right side is
strictly rough above p; repeated p is absent because its Möbius coefficient is
zero.  The response contributes the literal p^(-1/2), log-p delay. -/
def InitialPrimeTagShiftBridge : Prop :=
  ∀ (Y p : ℕ) (u : ℝ), p ∈ (initialPrimeBand Y).primes →
    (∑ n ∈ endpointIndex u,
      if firstSelectedDivisor (initialPrimeBand Y).primes n = p then
        moebiusReal n * pickupResponse n u else 0) =
      -(1 / Real.sqrt (p : ℝ)) *
        roughMoebiusWaveform p (u - Real.log p)

/-- Tuned prime band used by the rough upper-cancellation theorem. -/
def tunedFirstTagBand (T : ℝ) : Finset ℕ :=
  (initialPrimeBand (tunedPhysicalCutoff T)).primes

def tunedFirstTagRoughCross (T : ℝ) : ℝ :=
  firstTagRoughCross (tunedFirstTagBand T) T

def tunedFirstTagMixedCross (T : ℝ) : ℝ :=
  firstTagMixedCross (tunedFirstTagBand T) T

def tunedFirstTagTypeIICross (T : ℝ) : ℝ :=
  firstTagTypeIICross (tunedFirstTagBand T) T

/-- A noncircular sufficient certificate.  The known rough-sector allowance is
paid with one fixed constant A.  The complete mixed plus Type II packet must
supply its negative compensation, leaving an all-positive-rate remainder. -/
def TunedLeastPrimeCompensationCertificate : Prop :=
  ∃ A R₀ : ℝ, 0 ≤ A ∧ 0 ≤ R₀ ∧
    (∀ T : ℝ, R₀ ≤ T →
      tunedFirstTagRoughCross T ≤ A * tunedEnergyAllowance T) ∧
    ∀ ε : ℝ, 0 < ε →
      ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
        ∀ T : ℝ, R ≤ T →
          tunedFirstTagMixedCross T + tunedFirstTagTypeIICross T ≤
            -(A * tunedEnergyAllowance T) + C * Real.exp (ε * T)

/-- Exact transfer from the compensation certificate to eventual
all-positive-rate control of the complete endpoint cross. -/
theorem tunedLeastPrimeCompensation_to_endpointCross
    (h : TunedLeastPrimeCompensationCertificate) :
    EventualAllRateUpper pickupCross := by
  obtain ⟨A, R₀, hA, hR₀, hrough, hcomp⟩ := h
  intro ε hε
  obtain ⟨C, R, hC, hR, hpacket⟩ := hcomp ε hε
  refine ⟨C, max R₀ R, hC, by positivity, ?_⟩
  intro T hT
  have hT0 : R₀ ≤ T := (le_max_left R₀ R).trans hT
  have hTR : R ≤ T := (le_max_right R₀ R).trans hT
  have hdecomp := pickupCross_eq_firstTag_sectors (tunedFirstTagBand T) T
  have hroughT := hrough T hT0
  have hpacketT := hpacket T hTR
  unfold tunedFirstTagRoughCross tunedFirstTagMixedCross
    tunedFirstTagTypeIICross at hroughT hpacketT
  linarith

/-- Eventual all-rate bounds are closed under products of nonnegative
all-rate factors, with the target exponent split equally. -/
theorem eventualAllRateUpper_mul_nonneg
    {f g : ℝ → ℝ}
    (hf : EventualAllRateUpper f)
    (hg : EventualAllRateUpper g)
    (hf0 : ∀ T : ℝ, 0 ≤ T → 0 ≤ f T)
    (hg0 : ∀ T : ℝ, 0 ≤ T → 0 ≤ g T) :
    EventualAllRateUpper (fun T => f T * g T) := by
  intro ε hε
  have hhalf : 0 < ε / 2 := by linarith
  obtain ⟨Cf, Rf, hCf, hRf, hfb⟩ := hf (ε / 2) hhalf
  obtain ⟨Cg, Rg, hCg, hRg, hgb⟩ := hg (ε / 2) hhalf
  refine ⟨Cf * Cg, max Rf Rg, mul_nonneg hCf hCg, by positivity, ?_⟩
  intro T hT
  have hTf : Rf ≤ T := (le_max_left Rf Rg).trans hT
  have hTg : Rg ≤ T := (le_max_right Rf Rg).trans hT
  have hT0 : 0 ≤ T := le_trans hRf hTf
  calc
    f T * g T ≤
        (Cf * Real.exp ((ε / 2) * T)) *
          (Cg * Real.exp ((ε / 2) * T)) :=
      mul_le_mul (hfb T hTf) (hgb T hTg) (hg0 T hT0)
        (mul_nonneg hCf (Real.exp_pos _).le)
    _ = (Cf * Cg) * Real.exp (ε * T) := by
      rw [← Real.exp_add]
      ring_nf

/-- The number of active tuned first-prime tags is itself subexponential.
Thus family cardinality can be paid if a genuinely all-rate uniform packet
envelope is available. -/
def TunedPrimeTagCountSubexponential : Prop :=
  EventualAllRateUpper
    (fun T : ℝ => ((tunedFirstTagBand T).card : ℝ))

/-- Any allowance with one fixed positive physical-time exponential rate,
even after division by an arbitrary fixed power, fails the all-positive-rate
quantifier.  This is the exact obstruction to using a fixed log-saving
correlation theorem as a positive packet error. -/
def FixedRatePolylogAllowanceNotAllRate : Prop :=
  ∀ α k : ℝ, 0 < α → 0 ≤ k →
    ¬EventualAllRateUpper
      (fun T : ℝ => Real.exp (α * T) /
        Real.rpow (1 + T) k)

/-- Source disposition.  The exact partition and harmless diagonal are proved
at source level.  Endpoint completion still requires signed compensation,
not a sectorwise fixed-log-saving majorant. -/
def LeastPrimeTypeIIDisposition : Prop :=
  InitialPrimeTagRoughBridge ∧
    InitialPrimeTagShiftBridge ∧
      TunedLeastPrimeCompensationCertificate ∧
        TunedPrimeTagCountSubexponential ∧
          FixedRatePolylogAllowanceNotAllRate

end GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
