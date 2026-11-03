/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointPutnamSmallRationalSlopeAllRate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOddPrimeDoublingNegativePacket
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDensePrimeStarCancellation
import Mathlib

/-!
# Negative prime-dilation packet inside the original reduced-ratio dense core

The original endpoint source is the ACTUAL Mathlib/GRWTSK Möbius sign
multiplied by the actual causal response Gram. A prime p that does not
divide q satisfies mu(p*q)=-mu(q), including the case mu(q)=0. Thus BOTH
original ordered pairs (q,p*q) and (p*q,q) have nonpositive signed Gram
terms whenever 1<=q and the endpoints are present.

Keep only these original edges that survive all three ALREADY-PAID
Putnam sectors: additive gap, small integer quotient and small rational
slope. The full denseReducedRatioCore is partitioned EXACTLY into
this prime-dilation packet and its literal signed complement.

The prime-dilation packet has the unconditional upper bound ZERO at
every T>=0. In contrast, its signed complement has NO proved
all-positive-rate upper bound. Because the removed packet may be
exponentially NEGATIVE, the remaining-source all-rate criterion is a
SUFFICIENT supplier for the old criterion, not claimed equivalent.

This extends the earlier q=1 prime-star packet and fixed small-prime
doubling packet without pretending their edges are disjoint from all
previous sector decompositions. No RH or new zeta zero-free result.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

namespace GRWTSK.NumberTheory.Moebius.DenseReducedPrimeDilationCancellation

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.MoebiusOddPrimeDoublingNegativePacket
open GRWTSK.NumberTheory.Moebius.DensePrimeStarCancellation
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- An ACTUAL arithmetic prime dilation, not a rational color:
one original integer is q and the other is p*q for a real prime p
coprime to q. Every pair is counted by its original ordered indices.
q need not be declared squarefree: the actual Möbius function itself
sets the squareful contribution to zero. -/
def IsPrimeDilation (m n : ℕ) : Prop :=
  ∃ p q : ℕ, Nat.Prime p ∧ ¬ p ∣ q ∧ 0 < q ∧
    ((m = q ∧ n = p * q) ∨ (n = q ∧ m = p * q))

/-- The original dense reduced-ratio core, restricted to an ACTUAL
prime-dilation source edge. It inherits every original Putnam
exclusion rather than silently reusing a previously paid edge. -/
def primeDilationCoreEdge (A Q : Finset ℕ) (m n : ℕ) : Prop :=
  denseReducedRatioCoreEdge A Q m n ∧ IsPrimeDilation m n

/-- Every original core edge that is not a retained prime dilation. -/
def outsidePrimeDilationCoreEdge
    (A Q : Finset ℕ) (m n : ℕ) : Prop :=
  denseReducedRatioCoreEdge A Q m n ∧ ¬ IsPrimeDilation m n

/-- Full original ordered signed prime-dilation packet, with both
orientations and no diagonal term or changed kernel. -/
def primeDilationCorePacket (A Q : Finset ℕ) (T : ℝ) : ℝ :=
  endpointRelationCross (primeDilationCoreEdge A Q) T

/-- Literal original signed complement. This is NOT an independently
small error; it retains every other pair in the source dense core. -/
def outsidePrimeDilationCorePacket (A Q : Finset ℕ) (T : ℝ) : ℝ :=
  endpointRelationCross (outsidePrimeDilationCoreEdge A Q) T

/-- The actual Möbius source on q and p*q has exactly the
negative coefficient-square identity for any p prime, p not
dividing q. No random-sign model or squarefree approximation. -/
theorem primeDilation_coefficient_identity
    (p q : ℕ) (hp : Nat.Prime p) (hcop : ¬ p ∣ q) :
    moebiusReal q * moebiusReal (p * q) =
      -(moebiusReal q) ^ 2 := by
  rw [moebiusReal_prime_mul_of_not_dvd p q hp hcop]
  ring

/-- The ORIGINAL signed causal Gram contribution of either orientation
of a positive prime dilation is nonpositive at EVERY T>=0.
The positivity is from the true time-response Gram, not a positive
replacement for the signed source. -/
theorem primeDilation_source_nonpos
    (T : ℝ) (hT : 0 ≤ T) (m n : ℕ)
    (h : IsPrimeDilation m n) :
    moebiusReal m * moebiusReal n *
      pickupResponseGram T m n ≤ 0 := by
  rcases h with ⟨p, q, hp, hcop, hq, hforward | hreverse⟩
  · rcases hforward with ⟨rfl, rfl⟩
    have hpn : 0 < p * q := mul_pos hp.pos hq
    have hgram :=
      pickupResponseGram_nonneg T hT q (p * q) hq hpn
    rw [primeDilation_coefficient_identity p q hp hcop]
    exact mul_nonpos_of_nonpos_of_nonneg
      (neg_nonpos.mpr (sq_nonneg (moebiusReal q))) hgram
  · rcases hreverse with ⟨rfl, rfl⟩
    have hpn : 0 < p * q := mul_pos hp.pos hq
    have hgram :=
      pickupResponseGram_nonneg T hT (p * q) q hpn hq
    have hcoeff :
        moebiusReal (p * q) * moebiusReal q =
          -(moebiusReal q) ^ 2 := by
      rw [moebiusReal_prime_mul_of_not_dvd p q hp hcop]
      ring
    rw [hcoeff]
    exact mul_nonpos_of_nonpos_of_nonneg
      (neg_nonpos.mpr (sq_nonneg (moebiusReal q))) hgram

/-- This whole finite packet, including BOTH original orientations and
all repeated/composite/squareful indices, has zero upper cost. -/
theorem primeDilationCorePacket_nonpos
    (A Q : Finset ℕ) (T : ℝ) (hT : 0 ≤ T) :
    primeDilationCorePacket A Q T ≤ 0 := by
  classical
  unfold primeDilationCorePacket endpointRelationCross
  apply Finset.sum_nonpos
  intro m hm
  apply Finset.sum_nonpos
  intro n hn
  by_cases hedge : primeDilationCoreEdge A Q m n
  · simp only [if_pos hedge]
    exact primeDilation_source_nonpos T hT m n hedge.2
  · simp [hedge]

/-- The complete original dense reduced-ratio packet is EXACTLY the
nonpositive prime-dilation packet plus its literal complement.
No source index, ordered direction, terminal weight or signed
off-diagonal term is omitted or counted in both packets. -/
theorem reducedCore_eq_primeDilation_add_outside
    (A Q : Finset ℕ) (T : ℝ) :
    endpointDenseReducedRatioCoreCross A Q T =
      primeDilationCorePacket A Q T +
        outsidePrimeDilationCorePacket A Q T := by
  classical
  unfold endpointDenseReducedRatioCoreCross
    primeDilationCorePacket outsidePrimeDilationCorePacket
    endpointRelationCross primeDilationCoreEdge
    outsidePrimeDilationCoreEdge
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hcore : denseReducedRatioCoreEdge A Q m n
  · by_cases hprime : IsPrimeDilation m n
    · simp [hcore, hprime]
    · simp [hcore, hprime]
  · simp [hcore]

/-- For an UPPER original endpoint bound, the nonpositive
prime-dilation sector can be discarded, but the entire other
signed reduced core remains. This implication is intentionally
NOT reversed. -/
theorem reducedCore_le_outsidePrimeDilation
    (A Q : Finset ℕ) (T : ℝ) (hT : 0 ≤ T) :
    endpointDenseReducedRatioCoreCross A Q T ≤
      outsidePrimeDilationCorePacket A Q T := by
  rw [reducedCore_eq_primeDilation_add_outside]
  have hneg := primeDilationCorePacket_nonpos A Q T hT
  linarith

/-- Already the earlier prime-star source is included whenever its
original ordered edge survives the newer THREE sparse-sector filters.
The new prime-dilation family has many further genuine q>1 edges. -/
theorem primeStar_surviving_core_in_primeDilation
    (A Q : Finset ℕ) (m n : ℕ)
    (hcore : denseReducedRatioCoreEdge A Q m n)
    (hstar : primeStarEdge A m n) :
    primeDilationCoreEdge A Q m n := by
  refine ⟨hcore, ?_⟩
  rcases hstar.1 with ⟨hm, hp⟩ | ⟨hn, hp⟩
  · subst m
    refine ⟨n, 1, hp, ?_, by omega, Or.inl ⟨rfl, by simp⟩⟩
    intro hdiv
    exact hp.ne_one (Nat.dvd_one.mp hdiv)
  · subst n
    refine ⟨m, 1, hp, ?_, by omega, Or.inr ⟨rfl, by simp⟩⟩
    intro hdiv
    exact hp.ne_one (Nat.dvd_one.mp hdiv)

/-- A prime factor p larger than every selected POSITIVE rational
slope parameter cannot be hidden as a small ratio by choosing
a different numerator and denominator. Cancellation uses q>0
in the original natural-number equation, not a probabilistic model. -/
theorem no_smallRationalSlope_of_large_prime
    (Q : Finset ℕ) (H p q : ℕ)
    (hq : 0 < q) (hpH : H < p)
    (hQpos : ∀ a ∈ Q, 0 < a)
    (hQbound : ∀ a ∈ Q, a ≤ H) :
    ¬ hasSmallRationalSlope Q q (p * q) := by
  rintro ⟨a, ha, b, hb, hleft | hright⟩
  · have heq : a = b * p := by
      apply Nat.eq_of_mul_eq_mul_right hq
      calc
        a * q = b * (p * q) := hleft
        _ = (b * p) * q := by ring
    have hbOne : 1 ≤ b := by
      have hbPos := hQpos b hb
      omega
    have hpLe : p ≤ b * p := by
      simpa using Nat.mul_le_mul_right p hbOne
    have haLe := hQbound a ha
    omega
  · have heq : b = a * p := by
      apply Nat.eq_of_mul_eq_mul_right hq
      calc
        b * q = a * (p * q) := hright.symm
        _ = (a * p) * q := by ring
    have haOne : 1 ≤ a := by
      have haPos := hQpos a ha
      omega
    have hpLe : p ≤ a * p := by
      simpa using Nat.mul_le_mul_right p haOne
    have hbLe := hQbound b hb
    omega

/-- A selected exact integer quotient cannot equal a genuine prime
p above the cutoff. The opposite quotient direction is impossible
for positive q because a*p would need to equal one. -/
theorem no_smallIntegerRatio_of_large_prime
    (A : Finset ℕ) (H p q : ℕ)
    (hp : Nat.Prime p) (hq : 0 < q) (hpH : H < p)
    (hAbound : ∀ a ∈ A, a ≤ H) :
    ¬ (∃ a ∈ A, p * q = a * q ∨ q = a * (p * q)) := by
  rintro ⟨a, ha, hleft | hright⟩
  · have heq : p = a :=
      Nat.eq_of_mul_eq_mul_right hq hleft
    have haLe := hAbound a ha
    omega
  · have heq : 1 = a * p := by
      apply Nat.eq_of_mul_eq_mul_right hq
      calc
        1 * q = q := by simp
        _ = a * (p * q) := hright
        _ = (a * p) * q := by ring
    have hpdiv : p ∣ 1 := ⟨a, by simpa [mul_comm] using heq⟩
    exact hp.ne_one (Nat.dvd_one.mp hpdiv)

/-- Concrete original-core membership for a large prime dilation.
The NATURAL additive-distance exclusion is kept as an explicit
hypothesis; it must be checked against the actual gap set A.
The numerator/denominator and exact quotient exclusions follow
from the proved arithmetic, not an invented low-slope label. -/
theorem largePrimeDilation_in_reduced_core
    (A Q : Finset ℕ) (H p q : ℕ)
    (hp : Nat.Prime p) (hcop : ¬ p ∣ q) (hq : 0 < q)
    (hpH : H < p)
    (hgap : Nat.dist q (p * q) ∉ A)
    (hAbound : ∀ a ∈ A, a ≤ H)
    (hQpos : ∀ a ∈ Q, 0 < a)
    (hQbound : ∀ a ∈ Q, a ≤ H) :
    primeDilationCoreEdge A Q q (p * q) := by
  have hne : q ≠ p * q := by
    have hp2 : 2 ≤ p := hp.two_le
    have hlt : q < 2 * q := by omega
    have hle : 2 * q ≤ p * q :=
      Nat.mul_le_mul_right q hp2
    exact ne_of_lt (lt_of_lt_of_le hlt hle)
  have hratio : ¬
      (∃ a ∈ A, p * q = a * q ∨ q = a * (p * q)) :=
    no_smallIntegerRatio_of_large_prime A H p q hp hq hpH hAbound
  have hslope : ¬ hasSmallRationalSlope Q q (p * q) :=
    no_smallRationalSlope_of_large_prime Q H p q
      hq hpH hQpos hQbound
  exact ⟨⟨hne, hgap, hratio, hslope⟩,
    ⟨p, q, hp, hcop, hq, Or.inl ⟨rfl, rfl⟩⟩⟩

/-- The original NATURAL additive distance of a prime dilation grows
past an H-bounded gap family as soon as p>H+1. This is an exact
integer computation; no estimate on the causal Gram is used. -/
theorem largePrimeDilation_distance_exceeds
    (H p q : ℕ) (hpH : H + 1 < p) (hq : 0 < q) :
    H < Nat.dist q (p * q) := by
  have hpOne : 1 ≤ p := by omega
  have hqle : q ≤ p * q := by
    simpa [one_mul] using Nat.mul_le_mul_right q hpOne
  rw [Nat.dist_eq_sub_of_le hqle]
  have hpZ : (1 : ℤ) ≤ (p : ℤ) := by exact_mod_cast hpOne
  have hqZ : (1 : ℤ) ≤ (q : ℤ) := by exact_mod_cast hq
  have hprod : (0 : ℤ) ≤
      ((p : ℤ) - 1) * ((q : ℤ) - 1) :=
    mul_nonneg (by omega) (by omega)
  have hpc : (H : ℤ) + 1 < (p : ℤ) := by exact_mod_cast hpH
  have htarget : (H : ℤ) < ((p : ℤ) * (q : ℤ) - (q : ℤ)) := by
    nlinarith [hprod]
  have hcast :
      (((p * q - q : ℕ) : ℤ)) =
        (p : ℤ) * (q : ℤ) - (q : ℤ) := by
    rw [Nat.cast_sub hqle]
    push_cast
    ring
  exact_mod_cast (show (H : ℤ) < ((p * q - q : ℕ) : ℤ) by
    rw [hcast]
    exact htarget)

/-- A genuinely large prime dilation automatically survives ALL THREE
already-paid source filters, provided their ACTUAL finite integer
parameters are bounded by H. The p-free condition is used ONLY for
the Möbius sign, not invented to obtain the geometric separation. -/
theorem largePrimeDilation_survives_bounded_filters
    (A Q : Finset ℕ) (H p q : ℕ)
    (hp : Nat.Prime p) (hcop : ¬ p ∣ q) (hq : 0 < q)
    (hpH : H + 1 < p)
    (hAbound : ∀ a ∈ A, a ≤ H)
    (hQpos : ∀ a ∈ Q, 0 < a)
    (hQbound : ∀ a ∈ Q, a ≤ H) :
    primeDilationCoreEdge A Q q (p * q) := by
  have hgap : Nat.dist q (p * q) ∉ A := by
    intro hmem
    have hle := hAbound _ hmem
    have hfar := largePrimeDilation_distance_exceeds H p q hpH hq
    omega
  apply largePrimeDilation_in_reduced_core A Q H p q
    hp hcop hq (by omega) hgap hAbound hQpos hQbound

/-- Explicit one-sided all-positive-rate zero bound on JUST the prime
dilation sector, with arbitrary time-dependent selected gaps/slopes.
No fixed-good-scale or core cancellation hypothesis is needed. -/
theorem primeDilationCore_allPositiveRate
    (A Q : ℝ → Finset ℕ) :
    GRWTSK.NumberTheory.LiouvilleRoughSignedConsumerTransfer.EventualAllRateUpper
      (fun T => primeDilationCorePacket (A T) (Q T) T) := by
  intro ε hε
  refine ⟨0, 0, le_rfl, le_rfl, ?_⟩
  intro T hT
  simpa using primeDilationCorePacket_nonpos (A T) (Q T) T hT

/-- Sufficient arithmetic supplier on EXACTLY the same fixed good-scale
population G. It is STRONGER than the old core estimate, since the
removed negative packet may grow exponentially. No converse is claimed. -/
def OutsidePrimeDilationAllRateOn (G : Set ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, T ∈ G → R ≤ T →
        outsidePrimeDilationCorePacket
            (putnamRateGapSet ε T)
            (putnamSlopeParameterSet ε T) T ≤
          C * Real.exp (ε * T)

theorem denseReducedRatioCoreAllRate_of_outsidePrimeDilation
    (G : Set ℝ) (h : OutsidePrimeDilationAllRateOn G) :
    DenseReducedRatioCoreAllRateOn G := by
  intro ε hε
  obtain ⟨C, R, hC, hR, hbound⟩ := h ε hε
  refine ⟨C, R, hC, hR, ?_⟩
  intro T hG hTR
  have hT : 0 ≤ T := hR.trans hTR
  exact (reducedCore_le_outsidePrimeDilation
      (putnamRateGapSet ε T)
      (putnamSlopeParameterSet ε T) T hT).trans
    (hbound T hG hTR)

/-- The inherited old RH route can consume a genuine proof of the
remaining original signed core (still UNKNOWN), but the negative
prime-dilation packet itself needs no positive-rate estimate. -/
theorem riemannHypothesis_of_outsidePrimeDilation_good_scales
    {G : Set ℝ}
    (hG : AffineFrequent G)
    (h : OutsidePrimeDilationAllRateOn G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_dense_reduced_ratio_core_good_scales
    hG (denseReducedRatioCoreAllRate_of_outsidePrimeDilation G h)

end GRWTSK.NumberTheory.Moebius.DenseReducedPrimeDilationCancellation
