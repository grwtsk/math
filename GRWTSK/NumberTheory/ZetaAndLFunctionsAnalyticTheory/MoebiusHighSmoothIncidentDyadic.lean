/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusHighSmoothDensePairs
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Original high-incident dyadic Mobius signed Gram

Preserve the preexisting true source index, true tagged Mobius coefficient,
physical-time pickupResponseGram, diagonal exclusion and arbitrary gap mask.
The original same-shell dense packet equals high-incident plus low/low,
with high-incident retaining HH, HL and LH (both mixed orientations).

A finite double-sum estimate is proved below under EXPLICIT source kernel
and original-support cardinal bounds. The independent positive-integer
divisor/cofactor counting and time-local Gram inequalities are separately
declared as PROPOSITIONAL targets, not assumed theorems or new axioms.

Mathematically, for X>=1, T=log(2X) and a bank of r genuine primes,
the high support has at most exp(2 sqrt T) (1+T/log 2)^r original indices.
The original dyadic Gram is <=4 log 2 / X. The complete original signed
high-incident packet therefore has absolute value at most
8 log 2 exp(2 sqrt T) (1+T/log 2)^r, which is exp(o(T)) for fixed r.
This statement is not asserted here as an accepted Lean theorem.
-/

namespace GRWTSK.NumberTheory.Moebius.HighSmoothIncidentDyadic

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.NearSquareRootEulerPrefix
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs

/-- The original high-incident SAME-shell packet, retaining the
preexisting HH, HL and LH sums, signs, mask and physical Gram. -/
def highIncidentTaggedBlock
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (T : ℝ) : ℝ :=
  maskedTaggedBlock B.primes a b A
    (highSmoothBlock B X T) (highSmoothBlock B X T) T +
  maskedTaggedBlock B.primes a b A
    (highSmoothBlock B X T) (lowSmoothBlock B X T) T +
  maskedTaggedBlock B.primes a b A
    (lowSmoothBlock B X T) (highSmoothBlock B X T) T

/-- Exact four-sector source return, reorganized as high-incident
plus the unchanged original low/low signed pair packet. -/
theorem taggedDenseRectangle_eq_highIncident_add_lowLow
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (T : ℝ) :
    taggedDenseRectangle B.primes a b A X X T =
      highIncidentTaggedBlock B a b A X T +
        maskedTaggedBlock B.primes a b A
          (lowSmoothBlock B X T) (lowSmoothBlock B X T) T := by
  simpa only [highIncidentTaggedBlock] using
    taggedDenseRectangle_eq_four_smooth_strata B a b A X T

/-- Pure finite double-sum triangle inequality. It requires only
pointwise amplitude control, no independence or sign assumptions. -/
theorem bounded_masked_double_sum
    (I J : Finset ℕ) (f : ℕ → ℕ → ℝ)
    (mask : ℕ → ℕ → Prop) (K : ℝ)
    (hK : 0 ≤ K)
    (hf : ∀ m ∈ I, ∀ n ∈ J, |f m n| ≤ K) :
    |∑ m ∈ I, ∑ n ∈ J,
        if mask m n then f m n else 0| ≤
      (I.card : ℝ) * (J.card : ℝ) * K := by
  classical
  calc
    |∑ m ∈ I, ∑ n ∈ J, if mask m n then f m n else 0| ≤
        ∑ m ∈ I, |∑ n ∈ J, if mask m n then f m n else 0| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ I, ∑ n ∈ J,
          |if mask m n then f m n else 0| := by
      apply Finset.sum_le_sum
      intro m hm
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ I, ∑ n ∈ J, K := by
      apply Finset.sum_le_sum
      intro m hm
      apply Finset.sum_le_sum
      intro n hn
      by_cases h : mask m n
      · simpa [h] using hf m hm n hn
      · simp [h, hK]
    _ = (I.card : ℝ) * (J.card : ℝ) * K := by
      simp [mul_assoc]

/-- Apply the generic finite bound to the SAME actual tagged
Möbius coefficient and SAME original causal Gram. -/
theorem maskedTaggedBlock_abs_le_card_gram
    (P : Finset ℕ) (a b : Bool) (A I J : Finset ℕ)
    (T K : ℝ) (hK : 0 ≤ K)
    (hGram : ∀ m ∈ I, ∀ n ∈ J,
      |pickupResponseGram T m n| ≤ K) :
    |maskedTaggedBlock P a b A I J T| ≤
      (I.card : ℝ) * (J.card : ℝ) * K := by
  unfold maskedTaggedBlock
  apply bounded_masked_double_sum I J
    (fun m n => taggedMoebius P a m * taggedMoebius P b n *
      pickupResponseGram T m n)
    (fun m n => m ≠ n ∧ Nat.dist m n ∉ A) K hK
  intro m hm n hn
  have ha := taggedMoebius_abs_le_one P a m
  have hb := taggedMoebius_abs_le_one P b n
  have hab : |taggedMoebius P a m * taggedMoebius P b n| ≤ 1 := by
    rw [abs_mul]
    calc
      |taggedMoebius P a m| * |taggedMoebius P b n| ≤
          (1 : ℝ) * 1 :=
        mul_le_mul ha hb (abs_nonneg _) (by norm_num)
      _ = 1 := by norm_num
  calc
    |taggedMoebius P a m * taggedMoebius P b n *
        pickupResponseGram T m n| =
        |taggedMoebius P a m * taggedMoebius P b n| *
          |pickupResponseGram T m n| := abs_mul _ _
    _ ≤ (1 : ℝ) * K :=
      mul_le_mul hab (hGram m hm n hn)
        (abs_nonneg _) (by norm_num)
    _ = K := one_mul _

/-- The exact original HH+HL+LH packet is bounded by three
literal cardinal products. This is a finite algebra result, conditional
ONLY on the explicitly displayed pointwise original Gram allowance. -/
theorem highIncident_abs_le_three_card
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (T K : ℝ) (hK : 0 ≤ K)
    (hGram : ∀ m ∈ balancedBlock X T,
      ∀ n ∈ balancedBlock X T,
        |pickupResponseGram T m n| ≤ K) :
    |highIncidentTaggedBlock B a b A X T| ≤
      (((highSmoothBlock B X T).card : ℝ) *
          ((highSmoothBlock B X T).card : ℝ) +
       ((highSmoothBlock B X T).card : ℝ) *
          ((lowSmoothBlock B X T).card : ℝ) +
       ((lowSmoothBlock B X T).card : ℝ) *
          ((highSmoothBlock B X T).card : ℝ)) * K := by
  let H := highSmoothBlock B X T
  let L := lowSmoothBlock B X T
  let RHH := maskedTaggedBlock B.primes a b A H H T
  let RHL := maskedTaggedBlock B.primes a b A H L T
  let RLH := maskedTaggedBlock B.primes a b A L H T
  have hH : H ⊆ balancedBlock X T := by
    dsimp [H, highSmoothBlock]
    exact Finset.filter_subset _ _
  have hL : L ⊆ balancedBlock X T := by
    dsimp [L, lowSmoothBlock]
    exact Finset.filter_subset _ _
  have hh : |RHH| ≤ (H.card : ℝ) * (H.card : ℝ) * K :=
    maskedTaggedBlock_abs_le_card_gram B.primes a b A H H T K hK
      (by
        intro m hm n hn
        exact hGram m (hH hm) n (hH hn))
  have hl : |RHL| ≤ (H.card : ℝ) * (L.card : ℝ) * K :=
    maskedTaggedBlock_abs_le_card_gram B.primes a b A H L T K hK
      (by
        intro m hm n hn
        exact hGram m (hH hm) n (hL hn))
  have lh : |RLH| ≤ (L.card : ℝ) * (H.card : ℝ) * K :=
    maskedTaggedBlock_abs_le_card_gram B.primes a b A L H T K hK
      (by
        intro m hm n hn
        exact hGram m (hL hm) n (hH hn))
  change |RHH + RHL + RLH| ≤
    ((H.card : ℝ) * (H.card : ℝ) +
     (H.card : ℝ) * (L.card : ℝ) +
     (L.card : ℝ) * (H.card : ℝ)) * K
  calc
    |RHH + RHL + RLH| ≤ |RHH| + |RHL| + |RLH| := by
      calc
        |RHH + RHL + RLH| ≤ |RHH + RHL| + |RLH| :=
          abs_add_le _ _
        _ ≤ (|RHH| + |RHL|) + |RLH| :=
          add_le_add_right (abs_add_le _ _) _
    _ ≤ (H.card : ℝ) * (H.card : ℝ) * K +
        (H.card : ℝ) * (L.card : ℝ) * K +
        (L.card : ℝ) * (H.card : ℝ) * K :=
      add_le_add (add_le_add hh hl) lh
    _ = _ := by ring

/-- The high-incident packet is at most 2X times the original
high-support count times a uniform original Gram bound.
Every needed input is displayed, especially the finite support-size
and divisor-count inequalities. No free remainder or RH assumption. -/
theorem highIncident_abs_le_of_support_count
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (T K E : ℝ)
    (hK : 0 ≤ K)
    (hSupport :
      ((highSmoothBlock B X T).card : ℝ) +
        ((lowSmoothBlock B X T).card : ℝ) ≤ (X : ℝ))
    (hCount : ((highSmoothBlock B X T).card : ℝ) ≤ E)
    (hGram : ∀ m ∈ balancedBlock X T,
      ∀ n ∈ balancedBlock X T,
        |pickupResponseGram T m n| ≤ K) :
    |highIncidentTaggedBlock B a b A X T| ≤
      2 * (X : ℝ) * E * K := by
  let h : ℝ := ((highSmoothBlock B X T).card : ℝ)
  let l : ℝ := ((lowSmoothBlock B X T).card : ℝ)
  have hh : 0 ≤ h := by dsimp [h]; positivity
  have hl : 0 ≤ l := by dsimp [l]; positivity
  have hx : h + 2 * l ≤ 2 * (X : ℝ) := by
    dsimp [h, l] at *
    linarith
  have hmul := mul_le_mul_of_nonneg_left hx hh
  have hmulK := mul_le_mul_of_nonneg_right hmul hK
  have hsize : (h * h + h * l + l * h) * K ≤
      (2 * (X : ℝ) * h) * K := by
    nlinarith [hmulK]
  have hcountmul : (2 * (X : ℝ) * h) * K ≤
      (2 * (X : ℝ) * E) * K := by
    have hn : 0 ≤ 2 * (X : ℝ) := by positivity
    have hs := mul_le_mul_of_nonneg_left hCount hn
    have ht := mul_le_mul_of_nonneg_right hs hK
    dsimp [h] at *
    nlinarith [ht]
  have hb := highIncident_abs_le_three_card
    B a b A X T K hK hGram
  change |highIncidentTaggedBlock B a b A X T| ≤
    (h * h + h * l + l * h) * K at hb
  calc
    |highIncidentTaggedBlock B a b A X T| ≤
        (h * h + h * l + l * h) * K := hb
    _ ≤ (2 * (X : ℝ) * h) * K := hsize
    _ ≤ (2 * (X : ℝ) * E) * K := hcountmul
    _ = 2 * (X : ℝ) * E * K := by ring

/-- True positive-divisor/cofactor counting obligation:
large selected-prime-smooth divisors leave fewer than
exp(2 sqrt T) cofactor choices and at most
(1+T/log 2)^card(P) possible smooth divisors. -/
def HighSmoothCofactorCountTarget : Prop :=
  ∀ (B : PrimeBand) (X : ℕ), 1 ≤ X →
    ((highSmoothBlock B X
      (Real.log (2 * (X : ℝ)))).card : ℝ) ≤
        Real.exp (2 * Real.sqrt (Real.log (2 * (X : ℝ)))) *
        (1 + Real.log (2 * (X : ℝ)) / Real.log 2) ^ B.primes.card

/-- Physical-time dyadic local Gram obligation. All original
indices lie in (X,2X]; they are born after log X and before log(2X).
The response is <=2/sqrt X during at most log 2 time units. -/
def DyadicTimeLocalGramTarget : Prop :=
  ∀ (X : ℕ), 1 ≤ X →
    ∀ m ∈ balancedBlock X (Real.log (2 * (X : ℝ))),
    ∀ n ∈ balancedBlock X (Real.log (2 * (X : ℝ))),
      |pickupResponseGram (Real.log (2 * (X : ℝ))) m n| ≤
        4 * Real.log 2 / (X : ℝ)

/-- The final all-positive-rate SAME-shell high-incident statement,
with the arbitrary mask and both source tags uniformly quantified.
This is an EXPLICIT research proposition until the count/kernel
suppliers and rate comparison have checked Lean proofs. -/
def HighIncidentSameShellAllRateTarget : Prop :=
  ∀ (B : PrimeBand) (ε : ℝ), 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ (a b : Bool) (A : Finset ℕ) (X : ℕ), 1 ≤ X →
        |highIncidentTaggedBlock B a b A X
          (Real.log (2 * (X : ℝ)))| ≤
          C * Real.exp (ε * Real.log (2 * (X : ℝ)))

end GRWTSK.NumberTheory.Moebius.HighSmoothIncidentDyadic
