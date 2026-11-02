/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFarCompleteUpperTransfer
import Mathlib.NumberTheory.PrimeCounting
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# The eventual genuine PNT prime-box populations in the ORIGINAL FAR Mobius source

Three integer-exact boxes for N=2^J, T_J=J log 2:
 P={prime p: N/16<=p<=N/12}, Q={prime q:N/4<=q<=N/3},
 D={2r: prime r, N/8<=r<=N/6}.
The original p,q and p,2r source signs are +1 and -1, and
their ORIGINAL physical-time Gram is >=1/N for large J.

Prime-number theorem box counts imply eventually:
 positiveFarMass(J),negativeFarMass(J)>=N/(4608*T_J^2).
This is a lower bound on BOTH opposite-sign masses. It neither
asserts nor refutes cancellation of their difference.

Paired ORIGINAL p,r and p,2r terms also retain a positive
source difference K_T(p,r)-K_T(p,2r)>=2/N, so pairing one
prime and its double does not give small source terms.

This file supplies finite source identities, genuine positive
termwise mass, a two-dimensional rectangle monotonicity lemma,
and the source-level transfer to the previously published exact
FarBothSignsLargePNTTarget. The two independent inputs remain
explicit PROPS: classical PNT interval cardinal products, and
elementary original finite pair-support/causal Gram lower bounds.
No RH-strength signed premise is assumed. Compilation DEFERRED.
-/

namespace GRWTSK.NumberTheory.Moebius.FarPrimeBoxPNTMass

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
open GRWTSK.NumberTheory.Moebius.CollarResidualLowWave
open GRWTSK.NumberTheory.Moebius.FarReducedStructuralFrontier

classical

def boxN (J : ℕ) : ℕ := 2 ^ J

def smallPrimeBox (J : ℕ) : Finset ℕ :=
  (Finset.Icc 1 (boxN J)).filter
    (fun p => p.Prime ∧ boxN J ≤ 16*p ∧ 12*p ≤ boxN J)

def largePrimeBox (J : ℕ) : Finset ℕ :=
  (Finset.Icc 1 (boxN J)).filter
    (fun q => q.Prime ∧ boxN J ≤ 4*q ∧ 3*q ≤ boxN J)

def middlePrimeBox (J : ℕ) : Finset ℕ :=
  (Finset.Icc 1 (boxN J)).filter
    (fun r => r.Prime ∧ boxN J ≤ 8*r ∧ 6*r ≤ boxN J)

/-- Negative source indices are genuine even semiprimes 2*r.
The two factors are distinct for all eventual selected primes. -/
def doubledPrimeBox (J : ℕ) : Finset ℕ :=
  (Finset.Icc 1 (boxN J)).filter fun n =>
    ∃ r : ℕ, r.Prime ∧ n = 2*r ∧
      boxN J ≤ 8*r ∧ 6*r ≤ boxN J

def positiveFarTerm (J m n : ℕ) : ℝ :=
  if farPair J m n ∧ 0 < moebiusReal m * moebiusReal n then
    moebiusReal m * moebiusReal n *
      pickupResponseGram (dyadicTime J) m n
  else 0

def negativeFarTerm (J m n : ℕ) : ℝ :=
  if farPair J m n ∧ moebiusReal m * moebiusReal n < 0 then
    -(moebiusReal m * moebiusReal n *
      pickupResponseGram (dyadicTime J) m n)
  else 0

def positiveFarMass (J : ℕ) : ℝ :=
  ∑ m ∈ lowIndices emptyPrimeBand J,
    ∑ n ∈ lowIndices emptyPrimeBand J, positiveFarTerm J m n

def negativeFarMass (J : ℕ) : ℝ :=
  ∑ m ∈ lowIndices emptyPrimeBand J,
    ∑ n ∈ lowIndices emptyPrimeBand J, negativeFarTerm J m n

/-- The complete FAR original signed sum is EXACTLY its positive
mass minus its negative magnitude; no independent-sign model. -/
theorem original_far_eq_positive_sub_negative (J : ℕ) :
    farReducedOrLongCross emptyPrimeBand ∅ J =
      positiveFarMass J - negativeFarMass J := by
  classical
  unfold farReducedOrLongCross positiveFarMass negativeFarMass
    positiveFarTerm negativeFarTerm farPair
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : m ≠ n ∧ ¬shortRatioPair J m n ∧
      ¬reducedClosePair J m n
  · by_cases hp : 0 < moebiusReal m * moebiusReal n
    · simp [h, hp]
    · by_cases hneg : moebiusReal m * moebiusReal n < 0
      · simp [h, hp, hneg]
      · have hz : moebiusReal m * moebiusReal n = 0 := by
          have hle := le_of_not_gt hp
          have hge := le_of_not_gt hneg
          linarith
        simp [h, hp, hneg, hz]
  · simp [h]

theorem positiveFarTerm_nonneg
    (J m n : ℕ) (hm : m ∈ lowIndices emptyPrimeBand J)
    (hn : n ∈ lowIndices emptyPrimeBand J) :
    0 ≤ positiveFarTerm J m n := by
  by_cases h : farPair J m n ∧ 0 < moebiusReal m * moebiusReal n
  · have hk : 0 ≤ pickupResponseGram (dyadicTime J) m n :=
      pickupResponseGram_nonneg (dyadicTime J) (dyadicTime_nonneg J)
        m n (lowIndices_pos emptyPrimeBand J m hm)
        (lowIndices_pos emptyPrimeBand J n hn)
    simp only [positiveFarTerm, if_pos h]
    exact mul_nonneg h.2.le hk
  · simp [positiveFarTerm, h]

theorem negativeFarTerm_nonneg
    (J m n : ℕ) (hm : m ∈ lowIndices emptyPrimeBand J)
    (hn : n ∈ lowIndices emptyPrimeBand J) :
    0 ≤ negativeFarTerm J m n := by
  by_cases h : farPair J m n ∧ moebiusReal m * moebiusReal n < 0
  · have hk : 0 ≤ pickupResponseGram (dyadicTime J) m n :=
      pickupResponseGram_nonneg (dyadicTime J) (dyadicTime_nonneg J)
        m n (lowIndices_pos emptyPrimeBand J m hm)
        (lowIndices_pos emptyPrimeBand J n hn)
    simp only [negativeFarTerm, if_pos h]
    exact neg_nonneg.mpr (mul_nonpos_of_nonpos_of_nonneg h.2.le hk)
  · simp [negativeFarTerm, h]

/-- Nonnegative complete original population dominates every
positive-weight original finite subrectangle. -/
private theorem nonnegative_rectangle_lower
    (S P Q : Finset ℕ) (w : ℕ → ℕ → ℝ) (d : ℝ)
    (hP : P ⊆ S) (hQ : Q ⊆ S)
    (hw : ∀ m ∈ S, ∀ n ∈ S, 0 ≤ w m n)
    (hPQ : ∀ m ∈ P, ∀ n ∈ Q, d ≤ w m n) :
    d * (P.card : ℝ) * (Q.card : ℝ) ≤
      ∑ m ∈ S, ∑ n ∈ S, w m n := by
  have hInner : ∀ m ∈ P,
      d * (Q.card : ℝ) ≤ ∑ n ∈ Q, w m n := by
    intro m hm
    calc
      d * (Q.card : ℝ) = ∑ n ∈ Q, d := by
        simp [mul_comm]
      _ ≤ ∑ n ∈ Q, w m n :=
        Finset.sum_le_sum (fun n hn => hPQ m hm n hn)
  have hRow : ∀ m ∈ P,
      (∑ n ∈ Q, w m n) ≤ (∑ n ∈ S, w m n) := by
    intro m hm
    apply Finset.sum_le_sum_of_subset_of_nonneg hQ
    intro n hn hnot
    exact hw m (hP hm) n hn
  have hWhole :
      (∑ m ∈ P, ∑ n ∈ S, w m n) ≤
        (∑ m ∈ S, ∑ n ∈ S, w m n) := by
    apply Finset.sum_le_sum_of_subset_of_nonneg hP
    intro m hm hnot
    exact Finset.sum_nonneg (fun n hn => hw m hm n hn)
  calc
    d * (P.card : ℝ) * (Q.card : ℝ) =
        ∑ m ∈ P, d * (Q.card : ℝ) := by
      simp [mul_assoc, mul_comm, mul_left_comm]
    _ ≤ ∑ m ∈ P, ∑ n ∈ Q, w m n :=
      Finset.sum_le_sum (fun m hm => hInner m hm)
    _ ≤ ∑ m ∈ P, ∑ n ∈ S, w m n :=
      Finset.sum_le_sum (fun m hm => hRow m hm)
    _ ≤ _ := hWhole

/-- Elementary ORIGINAL integer-source/geometric/physical facts:
both selected families are FAR and lie in the unchanged low
inventory; the true Mobius products are respectively +1 and -1
and the actual ORIGINAL causal Gram is >=1/2^J.
The separate proof is finite arithmetic and a half-unit birth
window. It is UNPROVED IN PINNED LEAN, not a trusted assumption. -/
def PrimeBoxesOriginalSourceLowerTarget : Prop :=
  ∀ J : ℕ, 8 ≤ J →
    (∀ p ∈ smallPrimeBox J,
       p ∈ lowIndices emptyPrimeBand J) ∧
    (∀ q ∈ largePrimeBox J,
       q ∈ lowIndices emptyPrimeBand J) ∧
    (∀ n ∈ doubledPrimeBox J,
       n ∈ lowIndices emptyPrimeBand J) ∧
    (∀ p ∈ smallPrimeBox J,
      ∀ q ∈ largePrimeBox J,
        farPair J p q ∧
        moebiusReal p * moebiusReal q = 1 ∧
        ((boxN J : ℝ))⁻¹ ≤
          pickupResponseGram (dyadicTime J) p q) ∧
    (∀ p ∈ smallPrimeBox J,
      ∀ n ∈ doubledPrimeBox J,
        farPair J p n ∧
        moebiusReal p * moebiusReal n = -1 ∧
        ((boxN J : ℝ))⁻¹ ≤
          pickupResponseGram (dyadicTime J) p n)

/-- One explicit classical PNT interval-count supplier, PURELY
about the counts of genuine primes and their doubled images:
  card P >= N/(96T), card Q >= N/(24T),
  card D >= N/(48T) eventually.
The product inequalities displayed here follow from those
independent cardinal bounds and have NO signed source in them.
PNT has NOT been ported into pinned Lean. -/
def PrimeBoxesEventualPNTProductCountsTarget : Prop :=
  ∃ J₀ : ℕ, 8 ≤ J₀ ∧ ∀ J : ℕ, J₀ ≤ J →
    ((1 / 4608 : ℝ) * (boxN J : ℝ) /
        (dyadicTime J)^2 ≤
      (smallPrimeBox J).card *
        (largePrimeBox J).card / (boxN J : ℝ)) ∧
    ((1 / 4608 : ℝ) * (boxN J : ℝ) /
        (dyadicTime J)^2 ≤
      (smallPrimeBox J).card *
        (doubledPrimeBox J).card / (boxN J : ℝ))

/-- Finite rectangle transfer to the ACTUAL two source populations.
No asymptotic theorem, independent signs or RH premise is used. -/
theorem prime_box_far_masses_ge_cards
    (hSource : PrimeBoxesOriginalSourceLowerTarget)
    (J : ℕ) (hJ : 8 ≤ J) :
    ((smallPrimeBox J).card : ℝ) *
      (largePrimeBox J).card / (boxN J : ℝ) ≤
        positiveFarMass J ∧
    ((smallPrimeBox J).card : ℝ) *
      (doubledPrimeBox J).card / (boxN J : ℝ) ≤
        negativeFarMass J := by
  obtain ⟨hP,hQ,hD,hPQ,hPD⟩ := hSource J hJ
  have hPsub : smallPrimeBox J ⊆ lowIndices emptyPrimeBand J :=
    fun p hp => hP p hp
  have hQsub : largePrimeBox J ⊆ lowIndices emptyPrimeBand J :=
    fun q hq => hQ q hq
  have hDsub : doubledPrimeBox J ⊆ lowIndices emptyPrimeBand J :=
    fun n hn => hD n hn
  have hPos :
      ((boxN J : ℝ))⁻¹ * (smallPrimeBox J).card *
        (largePrimeBox J).card ≤ positiveFarMass J := by
    unfold positiveFarMass
    apply nonnegative_rectangle_lower
      (lowIndices emptyPrimeBand J)
      (smallPrimeBox J) (largePrimeBox J)
      (positiveFarTerm J) ((boxN J : ℝ))⁻¹
      hPsub hQsub
    · intro m hm n hn
      exact positiveFarTerm_nonneg J m n hm hn
    · intro p hp q hq
      obtain ⟨hf,hs,hk⟩ := hPQ p hp q hq
      have hplus : 0 < moebiusReal p * moebiusReal q := by
        rw [hs]
        norm_num
      simpa [positiveFarTerm, hf, hplus, hs] using hk
  have hNeg :
      ((boxN J : ℝ))⁻¹ * (smallPrimeBox J).card *
        (doubledPrimeBox J).card ≤ negativeFarMass J := by
    unfold negativeFarMass
    apply nonnegative_rectangle_lower
      (lowIndices emptyPrimeBand J)
      (smallPrimeBox J) (doubledPrimeBox J)
      (negativeFarTerm J) ((boxN J : ℝ))⁻¹
      hPsub hDsub
    · intro m hm n hn
      exact negativeFarTerm_nonneg J m n hm hn
    · intro p hp n hn
      obtain ⟨hf,hs,hk⟩ := hPD p hp n hn
      have hminus : moebiusReal p * moebiusReal n < 0 := by
        rw [hs]
        norm_num
      simpa [negativeFarTerm, hf, hminus, hs] using hk
  constructor
  · calc
      ((smallPrimeBox J).card : ℝ) *
          (largePrimeBox J).card / (boxN J : ℝ) =
        ((boxN J : ℝ))⁻¹ * (smallPrimeBox J).card *
          (largePrimeBox J).card := by ring
      _ ≤ positiveFarMass J := hPos
  · calc
      ((smallPrimeBox J).card : ℝ) *
          (doubledPrimeBox J).card / (boxN J : ℝ) =
        ((boxN J : ℝ))⁻¹ * (smallPrimeBox J).card *
          (doubledPrimeBox J).card := by ring
      _ ≤ negativeFarMass J := hNeg

/-- Concrete discharge of the EXISTING eventual source PNT
population target GIVEN two independent unported and
non-RH-strength facts: genuine classical PNT interval counts,
and the finite original physical kernel/prime-sign comparison.
The previous FarBothSignsLargePNTTarget is no longer an opaque
monolithic input inside this consumer. -/
theorem far_both_signs_PNT_of_prime_boxes
    (hCounts : PrimeBoxesEventualPNTProductCountsTarget)
    (hSource : PrimeBoxesOriginalSourceLowerTarget) :
    FarBothSignsLargePNTTarget := by
  obtain ⟨J₀,hJ₀,hPNT⟩ := hCounts
  refine ⟨1 / 4608, by norm_num, J₀, ?_⟩
  intro J hJ
  have h8 : 8 ≤ J := hJ₀.trans hJ
  obtain ⟨hCountPos,hCountNeg⟩ := hPNT J hJ
  obtain ⟨hMassPos,hMassNeg⟩ :=
    prime_box_far_masses_ge_cards hSource J h8
  constructor
  · change (1 / 4608 : ℝ) * (boxN J : ℝ) /
        (dyadicTime J)^2 ≤ positiveFarMass J
    exact hCountPos.trans hMassPos
  · change (1 / 4608 : ℝ) * (boxN J : ℝ) /
        (dyadicTime J)^2 ≤ negativeFarMass J
    exact hCountNeg.trans hMassNeg

/-- Literal source p/r and p/(2r) pair; the true products
are +1 and -1 for prime p,r and the physical Gram is unchanged.
This is a SELECTED subpacket only, not the full FAR cross. -/
def genuinePrimeDoublingPairedCross (J : ℕ) : ℝ :=
  ∑ p ∈ smallPrimeBox J, ∑ r ∈ middlePrimeBox J,
    (moebiusReal p * moebiusReal r *
        pickupResponseGram (dyadicTime J) p r +
      moebiusReal p * moebiusReal (2*r) *
        pickupResponseGram (dyadicTime J) p (2*r))

/-- Elementary true-physical-time paired lower, with source
birth gates and both actual Möbius signs. The paper proof gives
 K_T(p,r)-K_T(p,2r) >= 2/N (genuine Gram), for J>=8.
This is separate from the PNT prime counts and remains an
UNPROVED LEAN target, never a signed RH hypothesis. -/
def PrimeDoublingOriginalPairLowerTarget : Prop :=
  ∀ J : ℕ, 8 ≤ J →
    ∀ p ∈ smallPrimeBox J, ∀ r ∈ middlePrimeBox J,
      farPair J p r ∧ farPair J p (2*r) ∧
      moebiusReal p * moebiusReal r = 1 ∧
      moebiusReal p * moebiusReal (2*r) = -1 ∧
      2 / (boxN J : ℝ) ≤
        pickupResponseGram (dyadicTime J) p r -
          pickupResponseGram (dyadicTime J) p (2*r)

/-- Exact finite original-sign compensation. EVEN AFTER PAIRING
a prime r with the genuine opposite-sign 2r, a positive
two-point remainder >= 2/N per p,r remains. This proves that
this particular natural pair pairing is not an all-rate method. -/
theorem genuine_prime_doubling_paired_cross_ge
    (hPairs : PrimeDoublingOriginalPairLowerTarget)
    (J : ℕ) (hJ : 8 ≤ J) :
    (2 / (boxN J : ℝ)) *
        (smallPrimeBox J).card *
        (middlePrimeBox J).card ≤
      genuinePrimeDoublingPairedCross J := by
  unfold genuinePrimeDoublingPairedCross
  calc
    (2 / (boxN J : ℝ)) *
        (smallPrimeBox J).card *
        (middlePrimeBox J).card =
      ∑ p ∈ smallPrimeBox J, ∑ r ∈ middlePrimeBox J,
          2 / (boxN J : ℝ) := by
        simp [mul_comm, mul_left_comm, mul_assoc]
    _ ≤ ∑ p ∈ smallPrimeBox J, ∑ r ∈ middlePrimeBox J,
        (moebiusReal p * moebiusReal r *
          pickupResponseGram (dyadicTime J) p r +
         moebiusReal p * moebiusReal (2*r) *
          pickupResponseGram (dyadicTime J) p (2*r)) := by
      apply Finset.sum_le_sum
      intro p hp
      apply Finset.sum_le_sum
      intro r hr
      obtain ⟨hf,hf2,hplus,hminus,hgram⟩ := hPairs J hJ p hp r hr
      rw [hplus,hminus]
      nlinarith

end GRWTSK.NumberTheory.Moebius.FarPrimeBoxPNTMass
