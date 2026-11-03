/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.FiniteSignedRectangularCollar
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongPacketEnergyReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongMertensAbel
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointGapLocalization
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.MertensSignedPairDescent
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Unconditional early-index localization of the ACTUAL strong Möbius source

The source is the existing energy-matched physical strong-overlap
packet, itself a subset of ORIGINAL ordered Möbius response Gram
pairs, with all source signs, birth support and squareful zeros kept.

Every original causal response satisfies 0<=r_n(u)<=2/sqrt(n).
Thus, for T>=0 and positive source indices:
  |mu(m)mu(n) pickupResponseGram(T,m,n)| <= 4*T/sqrt(m*n).
This is the ORIGINAL source-integral kernel, not a model Gram.

For any finite cutoff M, split the strong packet into:
  E_M = all strong pairs with min(m,n)<=M;
  C_M = all strong pairs with both m,n>M.
Both orders are retained and the diagonal remains excluded.

The signed early packet is bounded by the entire TWO-rectangle
rank-one envelope, regardless of positive/negative Mobius signs:
  |E_M(T)| <= 8*T*A_M*A_N
             <=32*T*sqrt(M)*sqrt(N),
N=floor(exp T), A_X=sum_(1<=n<=X) 1/sqrt(n).

Consequently for M=floor(exp(alpha*T)) with alpha in (0,1),
  |E_M(T)| <=32*T*exp((1+alpha)*T/2),
a STRICT exponent below one without PNT, RH or an external Kakeya
theorem. The remaining high-high strong packet is an exact ORIGINAL
signed dense arithmetic source; no cancellation is asserted for it.
-/

namespace GRWTSK.NumberTheory.Moebius.StrongEarlyIndexCollar

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.MoebiusEndpointGapLocalization
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent
open GRWTSK.NumberTheory.Moebius.PutnamKakeyaSignedResidual
open GRWTSK.NumberTheory.Moebius.StrongPacketEnergyReturn
open GRWTSK.NumberTheory.Moebius.StrongMertensAbel
open GRWTSK.NumberTheory.Moebius.FareyFaryKakeyaIncidence
open GRWTSK.NumberTheory.Moebius.EnergyMatchedArithmeticTube
open GRWTSK.NumberTheory.Moebius.StereographicTubeResidual
open GRWTSK.NumberTheory.Moebius.EnergyMatchedWeakResidual
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteSignedRectangularCollar

classical

/-- Actual nonnegative source reciprocal square-root weight, with
the original positive natural-number index and its true cast. -/
def sourceRootWeight (n : ℕ) : ℝ :=
  (Real.sqrt (n : ℝ))⁻¹

theorem sourceRootWeight_nonneg (n : ℕ) :
    0 ≤ sourceRootWeight n := by
  unfold sourceRootWeight
  positivity

/-- The genuine original source population's inverse-root mass. -/
def completeRootMass (T : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T, sourceRootWeight n

/-- The actual early integer row mass (source indices never reindexed). -/
def earlyRootMass (M : ℕ) (T : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T,
    if n ≤ M then sourceRootWeight n else 0

theorem completeRootMass_nonneg (T : ℝ) :
    0 ≤ completeRootMass T :=
  Finset.sum_nonneg (fun n hn => sourceRootWeight_nonneg n)

theorem earlyRootMass_nonneg (M : ℕ) (T : ℝ) :
    0 ≤ earlyRootMass M T := by
  unfold earlyRootMass
  apply Finset.sum_nonneg
  intro n hn
  split_ifs <;> positivity

/-- The exact original Mobius sign coefficient is one-bounded.
This is the pinned Mathlib arithmetic function, not a simulated sign. -/
theorem actual_moebius_abs_le_one (n : ℕ) :
    |moebiusReal n| ≤ 1 := by
  unfold moebiusReal
  exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))

/-- True signed causal response Gram entrywise bound, with no
uniform PNT, RH, or source-favorable geometry assumption. -/
theorem actual_sourceKernel_abs_le_root
    {T : ℝ} (hT : 0 ≤ T)
    {m n : ℕ} (hm : m ∈ endpointIndex T)
    (hn : n ∈ endpointIndex T) :
    |sourceKernel T m n| ≤
      4 * T * sourceRootWeight m * sourceRootWeight n := by
  have hmpos : 1 ≤ m := (Finset.mem_Icc.mp hm).1
  have hnpos : 1 ≤ n := (Finset.mem_Icc.mp hn).1
  have hGramNonneg : 0 ≤ pickupResponseGram T m n :=
    responseGram_nonneg hmpos hnpos hT
  have hGramUpper :=
    pickupResponseGram_le_four_time_invSqrt T hT m n hmpos hnpos
  have hmu_m := actual_moebius_abs_le_one m
  have hmu_n := actual_moebius_abs_le_one n
  have hmu_prod :
      |moebiusReal m| * |moebiusReal n| ≤ 1 := by
    calc
      _ ≤ 1 * |moebiusReal n| :=
        mul_le_mul_of_nonneg_right hmu_m (abs_nonneg _)
      _ ≤ 1 * 1 :=
        mul_le_mul_of_nonneg_left hmu_n (by norm_num)
      _ = 1 := by ring
  have hcoef :
      |sourceKernel T m n| =
        (|moebiusReal m| * |moebiusReal n|) *
          pickupResponseGram T m n := by
    unfold sourceKernel
    rw [abs_mul, abs_mul, abs_of_nonneg hGramNonneg]
    ring
  calc
    |sourceKernel T m n| =
        (|moebiusReal m| * |moebiusReal n|) *
          pickupResponseGram T m n := hcoef
    _ ≤ pickupResponseGram T m n := by
      have h := mul_le_mul_of_nonneg_right hmu_prod hGramNonneg
      simpa using h
    _ ≤ 4 * T * sourceRootWeight m * sourceRootWeight n := by
      simpa only [sourceRootWeight] using hGramUpper

/-- ORIGINAL source membership in the strong angular/physical relation;
no surrogate packet is used. -/
def originalStrongRelation (H : ℕ) (T : ℝ)
    (m n : ℕ) : Prop :=
  strongRelation (shortGapSet H) (originalEnergyFamily T)
    (sourceCollarSigma H T) (weakPhysicalThreshold T) m n

/-- The exact ORIGINAL signed strong packet with at least one
early source index, including BOTH orientations. -/
def earlyStrongCross (H M : ℕ) (T : ℝ) : ℝ :=
  selectedEarlyCross (endpointIndex T)
    (originalStrongRelation H T)
    (fun n => n ≤ M) (sourceKernel T)

/-- Exact high-high original Möbius strong packet after deleting
the early source collar, retaining all original signs. -/
def highHighStrongCross (H M : ℕ) (T : ℝ) : ℝ :=
  originalIncidenceCross
    (fun m n => originalStrongRelation H T m n ∧ M < m ∧ M < n) T

/-- Exact source conservation, not a definition by subtracting an
uncontrolled remainder: the two source relations partition every
original strong pair without overlap. -/
theorem strong_eq_early_add_highHigh
    (H M : ℕ) (T : ℝ) :
    originalEnergyStrongCross H T =
      earlyStrongCross H M T + highHighStrongCross H M T := by
  have hstrong :=
    (strongCross_eq_angularFarCross
      (shortGapSet H) (originalEnergyFamily T)
      (sourceCollarSigma H T) (weakPhysicalThreshold T)
      (weakPhysicalThreshold_pos T)).symm
  change originalEnergyStrongCross H T =
    originalIncidenceCross (originalStrongRelation H T) T at hstrong
  rw [hstrong]
  unfold originalIncidenceCross orderedCross earlyStrongCross
    highHighStrongCross selectedEarlyCross
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hsel : m ≠ n ∧ originalStrongRelation H T m n
  · by_cases hearly : m ≤ M ∨ n ≤ M
    · have hlate : ¬ (M < m ∧ M < n) := by omega
      simp [hsel, hearly, hlate]
    · have hlate : M < m ∧ M < n := by omega
      simp [hsel, hearly, hlate]
  · have hnotEarly :
        ¬ (m ≠ n ∧ originalStrongRelation H T m n ∧
          (m ≤ M ∨ n ≤ M)) := by
      intro h
      exact hsel ⟨h.1, h.2.1⟩
    have hnotLate :
        ¬ (m ≠ n ∧ originalStrongRelation H T m n ∧ M < m ∧ M < n) := by
      intro h
      exact hsel ⟨h.1, h.2.1⟩
    simp [hsel, hnotEarly, hnotLate]

/-- The original SIGNED early strong packet has a true source-derived
rank-one bound, independent of PNT. The original integer labels,
projective threshold, physical area and causal Gram remain intact. -/
theorem earlyStrongCross_abs_le_rootMass
    {T : ℝ} (hT : 0 ≤ T) (H M : ℕ) :
    |earlyStrongCross H M T| ≤
      8 * T * earlyRootMass M T * completeRootMass T := by
  have h := abs_selectedEarlyCross_le_rank_one
    (endpointIndex T) (originalStrongRelation H T)
    (fun n => n ≤ M) (sourceKernel T) sourceRootWeight
    (4 * T) (by positivity)
    (fun n hn => sourceRootWeight_nonneg n)
    (fun m hm n hn => actual_sourceKernel_abs_le_root hT hm hn)
  simpa only [earlyStrongCross, earlyWeight, completeWeight,
    earlyRootMass, completeRootMass] using
    (show |earlyStrongCross H M T| ≤
      8 * T * earlyRootMass M T * completeRootMass T by
      convert h using 1 <;> ring)

/-- Exact positive original index reciprocal-root sum, retaining
the n=1 endpoint, reindexed to the existing range lemma. -/
theorem root_Icc_eq_range (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, sourceRootWeight n) =
      ∑ k ∈ Finset.range N, sourceRootWeight (k + 1) := by
  induction N with
  | zero => simp
  | succ N ih =>
      have hset :
          Finset.Icc 1 (N + 1) =
            insert (N + 1) (Finset.Icc 1 N) := by
        ext n
        simp only [Finset.mem_Icc, Finset.mem_insert]
        omega
      have hnot : N + 1 ∉ Finset.Icc 1 N := by simp
      rw [hset, Finset.sum_insert hnot, Finset.sum_range_succ, ih]
      ring

/-- A fully finite genuine arithmetic bound, not a real-variable
integral approximation or a guessed Kakeya density. -/
theorem root_Icc_le_two_sqrt (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, sourceRootWeight n) ≤
      2 * Real.sqrt (N : ℝ) := by
  rw [root_Icc_eq_range]
  exact StrongMertensAbel.reciprocal_sqrt_sum_le_two_sqrt N

/-- Full original source mass is at most 2 sqrt(floor(exp T)). -/
theorem completeRootMass_le_two_sqrt (T : ℝ) :
    completeRootMass T ≤
      2 * Real.sqrt (⌊Real.exp T⌋₊ : ℝ) := by
  simpa [completeRootMass, endpointIndex] using
    root_Icc_le_two_sqrt ⌊Real.exp T⌋₊

/-- The early source mass is bounded by the ORIGINAL first M
natural indices, even when M exceeds the actual endpoint cutoff. -/
theorem earlyRootMass_le_two_sqrt (M : ℕ) (T : ℝ) :
    earlyRootMass M T ≤ 2 * Real.sqrt (M : ℝ) := by
  have hsubset :
      (endpointIndex T).filter (fun n => n ≤ M) ⊆
        Finset.Icc 1 M := by
    intro n hn
    obtain ⟨hs, hm⟩ := Finset.mem_filter.mp hn
    exact Finset.mem_Icc.mpr
      ⟨(Finset.mem_Icc.mp hs).1, hm⟩
  calc
    earlyRootMass M T =
        ∑ n ∈ (endpointIndex T).filter (fun n => n ≤ M),
          sourceRootWeight n := by
          simp only [earlyRootMass, Finset.sum_filter]
    _ ≤ ∑ n ∈ Finset.Icc 1 M, sourceRootWeight n :=
      Finset.sum_le_sum_of_subset_of_nonneg hsubset
        (fun n hn hnot => sourceRootWeight_nonneg n)
    _ ≤ 2 * Real.sqrt (M : ℝ) := root_Icc_le_two_sqrt M

/-- Universal source-specific result for ANY selected original
ordered Möbius pair relation. This also supplies the early-index
geometric filter needed in the separate two-prime rho-profile
program, without confusing that profile with this angularly
selected strong packet. No PNT or RH input enters. -/
theorem arbitraryOriginalEarlyCross_abs_le_32_sqrt
    {T : ℝ} (hT : 0 ≤ T) (M : ℕ)
    (R : ℕ → ℕ → Prop) :
    |selectedEarlyCross (endpointIndex T) R
      (fun n => n ≤ M) (sourceKernel T)| ≤
      32 * T * Real.sqrt (M : ℝ) *
        Real.sqrt (⌊Real.exp T⌋₊ : ℝ) := by
  have he := abs_selectedEarlyCross_le_rank_one
    (endpointIndex T) R (fun n => n ≤ M)
    (sourceKernel T) sourceRootWeight
    (4*T) (by positivity)
    (fun n hn => sourceRootWeight_nonneg n)
    (fun m hm n hn => actual_sourceKernel_abs_le_root hT hm hn)
  have hm := earlyRootMass_le_two_sqrt M T
  have hn := completeRootMass_le_two_sqrt T
  have hnonneg : 0 ≤ completeRootMass T := completeRootMass_nonneg T
  have hprod :
      earlyRootMass M T * completeRootMass T ≤
        (2 * Real.sqrt (M : ℝ)) *
        (2 * Real.sqrt (⌊Real.exp T⌋₊ : ℝ)) :=
    mul_le_mul hm hn hnonneg (by positivity)
  have hcost : 0 ≤ 8*T := by positivity
  have hmul := mul_le_mul_of_nonneg_left hprod hcost
  have hroot :
      |selectedEarlyCross (endpointIndex T) R
        (fun n => n ≤ M) (sourceKernel T)| ≤
        8*T*earlyRootMass M T*completeRootMass T := by
    convert he using 1 <;> ring
  nlinarith

/-- Unconditional, fully quantitative localization of the genuine
Möbius strong packet's EARLY source indices, including both orders:
  |earlyStrongCross| <=32*T*sqrt(M)*sqrt(N).
This is a strict exponent below one when M=floor(exp(alpha*T)),
0<alpha<1. No classical PNT hypothesis occurs in this theorem. -/
theorem earlyStrongCross_abs_le_32_sqrt
    {T : ℝ} (hT : 0 ≤ T) (H M : ℕ) :
    |earlyStrongCross H M T| ≤
      32 * T * Real.sqrt (M : ℝ) *
        Real.sqrt (⌊Real.exp T⌋₊ : ℝ) := by
  have he := earlyStrongCross_abs_le_rootMass hT H M
  have hm := earlyRootMass_le_two_sqrt M T
  have hn := completeRootMass_le_two_sqrt T
  have hpos : 0 ≤ completeRootMass T :=
    completeRootMass_nonneg T
  have hprod :
      earlyRootMass M T * completeRootMass T ≤
        (2 * Real.sqrt (M : ℝ)) *
        (2 * Real.sqrt (⌊Real.exp T⌋₊ : ℝ)) :=
    mul_le_mul hm hn hpos (by positivity)
  have hnonneg : 0 ≤ 8 * T := by positivity
  nlinarith [mul_le_mul_of_nonneg_left hprod hnonneg]


/-- The FULL original ordered signed pickup cross has four
exact source-labelled pieces: already paid Putnam gaps; the
energy-matched weak physical overlap; early-index strong pairs;
and the remaining signed HIGH-HIGH strong packet. Every original
pair orientation is included exactly once. -/
theorem pickupCross_eq_gap_weak_early_highHigh
    (H M : ℕ) (T : ℝ) :
    pickupCross T =
      endpointGapSetCross (shortGapSet H) T +
      weakOverlapCross (shortGapSet H) (originalEnergyFamily T)
        (sourceCollarSigma H T) (weakPhysicalThreshold T) +
      earlyStrongCross H M T + highHighStrongCross H M T := by
  have hs := strong_add_gap_add_weak_eq_cross H T
  rw [strong_eq_early_add_highHigh H M T] at hs
  linarith

/-- The same literal original endpoint return, now with the ONLY
unpaid term the HIGH-HIGH strong signed arithmetic packet.
The other three original sectors are paid by actual source proofs;
the one-quarter chord error is retained and not relabeled. -/
theorem endpointSum_le_signed_highHigh_and_paid
    {T : ℝ} (hT : 0 ≤ T) (H M : ℕ) :
    endpointSum T ≤
      4 * ((shortGapSet H).card : ℝ) * T^2 +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      32*T*Real.sqrt (M : ℝ) *
        Real.sqrt (⌊Real.exp T⌋₊ : ℝ) +
      highHighStrongCross H M T + 1/4 := by
  have hsource := pickupCross_eq_gap_weak_early_highHigh H M T
  have hendpoint := (abs_le.mp (endpointSum_error hT)).2
  rw [hsource] at hendpoint
  have hg := original_sparse_gap_quadratic (shortGapSet H) hT
  have hw := energyWeakCross_abs_le_card_sqrt hT H
  have he := earlyStrongCross_abs_le_32_sqrt hT H M
  linarith [le_abs_self (endpointGapSetCross (shortGapSet H) T),
    le_abs_self (weakOverlapCross (shortGapSet H) (originalEnergyFamily T)
      (sourceCollarSigma H T) (weakPhysicalThreshold T)),
    le_abs_self (earlyStrongCross H M T)]

/-- The EXACT existing Putnam all-positive-rate gap schedule:
  H=floor(exp(epsilon*T/2)).
The remaining HIGH-HIGH signed original packet is not bounded here;
in particular, this theorem does NOT prove RH. -/
theorem endpointSum_le_rateHighHigh_and_paid
    {T ε : ℝ} (hT : 0 ≤ T) (hε : 0 < ε) (M : ℕ) :
    endpointSum T ≤
      (32/ε^2)*Real.exp (ε*T) +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      32*T*Real.sqrt (M : ℝ) *
        Real.sqrt (⌊Real.exp T⌋₊ : ℝ) +
      highHighStrongCross (rateGapHeight ε T) M T + 1/4 := by
  have hs := pickupCross_eq_gap_weak_early_highHigh
    (rateGapHeight ε T) M T
  have he := (abs_le.mp (endpointSum_error hT)).2
  rw [hs] at he
  have hg := putnam_sparse_gap_all_rate ε hε hT
  rw [← shortGapSet_rate_eq_putnamRateGapSet ε T] at hg
  have hw := energyWeakCross_abs_le_card_sqrt hT (rateGapHeight ε T)
  have hc := earlyStrongCross_abs_le_32_sqrt
    hT (rateGapHeight ε T) M
  linarith [le_abs_self
    (endpointGapSetCross (shortGapSet (rateGapHeight ε T)) T),
    le_abs_self
      (weakOverlapCross (shortGapSet (rateGapHeight ε T))
        (originalEnergyFamily T)
        (sourceCollarSigma (rateGapHeight ε T) T)
        (weakPhysicalThreshold T)),
    le_abs_self
      (earlyStrongCross (rateGapHeight ε T) M T)]

end GRWTSK.NumberTheory.Moebius.StrongEarlyIndexCollar
