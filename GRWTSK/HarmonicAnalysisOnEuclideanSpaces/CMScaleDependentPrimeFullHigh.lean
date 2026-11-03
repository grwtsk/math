/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMScaleDependentPrimeSparseEnergy
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMOriginalHighSmoothScalarClosure
import Mathlib.Tactic

/-!
# Full genuine moving-bank highSmoothBlock with a uniform original-source bound

For each ORIGINAL dyadic shell s the bank B_s is a true singleton
{chosenPrime s}, where Bertrand gives 2^s<p_s<=2^(s+1).
The high shell is EXACTLY the existing highSmoothBlock B_s (2^s) T_s,
including all squareful ZERO symbols and any other actual selected
integer at the finitely many small scales. It contains p_s with
original mu(p_s)=-1 for every s, so unlike a fixed bank it contains
infinitely many nonzero ORIGINAL source atoms.

The EXISTING source count highSmoothCofactorCount_target bounds each
one-prime highShell amplitude by the same scalar highShellCost
expression (only the card of the bank occurs). Compare to the
REFERENCE constant bank {chosenPrime 0}, whose scalar geometric sum
was already closed by CMOriginalHighSmoothScalarClosure. This bounds
the complete moving-bank high wave uniformly in s,u without using
Mertens cancellation, all-even Fourier moments, or RH.

The full moving high source is an exact source index FILTER because
its varying-bank dyadic half-open shell sets are pairwise disjoint.
The LOW complement remains the literal original signed coefficient
at each integer not selected by this genuine moving schedule.
The complete mixed original signed square remains intact.

All declarations are source proof CANDIDATES; pinned Lean compilation,
fresh kernel and transitive axiom audit NOT_RUN. The original LOW
signed-energy all-rate estimate is independent and OPEN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeFullHigh

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveHighSmoothAllShell
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothDirectEnergy
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothFiniteComplement
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothGeometricSummation
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothScalarClosure
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeBankWitness

/-- The actual varying-bank source sector, not a freely selected prime set. -/
def movingHighShell (s : ℕ) : Finset ℕ :=
  highShell (singletonBank s) s

def movingHighWave (j : ℕ) (u : ℝ) : ℝ :=
  ∑ s ∈ Finset.range j, originalHighShellWave (singletonBank s) s u

def movingLowWave (j : ℕ) (u : ℝ) : ℝ :=
  originalFixedWave j u - movingHighWave j u

theorem movingHighShell_contains_nonzero_prime (s : ℕ) :
    chosenPrime s ∈ movingHighShell s ∧
      moebiusReal (chosenPrime s) = -1 :=
  ⟨chosenPrime_mem_original_highShell s, chosenPrime_moebius s⟩

/-- Only the NUMBER of selected primes (one) enters this existing source
cardinality bound. No constant is assumed independent of an arbitrarily
growing prime bank; here every bank really has cardinal one. -/
theorem movingHighShell_abs_le_referenceCost (s : ℕ) (u : ℝ) :
    |originalHighShellWave (singletonBank s) s u| ≤
      highShellCost (singletonBank 0) s := by
  have h := originalHighShellWave_abs_le_count (singletonBank s) s u
  have hsame :
      highShellCost (singletonBank s) s =
        highShellCost (singletonBank 0) s := by
    simp [highShellCost, singletonBank_card]
  calc
    |originalHighShellWave (singletonBank s) s u| ≤
        highShellCost (singletonBank s) s := h
    _ = highShellCost (singletonBank 0) s := hsame

theorem movingHighWave_abs_le_referenceEnvelope (j : ℕ) (u : ℝ) :
    |movingHighWave j u| ≤ finiteHighEnvelope (singletonBank 0) j := by
  unfold movingHighWave
  calc
    _ ≤ ∑ s ∈ Finset.range j,
          |originalHighShellWave (singletonBank s) s u| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ s ∈ Finset.range j,
          highShellCost (singletonBank 0) s := by
      apply Finset.sum_le_sum
      intro s hs
      exact movingHighShell_abs_le_referenceCost s u
    _ = finiteHighEnvelope (singletonBank 0) j := by
      exact (finiteHighEnvelope_eq_cost_sum (singletonBank 0) j).symm

/-- The ACTUAL moving-bank highSmoothBlock has a time-uniform bound
from PREEXISTING genuine-source counting plus pure geometric decay. -/
theorem movingHighWave_uniform :
    ∃ K : ℝ, 0 ≤ K ∧
      ∀ j : ℕ, ∀ u : ℝ, |movingHighWave j u| ≤ K := by
  obtain ⟨K, hK, hsum⟩ := globalHighEnvelope_proof (singletonBank 0)
  exact ⟨K, hK, fun j u =>
    (movingHighWave_abs_le_referenceEnvelope j u).trans (hsum j)⟩

/-- Actual changing-bank original integer high-shell index union. -/
def movingHighIndex (j : ℕ) : Finset ℕ :=
  (Finset.range j).biUnion movingHighShell

theorem movingHighShell_mem_original_indices
    {s j n : ℕ} (hs : s < j) (hn : n ∈ movingHighShell s) :
    n ∈ indices j :=
  highShell_mem_original_indices (singletonBank s) hs hn

/-- Uniqueness depends on ORIGINAL dyadic integer positions, not on
the bank. Two different bank choices cannot make one n appear in
two different half-open source shells. -/
theorem movingHighShell_disjoint (j : ℕ) :
    Set.PairwiseDisjoint (↑(Finset.range j)) movingHighShell := by
  intro s hs t ht hst
  apply Finset.disjoint_left.mpr
  intro n hns hnt
  rcases lt_or_gt_of_ne hst with hlt | hgt
  · have hsu := highShell_le_upper (singletonBank s) s n hns
    have htl := highShell_gt_lower (singletonBank t) t n hnt
    have hle : s + 1 ≤ t := by omega
    have hp : 2 ^ (s + 1) ≤ 2 ^ t :=
      Nat.pow_le_pow_right (by omega) hle
    omega
  · have htu := highShell_le_upper (singletonBank t) t n hnt
    have hsl := highShell_gt_lower (singletonBank s) s n hns
    have hle : t + 1 ≤ s := by omega
    have hp : 2 ^ (t + 1) ≤ 2 ^ s :=
      Nat.pow_le_pow_right (by omega) hle
    omega

theorem movingHighIndex_subset_indices (j : ℕ) :
    movingHighIndex j ⊆ indices j := by
  intro n hn
  obtain ⟨s, hs, hns⟩ := Finset.mem_biUnion.mp hn
  exact movingHighShell_mem_original_indices
    (Finset.mem_range.mp hs) hns

theorem movingHighWave_eq_original_index_sum (j : ℕ) (u : ℝ) :
    movingHighWave j u =
      ∑ n ∈ movingHighIndex j, originalSignedAtom n u := by
  classical
  unfold movingHighWave movingHighIndex movingHighShell originalHighShellWave
  exact (Finset.sum_biUnion (movingHighShell_disjoint j)
    (f := fun n => originalSignedAtom n u)).symm

theorem movingLowWave_eq_original_filter (j : ℕ) (u : ℝ) :
    movingLowWave j u =
      ∑ n ∈ indices j,
        if n ∈ movingHighIndex j then 0 else originalSignedAtom n u := by
  classical
  let H : Finset ℕ := movingHighIndex j
  have hsub : H ⊆ indices j := movingHighIndex_subset_indices j
  have hfilter : (indices j).filter (fun n => n ∈ H) = H := by
    ext n
    simp only [Finset.mem_filter]
    exact ⟨fun h => h.2, fun h => ⟨hsub h, h⟩⟩
  have hhigh :
      movingHighWave j u =
        ∑ n ∈ indices j,
          if n ∈ H then originalSignedAtom n u else 0 := by
    calc
      movingHighWave j u = ∑ n ∈ H, originalSignedAtom n u :=
        movingHighWave_eq_original_index_sum j u
      _ = ∑ n ∈ (indices j).filter (fun n => n ∈ H),
          originalSignedAtom n u := by rw [hfilter]
      _ = _ := by rw [Finset.sum_filter]
  unfold movingLowWave originalFixedWave
  rw [hhigh, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hm : n ∈ H <;> simp [hm, originalSignedAtom]

theorem movingFull_signed_square (j : ℕ) (u : ℝ) :
    (originalFixedWave j u) ^ 2 =
      (movingHighWave j u) ^ 2 +
        2 * movingHighWave j u * movingLowWave j u +
          (movingLowWave j u) ^ 2 := by
  unfold movingLowWave
  ring

/-- The original coherent observable is upper bounded by its EXACT
moving-bank LOW plus the uniform positive high-sector allowance. -/
theorem movingFull_sq_le_low_of_bound
    (j : ℕ) (u K : ℝ) (hK : |movingHighWave j u| ≤ K) :
    (originalFixedWave j u) ^ 2 ≤
      2 * (movingLowWave j u) ^ 2 + 2 * K ^ 2 := by
  have habs := abs_le.mp hK
  have hsq : (movingHighWave j u) ^ 2 ≤ K ^ 2 := by
    nlinarith [mul_nonneg
      (show 0 ≤ K - movingHighWave j u by linarith)
      (show 0 ≤ K + movingHighWave j u by linarith)]
  unfold movingLowWave
  nlinarith [sq_nonneg
    (originalFixedWave j u - 2 * movingHighWave j u)]

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeFullHigh
