/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMScaleDependentPrimeEarlyShells
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMScaleDependentPrimeAllShellDirichletSqueeze
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic

/-!
# COMPLETE exact full moving-high support: n=2..32, then one prime per shell

No cofactor-count or arithmetic cancellation premise remains in this
SOURCE-EXACT support description for the existing singleton moving bank.
The original first five highSmoothBlock shells are the COMPLETE integer
intervals (2^s,2^(s+1)], s=0..4. They partition Icc 2 32.
For s>=5 the original highSmoothBlock is the singleton {chosenPrime s}.

Consequently, at every j>=5, the FULL original high source is
  sum_(2<=n<=32) mu(n)*pickupResponse(n,u)
    + sum_(5<=s<j) mu(chosenPrime s)*pickupResponse(chosenPrime s,u).

The same EXACT finite identity holds in the genuine complex Dirichlet
source for every z, including outside the Dirichlet convergence region.
Squareful zeros, integer labels, source births and all signs are unchanged.
Infinite-series and kernel acceptance remain separate open gates.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeExactSupport

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothDirectEnergy
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeBankWitness
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeFullHigh
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeSingletonTail
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeFiniteException
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeEarlyShells

/-- Exact union of the original first five complete source shells. -/
def firstFiveMovingIndices : Finset ℕ :=
  (Finset.range 5).biUnion movingHighShell

/-- Pure finite integer interval arithmetic, no source rearrangement
and no use of source cancellation. -/
theorem firstFiveMovingIndices_eq_Icc :
    firstFiveMovingIndices = Finset.Icc 2 32 := by
  classical
  apply Finset.ext
  intro n
  have hadd (s : ℕ) (hs : s < 5)
      (hlo : 2 ^ s < n) (hup : n ≤ 2 * (2 ^ s)) :
      n ∈ firstFiveMovingIndices := by
    unfold firstFiveMovingIndices
    apply Finset.mem_biUnion.mpr
    refine ⟨s, Finset.mem_range.mpr hs, ?_⟩
    rw [movingHighShell_eq_full_dyadic_Ioc hs]
    exact Finset.mem_Ioc.mpr ⟨hlo, hup⟩
  constructor
  · intro hn
    obtain ⟨s, hs, hns⟩ := Finset.mem_biUnion.mp hn
    have hs5 : s < 5 := Finset.mem_range.mp hs
    rw [movingHighShell_eq_full_dyadic_Ioc hs5] at hns
    have hlo := (Finset.mem_Ioc.mp hns).1
    have hup := (Finset.mem_Ioc.mp hns).2
    have hpow : 2 ^ s ≤ 16 := by
      have h : 2 ^ s ≤ 2 ^ 4 :=
        Nat.pow_le_pow_right (by omega) (by omega : s ≤ 4)
      simpa using h
    have hlow : 1 ≤ 2 ^ s := by positivity
    exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
  · intro hn
    obtain ⟨hlo, hup⟩ := Finset.mem_Icc.mp hn
    by_cases h2 : n ≤ 2
    · apply hadd 0 (by decide)
      · norm_num <;> omega
      · norm_num <;> omega
    · by_cases h4 : n ≤ 4
      · apply hadd 1 (by decide)
        · norm_num <;> omega
        · norm_num <;> omega
      · by_cases h8 : n ≤ 8
        · apply hadd 2 (by decide)
          · norm_num <;> omega
          · norm_num <;> omega
        · by_cases h16 : n ≤ 16
          · apply hadd 3 (by decide)
            · norm_num <;> omega
            · norm_num <;> omega
          · apply hadd 4 (by decide)
            · norm_num <;> omega
            · norm_num <;> omega

/-- The original first five full signed high-shell wave is exactly
the ORIGINAL integer inventory 2,...,32, no nonunit/mu-zero omission. -/
theorem firstFiveMovingWave_eq_original_Icc (u : ℝ) :
    (∑ s ∈ Finset.range 5,
      originalHighShellWave (singletonBank s) s u) =
        ∑ n ∈ Finset.Icc 2 32, originalSignedAtom n u := by
  classical
  have h :=
    (Finset.sum_biUnion (movingHighShell_disjoint 5)
      (f := fun n : ℕ => originalSignedAtom n u)).symm
  change (∑ s ∈ Finset.range 5,
      ∑ n ∈ movingHighShell s, originalSignedAtom n u) =
        ∑ n ∈ firstFiveMovingIndices, originalSignedAtom n u at h
  rw [firstFiveMovingIndices_eq_Icc] at h
  simpa only [originalHighShellWave, movingHighShell] using h

def primeTailWave (j : ℕ) (u : ℝ) : ℝ :=
  ∑ k ∈ Finset.range (j - 5),
    originalSignedAtom (chosenPrime (5 + k)) u

/-- Exact original causal source identity at EVERY j>=5; this is
stronger than the previous finite five-shell difference statement. -/
theorem movingHighWave_eq_initial_Icc_add_primeTail
    (j : ℕ) (hj : 5 ≤ j) (u : ℝ) :
    movingHighWave j u =
      (∑ n ∈ Finset.Icc 2 32, originalSignedAtom n u) +
        primeTailWave j u := by
  have htail :
      (∑ k ∈ Finset.range (j - 5),
        originalHighShellWave (singletonBank (5 + k)) (5 + k) u) =
      ∑ k ∈ Finset.range (j - 5),
        originalSignedAtom (chosenPrime (5 + k)) u := by
    apply Finset.sum_congr rfl
    intro k hk
    unfold originalHighShellWave
    change (∑ n ∈ movingHighShell (5 + k), originalSignedAtom n u) =
      originalSignedAtom (chosenPrime (5 + k)) u
    rw [movingHighShell_eq_singleton (by omega : 5 ≤ 5 + k)]
    simp
  calc
    movingHighWave j u =
        (∑ s ∈ Finset.range 5,
          originalHighShellWave (singletonBank s) s u) +
        ∑ k ∈ Finset.range (j - 5),
          originalHighShellWave (singletonBank (5 + k)) (5 + k) u := by
      unfold movingHighWave
      conv_lhs => rw [show j = 5 + (j - 5) by omega]
      rw [Finset.sum_range_add]
    _ = (∑ n ∈ Finset.Icc 2 32, originalSignedAtom n u) +
          primeTailWave j u := by
      rw [firstFiveMovingWave_eq_original_Icc u, htail]
      rfl

/-- Exact first five complex original Dirichlet atoms. -/
theorem firstFiveMovingDirichlet_eq_original_Icc (z : ℂ) :
    (∑ s ∈ Finset.range 5, fullMovingShellDirichlet s z) =
      ∑ n ∈ Finset.Icc 2 32, originalDirichletAtom n z := by
  classical
  have h :=
    (Finset.sum_biUnion (movingHighShell_disjoint 5)
      (f := fun n : ℕ => originalDirichletAtom n z)).symm
  change (∑ s ∈ Finset.range 5,
      ∑ n ∈ movingHighShell s, originalDirichletAtom n z) =
        ∑ n ∈ firstFiveMovingIndices, originalDirichletAtom n z at h
  rw [firstFiveMovingIndices_eq_Icc] at h
  simpa only [fullMovingShellDirichlet] using h

def primeTailDirichlet (j : ℕ) (z : ℂ) : ℂ :=
  ∑ k ∈ Finset.range (j - 5),
    originalDirichletAtom (chosenPrime (5 + k)) z

/-- EXACT ORIGINAL signed Dirichlet polynomial at every j>=5.
This equality is finite algebra for every complex z, not a claim
about convergence of a later infinite LOW or zeta series. -/
theorem fullMovingDirichletFinite_eq_initial_Icc_add_primeTail
    (j : ℕ) (hj : 5 ≤ j) (z : ℂ) :
    fullMovingDirichletFinite j z =
      (∑ n ∈ Finset.Icc 2 32, originalDirichletAtom n z) +
        primeTailDirichlet j z := by
  have htail :
      (∑ k ∈ Finset.range (j - 5),
        fullMovingShellDirichlet (5 + k) z) =
      ∑ k ∈ Finset.range (j - 5),
        originalDirichletAtom (chosenPrime (5 + k)) z := by
    apply Finset.sum_congr rfl
    intro k hk
    exact fullMovingShellDirichlet_eq_prime (5 + k) (by omega) z
  calc
    fullMovingDirichletFinite j z =
        (∑ s ∈ Finset.range 5, fullMovingShellDirichlet s z) +
        ∑ k ∈ Finset.range (j - 5),
          fullMovingShellDirichlet (5 + k) z := by
      unfold fullMovingDirichletFinite
      conv_lhs => rw [show j = 5 + (j - 5) by omega]
      rw [Finset.sum_range_add]
    _ = (∑ n ∈ Finset.Icc 2 32, originalDirichletAtom n z) +
          primeTailDirichlet j z := by
      rw [firstFiveMovingDirichlet_eq_original_Icc z, htail]
      rfl

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeExactSupport
