/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMOriginalHighSmoothScalarClosure
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMOriginalHighSmoothPhysicalEnergy
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic

/-!
# Exact source-index complement for fixed-bank high-smooth dyadic shells

This closes the named finite OriginalLowComplementReturn target as a
source proof candidate. The existing n=1 atom stays in LOW. For each
other original integer n in 1..2^j, its unique dyadic shell (if
selected as high) is retained at its genuine original frequency;
disjointness follows from the original half-open shell intervals.

This is exact finite arithmetic bookkeeping and does not assert
cancellation of the original LOW source. The scalar fixed-bank high
envelope is furnished by the imported scalar closure proof candidate.
Compilation / kernel audit remain NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothFiniteComplement

open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveHighSmoothAllShell
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothDirectEnergy
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothScalarClosure
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothPhysicalEnergy

/-- The genuine highSmoothBlock is a subset of the original
(X,2X] source window even after the endpoint filter. -/
theorem highShell_le_upper
    (B : PrimeBand) (s n : ℕ)
    (h : n ∈ highShell B s) :
    n ≤ 2 ^ (s + 1) := by
  unfold highShell at h
  change n ∈ (balancedBlock (2 ^ s)
    (Real.log (2 * ((2 ^ s : ℕ) : ℝ)))).filter
      (hasNearMaximalSmoothDivisor B (2 ^ s)) at h
  have hb := (Finset.mem_filter.mp h).1
  change n ∈ (Finset.Ioc (2 ^ s) (2 * (2 ^ s))).filter
    (fun k => k ∈ endpointIndex (Real.log (2 * ((2 ^ s : ℕ) : ℝ)))) at hb
  have hu := (Finset.mem_Ioc.mp (Finset.mem_filter.mp hb).1).2
  calc
    n ≤ 2 * (2 ^ s) := hu
    _ = 2 ^ (s + 1) := by simp [pow_succ, Nat.mul_comm]

/-- Every selected source atom still belongs to the exact CLOSED
original dyadic inventory 1..2^j. -/
theorem highShell_mem_original_indices
    (B : PrimeBand) {j s n : ℕ}
    (hs : s < j) (hn : n ∈ highShell B s) :
    n ∈ indices j := by
  have hlow := highShell_gt_lower B s n hn
  have hupper := highShell_le_upper B s n hn
  have hsle : s + 1 ≤ j := by omega
  have hpower : 2 ^ (s + 1) ≤ 2 ^ j :=
    Nat.pow_le_pow_right (by omega) hsle
  change n ∈ Finset.Icc 1 (2 ^ j)
  apply Finset.mem_Icc.mpr
  constructor
  · have hone : 1 ≤ 2 ^ s := by positivity
    omega
  · omega

/-- The original first index is never a high-smooth shell index. -/
theorem one_not_in_high_shell (B : PrimeBand) (s : ℕ) :
    1 ∉ highShell B s := by
  intro hn
  have hlo := highShell_gt_lower B s 1 hn
  have hone : 1 ≤ 2 ^ s := by positivity
  omega

/-- Disjointness is of ORIGINAL integer labels, not modulo a residue
or after a Fourier phase map. -/
theorem highShell_pairwise_disjoint (B : PrimeBand) (j : ℕ) :
    Set.PairwiseDisjoint (↑(Finset.range j)) (highShell B) := by
  intro s hs t ht hst
  apply Finset.disjoint_left.mpr
  intro n hns hnt
  rcases lt_or_gt_of_ne hst with hlt | hgt
  · have hsu := highShell_le_upper B s n hns
    have htl := highShell_gt_lower B t n hnt
    have hle : s + 1 ≤ t := by omega
    have hp : 2 ^ (s + 1) ≤ 2 ^ t :=
      Nat.pow_le_pow_right (by omega) hle
    omega
  · have htu := highShell_le_upper B t n hnt
    have hsl := highShell_gt_lower B s n hns
    have hle : t + 1 ≤ s := by omega
    have hp : 2 ^ (t + 1) ≤ 2 ^ s :=
      Nat.pow_le_pow_right (by omega) hle
    omega

/-- Exact union of all selected original high-shell index sets. -/
def highIndexUnion (B : PrimeBand) (j : ℕ) : Finset ℕ :=
  (Finset.range j).biUnion (highShell B)

/-- The selected union is a subset of the unchanged original inventory. -/
theorem highIndexUnion_subset_indices (B : PrimeBand) (j : ℕ) :
    highIndexUnion B j ⊆ indices j := by
  intro n hn
  obtain ⟨s, hs, hns⟩ := Finset.mem_biUnion.mp hn
  exact highShell_mem_original_indices B
    (Finset.mem_range.mp hs) hns

/-- Sum over disjoint high shells equals the ORIGINAL signed source
sum over their exact finite index union, with every atom included once. -/
theorem originalHighWave_eq_highIndexUnion
    (B : PrimeBand) (j : ℕ) (u : ℝ) :
    originalHighWave B j u =
      ∑ n ∈ highIndexUnion B j, originalSignedAtom n u := by
  classical
  simpa only [originalHighWave, originalHighShellWave, highIndexUnion] using
    (Finset.sum_biUnion
      (f := fun n : ℕ => originalSignedAtom n u)
      (highShell_pairwise_disjoint B j)).symm

/-- The low-source finite sum is the exact original inventory filter
for membership outside all high shells; no compensating or missing mass. -/
theorem originalLowComplementReturn_proof (B : PrimeBand) :
    OriginalLowComplementReturn B := by
  classical
  intro j u
  let H : Finset ℕ := highIndexUnion B j
  have hsub : H ⊆ indices j := highIndexUnion_subset_indices B j
  have hfilter : (indices j).filter (fun n => n ∈ H) = H := by
    apply Finset.ext
    intro n
    simp only [Finset.mem_filter]
    constructor
    · intro h
      exact h.2
    · intro h
      exact ⟨hsub h, h⟩
  have hhigh :
      originalHighWave B j u =
        ∑ n ∈ indices j,
          if n ∈ H then originalSignedAtom n u else 0 := by
    calc
      originalHighWave B j u =
          ∑ n ∈ H, originalSignedAtom n u :=
        originalHighWave_eq_highIndexUnion B j u
      _ = ∑ n ∈ (indices j).filter (fun n => n ∈ H),
          originalSignedAtom n u := by rw [hfilter]
      _ = ∑ n ∈ indices j,
          if n ∈ H then originalSignedAtom n u else 0 := by
        rw [Finset.sum_filter]
  unfold originalLowWave originalFixedWave
  rw [hhigh, ← Finset.sum_sub_distrib]
  change
    (∑ n ∈ indices j,
      (originalSignedAtom n u -
        (if n ∈ H then originalSignedAtom n u else 0))) =
      ∑ n ∈ indices j,
        if (∃ s ∈ Finset.range j, n ∈ highShell B s) then 0
        else originalSignedAtom n u
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : n ∈ H
  · have he : ∃ s ∈ Finset.range j, n ∈ highShell B s :=
      Finset.mem_biUnion.mp h
    simp [h, he]
  · have he : ¬ ∃ s ∈ Finset.range j, n ∈ highShell B s := by
      intro he
      exact h (Finset.mem_biUnion.mpr he)
    simp [h, he]

/-- All scalar high-source gates are now furnished by local proof
candidates. The only unsupplied mathematical arithmetic premise in
this direct RH consumer is the ORIGINAL low-sector signed energy. -/
theorem riemannHypothesis_of_low_energy_only
    (B : PrimeBand) (h : OriginalLowAllRate B) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_originalLowAllRate B
    globalHighEnvelope_proof h

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothFiniteComplement
