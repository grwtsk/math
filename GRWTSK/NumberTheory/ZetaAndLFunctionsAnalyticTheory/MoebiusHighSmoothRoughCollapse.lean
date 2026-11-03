/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusHighSmoothDensePairs
import Mathlib

/-!
# Exact high-smooth carrier dichotomy for the ORIGINAL Möbius pair source

For the genuine source integer n in balancedBlock X T, let
Q = nearSquareRootCut (2*X) and select those n with a P-smooth d|n,
d>Q. Two distinct cases must NOT be conflated:

* If Q<1 then d=1 witnesses the condition for every n: high=whole
  source block and low=empty, including empty-bank cases.
* If 1<=Q, the selected divisor has d>1. One of its true prime
  factors belongs to P and divides the original n. Therefore the
  original least-selected-divisor tag is nonzero; the rough-tag source
  is IDENTICALLY ZERO on all high-smooth source indices.

Consequently RR dense masked correlations are EXACTLY LL; the high
faces of each ordered mixed tag are restricted to matched coefficients.
This is a SOURCE-TYPED zero theorem, not a sign average, an Euler
moment estimate, or the still-open complete all-rate dense bound.
The original Gram, m!=n, Nat.dist mask, support and orientations
are not changed. All proofs remain Lean source candidates until
pinned compilation, replay and axiom audit actually run.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.HighSmoothRoughCollapse

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.LiouvilleSignedBuchstabTypeII
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.PrimeSmoothFiniteConvolution
open GRWTSK.NumberTheory.Moebius.NearSquareRootEulerPrefix
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs

/-- The genuine smooth monoid includes 1, for EVERY bank, even
the empty prime bank. -/
theorem one_bankSmooth (B : PrimeBand) :
    bankSmooth B.primes 1 := by
  intro p hp hdiv
  exact (hp.ne_one (Nat.dvd_one.mp hdiv)).elim

/-- Below the real divisor threshold 1, selecting a large smooth
divisor is NO restriction at all: d=1 witnesses every original n. -/
theorem highSmoothBlock_eq_balanced_of_cut_lt_one
    (B : PrimeBand) (X : ℕ) (T : ℝ)
    (hQ : nearSquareRootCut (2 * X) < 1) :
    highSmoothBlock B X T = balancedBlock X T := by
  classical
  ext n
  constructor
  · intro hn
    exact (Finset.mem_filter.mp hn).1
  · intro hn
    exact Finset.mem_filter.mpr
      ⟨hn, 1, one_dvd n, one_bankSmooth B, by simpa using hQ⟩

/-- The complementary low-smooth source is empty below the cutoff 1.
No source coefficient or support endpoint is redefined. -/
theorem lowSmoothBlock_eq_empty_of_cut_lt_one
    (B : PrimeBand) (X : ℕ) (T : ℝ)
    (hQ : nearSquareRootCut (2 * X) < 1) :
    lowSmoothBlock B X T = ∅ := by
  classical
  ext n
  simp only [Finset.mem_empty, iff_false]
  intro hn
  have hnot : ¬hasNearMaximalSmoothDivisor B X n :=
    (Finset.mem_filter.mp hn).2
  exact hnot ⟨1, one_dvd n, one_bankSmooth B, by simpa using hQ⟩

/-- Any actual selected prime divisor forces the original
first-selected-divisor observation to be nonzero. Its least chosen
divisor cannot be zero because it is a PRIME of B. -/
theorem firstSelectedDivisor_ne_zero_of_bank_prime_dvd
    (B : PrimeBand) (p n : ℕ)
    (hpB : p ∈ B.primes) (hpn : p ∣ n) :
    firstSelectedDivisor B.primes n ≠ 0 := by
  let h : ∃ q : ℕ, q ∈ B.primes ∧ q ∣ n :=
    ⟨p, hpB, hpn⟩
  unfold firstSelectedDivisor
  rw [dif_pos h]
  have hfind : Nat.find h ∈ B.primes := (Nat.find_spec h).1
  exact (B.prime_mem (Nat.find h) hfind).ne_zero

/-- When Q>=1, a high-smooth witness d is >1 and therefore contains
a genuine selected prime p. This prime divides the ORIGINAL n,
not a surrogate quotient, Euler component or other source index. -/
theorem highSmooth_has_selected_prime
    (B : PrimeBand) (X n : ℕ)
    (hQ : 1 ≤ nearSquareRootCut (2 * X))
    (hHigh : hasNearMaximalSmoothDivisor B X n) :
    ∃ p : ℕ, p.Prime ∧ p ∈ B.primes ∧ p ∣ n := by
  obtain ⟨d, hdn, hdSmooth, hlarge⟩ := hHigh
  have hdgt : (1 : ℝ) < (d : ℝ) := lt_of_le_of_lt hQ hlarge
  have hd1 : d ≠ 1 := by
    intro heq
    subst d
    norm_num at hdgt
  obtain ⟨p, hp, hpd⟩ := Nat.exists_prime_and_dvd hd1
  exact ⟨p, hp, hdSmooth p hp hpd, dvd_trans hpd hdn⟩

/-- The actual rough coefficient is exactly zero at every original
high-smooth index once the divisor cutoff has reached 1. -/
theorem highSmooth_rough_coefficient_zero
    (B : PrimeBand) (X n : ℕ)
    (hQ : 1 ≤ nearSquareRootCut (2 * X))
    (hHigh : hasNearMaximalSmoothDivisor B X n) :
    taggedMoebius B.primes true n = 0 := by
  obtain ⟨p, hp, hpB, hpn⟩ :=
    highSmooth_has_selected_prime B X n hQ hHigh
  have htag :=
    firstSelectedDivisor_ne_zero_of_bank_prime_dvd B p n hpB hpn
  simp [taggedMoebius, htag]

/-- The matched tag at a high index is the exact ORIGINAL Möbius
coefficient (including its squareful zero), not a new positive sign. -/
theorem highSmooth_matched_eq_original
    (B : PrimeBand) (X n : ℕ)
    (hQ : 1 ≤ nearSquareRootCut (2 * X))
    (hHigh : hasNearMaximalSmoothDivisor B X n) :
    taggedMoebius B.primes false n = moebiusReal n := by
  have hz := highSmooth_rough_coefficient_zero B X n hQ hHigh
  have hsum := taggedMoebius_sum B.primes n
  rw [hz, zero_add] at hsum
  exact hsum

/-- The true high-smooth source filter forces the original rough
coefficient zero for any physical horizon T; only Q depends on X. -/
theorem rough_zero_of_mem_highSmoothBlock
    (B : PrimeBand) (X n : ℕ) (T : ℝ)
    (hQ : 1 ≤ nearSquareRootCut (2 * X))
    (hn : n ∈ highSmoothBlock B X T) :
    taggedMoebius B.primes true n = 0 :=
  highSmooth_rough_coefficient_zero B X n hQ
    (Finset.mem_filter.mp hn).2

/-- Zero high row for ANY finite column inventory and ANY gap mask,
including asymmetric rectangles; no positivity is assumed. -/
theorem masked_high_rough_row_zero
    (B : PrimeBand) (b : Bool) (A : Finset ℕ)
    (X : ℕ) (T : ℝ) (J : Finset ℕ)
    (hQ : 1 ≤ nearSquareRootCut (2 * X)) :
    maskedTaggedBlock B.primes true b A
      (highSmoothBlock B X T) J T = 0 := by
  classical
  unfold maskedTaggedBlock
  apply Finset.sum_eq_zero
  intro m hm
  have hmzero := rough_zero_of_mem_highSmoothBlock B X m T hQ hm
  apply Finset.sum_eq_zero
  intro n hn
  simp [hmzero]

/-- Zero high column: this is the OTHER ordered orientation,
not a symmetry assumption about the signed pair coefficient. -/
theorem masked_high_rough_column_zero
    (B : PrimeBand) (a : Bool) (A : Finset ℕ)
    (X : ℕ) (T : ℝ) (I : Finset ℕ)
    (hQ : 1 ≤ nearSquareRootCut (2 * X)) :
    maskedTaggedBlock B.primes a true A
      I (highSmoothBlock B X T) T = 0 := by
  classical
  unfold maskedTaggedBlock
  apply Finset.sum_eq_zero
  intro m hm
  apply Finset.sum_eq_zero
  intro n hn
  have hnzero := rough_zero_of_mem_highSmoothBlock B X n T hQ hn
  simp [hnzero]

/-- The entire original rough/rough masked dense source is confined to
the exact low/low support after the cutoff threshold; the remaining
high faces vanish with no pair-cancellation hypothesis. -/
theorem rough_rough_dense_eq_low_low
    (B : PrimeBand) (A : Finset ℕ) (X : ℕ) (T : ℝ)
    (hQ : 1 ≤ nearSquareRootCut (2 * X)) :
    taggedDenseRectangle B.primes true true A X X T =
      maskedTaggedBlock B.primes true true A
        (lowSmoothBlock B X T) (lowSmoothBlock B X T) T := by
  rw [taggedDenseRectangle_eq_four_smooth_strata]
  have hHH := masked_high_rough_row_zero B true A X T
    (highSmoothBlock B X T) hQ
  have hHL := masked_high_rough_row_zero B true A X T
    (lowSmoothBlock B X T) hQ
  have hLH := masked_high_rough_column_zero B true A X T
    (lowSmoothBlock B X T) hQ
  rw [hHH, hHL, hLH]
  ring

/-- Only the low-row/high-column and low/low packets survive for
the original ROUGH/MATCHED orientation. -/
theorem rough_matched_dense_eq_low_row
    (B : PrimeBand) (A : Finset ℕ) (X : ℕ) (T : ℝ)
    (hQ : 1 ≤ nearSquareRootCut (2 * X)) :
    taggedDenseRectangle B.primes true false A X X T =
      maskedTaggedBlock B.primes true false A
        (lowSmoothBlock B X T) (highSmoothBlock B X T) T +
      maskedTaggedBlock B.primes true false A
        (lowSmoothBlock B X T) (lowSmoothBlock B X T) T := by
  rw [taggedDenseRectangle_eq_four_smooth_strata]
  have hHH := masked_high_rough_row_zero B false A X T
    (highSmoothBlock B X T) hQ
  have hHL := masked_high_rough_row_zero B false A X T
    (lowSmoothBlock B X T) hQ
  rw [hHH, hHL]
  ring

/-- Only the high-row/low-column and low/low packets survive for
the original MATCHED/ROUGH orientation. Both orientations are
therefore represented without interchange of signed indices. -/
theorem matched_rough_dense_eq_low_column
    (B : PrimeBand) (A : Finset ℕ) (X : ℕ) (T : ℝ)
    (hQ : 1 ≤ nearSquareRootCut (2 * X)) :
    taggedDenseRectangle B.primes false true A X X T =
      maskedTaggedBlock B.primes false true A
        (highSmoothBlock B X T) (lowSmoothBlock B X T) T +
      maskedTaggedBlock B.primes false true A
        (lowSmoothBlock B X T) (lowSmoothBlock B X T) T := by
  rw [taggedDenseRectangle_eq_four_smooth_strata]
  have hHH := masked_high_rough_column_zero B false A X T
    (highSmoothBlock B X T) hQ
  have hLH := masked_high_rough_column_zero B false A X T
    (lowSmoothBlock B X T) hQ
  rw [hHH, hLH]
  ring

end GRWTSK.NumberTheory.Moebius.HighSmoothRoughCollapse
