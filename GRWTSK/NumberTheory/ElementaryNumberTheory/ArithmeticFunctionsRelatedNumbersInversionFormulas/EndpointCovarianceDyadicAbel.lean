/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported Mathlib and GRWTSK work retains its upstream attribution and licenses. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.FiniteAbelTransfer
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ExternalPNTAndChebyshevThetaPort
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensPrimitive
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupEndpointQuadrature
import Mathlib.Tactic

/-!
# Source-bound prime Abel transfer and the complete dyadic pickup covariance cover

This is finite, source-preserving arithmetic bookkeeping. The theta-PNT input is
explicitly conditional on the already defined proposition; no external proof
term, RH conclusion, or global signed covariance estimate is introduced.

The dyadic cover is a partition of BOTH indices in the original ordered,
off-diagonal `pickupCross`, not a substitute endpoint statistic. The block
comparison pays the exact square of the number of occupied candidate scales.
The per-row exclusion count applies to the explicitly enumerated neighborhood
and two translates of `A`; source uses must establish their own inclusion.

SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOMS_NOT_RUN / EXPECTED_TYPES_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.EndpointCovarianceDyadicAbel

open GRWTSK.NumberTheory.Primes.FiniteAbelTransfer
open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightCanonicalThetaGridRecurrenceControls
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-- Actual prime-logarithm atom, including its zero and unit conventions. -/
def thetaAtom (n : ℕ) : ℝ :=
  if n.Prime then Real.log (n : ℝ) else 0

/-- Inclusive arithmetic theta-prefix, with the local source's index range. -/
def thetaPrefix (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (N + 1), thetaAtom n

/-- The same prime-log source as the pinned external/local Chebyshev bridge. -/
theorem thetaPrefix_eq_externalPNTAnd (N : ℕ) :
    thetaPrefix N = externalPNTAndPrimeLogSum (N : ℝ) := by
  unfold thetaPrefix thetaAtom externalPNTAndPrimeLogSum
  simp only [Nat.floor_natCast, Finset.sum_ite]
  congr 1
  ext n
  simp only [Finset.mem_filter, Finset.mem_range, Finset.mem_Iic]
  omega

/-- A proved exact finite Abel specialization to the original prime atoms. -/
theorem thetaFiniteAbel (z : ℕ → ℂ) (N : ℕ) :
    (∑ n ∈ Finset.range (N + 1), (thetaAtom n : ℂ) * z n) =
      prefix (fun n => (thetaAtom n : ℂ)) N * z N +
        ∑ n ∈ Finset.range N,
          prefix (fun k => (thetaAtom k : ℂ)) n * (z n - z (n + 1)) :=
  sum_mul_eq_prefix_endpoint _ z N

/-- Exactly the source-typed real theta PNT consequence, not an imported PNT proof. -/
theorem thetaPrefix_error_of_namedPNT
    (hPNT : ThetaPrimeNumberTheorem) (ε : ℝ) (hε : 0 < ε) :
    ∃ B : ℝ, ∀ N : ℕ, B ≤ (N : ℝ) →
      |thetaPrefix N - (N : ℝ)| ≤ ε * (N : ℝ) := by
  obtain ⟨B, hB⟩ := hPNT ε hε
  refine ⟨B, ?_⟩
  intro N hN
  rw [thetaPrefix_eq_externalPNTAnd, externalPNTAndPrimeLogSum_eq_theta]
  change |thetaError (N : ℝ)| ≤ ε * (N : ℝ)
  exact hB _ hN

/-- Remove one unit for each positive integer, not also the zero term. -/
def integerDriftAtom (n : ℕ) : ℝ := if n = 0 then 0 else 1

theorem integerDriftPrefix (N : ℕ) :
    (∑ n ∈ Finset.range (N + 1), integerDriftAtom n) = (N : ℝ) := by
  induction N with
  | zero => simp [integerDriftAtom]
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      simp [integerDriftAtom, Nat.succ_ne_zero, Nat.cast_add, Nat.cast_one]

/-- Source-identified discrepancy atom: its prefix is theta(N) minus N. -/
def thetaDefectAtom (n : ℕ) : ℝ := thetaAtom n - integerDriftAtom n

def realPrefix (a : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (N + 1), a n

theorem realPrefix_thetaDefect (N : ℕ) :
    realPrefix thetaDefectAtom N = thetaPrefix N - (N : ℝ) := by
  unfold realPrefix thetaDefectAtom thetaPrefix
  simp only [Finset.sum_sub_distrib]
  rw [integerDriftPrefix]

/-- Real finite Abel identity, with all initial and terminal terms present. -/
theorem realFiniteAbel (a z : ℕ → ℝ) (N : ℕ) :
    (∑ n ∈ Finset.range (N + 1), a n * z n) =
      realPrefix a N * z N +
        ∑ n ∈ Finset.range N,
          realPrefix a n * (z n - z (n + 1)) := by
  induction N with
  | zero => simp [realPrefix]
  | succ N ih =>
      rw [Finset.sum_range_succ, Finset.sum_range_succ, ih]
      have hp : realPrefix a (N + 1) = realPrefix a N + a (N + 1) := by
        simp [realPrefix, Finset.sum_range_succ]
      rw [hp]
      ring

/-- Finite Abel's absolute-value inequality without an arithmetic input. -/
theorem realFiniteAbel_abs (a z : ℕ → ℝ) (N : ℕ) :
    |∑ n ∈ Finset.range (N + 1), a n * z n| ≤
      |realPrefix a N| * |z N| +
        ∑ n ∈ Finset.range N,
          |realPrefix a n| * |z n - z (n + 1)| := by
  rw [realFiniteAbel]
  calc
    _ ≤ |realPrefix a N * z N| +
        |∑ n ∈ Finset.range N, realPrefix a n * (z n - z (n + 1))| :=
      abs_add_le _ _
    _ ≤ |realPrefix a N| * |z N| +
        ∑ n ∈ Finset.range N,
          |realPrefix a n| * |z n - z (n + 1)| := by
      rw [abs_mul]
      have htri :
          |∑ n ∈ Finset.range N,
            realPrefix a n * (z n - z (n + 1))| ≤
            ∑ n ∈ Finset.range N,
              |realPrefix a n| * |z n - z (n + 1)| := by
        simpa only [Real.norm_eq_abs, norm_mul] using
          (norm_sum_le (Finset.range N)
            (fun n => realPrefix a n * (z n - z (n + 1))))
      exact add_le_add_left htri _

/-- The finitely many prefixes below the PNT threshold are NOT discarded. -/
def pntPrefixBudget (ε B : ℝ) (N : ℕ) : ℝ :=
  if B ≤ (N : ℝ) then ε * (N : ℝ)
  else |realPrefix thetaDefectAtom N|

/-- Source-bound PNT-to-Abel transfer; no uniform assertion before `B`.
The variation remains fully visible and may be large. -/
theorem thetaDefect_weightedAbel_of_namedPNT
    (hPNT : ThetaPrimeNumberTheorem) (ε : ℝ) (hε : 0 < ε) :
    ∃ B : ℝ, ∀ (N : ℕ) (z : ℕ → ℝ), |z N| ≤ 1 →
      |∑ n ∈ Finset.range (N + 1), thetaDefectAtom n * z n| ≤
        pntPrefixBudget ε B N +
          ∑ n ∈ Finset.range N,
            pntPrefixBudget ε B n * |z n - z (n + 1)| := by
  obtain ⟨B, hB⟩ := thetaPrefix_error_of_namedPNT hPNT ε hε
  refine ⟨B, ?_⟩
  intro N z hz
  have hp (n : ℕ) :
      |realPrefix thetaDefectAtom n| ≤ pntPrefixBudget ε B n := by
    by_cases hn : B ≤ (n : ℝ)
    · simpa only [pntPrefixBudget, if_pos hn, realPrefix_thetaDefect] using hB n hn
    · simp [pntPrefixBudget, hn]
  calc
    _ ≤ |realPrefix thetaDefectAtom N| * |z N| +
        ∑ n ∈ Finset.range N,
          |realPrefix thetaDefectAtom n| * |z n - z (n + 1)| :=
      realFiniteAbel_abs _ _ _
    _ ≤ pntPrefixBudget ε B N +
        ∑ n ∈ Finset.range N,
          pntPrefixBudget ε B n * |z n - z (n + 1)| := by
      have hhead : |realPrefix thetaDefectAtom N| * |z N| ≤
          pntPrefixBudget ε B N := by
        calc
          _ ≤ |realPrefix thetaDefectAtom N| * 1 :=
            mul_le_mul_of_nonneg_left hz (abs_nonneg _)
          _ = |realPrefix thetaDefectAtom N| := by ring
          _ ≤ pntPrefixBudget ε B N := hp N
      apply add_le_add hhead
      apply Finset.sum_le_sum
      intro n _
      exact mul_le_mul_of_nonneg_right (hp n) (abs_nonneg _)

/-- The five local places plus two translates of each member of A. -/
def excludedRow (A : Finset ℕ) (m : ℕ) : Finset ℕ :=
  (Finset.Icc (m - 2) (m + 2) ∪ A.image (fun a => m + a)) ∪
    A.image (fun a => m - a)

/-- At most 2|A|+5 exclusions in any row; collisions only reduce it. -/
theorem excludedRow_card_le (A : Finset ℕ) (m : ℕ) :
    (excludedRow A m).card ≤ 2 * A.card + 5 := by
  classical
  have hlocal : (Finset.Icc (m - 2) (m + 2)).card ≤ 5 := by
    rw [Nat.card_Icc]
    omega
  have hplus : (A.image (fun a => m + a)).card ≤ A.card :=
    Finset.card_image_le
  have hminus : (A.image (fun a => m - a)).card ≤ A.card :=
    Finset.card_image_le
  have hu₁ := Finset.card_union_le (Finset.Icc (m - 2) (m + 2))
    (A.image (fun a => m + a))
  have hu₂ := Finset.card_union_le
    (Finset.Icc (m - 2) (m + 2) ∪ A.image (fun a => m + a))
    (A.image (fun a => m - a))
  unfold excludedRow
  omega

/-- Any actual source-specific bad set requires this inclusion proof. -/
theorem sourceRow_card_le_of_subset (A : Finset ℕ) (m : ℕ)
    (bad : Finset ℕ) (hbad : bad ⊆ excludedRow A m) :
    bad.card ≤ 2 * A.card + 5 := by
  exact (Finset.card_le_card hbad).trans (excludedRow_card_le A m)

/-- Ordered exceptional-pair count in a genuine positive endpoint inventory. -/
def excludedPairCount (A : Finset ℕ) (N : ℕ) : ℕ :=
  ∑ m ∈ Finset.Icc 1 N,
    ((Finset.Icc 1 N).filter (fun n => n ∈ excludedRow A m)).card

/-- Counting all rows pays N(2|A|+5); there is no cancellation credit. -/
theorem excludedPairCount_le (A : Finset ℕ) (N : ℕ) :
    excludedPairCount A N ≤ N * (2 * A.card + 5) := by
  have hcard : (Finset.Icc 1 N).card ≤ N := by
    rw [Nat.card_Icc]
    omega
  have hrow (m : ℕ) :
      ((Finset.Icc 1 N).filter (fun n => n ∈ excludedRow A m)).card ≤
        2 * A.card + 5 := by
    calc
      _ ≤ (excludedRow A m).card :=
        Finset.card_le_card (by
          intro n hn
          exact (Finset.mem_filter.mp hn).2)
      _ ≤ 2 * A.card + 5 := excludedRow_card_le A m
  calc
    excludedPairCount A N ≤
        ∑ _m ∈ Finset.Icc 1 N, (2 * A.card + 5) := by
      unfold excludedPairCount
      apply Finset.sum_le_sum
      intro m _
      exact hrow m
    _ = (Finset.Icc 1 N).card * (2 * A.card + 5) := by simp
    _ ≤ N * (2 * A.card + 5) := Nat.mul_le_mul_right _ hcard

/-- Full dyadic intervals; clipping is performed only AFTER construction. -/
def dyadicBand (N j : ℕ) : Finset ℕ :=
  (Finset.Ico (2 ^ j) (2 ^ (j + 1))).filter (fun n => n ≤ N)

def dyadicHeight (N : ℕ) : ℕ := Nat.log 2 N + 1

theorem dyadicHeight_covers (N : ℕ) : N < 2 ^ (dyadicHeight N) := by
  exact Nat.lt_pow_succ_log_self (b := 2) (by norm_num) N

/-- Full partition up to a power of two, including 1 and excluding 2^J. -/
private theorem dyadicSumToPower (f : ℕ → ℝ) (J : ℕ) :
    (∑ n ∈ Finset.Ico 1 (2 ^ J), f n) =
      ∑ j ∈ Finset.range J,
        ∑ n ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)), f n := by
  induction J with
  | zero => simp
  | succ J ih =>
      have hpow : 2 ^ J ≤ 2 ^ (J + 1) := by
        rw [pow_succ]
        omega
      have hdis : Disjoint (Finset.Ico 1 (2 ^ J))
          (Finset.Ico (2 ^ J) (2 ^ (J + 1))) := by
        apply Finset.disjoint_left.mpr
        intro n hn hnr
        have ha := Finset.mem_Ico.mp hn
        have hb := Finset.mem_Ico.mp hnr
        omega
      have hunion : Finset.Ico 1 (2 ^ (J + 1)) =
          Finset.Ico 1 (2 ^ J) ∪ Finset.Ico (2 ^ J) (2 ^ (J + 1)) := by
        ext n
        simp only [Finset.mem_Ico, Finset.mem_union]
        omega
      rw [hunion, Finset.sum_union hdis, Finset.sum_range_succ, ← ih]

/-- An exhaustive, disjoint clipped dyadic cover of every positive prefix. -/
theorem sum_eq_dyadicCover (N : ℕ) (f : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, f n) =
      ∑ j ∈ Finset.range (dyadicHeight N), ∑ n ∈ dyadicBand N j, f n := by
  let J := dyadicHeight N
  have hlarge : N < 2 ^ J := dyadicHeight_covers N
  have hfilter :
      (Finset.Ico 1 (2 ^ J)).filter (fun n => n ≤ N) = Finset.Icc 1 N := by
    ext n
    simp only [Finset.mem_filter, Finset.mem_Ico, Finset.mem_Icc]
    omega
  calc
    (∑ n ∈ Finset.Icc 1 N, f n) =
        ∑ n ∈ Finset.Ico 1 (2 ^ J), if n ≤ N then f n else 0 := by
          rw [← Finset.sum_filter, hfilter]
    _ = ∑ j ∈ Finset.range J,
          ∑ n ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
            if n ≤ N then f n else 0 := dyadicSumToPower _ J
    _ = ∑ j ∈ Finset.range (dyadicHeight N),
          ∑ n ∈ dyadicBand N j, f n := by
      change (∑ j ∈ Finset.range J, _) = _
      apply Finset.sum_congr rfl
      intro j _
      simp only [dyadicBand, Finset.sum_filter]

/-- Dyadic partition in BOTH indices; no diagonal or sign is omitted. -/
theorem double_sum_eq_dyadicCover (N : ℕ) (w : ℕ → ℕ → ℝ) :
    (∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N, w m n) =
      ∑ j ∈ Finset.range (dyadicHeight N),
        ∑ k ∈ Finset.range (dyadicHeight N),
          ∑ m ∈ dyadicBand N j, ∑ n ∈ dyadicBand N k, w m n := by
  rw [sum_eq_dyadicCover N (fun m => ∑ n ∈ Finset.Icc 1 N, w m n)]
  apply Finset.sum_congr rfl
  intro j _
  calc
    (∑ m ∈ dyadicBand N j, ∑ n ∈ Finset.Icc 1 N, w m n) =
        ∑ m ∈ dyadicBand N j,
          ∑ k ∈ Finset.range (dyadicHeight N),
            ∑ n ∈ dyadicBand N k, w m n := by
          apply Finset.sum_congr rfl
          intro m _
          exact sum_eq_dyadicCover N (w m)
    _ = ∑ k ∈ Finset.range (dyadicHeight N),
          ∑ m ∈ dyadicBand N j, ∑ n ∈ dyadicBand N k, w m n := by
          rw [Finset.sum_comm]

/-- Every block uses exactly the original Möbius signs, response Gram,
endpoint cutoff and ordered off-diagonal test. -/
def pickupDyadicBlock (T : ℝ) (j k : ℕ) : ℝ :=
  let N := ⌊Real.exp T⌋₊
  ∑ m ∈ dyadicBand N j, ∑ n ∈ dyadicBand N k,
    if m ≠ n then moebiusReal m * moebiusReal n * pickupResponseGram T m n else 0

/-- Complete ORIGINAL endpoint covariance, with the entire two-dimensional cover. -/
theorem pickupCross_eq_completeDyadicCover (T : ℝ) :
    pickupCross T =
      ∑ j ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
        ∑ k ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
          pickupDyadicBlock T j k := by
  unfold pickupCross pickupDyadicBlock
  exact double_sum_eq_dyadicCover ⌊Real.exp T⌋₊
    (fun m n => if m ≠ n then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n else 0)

/-- Absolute block accounting without any cancellation hypothesis. -/
theorem pickupCross_le_sum_abs_blocks (T : ℝ) :
    pickupCross T ≤
      ∑ j ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
        ∑ k ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
          |pickupDyadicBlock T j k| := by
  rw [pickupCross_eq_completeDyadicCover]
  apply Finset.sum_le_sum
  intro j _
  apply Finset.sum_le_sum
  intro k _
  exact le_abs_self _

/-- The exact number of ordered block slots is J^2. In particular a
uniform per-block allowance suffers a QUADRATIC logarithmic loss, not a
constant loss. The source-specific block estimate is an explicit premise. -/
theorem pickupCross_le_uniformBlockBudget
    (T B : ℝ) (hB :
      ∀ j ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
      ∀ k ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
        |pickupDyadicBlock T j k| ≤ B) :
    pickupCross T ≤
      ((dyadicHeight ⌊Real.exp T⌋₊ : ℕ) : ℝ) ^ 2 * B := by
  let J := dyadicHeight ⌊Real.exp T⌋₊
  calc
    pickupCross T ≤
        ∑ j ∈ Finset.range J, ∑ k ∈ Finset.range J,
          |pickupDyadicBlock T j k| := pickupCross_le_sum_abs_blocks T
    _ ≤ ∑ _j ∈ Finset.range J, ∑ _k ∈ Finset.range J, B := by
      apply Finset.sum_le_sum
      intro j hj
      apply Finset.sum_le_sum
      intro k hk
      exact hB j hj k hk
    _ = (J : ℝ) ^ 2 * B := by
      simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
      ring

/-- The existing quarter-unit endpoint correction is paid AFTER the complete
signed covariance reconstruction, not injected into individual blocks. -/
theorem endpointSum_le_completeDyadicBlockAbs {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T ≤
      (∑ j ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
        ∑ k ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
          |pickupDyadicBlock T j k|) + 1 / 4 := by
  have he := endpointSum_error hT
  have heup : endpointSum T - pickupCross T ≤ 1 / 4 :=
    (le_abs_self _).trans he
  have hb := pickupCross_le_sum_abs_blocks T
  linarith

/-- The complete endpoint upper allowance is J²*B + 1/4, conditional on
actual block estimates, and therefore NOT a proof of the missing RH supplier. -/
theorem endpointSum_le_uniformBlockBudget
    {T B : ℝ} (hT : 0 ≤ T)
    (hB : ∀ j ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
      ∀ k ∈ Finset.range (dyadicHeight ⌊Real.exp T⌋₊),
        |pickupDyadicBlock T j k| ≤ B) :
    endpointSum T ≤
      ((dyadicHeight ⌊Real.exp T⌋₊ : ℕ) : ℝ) ^ 2 * B + 1 / 4 := by
  have he := endpointSum_error hT
  have heup : endpointSum T - pickupCross T ≤ 1 / 4 :=
    (le_abs_self _).trans he
  have hb := pickupCross_le_uniformBlockBudget T B hB
  linarith

end GRWTSK.NumberTheory.Moebius.EndpointCovarianceDyadicAbel
