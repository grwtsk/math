/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMScaleDependentPrimeSingletonTail
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMScaleDependentPrimeDirichletBoundary
import Mathlib.Tactic

/-!
# The FULL moving-bank original high source = prime series + FIVE initial shells

The existing genuine movingHighShell s uses the actual source
highSmoothBlock (singletonBank s) (2^s) (log(2^(s+1))). The adjacent
source theorem proves it equals {chosenPrime s} for all s>=5.

This file records the precise unsmoothed causal and complex Dirichlet
finite-index consequences. Every extra high index, if any, occurs
only in the FIRST FIVE original source shells s=0,1,2,3,4.
Those shells remain complete, including squareful zero coefficients
and both signs; they are not simply erased or replaced with primes.

Therefore the complete moving high source has exactly the long-range
arithmetic profile of ONE original Möbius prime per dyadic shell,
plus a finite early correction. No high-smooth cofactor counting
estimate is needed for this exact eventual identity.

At positive real sigma, the resulting full moving high Dirichlet
correction has the same radial mass coefficient 1/log 2 as the
one-prime-per-shell subseries; its difference from that subseries
is an entire FINITE Dirichlet polynomial. Infinite-series and
holomorphy identities remain separately stated as OPEN Lean Props.
No zero-free theorem or signed low-sector cancellation is claimed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeFiniteException

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothDirectEnergy
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeBankWitness
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeFullHigh
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeSingletonTail

/-- Source-faithful one-prime contribution of the actual full moving bank. -/
def onePrimeShellAtom (s : ℕ) (u : ℝ) : ℝ :=
  originalSignedAtom (chosenPrime s) u

/-- Complete original high shell minus its distinguished actual prime. -/
def shellEarlyDifference (s : ℕ) (u : ℝ) : ℝ :=
  originalHighShellWave (singletonBank s) s u - onePrimeShellAtom s u

/-- Once the genuine source cutoff exceeds one, this difference is
LITERALLY zero, not small and not only zero after time averaging. -/
theorem shellEarlyDifference_eq_zero (s : ℕ) (hs : 5 ≤ s) (u : ℝ) :
    shellEarlyDifference s u = 0 := by
  unfold shellEarlyDifference onePrimeShellAtom originalHighShellWave
  change
    (∑ n ∈ movingHighShell s, originalSignedAtom n u) -
      originalSignedAtom (chosenPrime s) u = 0
  rw [movingHighShell_eq_singleton hs]
  simp

def chosenPrimeWave (j : ℕ) (u : ℝ) : ℝ :=
  ∑ s ∈ Finset.range j, onePrimeShellAtom s u

/-- Finite early-shell error for EVERY cutoff, including j<5.
No phantom late shell or non-source compensation is introduced. -/
def finiteEarlyDifference (j : ℕ) (u : ℝ) : ℝ :=
  ∑ s ∈ Finset.range (min j 5), shellEarlyDifference s u

def completeEarlyDifference (u : ℝ) : ℝ :=
  ∑ s ∈ Finset.range 5, shellEarlyDifference s u

theorem finiteEarlyDifference_eq_complete (j : ℕ)
    (hj : 5 ≤ j) (u : ℝ) :
    finiteEarlyDifference j u = completeEarlyDifference u := by
  simp only [finiteEarlyDifference, completeEarlyDifference, Nat.min_eq_right hj]

/-- Exact original signed high return: all genuinely selected extra
indices are paid once, at their actual n, in the first FIVE shells. -/
theorem movingHighWave_eq_primes_add_finiteEarly
    (j : ℕ) (u : ℝ) :
    movingHighWave j u =
      chosenPrimeWave j u + finiteEarlyDifference j u := by
  have hsum :
      (∑ s ∈ Finset.range (min j 5), shellEarlyDifference s u) =
        ∑ s ∈ Finset.range j, shellEarlyDifference s u := by
    apply Finset.sum_subset (Finset.range_mono (Nat.min_le_left j 5))
    intro s hs hnot
    have hj : s < j := Finset.mem_range.mp hs
    have hlt : ¬ s < min j 5 := by
      intro h
      exact hnot (Finset.mem_range.mpr h)
    have hfive : 5 ≤ s := by omega
    exact shellEarlyDifference_eq_zero s hfive u
  calc
    movingHighWave j u =
        ∑ s ∈ Finset.range j,
          (onePrimeShellAtom s u + shellEarlyDifference s u) := by
      unfold movingHighWave
      apply Finset.sum_congr rfl
      intro s hs
      unfold onePrimeShellAtom shellEarlyDifference
      ring
    _ = chosenPrimeWave j u +
          ∑ s ∈ Finset.range j, shellEarlyDifference s u := by
      rw [Finset.sum_add_distrib]
      rfl
    _ = chosenPrimeWave j u + finiteEarlyDifference j u := by
      rw [finiteEarlyDifference, hsum]

theorem movingHighWave_eq_primes_add_completeEarly
    (j : ℕ) (hj : 5 ≤ j) (u : ℝ) :
    movingHighWave j u =
      chosenPrimeWave j u + completeEarlyDifference u := by
  rw [movingHighWave_eq_primes_add_finiteEarly]
  rw [finiteEarlyDifference_eq_complete j hj u]

/-- Original Dirichlet coefficient at an actual source integer n.
This is not the Laplace-wave causal amplitude. -/
def originalDirichletAtom (n : ℕ) (z : ℂ) : ℂ :=
  (((moebiusReal n : ℝ) : ℂ) * (n : ℂ) ^ (-z))

def fullMovingShellDirichlet (s : ℕ) (z : ℂ) : ℂ :=
  ∑ n ∈ movingHighShell s, originalDirichletAtom n z

def fullMovingDirichletFinite (j : ℕ) (z : ℂ) : ℂ :=
  ∑ s ∈ Finset.range j, fullMovingShellDirichlet s z

def chosenPrimeDirichletFinite (j : ℕ) (z : ℂ) : ℂ :=
  ∑ s ∈ Finset.range j, originalDirichletAtom (chosenPrime s) z

def earlyDirichletDifference (j : ℕ) (z : ℂ) : ℂ :=
  ∑ s ∈ Finset.range (min j 5),
    (fullMovingShellDirichlet s z -
      originalDirichletAtom (chosenPrime s) z)

def completeEarlyDirichletDifference (z : ℂ) : ℂ :=
  ∑ s ∈ Finset.range 5,
    (fullMovingShellDirichlet s z -
      originalDirichletAtom (chosenPrime s) z)

/-- The original moving-bank Dirichlet correction has NO late
nonprime or squareful contribution after shell four. -/
theorem fullMovingShellDirichlet_eq_prime
    (s : ℕ) (hs : 5 ≤ s) (z : ℂ) :
    fullMovingShellDirichlet s z = originalDirichletAtom (chosenPrime s) z := by
  unfold fullMovingShellDirichlet
  rw [movingHighShell_eq_singleton hs]
  simp

/-- Exact finite original highDirichlet source reassembly with every
shell, winding and integer sign retained before the final split. -/
theorem fullMovingDirichletFinite_eq_prime_add_early
    (j : ℕ) (z : ℂ) :
    fullMovingDirichletFinite j z =
      chosenPrimeDirichletFinite j z + earlyDirichletDifference j z := by
  have hsum :
      (∑ s ∈ Finset.range (min j 5),
        (fullMovingShellDirichlet s z -
          originalDirichletAtom (chosenPrime s) z)) =
          ∑ s ∈ Finset.range j,
            (fullMovingShellDirichlet s z -
              originalDirichletAtom (chosenPrime s) z) := by
    apply Finset.sum_subset (Finset.range_mono (Nat.min_le_left j 5))
    intro s hs hnot
    have hj : s < j := Finset.mem_range.mp hs
    have hlt : ¬ s < min j 5 := by
      intro h
      exact hnot (Finset.mem_range.mpr h)
    have hfive : 5 ≤ s := by omega
    rw [fullMovingShellDirichlet_eq_prime s hfive z, sub_self]
  calc
    fullMovingDirichletFinite j z =
        ∑ s ∈ Finset.range j,
          (originalDirichletAtom (chosenPrime s) z +
            (fullMovingShellDirichlet s z -
              originalDirichletAtom (chosenPrime s) z)) := by
      unfold fullMovingDirichletFinite
      apply Finset.sum_congr rfl
      intro s hs
      ring
    _ = chosenPrimeDirichletFinite j z +
          ∑ s ∈ Finset.range j,
            (fullMovingShellDirichlet s z -
              originalDirichletAtom (chosenPrime s) z) := by
      rw [Finset.sum_add_distrib]
      rfl
    _ = chosenPrimeDirichletFinite j z + earlyDirichletDifference j z := by
      rw [earlyDirichletDifference, hsum]

theorem fullMovingDirichletFinite_eq_prime_add_completeEarly
    (j : ℕ) (hj : 5 ≤ j) (z : ℂ) :
    fullMovingDirichletFinite j z =
      chosenPrimeDirichletFinite j z + completeEarlyDirichletDifference z := by
  rw [fullMovingDirichletFinite_eq_prime_add_early]
  simp only [earlyDirichletDifference, completeEarlyDirichletDifference,
    Nat.min_eq_right hj]

/-- TRUE mathematically derived analytic property, deliberately not
asserted as a Lean theorem: for Re z>0, the complete changing-bank
source equals a one-prime-per-shell infinite Dirichlet series plus
the above finite entire correction. No continuation through Re z=0
and no RH/GRH zero-free theorem are implied. -/
def FullMovingDirichletPositiveHalfplane : Prop :=
  ∀ z : ℂ, 0 < z.re →
    (∑' s : ℕ, fullMovingShellDirichlet s z) =
      (∑' s : ℕ, originalDirichletAtom (chosenPrime s) z) +
        completeEarlyDirichletDifference z

/-- Paper-derived *radial*, not meromorphic, boundary value:
the original complete changing-bank signed Dirichlet high correction
has the same coefficient 1/log2 as one original prime per shell.
Native Lean limit calculus is still an OPEN acceptance gate. -/
def FullMovingPositiveRadialResidue : Prop :=
  Filter.Tendsto
    (fun σ : ℝ =>
      σ * (-(∑' s : ℕ, fullMovingShellDirichlet s (σ : ℂ)).re))
    (nhdsGT (0 : ℝ))
    (nhds ((Real.log 2)⁻¹))

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeFiniteException
