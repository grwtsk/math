/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCollarResidualGcdReducedGap
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusHighSmoothRoughCollapse
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Far original Mobius residual: reduced-max support and true negative credit

No all-positive-rate UPPER bound for farReducedOrLongCross is proved
or assumed. Even the empty-bank target is RH-strength. The genuine
new elementary source facts are:
* FAR indices m,n>0 require max(m/g,n/g)>ratioCap J, g=gcd(m,n);
* hence g*(ratioCap J+1)<=max(m,n)<=floor(exp(T_J));
* ALL remaining original far comparable odd-coprime and far
  incomparable squarefree opposite-parity source entries are
  nonpositive, with no double count from the earlier packets;
* empty selected-prime bank has NO original highSmoothBlock
  above the genuine real cutoff Q>=1.

Numerical eventual empty-bank cuts and classical PNT lower bounds
for actual positive AND negative FAR populations are displayed as
unproved Lean Prop targets. Their ordinary mathematical proofs,
including a kernel lower bound on two prime families, are recorded
in the review. This file DOES NOT solve RH.
-/

namespace GRWTSK.NumberTheory.Moebius.FarReducedStructuralFrontier

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
open GRWTSK.NumberTheory.Moebius.CollarResidualLowWave
open GRWTSK.NumberTheory.Moebius.CollarResidualShortRatio
open GRWTSK.NumberTheory.Moebius.CollarResidualGcdReducedGap
open GRWTSK.NumberTheory.Moebius.StrongOddCoprimeDilation
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs
open GRWTSK.NumberTheory.Moebius.HighSmoothRoughCollapse
open GRWTSK.NumberTheory.Moebius.NearSquareRootEulerPrefix

classical

/-- Genuine far-pair condition before any extra original gap mask. -/
def farPair (J m n : ℕ) : Prop :=
  m ≠ n ∧ ¬shortRatioPair J m n ∧ ¬reducedClosePair J m n

private theorem nat_dist_le_max (a b : ℕ) :
    Nat.dist a b ≤ max a b := by
  rcases le_total a b with hab | hba
  · rw [Nat.dist_eq_sub_of_le hab, max_eq_right hab]
    omega
  · rw [Nat.dist_comm, Nat.dist_eq_sub_of_le hba, max_eq_left hba]
    omega

/-- If neither the already paid bounded ratio nor the already paid
gcd-reduced close gap applies, at least ONE original coprime
reduced factor must exceed the original rate-independent cutoff. -/
theorem farPair_reduced_max_gt
    (J m n : ℕ) (hm : 0 < m) (hn : 0 < n)
    (hfar : farPair J m n) :
    ratioCap J < max (m / Nat.gcd m n) (n / Nat.gcd m n) := by
  let g : ℕ := Nat.gcd m n
  by_contra hbad
  have hbound : max (m / g) (n / g) ≤ ratioCap J := by
    change ¬(ratioCap J < max (m / g) (n / g)) at hbad
    omega
  by_cases hcomp : m ∣ n ∨ n ∣ m
  · rcases hcomp with hmn | hnm
    · have hg : g = m := by
        dsimp [g]
        exact Nat.gcd_eq_left_iff_dvd.mpr hmn
      have hnrep : n = m * (n / m) :=
        (Nat.mul_div_cancel' hmn).symm
      have hk0 : n / m ≠ 0 := by
        intro hz
        rw [hz, mul_zero] at hnrep
        omega
      have hk1 : n / m ≠ 1 := by
        intro heq
        rw [heq, mul_one] at hnrep
        exact hfar.1 hnrep.symm
      have hk2 : 2 ≤ n / m := by omega
      have hcap : n / m ≤ ratioCap J := by
        have hle : n / g ≤ ratioCap J :=
          (le_max_right _ _).trans hbound
        simpa only [hg] using hle
      have hshort : shortRatioPair J m n :=
        ⟨n / m, hk2, hcap, Or.inl (by simpa only [mul_comm] using hnrep)⟩
      exact hfar.2.1 hshort
    · have hg : g = n := by
        dsimp [g]
        exact Nat.gcd_eq_right_iff_dvd.mpr hnm
      have hmrep : m = n * (m / n) :=
        (Nat.mul_div_cancel' hnm).symm
      have hk0 : m / n ≠ 0 := by
        intro hz
        rw [hz, mul_zero] at hmrep
        omega
      have hk1 : m / n ≠ 1 := by
        intro heq
        rw [heq, mul_one] at hmrep
        exact hfar.1 hmrep
      have hk2 : 2 ≤ m / n := by omega
      have hcap : m / n ≤ ratioCap J := by
        have hle : m / g ≤ ratioCap J :=
          (le_max_left _ _).trans hbound
        simpa only [hg] using hle
      have hshort : shortRatioPair J m n :=
        ⟨m / n, hk2, hcap, Or.inr (by simpa only [mul_comm] using hmrep)⟩
      exact hfar.2.1 hshort
  · have hdist : Nat.dist (m / g) (n / g) ≤ ratioCap J :=
      (nat_dist_le_max _ _).trans hbound
    have hclose : reducedClosePair J m n := by
      unfold reducedClosePair
      refine ⟨hcomp, ?_⟩
      simpa only [reducedGapCap] using hdist
    exact hfar.2.2 hclose

/-- The promised EXACT original high-gcd exclusion; it is
valid for every genuinely positive original far pair and does
not use the Mobius signs, an analytic theorem, or a norm bound. -/
theorem farPair_gcd_mul_succ_cap_le_max
    (J m n : ℕ) (hm : 0 < m) (hn : 0 < n)
    (hfar : farPair J m n) :
    Nat.gcd m n * (ratioCap J + 1) ≤ max m n := by
  let g : ℕ := Nat.gcd m n
  have hleft : g * (m / g) = m := Nat.mul_div_cancel' (Nat.gcd_dvd_left m n)
  have hright : g * (n / g) = n := Nat.mul_div_cancel' (Nat.gcd_dvd_right m n)
  have hlarge : ratioCap J + 1 ≤ max (m / g) (n / g) := by
    have h := farPair_reduced_max_gt J m n hm hn hfar
    change ratioCap J < max (m / g) (n / g) at h
    omega
  rcases le_total (m / g) (n / g) with hmn | hnm
  · have hb : ratioCap J + 1 ≤ n / g := by
      simpa only [max_eq_right hmn] using hlarge
    calc
      g * (ratioCap J + 1) ≤ g * (n / g) := Nat.mul_le_mul_left g hb
      _ = n := hright
      _ ≤ max m n := le_max_right _ _
  · have hb : ratioCap J + 1 ≤ m / g := by
      simpa only [max_eq_left hnm] using hlarge
    calc
      g * (ratioCap J + 1) ≤ g * (m / g) := Nat.mul_le_mul_left g hb
      _ = m := hleft
      _ ≤ max m n := le_max_left _ _

/-- A source-exact statement at the PREEXISTING floor(exp T)
rather than a fictitious integer horizon. -/
theorem every_far_original_pair_has_small_gcd
    (B : PrimeBand) (A : Finset ℕ) (J m n : ℕ)
    (hm : m ∈ lowIndices B J) (hn : n ∈ lowIndices B J)
    (hmask : m ≠ n ∧ Nat.dist m n ∉ A ∧
      ¬shortRatioPair J m n ∧ ¬reducedClosePair J m n) :
    Nat.gcd m n * (ratioCap J + 1) ≤
      ⌊Real.exp (dyadicTime J)⌋₊ := by
  have hmp : 0 < m := lowIndices_pos B J m hm
  have hnp : 0 < n := lowIndices_pos B J n hn
  have hb := farPair_gcd_mul_succ_cap_le_max J m n hmp hnp
    ⟨hmask.1, hmask.2.2.1, hmask.2.2.2⟩
  have hmN : m ≤ ⌊Real.exp (dyadicTime J)⌋₊ :=
    (Finset.mem_Icc.mp (lowIndices_subset_terminal B J hm)).2
  have hnN : n ≤ ⌊Real.exp (dyadicTime J)⌋₊ :=
    (Finset.mem_Icc.mp (lowIndices_subset_terminal B J hn)).2
  exact hb.trans (max_le hmN hnN)

/-- The original entire far packet, but allowing a *further*
predicate choose. No source sign, time or mask is changed. -/
def selectedFarCross
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ)
    (choose : ℕ → ℕ → Prop) : ℝ :=
  ∑ m ∈ lowIndices B J, ∑ n ∈ lowIndices B J,
    if farPair J m n ∧ Nat.dist m n ∉ A ∧ choose m n then
      moebiusReal m * moebiusReal n *
        pickupResponseGram (dyadicTime J) m n
    else 0

theorem selectedFar_all_eq_original
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ) :
    selectedFarCross B A J (fun _ _ => True) =
      farReducedOrLongCross B A J := by
  classical
  unfold selectedFarCross farReducedOrLongCross farPair
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  simp only [and_true]
  by_cases h : m ≠ n ∧ Nat.dist m n ∉ A ∧
      ¬shortRatioPair J m n ∧ ¬reducedClosePair J m n
  · simp [h, and_assoc, and_comm, and_left_comm]
  · simp [h, and_assoc, and_comm, and_left_comm]

/-- Genuine previously UNPAID negative pair selector:
all odd-coprime long comparable orientations, PLUS all squarefree
opposite-reduced-parity FAR incomparable orientations. -/
def farNegativePair (m n : ℕ) : Prop :=
  oddCoprimeRatio m n ∨
    (¬ (m ∣ n ∨ n ∣ m) ∧ reducedOppositeParity m n)

def farNegativeCross (B : PrimeBand) (A : Finset ℕ) (J : ℕ) : ℝ :=
  selectedFarCross B A J farNegativePair

def farOtherCross (B : PrimeBand) (A : Finset ℕ) (J : ℕ) : ℝ :=
  selectedFarCross B A J (fun m n => ¬farNegativePair m n)

/-- Exactly one finite sign partition. Negative pairs from earlier
short-ratio or reduced-close packets are NOT subtracted again. -/
theorem far_eq_negative_add_other
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ) :
    farReducedOrLongCross B A J =
      farNegativeCross B A J + farOtherCross B A J := by
  rw [← selectedFar_all_eq_original]
  unfold farNegativeCross farOtherCross selectedFarCross
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmask : farPair J m n ∧ Nat.dist m n ∉ A
  · by_cases hneg : farNegativePair m n
    · simp [hmask, hneg]
    · simp [hmask, hneg]
  · simp [hmask]

/-- Actual nonpositive original Mobius coefficients, not an
artificial sign choice, on the whole remaining FAR negative packet. -/
theorem farNegativeCross_nonpos
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ) :
    farNegativeCross B A J ≤ 0 := by
  have hT : 0 ≤ dyadicTime J := dyadicTime_nonneg J
  unfold farNegativeCross selectedFarCross
  apply Finset.sum_nonpos
  intro m hm
  apply Finset.sum_nonpos
  intro n hn
  by_cases h : farPair J m n ∧ Nat.dist m n ∉ A ∧ farNegativePair m n
  · simp only [if_pos h]
    rcases h.2.2 with hodd | ⟨hinc,hparity⟩
    · have hmI : m ∈ endpointIndex (dyadicTime J) := by
        simpa [terminalInventory] using
          (lowIndices_subset_terminal B J hm)
      have hnI : n ∈ endpointIndex (dyadicTime J) := by
        simpa [terminalInventory] using
          (lowIndices_subset_terminal B J hn)
      have hsrc := oddCoprime_source_nonpos hT hmI hnI hodd
      simpa only [sourceKernel] using hsrc
    · obtain ⟨hsm,hsn,hsign⟩ := hparity
      have hmu : moebiusReal m * moebiusReal n = -1 :=
        (moebius_product_eq_gcd_reduced m n hsm hsn).trans hsign
      have hk : 0 ≤ pickupResponseGram (dyadicTime J) m n :=
        pickupResponseGram_nonneg (dyadicTime J) hT m n
          (lowIndices_pos B J m hm) (lowIndices_pos B J n hn)
      rw [hmu]
      nlinarith
  · simp [h]

theorem far_le_other
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ) :
    farReducedOrLongCross B A J ≤ farOtherCross B A J := by
  rw [far_eq_negative_add_other]
  linarith [farNegativeCross_nonpos B A J]

/-- The actual empty true-prime bank; no case-dependent source bank. -/
def emptyPrimeBand : PrimeBand := ⟨∅, by simp⟩

/-- At cutoff >=1 the positive unit divisor is not large enough,
and an empty bank contains no prime factor of any d>1. -/
theorem emptyBank_highSmooth_of_cut
    (X : ℕ) (T : ℝ)
    (hQ : 1 ≤ nearSquareRootCut (2 * X)) :
    highSmoothBlock emptyPrimeBand X T = ∅ := by
  classical
  ext n
  simp only [Finset.mem_empty, iff_false]
  intro hn
  have hHigh : hasNearMaximalSmoothDivisor emptyPrimeBand X n :=
    (Finset.mem_filter.mp hn).2
  obtain ⟨p,hp,hmem,hdiv⟩ :=
    highSmooth_has_selected_prime emptyPrimeBand X n hQ hHigh
  simp [emptyPrimeBand] at hmem

/-- The entire terminal high-smooth collar is empty under the
independently elementary real cutoff condition at every selected j. -/
theorem terminalHighCollar_empty_of_cuts
    (J : ℕ)
    (hCuts : ∀ j ∈ terminalShells J,
      1 ≤ nearSquareRootCut (2 * (2 ^ (j - 1)))) :
    terminalHighCollar emptyPrimeBand J = ∅ := by
  classical
  ext n
  simp only [Finset.mem_empty, iff_false]
  intro hn
  change n ∈ (terminalInventory J).filter
    (fun k => ∃ j ∈ terminalShells J,
      k ∈ highSmoothBlock emptyPrimeBand (2 ^ (j - 1)) (dyadicTime j)) at hn
  obtain ⟨_,j,hj,hjn⟩ := Finset.mem_filter.mp hn
  have hEmpty := emptyBank_highSmooth_of_cut
    (2 ^ (j - 1)) (dyadicTime j) (hCuts j hj)
  simpa [hEmpty] using hjn

/-- Pure real numerical target: the paper proof gives J>=8
using 6*log2>4 (indeed log2>2/3), and monotonicity of
J-floor(sqrt J). This is NOT assumed by any theorem here. -/
def EmptyBankTerminalCutsEventuallyTarget : Prop :=
  ∀ J : ℕ, 8 ≤ J →
    ∀ j ∈ terminalShells J,
      1 ≤ nearSquareRootCut (2 * (2 ^ (j - 1)))

/-- This is the RH-strength one-sided source statement to prove,
not a hypothesis granted in this module. -/
def FarOriginalEveryPositiveRateUpperTarget : Prop :=
  AllRatesOnFixedDyadicGrid
    (fun J => farReducedOrLongCross emptyPrimeBand ∅ J)

/-- PNT-based genuine positive and negative ORIGINAL far masses
are each >= c*2^J/(J*log2)^2 eventually. This is an unported
Lean target; its source-level mathematical argument uses
prime pairs (p,q) and prime/semiprime pairs (p,2q), NOT random signs. -/
def FarBothSignsLargePNTTarget : Prop :=
  ∃ c : ℝ, 0 < c ∧ ∃ J₀ : ℕ, ∀ J : ℕ, J₀ ≤ J →
    c * (2 : ℝ)^J / ((J : ℝ) * Real.log 2)^2 ≤
      (∑ m ∈ lowIndices emptyPrimeBand J,
        ∑ n ∈ lowIndices emptyPrimeBand J,
          if farPair J m n ∧
              0 < moebiusReal m * moebiusReal n
          then moebiusReal m * moebiusReal n *
            pickupResponseGram (dyadicTime J) m n else 0) ∧
    c * (2 : ℝ)^J / ((J : ℝ) * Real.log 2)^2 ≤
      (∑ m ∈ lowIndices emptyPrimeBand J,
        ∑ n ∈ lowIndices emptyPrimeBand J,
          if farPair J m n ∧
              moebiusReal m * moebiusReal n < 0
          then -(moebiusReal m * moebiusReal n *
            pickupResponseGram (dyadicTime J) m n) else 0)

end GRWTSK.NumberTheory.Moebius.FarReducedStructuralFrontier
