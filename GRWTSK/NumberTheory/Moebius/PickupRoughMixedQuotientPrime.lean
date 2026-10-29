/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupRoughJointSecondMoment
import Mathlib.NumberTheory.Harmonic.Bounds

/-!
# A crossed-prime part of the actual short/long mixed moment

Freeze P,N,L and the original Gram. A long extraction prime s dividing the
OTHER, short-side quotient q is not the already-paid s|n shared-core channel.
Both moment orientations are retained by 2. The original repeated-prime and
coprime guards remain, as do both selected-divisor denominators.
The crossed family has an independent reciprocal-square allowance. No bound
for the complete moment, the joint negative part, or RH is asserted.
SOURCE_PROOF_CANDIDATE. Compilation/fresh kernel/axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupRoughMixedQuotientPrime

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupRoughCoreStrip
open GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction
open GRWTSK.NumberTheory.Moebius.PickupRoughSharedPrime
open GRWTSK.NumberTheory.Moebius.PickupRoughLongPrime
open GRWTSK.NumberTheory.Moebius.PickupRoughJointSecondMoment
open GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeStages
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint

/-- One actual joint column row. The summation has the original strict m<p*q.
The index p*q still refers to the frozen N, not a new inner horizon. -/
def sourceRow (P : List ℕ) (N L Z : ℕ) (G : ℕ → ℕ → ℝ) (p q : ℕ) : ℝ :=
  if p*q ≤ N ∧ ¬p ∣ q then
    ∑ m ∈ Finset.Icc 1 (p*q),
      if L < m ∧ m < p*q ∧ (p ≤ Z ∨ ¬p ∣ m)
      then rough P m * G m (p*q) else 0
  else 0

/-- Arithmetic weight in the existing joint mean; the frozen count is explicit. -/
def sourceCoefficient (P : List ℕ) (N q : ℕ) : ℝ :=
  rough P q / ((omega P N q : ℝ)+1)

theorem sourceCoefficient_abs_le_one (P : List ℕ) (N q : ℕ) :
    |sourceCoefficient P N q| ≤ 1 := by
  have hd : (0 : ℝ) < (omega P N q : ℝ)+1 := by positivity
  rw [sourceCoefficient, abs_div, abs_of_pos hd]
  apply (div_le_one hd).mpr
  exact (rough_abs_le_one P q).trans (by
    have h : (0 : ℝ) ≤ (omega P N q : ℝ) := Nat.cast_nonneg _
    linarith)

/-- Restriction by actual zero support, not by a new cutoff convention. -/
theorem sum_restrict_upper (f : ℕ → ℝ) {M N : ℕ} (hMN : M ≤ N)
    (hz : ∀ n ∈ Finset.Icc 1 N, M < n → f n = 0) :
    (∑ n ∈ Finset.Icc 1 N, f n) = ∑ n ∈ Finset.Icc 1 M, f n := by
  symm
  apply Finset.sum_subset
  · intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1,
      (Finset.mem_Icc.mp hn).2.trans hMN⟩
  · intro n hn hnot
    apply hz n hn
    have hn1 := (Finset.mem_Icc.mp hn).1
    by_contra h
    exact hnot (Finset.mem_Icc.mpr ⟨hn1, by omega⟩)

/-- Actual source identification with the previously published JOINT column. -/
theorem column_eq_sourceRows (P : List ℕ) (N L Z : ℕ) (G : ℕ → ℕ → ℝ)
    (q : ℕ) :
    column P N L N N Z G q = ∑ p ∈ freshPrimes P N, sourceRow P N L Z G p q := by
  unfold column
  apply Finset.sum_congr rfl
  intro p hp
  have hp0 := (fresh_mem hp).1.pos
  have hcut : q ≤ N/p ↔ p*q ≤ N := by
    rw [Nat.le_div_iff_mul_le hp0]
    simp only [Nat.mul_comm]
  by_cases h : p*q ≤ N ∧ ¬p ∣ q
  · rw [sourceRow, if_pos h]
    have he := sum_restrict_upper
      (fun m => if L < m ∧ m < p*q ∧ (p ≤ Z ∨ ¬p ∣ m)
        then rough P m * G m (p*q) else 0) h.1 (by
          intro m _ hm
          simp [show ¬m < p*q by omega])
    rw [← he]
    apply Finset.sum_congr rfl
    intro m hm
    have hmN := (Finset.mem_Icc.mp hm).2
    simp [inWindow, hcut, h.1, h.2, hmN, and_assoc]
  · rw [sourceRow, if_neg h]
    apply Finset.sum_eq_zero
    intro m _
    have hn : ¬(q ≤ N/p ∧ ¬p ∣ q ∧ inWindow L N N p q m ∧
        (p ≤ Z ∨ ¬p ∣ m)) := by
      intro hh
      exact h ⟨hcut.mp hh.1, hh.2.1⟩
    simp [hn]

/-- At q=1 the short-prime column is zero because m>L and m<p≤L conflict.
The LONG unit column is not removed by this fact. -/
theorem sourceRow_short_one (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ)
    {p : ℕ} (hp : p ≤ L) : sourceRow P N L L G p 1 = 0 := by
  unfold sourceRow
  split_ifs
  · apply Finset.sum_eq_zero
    intro m _
    have hn : ¬(L < m ∧ m < p*1 ∧ (p ≤ L ∨ ¬p ∣ m)) := by
      simp only [Nat.mul_one]
      omega
    simp [hn]
  · rfl

/-- Both signs and both original arithmetic denominators. -/
def mixedPair (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ)
    (p s q r : ℕ) : ℝ :=
  sourceCoefficient P N q * sourceCoefficient P N r *
    sourceRow P N L L G p q * sourceRow P N L L G s r

/-- The actual four arithmetic coefficients appear before any absolute values.
The two denominator factors are kept separate and refer to the frozen inventory. -/
theorem mixedPair_expansion (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ)
    (p s q r : ℕ) (hpq : p*q ≤ N ∧ ¬p ∣ q) (hsr : s*r ≤ N ∧ ¬s ∣ r) :
    mixedPair P N L G p s q r =
      ∑ m ∈ Finset.Icc 1 (p*q), ∑ n ∈ Finset.Icc 1 (s*r),
        if (L < m ∧ m < p*q ∧ (p ≤ L ∨ ¬p ∣ m)) ∧
           (L < n ∧ n < s*r ∧ (s ≤ L ∨ ¬s ∣ n)) then
          rough P q * rough P r * rough P m * rough P n *
            G m (p*q) * G n (s*r) /
            (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1))
        else 0 := by
  unfold mixedPair sourceCoefficient sourceRow
  rw [if_pos hpq, if_pos hsr]
  rw [mul_assoc, Finset.sum_mul_sum, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  by_cases hm : L < m ∧ m < p*q ∧ (p ≤ L ∨ ¬p ∣ m) <;>
    by_cases hn : L < n ∧ n < s*r ∧ (s ≤ L ∨ ¬s ∣ n) <;>
    simp only [hm, hn, if_true, if_false, and_self, and_true, and_false,
      false_and, true_and, mul_zero, zero_mul, div_eq_mul_inv, mul_inv_rev] <;> ring

/-- The d=1 short/long cross term, with both moment orientations. -/
def mixedCoprime (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  2 * ∑ p ∈ freshPrimes P N, if p ≤ L then
    ∑ s ∈ freshPrimes P N, if L < s then
      ∑ q ∈ Finset.Icc 1 (N/p), ∑ r ∈ Finset.Icc 1 (N/s),
        if Nat.Coprime q r then mixedPair P N L G p s q r else 0
    else 0
  else 0

/-- The two sectors of the actual column, before arithmetic normalization. -/
def shortColumn (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) (q : ℕ) : ℝ :=
  ∑ p ∈ freshPrimes P N, if p ≤ L then sourceRow P N L L G p q else 0

def longColumn (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) (q : ℕ) : ℝ :=
  ∑ p ∈ freshPrimes P N, if L < p then sourceRow P N L L G p q else 0

theorem column_eq_short_add_long (P : List ℕ) (N L : ℕ)
    (G : ℕ → ℕ → ℝ) (q : ℕ) :
    column P N L N N L G q = shortColumn P N L G q + longColumn P N L G q := by
  rw [column_eq_sourceRows]
  unfold shortColumn longColumn
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p _
  by_cases hp : p ≤ L <;> simp [hp, show (L < p) ↔ ¬p ≤ L by omega]

/-- Zero support justifies returning closed quotient cutoffs to the frozen N. -/
theorem sourceRow_eq_zero_of_quotient_lt (P : List ℕ) (N L : ℕ)
    (G : ℕ → ℕ → ℝ) {p q : ℕ} (hp : 0 < p) (hq : N/p < q) :
    sourceRow P N L L G p q = 0 := by
  have hn : ¬p*q ≤ N := by
    intro h
    have : q ≤ N/p := (Nat.le_div_iff_mul_le hp).mpr (by simpa [Nat.mul_comm] using h)
    omega
  simp [sourceRow, hn]

/-- Exact identification with formula (1) of the note. No absolute values,
new horizon, or removal of the long unit quotient is involved. -/
theorem mixedCoprime_eq_columns (P : List ℕ) (N L : ℕ)
    (G : ℕ → ℕ → ℝ) :
    mixedCoprime P N L G =
      2 * ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
        if Nat.gcd q r = 1 then
          sourceCoefficient P N q * sourceCoefficient P N r *
            shortColumn P N L G q * longColumn P N L G r else 0 := by
  have hpair (p s : ℕ) (hp : p ∈ freshPrimes P N) (hs : s ∈ freshPrimes P N) :
      (∑ q ∈ Finset.Icc 1 (N/p), ∑ r ∈ Finset.Icc 1 (N/s),
        if Nat.Coprime q r then mixedPair P N L G p s q r else 0) =
      ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
        if Nat.gcd q r = 1 then mixedPair P N L G p s q r else 0 := by
    symm
    rw [sum_restrict_upper _ (Nat.div_le_self N p) (by
      intro q _ hq
      simp [mixedPair, sourceRow_eq_zero_of_quotient_lt P N L G (fresh_mem hp).1.pos hq])]
    apply Finset.sum_congr rfl
    intro q _
    rw [sum_restrict_upper _ (Nat.div_le_self N s) (by
      intro r _ hr
      simp [mixedPair, sourceRow_eq_zero_of_quotient_lt P N L G (fresh_mem hs).1.pos hr])]
    rfl
  have hexpand (q r : ℕ) :
      sourceCoefficient P N q * sourceCoefficient P N r *
        shortColumn P N L G q * longColumn P N L G r =
      ∑ p ∈ freshPrimes P N, if p ≤ L then
        ∑ s ∈ freshPrimes P N, if L < s then mixedPair P N L G p s q r else 0
        else 0 := by
    unfold shortColumn longColumn
    simp only [Finset.mul_sum, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro p _
    by_cases hp : p ≤ L
    · simp only [if_pos hp, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro s _
      by_cases hs : L < s <;> simp [hs, mixedPair]
    · simp [hp]
  simp_rw [hexpand]
  -- Distribute the masks, then commute only quotient/prime inventories.
  simp_rw [Finset.ite_sum_zero]
  simp_rw [Finset.sum_comm (s := Finset.Icc 1 N) (t := freshPrimes P N)]
  unfold mixedCoprime
  congr 1
  apply Finset.sum_congr rfl
  intro p hp
  by_cases hps : p ≤ L
  · simp only [if_pos hps]
    apply Finset.sum_congr rfl
    intro s hs
    by_cases hsl : L < s
    · simp only [if_pos hsl, ite_self]
      exact hpair p s hp hs
    · simp [hsl]
  · simp [hps]

/-- Both mixed orientations of the d=1 fiber in joint_square_gcd.
The right side is the complete mixed fiber, including the (zero) unit diagonal. -/
theorem mixedCoprime_eq_d_one_mixed_fiber (P : List ℕ) (N L : ℕ)
    (G : ℕ → ℕ → ℝ) :
    mixedCoprime P N L G =
      ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
        if Nat.gcd q r = 1 then
          (rough P q * shortColumn P N L G q *
              (rough P r * longColumn P N L G r) +
            rough P q * longColumn P N L G q *
              (rough P r * shortColumn P N L G r)) /
            (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) else 0 := by
  rw [mixedCoprime_eq_columns]
  have hswap :
      (∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
        if Nat.gcd q r = 1 then sourceCoefficient P N q * sourceCoefficient P N r *
          longColumn P N L G q * shortColumn P N L G r else 0) =
      ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
        if Nat.gcd q r = 1 then sourceCoefficient P N q * sourceCoefficient P N r *
          shortColumn P N L G q * longColumn P N L G r else 0 := by
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro q _
    apply Finset.sum_congr rfl
    intro r _
    rw [Nat.gcd_comm r q]
    split_ifs <;> ring
  calc
    _ = (∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
        if Nat.gcd q r = 1 then sourceCoefficient P N q * sourceCoefficient P N r *
          shortColumn P N L G q * longColumn P N L G r else 0) +
        (∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
        if Nat.gcd q r = 1 then sourceCoefficient P N q * sourceCoefficient P N r *
          longColumn P N L G q * shortColumn P N L G r else 0) := by rw [hswap]; ring
    _ = _ := by
      rw [← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro q _
      rw [← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro r _
      split_ifs <;> simp only [sourceCoefficient, div_eq_mul_inv, mul_inv_rev] <;> ring

/-- The actual joint-square numerator has exactly SS, SL, LS, LL sectors.
Together with mixedCoprime_eq_d_one_mixed_fiber this identifies the mixed
part of the existing gcd fiber, rather than assigning a new residual. -/
theorem jointCoefficient_pair_expansion (P : List ℕ) (N L : ℕ)
    (G : ℕ → ℕ → ℝ) (q r : ℕ) :
    jointCoefficient P N L N N L G q * jointCoefficient P N L N N L G r =
      rough P q * shortColumn P N L G q * (rough P r * shortColumn P N L G r) +
      (rough P q * shortColumn P N L G q * (rough P r * longColumn P N L G r) +
       rough P q * longColumn P N L G q * (rough P r * shortColumn P N L G r)) +
      rough P q * longColumn P N L G q * (rough P r * longColumn P N L G r) := by
  simp only [jointCoefficient, column_eq_short_add_long]
  ring

theorem shortColumn_one (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    shortColumn P N L G 1 = 0 := by
  unfold shortColumn
  apply Finset.sum_eq_zero
  intro p _
  split_ifs with hp
  · exact sourceRow_short_one P N L G hp
  · rfl

/-- The joint unit term remains the long unit square with its original weights. -/
theorem jointCoefficient_unit_square (P : List ℕ) (N L : ℕ)
    (G : ℕ → ℕ → ℝ) :
    jointCoefficient P N L N N L G 1 * jointCoefficient P N L N N L G 1 /
        (((omega P N 1 : ℝ)+1)*((omega P N 1 : ℝ)+1)) =
      (sourceCoefficient P N 1 * longColumn P N L G 1)^2 := by
  simp only [jointCoefficient, column_eq_short_add_long, shortColumn_one, zero_add,
    sourceCoefficient, div_eq_mul_inv, mul_inv_rev]
  ring

/-- The literal d=1 summand of joint_square_gcd, at X=Y=N and Z=L.
This is a signed fiber; no absolute value or estimate is built into it. -/
def dOneFiber (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
    if Nat.gcd q r = 1 then
      jointCoefficient P N L N N L G q * jointCoefficient P N L N N L G r /
        (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) else 0

/-- The complete short/short sector of the d=1 fiber. -/
def shortShortCoprime (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
    if Nat.gcd q r = 1 then
      rough P q * shortColumn P N L G q * (rough P r * shortColumn P N L G r) /
        (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) else 0

/-- The complete long/long sector. In particular, q=r=1 is retained. -/
def longLongCoprime (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
    if Nat.gcd q r = 1 then
      rough P q * longColumn P N L G q * (rough P r * longColumn P N L G r) /
        (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) else 0

/-- Full d=1 decomposition of the actual joint-square fiber. The existing
mixed term includes SL and LS; neither SS nor LL is assigned as a residual. -/
theorem dOneFiber_eq_shortShort_add_mixed_add_longLong
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    dOneFiber P N L G =
      shortShortCoprime P N L G + mixedCoprime P N L G + longLongCoprime P N L G := by
  rw [mixedCoprime_eq_d_one_mixed_fiber]
  unfold dOneFiber shortShortCoprime longLongCoprime
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro q _
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro r _
  by_cases h : Nat.gcd q r = 1
  · simp only [if_pos h, jointCoefficient_pair_expansion]
    ring
  · simp [h]

/-- The d=1 quotient diagonal has exactly the unit index. This says nothing
about a product collision between different extraction rows. -/
theorem d_one_diagonal_iff (q r : ℕ) :
    (Nat.gcd q r = 1 ∧ q = r) ↔ (q = 1 ∧ r = 1) := by
  constructor
  · rintro ⟨hg, he⟩
    subst r
    have hq : q = 1 := by simpa only [Nat.gcd_self] using hg
    exact ⟨hq, hq⟩
  · rintro ⟨rfl, rfl⟩
    simp

/-- The LL summand at its retained unit diagonal is the original weighted
long unit square, without a primality assumption or a deleted constant term.
It belongs to the closed inventories precisely when 1 ≤ N. -/
theorem longLong_unit_term (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    (if Nat.gcd 1 1 = 1 then
      rough P 1 * longColumn P N L G 1 * (rough P 1 * longColumn P N L G 1) /
        (((omega P N 1 : ℝ)+1)*((omega P N 1 : ℝ)+1)) else 0) =
      (sourceCoefficient P N 1 * longColumn P N L G 1)^2 := by
  rw [if_pos (by decide : Nat.gcd 1 1 = 1)]
  simp only [sourceCoefficient, div_eq_mul_inv, mul_inv_rev]
  ring

/-- The signed LL remainder off the quotient diagonal. All original column
masks and both selected-divisor denominator factors are retained. -/
def longLongOffDiagonal (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
    if Nat.gcd q r = 1 ∧ q ≠ r then
      rough P q * longColumn P N L G q * (rough P r * longColumn P N L G r) /
        (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) else 0

/-- At N=0 the complete LL inventory is empty. -/
theorem longLongCoprime_zero (P : List ℕ) (L : ℕ) (G : ℕ → ℕ → ℝ) :
    longLongCoprime P 0 L G = 0 := by
  simp [longLongCoprime]

/-- At N=0 the off-diagonal LL inventory is empty as well. -/
theorem longLongOffDiagonal_zero (P : List ℕ) (L : ℕ) (G : ℕ → ℕ → ℝ) :
    longLongOffDiagonal P 0 L G = 0 := by
  simp [longLongOffDiagonal]

/-- Exact LL unit/off-diagonal split for every N, including N=0.
The unit square occurs only when the original closed inventories contain 1.
This is an identity of signed sums, not a bound on the remainder. -/
theorem longLongCoprime_eq_unit_add_offDiagonal (P : List ℕ) (N L : ℕ)
    (G : ℕ → ℕ → ℝ) :
    longLongCoprime P N L G =
      (if 1 ≤ N then (sourceCoefficient P N 1 * longColumn P N L G 1)^2 else 0) +
        longLongOffDiagonal P N L G := by
  let f : ℕ → ℕ → ℝ := fun q r =>
    rough P q * longColumn P N L G q * (rough P r * longColumn P N L G r) /
      (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1))
  have hsplit (q r : ℕ) :
      (if Nat.gcd q r = 1 then f q r else 0) =
        (if q = 1 ∧ r = 1 then f 1 1 else 0) +
          (if Nat.gcd q r = 1 ∧ q ≠ r then f q r else 0) := by
    by_cases hg : Nat.gcd q r = 1
    · by_cases he : q = r
      · obtain ⟨hq, hr⟩ := (d_one_diagonal_iff q r).mp ⟨hg, he⟩
        simp [hq, hr]
      · have hu : ¬(q = 1 ∧ r = 1) := by
          rintro ⟨rfl, rfl⟩
          exact he rfl
        simp [hg, he, hu]
    · have hu : ¬(q = 1 ∧ r = 1) := by
        rintro ⟨rfl, rfl⟩
        exact hg (by decide)
      simp [hg, hu]
  have hsingle (q r : ℕ) :
      (if q = 1 ∧ r = 1 then f 1 1 else 0) =
        if q = 1 then (if r = 1 then f 1 1 else 0) else 0 := by
    by_cases hq : q = 1 <;> by_cases hr : r = 1 <;> simp [hq, hr]
  have hunit :
      (∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
        if q = 1 ∧ r = 1 then f 1 1 else 0) =
        if 1 ≤ N then f 1 1 else 0 := by
    simp_rw [hsingle]
    by_cases hN : 1 ≤ N <;> simp [Finset.sum_ite_irrel, Finset.mem_Icc, hN]
  have hf : f 1 1 = (sourceCoefficient P N 1 * longColumn P N L G 1)^2 := by
    simpa only [if_pos (by decide : Nat.gcd 1 1 = 1)] using longLong_unit_term P N L G
  change (∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
    if Nat.gcd q r = 1 then f q r else 0) =
      (if 1 ≤ N then (sourceCoefficient P N 1 * longColumn P N L G 1)^2 else 0) +
        ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
          if Nat.gcd q r = 1 ∧ q ≠ r then f q r else 0
  simp_rw [hsplit]
  simp_rw [Finset.sum_add_distrib]
  rw [hunit, hf]

/-- Positive-horizon form of the same exact signed LL decomposition. -/
theorem longLongCoprime_eq_unit_add_offDiagonal_of_one_le
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) (hN : 1 ≤ N) :
    longLongCoprime P N L G =
      (sourceCoefficient P N 1 * longColumn P N L G 1)^2 +
        longLongOffDiagonal P N L G := by
  rw [longLongCoprime_eq_unit_add_offDiagonal, if_pos hN]

/-- Full d=1 fiber with the original weighted long unit square isolated.
The cutoff on that square is essential at N=0. No sector estimate is used. -/
theorem dOneFiber_eq_shortShort_add_mixed_add_unit_add_offDiagonal
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    dOneFiber P N L G =
      shortShortCoprime P N L G + mixedCoprime P N L G +
        (if 1 ≤ N then (sourceCoefficient P N 1 * longColumn P N L G 1)^2 else 0) +
        longLongOffDiagonal P N L G := by
  rw [dOneFiber_eq_shortShort_add_mixed_add_longLong,
    longLongCoprime_eq_unit_add_offDiagonal]
  simp only [add_assoc]

/-- For a positive horizon all four actual d=1 contributions are retained. -/
theorem dOneFiber_eq_shortShort_add_mixed_add_unit_add_offDiagonal_of_one_le
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) (hN : 1 ≤ N) :
    dOneFiber P N L G =
      shortShortCoprime P N L G + mixedCoprime P N L G +
        (sourceCoefficient P N 1 * longColumn P N L G 1)^2 +
        longLongOffDiagonal P N L G := by
  rw [dOneFiber_eq_shortShort_add_mixed_add_unit_add_offDiagonal, if_pos hN]

/-- At N=0 the source fiber and every sector inventory are empty. In the
four-term identity the conditional unit contribution is also zero; an
unconditional unit square is not inserted into the empty source inventory. -/
theorem dOneFiber_zero_components (P : List ℕ) (L : ℕ) (G : ℕ → ℕ → ℝ) :
    dOneFiber P 0 L G = 0 ∧ shortShortCoprime P 0 L G = 0 ∧
      mixedCoprime P 0 L G = 0 ∧ longLongCoprime P 0 L G = 0 ∧
      longLongOffDiagonal P 0 L G = 0 := by
  rw [mixedCoprime_eq_columns]
  simp [dOneFiber, shortShortCoprime, longLongCoprime, longLongOffDiagonal]

/-- The complete SS contribution away from the quotient diagonal. -/
def shortShortOffDiagonal (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
    if Nat.gcd q r = 1 ∧ q ≠ r then
      rough P q * shortColumn P N L G q * (rough P r * shortColumn P N L G r) /
        (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) else 0

/-- Both SL and LS orientations away from the quotient diagonal. -/
def mixedOffDiagonal (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
    if Nat.gcd q r = 1 ∧ q ≠ r then
      (rough P q * shortColumn P N L G q * (rough P r * longColumn P N L G r) +
       rough P q * longColumn P N L G q * (rough P r * shortColumn P N L G r)) /
        (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) else 0

/-- The complete off-diagonal d=1 source fiber, not an assigned residual.
All four sectors, both orientations and the two original denominators remain. -/
def dOneOffDiagonal (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
    if Nat.gcd q r = 1 ∧ q ≠ r then
      jointCoefficient P N L N N L G q * jointCoefficient P N L N N L G r /
        (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) else 0

/-- The only possible coprime diagonal is the unit, whose short column is zero. -/
theorem shortShort_diagonal_term_zero (P : List ℕ) (N L : ℕ)
    (G : ℕ → ℕ → ℝ) (q r : ℕ) :
    (if Nat.gcd q r = 1 ∧ q = r then
      rough P q * shortColumn P N L G q * (rough P r * shortColumn P N L G r) /
        (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) else 0) = 0 := by
  by_cases h : Nat.gcd q r = 1 ∧ q = r
  · obtain ⟨hq, hr⟩ := (d_one_diagonal_iff q r).mp h
    simp [hq, hr, shortColumn_one]
  · simp [h]

/-- Each mixed orientation has a short factor at the sole possible diagonal. -/
theorem mixed_diagonal_term_zero (P : List ℕ) (N L : ℕ)
    (G : ℕ → ℕ → ℝ) (q r : ℕ) :
    (if Nat.gcd q r = 1 ∧ q = r then
      (rough P q * shortColumn P N L G q * (rough P r * longColumn P N L G r) +
       rough P q * longColumn P N L G q * (rough P r * shortColumn P N L G r)) /
        (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) else 0) = 0 := by
  by_cases h : Nat.gcd q r = 1 ∧ q = r
  · obtain ⟨hq, hr⟩ := (d_one_diagonal_iff q r).mp h
    simp [hq, hr, shortColumn_one]
  · simp [h]

/-- No SS diagonal is lost when the complete coprime sector is restricted. -/
theorem shortShort_diagonal_sum_zero (P : List ℕ) (N L : ℕ)
    (G : ℕ → ℕ → ℝ) :
    (∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
      if Nat.gcd q r = 1 ∧ q = r then
        rough P q * shortColumn P N L G q * (rough P r * shortColumn P N L G r) /
          (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) else 0) = 0 := by
  simp_rw [shortShort_diagonal_term_zero]
  simp

/-- The complete SL+LS diagonal sum vanishes without centering the moment. -/
theorem mixed_diagonal_sum_zero (P : List ℕ) (N L : ℕ)
    (G : ℕ → ℕ → ℝ) :
    (∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
      if Nat.gcd q r = 1 ∧ q = r then
        (rough P q * shortColumn P N L G q * (rough P r * longColumn P N L G r) +
         rough P q * longColumn P N L G q * (rough P r * shortColumn P N L G r)) /
          (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) else 0) = 0 := by
  simp_rw [mixed_diagonal_term_zero]
  simp

/-- All of the SS sector is off-diagonal in the d=1 fiber. -/
theorem shortShortCoprime_eq_offDiagonal (P : List ℕ) (N L : ℕ)
    (G : ℕ → ℕ → ℝ) :
    shortShortCoprime P N L G = shortShortOffDiagonal P N L G := by
  unfold shortShortCoprime shortShortOffDiagonal
  apply Finset.sum_congr rfl
  intro q _
  apply Finset.sum_congr rfl
  intro r _
  by_cases he : q = r
  · simpa [he] using shortShort_diagonal_term_zero P N L G q r
  · simp [he]

/-- The existing complete mixed term equals its two-orientation off-diagonal sum. -/
theorem mixedCoprime_eq_offDiagonal (P : List ℕ) (N L : ℕ)
    (G : ℕ → ℕ → ℝ) :
    mixedCoprime P N L G = mixedOffDiagonal P N L G := by
  rw [mixedCoprime_eq_d_one_mixed_fiber]
  unfold mixedOffDiagonal
  apply Finset.sum_congr rfl
  intro q _
  apply Finset.sum_congr rfl
  intro r _
  by_cases he : q = r
  · simpa [he] using mixed_diagonal_term_zero P N L G q r
  · simp [he]

/-- The literal full off-diagonal includes SS, SL, LS and LL. -/
theorem dOneOffDiagonal_eq_shortShort_add_mixed_add_longLong
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    dOneOffDiagonal P N L G = shortShortOffDiagonal P N L G +
      mixedOffDiagonal P N L G + longLongOffDiagonal P N L G := by
  unfold dOneOffDiagonal shortShortOffDiagonal mixedOffDiagonal longLongOffDiagonal
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro q _
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro r _
  by_cases h : Nat.gcd q r = 1 ∧ q ≠ r
  · simp only [if_pos h, jointCoefficient_pair_expansion]
    ring
  · simp [h]

/-- The full d=1 fiber is its retained long unit square plus the COMPLETE
signed off-diagonal source sum. No sector estimate or orthogonality is assumed. -/
theorem dOneFiber_eq_unit_add_complete_offDiagonal
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    dOneFiber P N L G =
      (if 1 ≤ N then (sourceCoefficient P N 1 * longColumn P N L G 1)^2 else 0) +
        dOneOffDiagonal P N L G := by
  rw [dOneFiber_eq_shortShort_add_mixed_add_unit_add_offDiagonal,
    shortShortCoprime_eq_offDiagonal, mixedCoprime_eq_offDiagonal,
    dOneOffDiagonal_eq_shortShort_add_mixed_add_longLong]
  ring

/-- Positive-horizon form, with the original long unit square retained. -/
theorem dOneFiber_eq_unit_add_complete_offDiagonal_of_one_le
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) (hN : 1 ≤ N) :
    dOneFiber P N L G =
      (sourceCoefficient P N 1 * longColumn P N L G 1)^2 + dOneOffDiagonal P N L G := by
  rw [dOneFiber_eq_unit_add_complete_offDiagonal, if_pos hN]

/-- At N=0 the complete fiber and every off-diagonal sector are empty.
The conditional unit contribution in the full identity is then zero as well. -/
theorem dOneFiber_complete_offDiagonal_zero_components
    (P : List ℕ) (L : ℕ) (G : ℕ → ℕ → ℝ) :
    dOneFiber P 0 L G = 0 ∧ dOneOffDiagonal P 0 L G = 0 ∧
      shortShortOffDiagonal P 0 L G = 0 ∧ mixedOffDiagonal P 0 L G = 0 ∧
      longLongOffDiagonal P 0 L G = 0 := by
  simp [dOneFiber, dOneOffDiagonal, shortShortOffDiagonal,
    mixedOffDiagonal, longLongOffDiagonal]

/-- One original normalized joint-square summand, at the frozen source horizon. -/
def dOnePair (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) (q r : ℕ) : ℝ :=
  jointCoefficient P N L N N L G q * jointCoefficient P N L N N L G r /
    (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1))

/-- The full coprime q<r triangle. No order on extraction primes or their
products is imposed; the original column masks and denominators remain. -/
def dOneUpperTriangle (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
    if Nat.gcd q r = 1 ∧ q < r then dOnePair P N L G q r else 0

/-- Symmetry comes from the scalar column product and the two denominator
factors. No symmetry or analytic hypothesis on G is needed. -/
theorem dOnePair_symm (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) (q r : ℕ) :
    dOnePair P N L G q r = dOnePair P N L G r q := by
  unfold dOnePair
  congr 1 <;> ring

/-- The complete signed coprime off-diagonal is twice the q<r triangle.
Swapping the original two quotient inventories retains every source term. -/
theorem dOneOffDiagonal_eq_two_mul_upperTriangle
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    dOneOffDiagonal P N L G = 2 * dOneUpperTriangle P N L G := by
  let f : ℕ → ℕ → ℝ := fun q r =>
    if Nat.gcd q r = 1 ∧ q < r then dOnePair P N L G q r else 0
  have hsplit (q r : ℕ) :
      (if Nat.gcd q r = 1 ∧ q ≠ r then dOnePair P N L G q r else 0) =
        f q r + f r q := by
    by_cases hg : Nat.gcd q r = 1
    · rcases lt_trichotomy q r with hlt | he | hgt
      · have hne : q ≠ r := ne_of_lt hlt
        have hnot : ¬r < q := not_lt_of_ge (le_of_lt hlt)
        simp [f, hg, Nat.gcd_comm r q, hlt, hne, hnot]
      · subst r
        simp [f]
      · have hne : q ≠ r := (ne_of_lt hgt).symm
        have hnot : ¬q < r := not_lt_of_ge (le_of_lt hgt)
        simpa [f, hg, Nat.gcd_comm r q, hgt, hne, hnot] using
          dOnePair_symm P N L G q r
    · have hgr : ¬Nat.gcd r q = 1 := by
        simpa only [Nat.gcd_comm r q] using hg
      simp [f, hg, hgr]
  have hswap :
      (∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N, f r q) =
        ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N, f q r := by
    rw [Finset.sum_comm]
  change (∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
    if Nat.gcd q r = 1 ∧ q ≠ r then dOnePair P N L G q r else 0) =
      2 * ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N, f q r
  simp_rw [hsplit, Finset.sum_add_distrib]
  rw [hswap]
  ring

/-- The entire d=1 fiber, with the long unit square and both orientations
of every coprime unequal quotient pair retained. This is a signed identity. -/
theorem dOneFiber_eq_unit_add_two_mul_upperTriangle
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    dOneFiber P N L G =
      (if 1 ≤ N then (sourceCoefficient P N 1 * longColumn P N L G 1)^2 else 0) +
        2 * dOneUpperTriangle P N L G := by
  rw [dOneFiber_eq_unit_add_complete_offDiagonal,
    dOneOffDiagonal_eq_two_mul_upperTriangle]

/-- Positive-horizon form; the original long unit square is not centered away. -/
theorem dOneFiber_eq_unit_add_two_mul_upperTriangle_of_one_le
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) (hN : 1 ≤ N) :
    dOneFiber P N L G =
      (sourceCoefficient P N 1 * longColumn P N L G 1)^2 +
        2 * dOneUpperTriangle P N L G := by
  rw [dOneFiber_eq_unit_add_two_mul_upperTriangle, if_pos hN]

/-- The full fiber, complete off-diagonal and strict triangle are empty at N=0.
The conditional unit term in the general identity is then zero as well. -/
theorem dOneFiber_upperTriangle_zero_components
    (P : List ℕ) (L : ℕ) (G : ℕ → ℕ → ℝ) :
    dOneFiber P 0 L G = 0 ∧ dOneOffDiagonal P 0 L G = 0 ∧
      dOneUpperTriangle P 0 L G = 0 := by
  simp [dOneFiber, dOneOffDiagonal, dOneUpperTriangle]

/-- The actual SS numerator on the same coprime strict quotient triangle. -/
def shortShortUpperTriangle (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
    if Nat.gcd q r = 1 ∧ q < r then
      rough P q * shortColumn P N L G q * (rough P r * shortColumn P N L G r) /
        (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) else 0

/-- SL keeps the short column at q and the long column at r. -/
def shortLongUpperTriangle (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
    if Nat.gcd q r = 1 ∧ q < r then
      rough P q * shortColumn P N L G q * (rough P r * longColumn P N L G r) /
        (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) else 0

/-- LS keeps the long column at q and the short column at r. Swapping q,r
would reverse the strict triangle, so this is retained as its own sector. -/
def longShortUpperTriangle (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
    if Nat.gcd q r = 1 ∧ q < r then
      rough P q * longColumn P N L G q * (rough P r * shortColumn P N L G r) /
        (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) else 0

/-- LL on the strict triangle. Off-diagonal pairs with q=1 remain included. -/
def longLongUpperTriangle (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
    if Nat.gcd q r = 1 ∧ q < r then
      rough P q * longColumn P N L G q * (rough P r * longColumn P N L G r) /
        (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) else 0

/-- Exact four-sector expansion on the ORIGINAL coprime q<r inventory.
The two mixed orientations are separate; neither is a residual or discarded. -/
theorem dOneUpperTriangle_eq_shortShort_add_shortLong_add_longShort_add_longLong
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    dOneUpperTriangle P N L G = shortShortUpperTriangle P N L G +
      shortLongUpperTriangle P N L G + longShortUpperTriangle P N L G +
      longLongUpperTriangle P N L G := by
  unfold dOneUpperTriangle shortShortUpperTriangle shortLongUpperTriangle
    longShortUpperTriangle longLongUpperTriangle
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro q _
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro r _
  by_cases h : Nat.gcd q r = 1 ∧ q < r
  · simp only [if_pos h, dOnePair, jointCoefficient_pair_expansion]
    ring
  · simp [h]

/-- Consumer in the full d=1 fiber. The original long unit square stays
outside twice the complete four-sector strict triangle, including at N=0. -/
theorem dOneFiber_eq_unit_add_two_mul_upperTriangle_sectors
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    dOneFiber P N L G =
      (if 1 ≤ N then (sourceCoefficient P N 1 * longColumn P N L G 1)^2 else 0) +
        2 * (shortShortUpperTriangle P N L G + shortLongUpperTriangle P N L G +
          longShortUpperTriangle P N L G + longLongUpperTriangle P N L G) := by
  rw [dOneFiber_eq_unit_add_two_mul_upperTriangle,
    dOneUpperTriangle_eq_shortShort_add_shortLong_add_longShort_add_longLong]

/-- At N=0 the complete strict triangle and all four literal sectors are empty. -/
theorem dOneUpperTriangle_zero_sectors
    (P : List ℕ) (L : ℕ) (G : ℕ → ℕ → ℝ) :
    dOneUpperTriangle P 0 L G = 0 ∧ shortShortUpperTriangle P 0 L G = 0 ∧
      shortLongUpperTriangle P 0 L G = 0 ∧ longShortUpperTriangle P 0 L G = 0 ∧
      longLongUpperTriangle P 0 L G = 0 := by
  simp [dOneUpperTriangle, shortShortUpperTriangle, shortLongUpperTriangle,
    longShortUpperTriangle, longLongUpperTriangle]

/-- Finite coprime folding for a symmetric signed summand. Sector consumers
below discharge symmetry algebraically, without a symmetry assumption on G. -/
theorem sum_coprime_offDiagonal_eq_two_mul_upperTriangle (N : ℕ)
    (f : ℕ → ℕ → ℝ) (hsymm : ∀ q r, f q r = f r q) :
    (∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
      if Nat.gcd q r = 1 ∧ q ≠ r then f q r else 0) =
      2 * ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
        if Nat.gcd q r = 1 ∧ q < r then f q r else 0 := by
  let g : ℕ → ℕ → ℝ := fun q r =>
    if Nat.gcd q r = 1 ∧ q < r then f q r else 0
  have hsplit (q r : ℕ) :
      (if Nat.gcd q r = 1 ∧ q ≠ r then f q r else 0) = g q r + g r q := by
    by_cases hg : Nat.gcd q r = 1
    · rcases lt_trichotomy q r with hlt | he | hgt
      · have hne : q ≠ r := ne_of_lt hlt
        have hnot : ¬r < q := not_lt_of_ge (le_of_lt hlt)
        simp [g, hg, Nat.gcd_comm r q, hlt, hne, hnot]
      · subst r
        simp [g]
      · have hne : q ≠ r := (ne_of_lt hgt).symm
        have hnot : ¬q < r := not_lt_of_ge (le_of_lt hgt)
        simpa [g, hg, Nat.gcd_comm r q, hgt, hne, hnot] using hsymm q r
    · have hgr : ¬Nat.gcd r q = 1 := by
        simpa only [Nat.gcd_comm r q] using hg
      simp [g, hg, hgr]
  have hswap :
      (∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N, g r q) =
        ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N, g q r := by
    rw [Finset.sum_comm]
  change (∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
    if Nat.gcd q r = 1 ∧ q ≠ r then f q r else 0) =
      2 * ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N, g q r
  simp_rw [hsplit, Finset.sum_add_distrib]
  rw [hswap]
  ring

/-- Exact SS folding with the same original numerator, masks and denominators. -/
theorem shortShortOffDiagonal_eq_two_mul_upperTriangle
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    shortShortOffDiagonal P N L G = 2 * shortShortUpperTriangle P N L G := by
  unfold shortShortOffDiagonal shortShortUpperTriangle
  apply sum_coprime_offDiagonal_eq_two_mul_upperTriangle
  intro q r
  congr 1 <;> ring

/-- The combined SL+LS summand is symmetric. Its strict triangles remain
distinct: this identity does not assert equality of SL and LS on q<r. -/
theorem mixedOffDiagonal_eq_two_mul_upperTriangles
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    mixedOffDiagonal P N L G =
      2 * (shortLongUpperTriangle P N L G + longShortUpperTriangle P N L G) := by
  have hfold := sum_coprime_offDiagonal_eq_two_mul_upperTriangle N
    (fun q r =>
      (rough P q * shortColumn P N L G q * (rough P r * longColumn P N L G r) +
       rough P q * longColumn P N L G q * (rough P r * shortColumn P N L G r)) /
        (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)))
    (by intro q r; congr 1 <;> ring)
  unfold mixedOffDiagonal
  rw [hfold]
  unfold shortLongUpperTriangle longShortUpperTriangle
  rw [← Finset.sum_add_distrib]
  congr 1
  apply Finset.sum_congr rfl
  intro q _
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro r _
  by_cases h : Nat.gcd q r = 1 ∧ q < r
  · simp only [if_pos h]
    ring
  · simp [h]

/-- The previously identified complete mixed term has no d=1 diagonal,
so the same two-triangle formula applies to the original mixedCoprime. -/
theorem mixedCoprime_eq_two_mul_upperTriangles
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    mixedCoprime P N L G =
      2 * (shortLongUpperTriangle P N L G + longShortUpperTriangle P N L G) := by
  rw [mixedCoprime_eq_offDiagonal, mixedOffDiagonal_eq_two_mul_upperTriangles]

/-- Exact LL off-diagonal folding. The long unit square stays in the
separate diagonal term, and off-diagonal one-unit pairs remain. -/
theorem longLongOffDiagonal_eq_two_mul_upperTriangle
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    longLongOffDiagonal P N L G = 2 * longLongUpperTriangle P N L G := by
  unfold longLongOffDiagonal longLongUpperTriangle
  apply sum_coprime_offDiagonal_eq_two_mul_upperTriangle
  intro q r
  congr 1 <;> ring

/-- Every side of the three sector-folding identities is empty at N=0. -/
theorem sector_folding_zero_components
    (P : List ℕ) (L : ℕ) (G : ℕ → ℕ → ℝ) :
    shortShortOffDiagonal P 0 L G = 0 ∧ mixedOffDiagonal P 0 L G = 0 ∧
      mixedCoprime P 0 L G = 0 ∧ longLongOffDiagonal P 0 L G = 0 ∧
      shortShortUpperTriangle P 0 L G = 0 ∧ shortLongUpperTriangle P 0 L G = 0 ∧
      longShortUpperTriangle P 0 L G = 0 ∧ longLongUpperTriangle P 0 L G = 0 := by
  rw [mixedCoprime_eq_offDiagonal]
  simp [shortShortOffDiagonal, mixedOffDiagonal, longLongOffDiagonal,
    shortShortUpperTriangle, shortLongUpperTriangle,
    longShortUpperTriangle, longLongUpperTriangle]

/-- The entire coprime SS sector is twice its strict quotient triangle:
its d=1 diagonal vanishes by the existing short unit-column identity. -/
theorem shortShortCoprime_eq_two_mul_upperTriangle
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    shortShortCoprime P N L G = 2 * shortShortUpperTriangle P N L G := by
  rw [shortShortCoprime_eq_offDiagonal, shortShortOffDiagonal_eq_two_mul_upperTriangle]

/-- The entire coprime LL sector retains its original long unit square.
The conditional records membership of 1 in the closed source inventory. -/
theorem longLongCoprime_eq_unit_add_two_mul_upperTriangle
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    longLongCoprime P N L G =
      (if 1 ≤ N then (sourceCoefficient P N 1 * longColumn P N L G 1)^2 else 0) +
        2 * longLongUpperTriangle P N L G := by
  rw [longLongCoprime_eq_unit_add_offDiagonal,
    longLongOffDiagonal_eq_two_mul_upperTriangle]

/-- Positive-horizon LL form, without dropping or centering the long unit term. -/
theorem longLongCoprime_eq_unit_add_two_mul_upperTriangle_of_one_le
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) (hN : 1 ≤ N) :
    longLongCoprime P N L G =
      (sourceCoefficient P N 1 * longColumn P N L G 1)^2 +
        2 * longLongUpperTriangle P N L G := by
  rw [longLongCoprime_eq_unit_add_two_mul_upperTriangle, if_pos hN]

/-- Both complete coprime sectors and their strict triangles are empty at N=0.
The conditional LL unit term is zero in this empty inventory as well. -/
theorem coprime_same_sector_triangle_zero_components
    (P : List ℕ) (L : ℕ) (G : ℕ → ℕ → ℝ) :
    shortShortCoprime P 0 L G = 0 ∧ longLongCoprime P 0 L G = 0 ∧
      shortShortUpperTriangle P 0 L G = 0 ∧ longLongUpperTriangle P 0 L G = 0 := by
  simp [shortShortCoprime, longLongCoprime,
    shortShortUpperTriangle, longLongUpperTriangle]

/-- One complete coprime SL orientation, with the original arithmetic factors. -/
def shortLongCoprime (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
    if Nat.gcd q r = 1 then
      rough P q * shortColumn P N L G q * (rough P r * longColumn P N L G r) /
        (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) else 0

/-- The opposite complete coprime LS orientation, on the same closed inventory. -/
def longShortCoprime (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
    if Nat.gcd q r = 1 then
      rough P q * longColumn P N L G q * (rough P r * shortColumn P N L G r) /
        (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) else 0

/-- The full square inventory is invariant under quotient exchange. This
exchanges SL and LS, including all source masks and both denominator factors. -/
theorem shortLongCoprime_eq_longShortCoprime
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    shortLongCoprime P N L G = longShortCoprime P N L G := by
  unfold shortLongCoprime longShortCoprime
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro q _
  apply Finset.sum_congr rfl
  intro r _
  rw [Nat.gcd_comm r q]
  by_cases h : Nat.gcd q r = 1
  · simp only [if_pos h]
    congr 1 <;> ring
  · simp [h]

/-- The existing complete mixed term is exactly the sum of its two literal
orientations, before any quotient ordering, absolute value or centering. -/
theorem mixedCoprime_eq_shortLong_add_longShort
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    mixedCoprime P N L G = shortLongCoprime P N L G + longShortCoprime P N L G := by
  rw [mixedCoprime_eq_d_one_mixed_fiber]
  unfold shortLongCoprime longShortCoprime
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro q _
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro r _
  by_cases h : Nat.gcd q r = 1
  · simp only [if_pos h]
    ring
  · simp [h]

/-- A complete SL orientation is the sum of BOTH strict triangle orientations.
Their equality as separate triangle sums is neither assumed nor asserted. -/
theorem shortLongCoprime_eq_upperTriangles
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    shortLongCoprime P N L G =
      shortLongUpperTriangle P N L G + longShortUpperTriangle P N L G := by
  have hsum := mixedCoprime_eq_shortLong_add_longShort P N L G
  have hsymm := shortLongCoprime_eq_longShortCoprime P N L G
  have hfold := mixedCoprime_eq_two_mul_upperTriangles P N L G
  linarith

/-- The complete LS orientation has the same two-triangle source sum. -/
theorem longShortCoprime_eq_upperTriangles
    (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    longShortCoprime P N L G =
      shortLongUpperTriangle P N L G + longShortUpperTriangle P N L G := by
  rw [← shortLongCoprime_eq_longShortCoprime, shortLongCoprime_eq_upperTriangles]

/-- All complete mixed orientations and both strict triangles are empty at N=0. -/
theorem coprime_mixed_orientation_zero_components
    (P : List ℕ) (L : ℕ) (G : ℕ → ℕ → ℝ) :
    shortLongCoprime P 0 L G = 0 ∧ longShortCoprime P 0 L G = 0 ∧
      shortLongUpperTriangle P 0 L G = 0 ∧ longShortUpperTriangle P 0 L G = 0 := by
  simp [shortLongCoprime, longShortCoprime,
    shortLongUpperTriangle, longShortUpperTriangle]

/-- A crossed quotient: the LONG prime divides the SHORT-side quotient.
This does not coincide with the old shared sector s|n in the long row. -/
def crossedMixed (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  2 * ∑ p ∈ freshPrimes P N, if p ≤ L then
    ∑ s ∈ freshPrimes P N, if L < s then
      ∑ q ∈ Finset.Icc 1 (N/p), if s ∣ q then
        ∑ r ∈ Finset.Icc 1 (N/s),
          if Nat.Coprime q r then mixedPair P N L G p s q r else 0
      else 0
    else 0
  else 0

def uncrossedMixed (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  2 * ∑ p ∈ freshPrimes P N, if p ≤ L then
    ∑ s ∈ freshPrimes P N, if L < s then
      ∑ q ∈ Finset.Icc 1 (N/p), if ¬s ∣ q then
        ∑ r ∈ Finset.Icc 1 (N/s),
          if Nat.Coprime q r then mixedPair P N L G p s q r else 0
      else 0
    else 0
  else 0

theorem mixed_partition (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    mixedCoprime P N L G = crossedMixed P N L G + uncrossedMixed P N L G := by
  unfold mixedCoprime crossedMixed uncrossedMixed
  rw [← mul_add, ← Finset.sum_add_distrib]
  congr 1
  apply Finset.sum_congr rfl
  intro p _
  by_cases hp : p ≤ L
  · simp only [if_pos hp]
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro s _
    by_cases hs : L < s
    · simp only [if_pos hs]
      rw [← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro q _
      by_cases h : s ∣ q <;> simp [h]
    · simp [hs]
  · simp [hp]

/-- The crossed region is genuinely off the quotient diagonal at the long threshold. -/
theorem crossed_quotients_distinct {N s q r : ℕ} (hs : 0 < s)
    (hlong : Nat.sqrt N < s) (hq : 1 ≤ q) (hsq : s ∣ q)
    (hr : r ≤ N/s) : q ≠ r := by
  have hsq' : s ≤ q := Nat.le_of_dvd hq hsq
  have hrs : r < s := quotient_lt_long_prime hs hlong hr
  omega

/-- Pointwise row budget derived from the literal strict source triangle. -/
theorem sourceRow_abs_le (P : List ℕ) (N L Z : ℕ) (G : ℕ → ℕ → ℝ)
    {C : ℝ} (hC : 0 ≤ C)
    (hG : ∀ m n : ℕ, 1 ≤ m → 1 ≤ n →
      |G m n| ≤ C * inverseSqrtKernel m n)
    {p q : ℕ} (hp : 1 ≤ p) (hq : 1 ≤ q) :
    |sourceRow P N L Z G p q| ≤ 2*C := by
  have hpq : 1 ≤ p*q := by nlinarith
  have hspos : 0 < Real.sqrt ((p*q : ℕ) : ℝ) := Real.sqrt_pos.mpr (by exact_mod_cast (show 0 < p*q by omega))
  have hh := sum_inverse_sqrt_le (p*q)
  unfold sourceRow
  split_ifs with h
  · calc
      _ ≤ ∑ m ∈ Finset.Icc 1 (p*q),
          |if L < m ∧ m < p*q ∧ (p ≤ Z ∨ ¬p ∣ m)
            then rough P m * G m (p*q) else 0| := Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ m ∈ Finset.Icc 1 (p*q), C * inverseSqrtKernel m (p*q) := by
        apply Finset.sum_le_sum
        intro m hm
        split_ifs
        · rw [abs_mul]
          calc
            _ ≤ |G m (p*q)| := by
              simpa using mul_le_mul_of_nonneg_right (rough_abs_le_one P m) (abs_nonneg _)
            _ ≤ _ := hG m (p*q) (Finset.mem_Icc.mp hm).1 hpq
        · simp only [abs_zero]
          unfold inverseSqrtKernel
          positivity
      _ = (C * (Real.sqrt ((p*q : ℕ) : ℝ))⁻¹) *
          ∑ m ∈ Finset.Icc 1 (p*q), (Real.sqrt (m : ℝ))⁻¹ := by
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro m _
        unfold inverseSqrtKernel
        ring
      _ ≤ (C * (Real.sqrt ((p*q : ℕ) : ℝ))⁻¹) *
          (2 * Real.sqrt ((p*q : ℕ) : ℝ)) :=
        mul_le_mul_of_nonneg_left hh (by positivity)
      _ = 2*C := by field_simp [hspos.ne']; ring
  · simp only [abs_zero]
    positivity

theorem mixedPair_abs_le (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ)
    {C : ℝ} (hC : 0 ≤ C)
    (hG : ∀ m n : ℕ, 1 ≤ m → 1 ≤ n →
      |G m n| ≤ C * inverseSqrtKernel m n)
    {p s q r : ℕ} (hp : 1 ≤ p) (hs : 1 ≤ s) (hq : 1 ≤ q) (hr : 1 ≤ r) :
    |mixedPair P N L G p s q r| ≤ 4*C^2 := by
  have hc : |sourceCoefficient P N q * sourceCoefficient P N r| ≤ 1 := by
    rw [abs_mul]
    simpa using mul_le_mul (sourceCoefficient_abs_le_one P N q)
      (sourceCoefficient_abs_le_one P N r) (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)
  have hb := mul_le_mul (sourceRow_abs_le P N L L G hC hG hp hq)
    (sourceRow_abs_le P N L L G hC hG hs hr) (abs_nonneg _)
    (by positivity : 0 ≤ 2*C)
  have hb' : |sourceRow P N L L G p q * sourceRow P N L L G s r| ≤ 4*C^2 := by
    rw [abs_mul]
    nlinarith [hb]
  unfold mixedPair
  rw [mul_assoc, abs_mul]
  exact (mul_le_mul hc hb' (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)).trans
    (by simp)

/-- Closed nested quotient cutoff. No N/p is replaced by N. -/
theorem crossed_reindex (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ)
    (p s : ℕ) (hs : 0 < s) :
    (∑ q ∈ Finset.Icc 1 (N/p), if s ∣ q then
      ∑ r ∈ Finset.Icc 1 (N/s),
        if Nat.Coprime q r then mixedPair P N L G p s q r else 0
      else 0) =
    ∑ h ∈ Finset.Icc 1 ((N/p)/s), ∑ r ∈ Finset.Icc 1 (N/s),
      if Nat.Coprime (s*h) r then mixedPair P N L G p s (s*h) r else 0 := by
  have he := sum_divisible_window_eq_quotient 0 (N/p) s hs
    (fun q => ∑ r ∈ Finset.Icc 1 (N/s),
      if Nat.Coprime q r then mixedPair P N L G p s q r else 0)
  simp only [zero_add, add_zero] at he
  rw [he]
  apply Finset.sum_congr rfl
  intro h hh
  simp [Nat.mul_pos hs (Finset.mem_Icc.mp hh).1]

/-- A bound for one literal short/long prime pair, before summing either prime. -/
theorem crossed_prime_pair_abs_le (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ)
    {C : ℝ} (hC : 0 ≤ C)
    (hG : ∀ m n : ℕ, 1 ≤ m → 1 ≤ n →
      |G m n| ≤ C * inverseSqrtKernel m n)
    {p s : ℕ} (hp : 1 ≤ p) (hs : 1 ≤ s) :
    |∑ q ∈ Finset.Icc 1 (N/p), if s ∣ q then
      ∑ r ∈ Finset.Icc 1 (N/s),
        if Nat.Coprime q r then mixedPair P N L G p s q r else 0
      else 0| ≤ 4*C^2*(N : ℝ)^2 / ((p : ℝ)*(s : ℝ)^2) := by
  have hpR : (0 : ℝ) < p := by exact_mod_cast (show 0 < p by omega)
  have hsR : (0 : ℝ) < s := by exact_mod_cast (show 0 < s by omega)
  rw [crossed_reindex P N L G p s (by omega)]
  have hh : (((N/p)/s : ℕ) : ℝ)*(p : ℝ)*(s : ℝ) ≤ (N : ℝ) := by
    have ht := (Nat.mul_le_mul_right p (Nat.div_mul_le_self (N/p) s)).trans
      (Nat.div_mul_le_self N p)
    have ht' : ((N/p)/s)*p*s ≤ N := by
      simpa only [Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm] using ht
    exact_mod_cast ht'
  have hr : ((N/s : ℕ) : ℝ)*(s : ℝ) ≤ (N : ℝ) := by
    exact_mod_cast Nat.div_mul_le_self N s
  have hprod := mul_le_mul hh hr (by positivity : 0 ≤ ((N/s : ℕ) : ℝ)*(s : ℝ))
    (Nat.cast_nonneg N : (0 : ℝ) ≤ N)
  have hcount : (((N/p)/s : ℕ) : ℝ)*((N/s : ℕ) : ℝ) ≤
      (N : ℝ)^2/((p : ℝ)*(s : ℝ)^2) := by
    apply (le_div_iff₀ (by positivity : 0 < (p : ℝ)*(s : ℝ)^2)).mpr
    convert hprod using 1 <;> ring
  calc
    _ ≤ ∑ h ∈ Finset.Icc 1 ((N/p)/s),
        |∑ r ∈ Finset.Icc 1 (N/s),
          if Nat.Coprime (s*h) r then mixedPair P N L G p s (s*h) r else 0| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ h ∈ Finset.Icc 1 ((N/p)/s), ∑ r ∈ Finset.Icc 1 (N/s), (4*C^2) := by
      apply Finset.sum_le_sum
      intro h hh
      apply (Finset.abs_sum_le_sum_abs _ _).trans
      apply Finset.sum_le_sum
      intro r hr
      split_ifs
      · exact mixedPair_abs_le P N L G hC hG hp hs
          (by nlinarith [(Finset.mem_Icc.mp hh).1]) (Finset.mem_Icc.mp hr).1
      · simp only [abs_zero]
        positivity
    _ = (4*C^2) * ((((N/p)/s : ℕ) : ℝ)*((N/s : ℕ) : ℝ)) := by
      simp [Finset.sum_const, Nat.card_Icc, nsmul_eq_mul]
      <;> ring
    _ ≤ (4*C^2) * ((N : ℝ)^2/((p : ℝ)*(s : ℝ)^2)) :=
      mul_le_mul_of_nonneg_left hcount (by positivity)
    _ = _ := by ring

/-- Every prime, quotient and core cost is paid. The remaining factor is a
finite harmonic sum and a reciprocal-square tail; no signed supplier is assumed. -/
theorem crossedMixed_abs_le (P : List ℕ) (N L : ℕ) (hL : 1 ≤ L)
    (G : ℕ → ℕ → ℝ) {C : ℝ} (hC : 0 ≤ C)
    (hG : ∀ m n : ℕ, 1 ≤ m → 1 ≤ n →
      |G m n| ≤ C * inverseSqrtKernel m n) :
    |crossedMixed P N L G| ≤
      8*C^2*(N : ℝ)^2 * (∑ n ∈ Finset.Icc 1 N, (n : ℝ)⁻¹) / (L : ℝ) := by
  let Qs := (freshPrimes P N).filter (fun p => p ≤ L)
  let Ql := (freshPrimes P N).filter (fun s => L < s)
  have hshort : (∑ p ∈ Qs, (p : ℝ)⁻¹) ≤ ∑ n ∈ Finset.Icc 1 N, (n : ℝ)⁻¹ := by
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro p hp
      have hf := fresh_mem (Finset.mem_filter.mp hp).1
      exact Finset.mem_Icc.mpr ⟨hf.1.one_le, hf.2.2⟩
    · intro n _ _
      positivity
  have hlong : (∑ s ∈ Ql, ((s : ℝ)^2)⁻¹) ≤ (L : ℝ)⁻¹ := by
    calc
      _ ≤ ∑ s ∈ Finset.Icc (L+1) N, ((s : ℝ)^2)⁻¹ := by
        apply Finset.sum_le_sum_of_subset_of_nonneg
        · intro s hs
          obtain ⟨hf, hl⟩ := Finset.mem_filter.mp hs
          exact Finset.mem_Icc.mpr ⟨by omega, (fresh_mem hf).2.2⟩
        · intro n _ _
          positivity
      _ ≤ _ := reciprocal_square_tail L N hL
  have hbound :
      |∑ p ∈ Qs, ∑ s ∈ Ql, ∑ q ∈ Finset.Icc 1 (N/p), if s ∣ q then
        ∑ r ∈ Finset.Icc 1 (N/s),
          if Nat.Coprime q r then mixedPair P N L G p s q r else 0
        else 0| ≤
      ∑ p ∈ Qs, ∑ s ∈ Ql, 4*C^2*(N : ℝ)^2 / ((p : ℝ)*(s : ℝ)^2) := by
    apply (Finset.abs_sum_le_sum_abs _ _).trans
    apply Finset.sum_le_sum
    intro p hp
    apply (Finset.abs_sum_le_sum_abs _ _).trans
    apply Finset.sum_le_sum
    intro s hs
    exact crossed_prime_pair_abs_le P N L G hC hG
      (fresh_mem (Finset.mem_filter.mp hp).1).1.one_le
      (fresh_mem (Finset.mem_filter.mp hs).1).1.one_le
  have he : (∑ p ∈ Qs, ∑ s ∈ Ql,
      4*C^2*(N : ℝ)^2 / ((p : ℝ)*(s : ℝ)^2)) =
      (4*C^2*(N : ℝ)^2) *
        ((∑ p ∈ Qs, (p : ℝ)⁻¹)*(∑ s ∈ Ql, ((s : ℝ)^2)⁻¹)) := by
    simp only [Finset.sum_mul_sum, Finset.mul_sum, div_eq_mul_inv, mul_inv_rev]
    apply Finset.sum_congr rfl
    intro p _
    apply Finset.sum_congr rfl
    intro s _
    ring
  have hm := mul_le_mul hshort hlong
    (Finset.sum_nonneg (fun _ _ => by positivity))
    (Finset.sum_nonneg (fun _ _ => by positivity))
  have hz : crossedMixed P N L G = 2 *
      (∑ p ∈ Qs, ∑ s ∈ Ql, ∑ q ∈ Finset.Icc 1 (N/p), if s ∣ q then
        ∑ r ∈ Finset.Icc 1 (N/s),
          if Nat.Coprime q r then mixedPair P N L G p s q r else 0
        else 0) := by simp only [crossedMixed, Qs, Ql, Finset.sum_filter]
  rw [hz, abs_mul, show |(2 : ℝ)| = 2 by norm_num]
  rw [he] at hbound
  have hh := mul_le_mul_of_nonneg_left hm (by positivity : 0 ≤ 4*C^2*(N : ℝ)^2)
  calc
    _ ≤ 2*((4*C^2*(N : ℝ)^2)*
        ((∑ p ∈ Qs, (p : ℝ)⁻¹)*(∑ s ∈ Ql, ((s : ℝ)^2)⁻¹))) :=
      mul_le_mul_of_nonneg_left hbound (by norm_num)
    _ ≤ 2*((4*C^2*(N : ℝ)^2)*
        ((∑ n ∈ Finset.Icc 1 N, (n : ℝ)⁻¹)*(L : ℝ)⁻¹)) :=
      mul_le_mul_of_nonneg_left hh (by norm_num)
    _ = _ := by rw [div_eq_mul_inv]; ring

/-- The generic kernel estimate is discharged by the ORIGINAL frozen block Gram. -/
theorem crossedMixed_gram_bound (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    {T : ℝ} (hT : 0 ≤ T) (L : ℕ) (hL : 1 ≤ L) :
    |crossedMixed P ⌊Real.exp T⌋₊ L (gram P T)| ≤
      128*T^2*factor P^4*(⌊Real.exp T⌋₊ : ℝ)^2 *
        (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, (n : ℝ)⁻¹) / (L : ℝ) := by
  have hb := crossedMixed_abs_le P ⌊Real.exp T⌋₊ L hL (gram P T)
    (C := 4*T*factor P^2) (by positivity) (by
      intro m n hm hn
      simpa only [inverseSqrtKernel, mul_assoc] using gram_abs_le P hP hT hm hn)
  convert hb using 1 <;> ring

end GRWTSK.NumberTheory.Moebius.PickupRoughMixedQuotientPrime
