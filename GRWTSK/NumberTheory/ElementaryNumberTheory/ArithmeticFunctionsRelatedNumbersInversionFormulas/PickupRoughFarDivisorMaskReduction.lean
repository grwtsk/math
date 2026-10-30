/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupRoughFarDivisorMaskIncidence

/-!
# Consumer reduction of the divisor-mask commutator

The one-prime incidence calculus makes the divisor-mask transport substantially
more rigid than a generic weight error.

After multiplying by the actual transported source coefficients rough (p::P):

* the entire LEFT divisor-mask channel vanishes identically, because its weight
  change is supported on p | n while rough (p::P) n is zero there;
* the RIGHT and SIMULTANEOUS weight deltas telescope exactly to
    -1 / omega(P,N,p*n)
  whenever the transported smaller coefficient can be nonzero.

The surviving obstruction is therefore a channel mismatch: the two telescoping
weight increments multiply different far indicators and different Gram entries.
This source gives an exact product-rule decomposition of that mismatch and returns
it to the complete transportedDivisorMask consumer.

No entropy, density, compression, expected divisor density, or asymptotic estimate
is assumed.  The denominator omega(P,N,p*n) is the actual source count.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom audit,
and expected-interface checking: NOT_RUN. No complete far-source or RH claim.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupRoughFarDivisorMaskReduction

open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction
open GRWTSK.NumberTheory.Moebius.PickupRoughDirectNearDiagonal
open GRWTSK.NumberTheory.Moebius.PickupRoughFarMaskCommutator
open GRWTSK.NumberTheory.Moebius.PickupRoughFarDivisorMaskIncidence

def rightWeightDelta (P : List ℕ) (N Z p m n : ℕ) : ℝ :=
  pairWeight P N Z m n - pairWeight P N Z m (p*n)

def bothWeightDelta (P : List ℕ) (N Z p m n : ℕ) : ℝ :=
  pairWeight P N Z (p*m) (p*n) - pairWeight P N Z m n

/-- The actual outer transported source coefficient. -/
def transportedOuter (P : List ℕ) (p m n : ℕ) : ℝ :=
  rough (p::P) m * rough (p::P) n

/-- One point of the complete divisor-mask consumer, including outer source signs. -/
def weightedDivisorMaskAtom
    (P : List ℕ) (N L Z H p : ℕ) (G : ℕ → ℕ → ℝ) (m n : ℕ) : ℝ :=
  transportedOuter P p m n * divisorMaskCommutator P N L Z H p G m n

theorem rough_cons_zero_of_dvd
    (P : List ℕ) (p n : ℕ) (hpn : p ∣ n) :
    rough (p::P) n = 0 := by
  simp [rough, hpn]

/-- The left divisor-mask channel is killed exactly by the transported source. -/
theorem left_divisor_channel_zero
    (P : List ℕ) (N L Z H p : ℕ) (G : ℕ → ℕ → ℝ) (m n : ℕ)
    (hpFresh : p ∈ freshPrimes P N) (hZp : Z < p) :
    transportedOuter P p m n *
      (farIndicator N L H (p*m) n *
        (pairWeight P N Z m n - pairWeight P N Z (p*m) n) * G (p*m) n) = 0 := by
  by_cases hpn : p ∣ n
  · rw [transportedOuter, rough_cons_zero_of_dvd P p n hpn]
    ring
  · have hw := pairWeight_left_sub_eq P N Z p m n hpFresh hZp
    rw [if_neg (by
      intro h
      exact hpn h.1)] at hw
    rw [hw]
    ring

/-- The two surviving weight increments telescope to one exact denominator unit.
No assumption on p | n is needed. -/
theorem right_add_both_delta_eq_neg_inv
    (P : List ℕ) (N Z p m n : ℕ)
    (hpFresh : p ∈ freshPrimes P N) (hZp : Z < p) (hpm : ¬ p ∣ m) :
    rightWeightDelta P N Z p m n + bothWeightDelta P N Z p m n =
      -(omega P N (p*n) : ℝ)⁻¹ := by
  have hleft := pairWeight_left_sub_eq P N Z p m (p*n) hpFresh hZp
  have hpdiv : p ∣ p*n := dvd_mul_right p n
  rw [if_pos ⟨hpdiv, hpm⟩] at hleft
  unfold rightWeightDelta bothWeightDelta
  linarith

/-- If the transported smaller source coefficient is nonzero, p cannot divide m. -/
theorem not_dvd_of_rough_cons_ne_zero
    (P : List ℕ) (p m : ℕ) (hm : rough (p::P) m ≠ 0) :
    ¬ p ∣ m := by
  intro hpm
  exact hm (rough_cons_zero_of_dvd P p m hpm)

/-- The left channel removed, before combining the right/simultaneous channels. -/
theorem weightedDivisorMaskAtom_eq_right_both
    (P : List ℕ) (N L Z H p : ℕ) (G : ℕ → ℕ → ℝ) (m n : ℕ)
    (hpFresh : p ∈ freshPrimes P N) (hZp : Z < p) :
    weightedDivisorMaskAtom P N L Z H p G m n =
      transportedOuter P p m n *
        (farIndicator N L H m (p*n) *
            rightWeightDelta P N Z p m n * G m (p*n) +
         farIndicator N L H (p*m) (p*n) *
            bothWeightDelta P N Z p m n * G (p*m) (p*n)) := by
  unfold weightedDivisorMaskAtom divisorMaskCommutator
  have hz := left_divisor_channel_zero P N L Z H p G m n hpFresh hZp
  unfold rightWeightDelta bothWeightDelta at *
  linarith

/-- Exact reduced pointwise form of the divisor-mask obstruction.

The first term is a one-channel Gram mismatch, the second is the corresponding
indicator mismatch, and the third is the atomic surviving denominator unit. -/
def reducedDivisorMaskAtom
    (P : List ℕ) (N L Z H p : ℕ) (G : ℕ → ℕ → ℝ) (m n : ℕ) : ℝ :=
  transportedOuter P p m n *
    (farIndicator N L H (p*m) (p*n) *
        rightWeightDelta P N Z p m n * (G m (p*n) - G (p*m) (p*n)) +
     (farIndicator N L H m (p*n) - farIndicator N L H (p*m) (p*n)) *
        rightWeightDelta P N Z p m n * G m (p*n) -
     farIndicator N L H (p*m) (p*n) *
        (omega P N (p*n) : ℝ)⁻¹ * G (p*m) (p*n))

theorem weightedDivisorMaskAtom_eq_reduced
    (P : List ℕ) (N L Z H p : ℕ) (G : ℕ → ℕ → ℝ) (m n : ℕ)
    (hpFresh : p ∈ freshPrimes P N) (hZp : Z < p) :
    weightedDivisorMaskAtom P N L Z H p G m n =
      reducedDivisorMaskAtom P N L Z H p G m n := by
  rw [weightedDivisorMaskAtom_eq_right_both P N L Z H p G m n hpFresh hZp]
  unfold reducedDivisorMaskAtom transportedOuter
  by_cases hm0 : rough (p::P) m = 0
  · simp [hm0]
  by_cases hn0 : rough (p::P) n = 0
  · simp [hn0]
  have hpm := not_dvd_of_rough_cons_ne_zero P p m hm0
  have hsum := right_add_both_delta_eq_neg_inv P N Z p m n hpFresh hZp hpm
  unfold rightWeightDelta bothWeightDelta at hsum ⊢
  ring_nf at hsum ⊢
  nlinarith

/-- Complete consumer return: the original transported divisor mask is exactly the
sum of the reduced mismatch atoms. -/
theorem transportedDivisorMask_eq_reduced
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ)
    (hpFresh : p ∈ freshPrimes P N) (hZp : Z < p) :
    transportedDivisorMask P N L Z H p T =
      ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
        reducedDivisorMaskAtom P N L Z H p (gram P T) m n := by
  unfold transportedDivisorMask quadraticPairing pairing
  apply Finset.sum_congr rfl
  intro m hm
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  rw [← weightedDivisorMaskAtom_eq_reduced
    P N L Z H p (gram P T) m n hpFresh hZp]
  unfold weightedDivisorMaskAtom transportedOuter
  ring

end GRWTSK.NumberTheory.Moebius.PickupRoughFarDivisorMaskReduction
