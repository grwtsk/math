/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMScaleDependentPrimeFullHigh
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Data.Nat.Prime.Defs
import Mathlib.Tactic

/-!
# Exact original moving-bank highSmoothBlock is a SINGLETON after shell 4

The preexisting one-prime genuine shell bank B_s={chosenPrime s},
2^s<p_s<=2^(s+1), has an exact selected original Möbius prime.
For s>=5, the authentic arithmetic cutoff
  Q(2^(s+1))=2^(s+1)*exp(-2sqrt(log(2^(s+1))))
is strictly above one.

Every source-selected divisor d must then be >1. By the actual
bankSmooth predicate and Nat.exists_prime_and_dvd, p_s|d|n.
Since the original shell has n<=2^(s+1)<2*p_s, it follows n=p_s.
Thus the COMPLETE highSmoothBlock B_s (2^s) T_(s+1) is precisely
{p_s} for every s>=5. This is a statement about the existing
original high source, not only the hand-picked prime subselector.

In small shells s<5 the source Q may lie below one, so d=1 can
admit additional n. Those are NOT discarded or retrospectively
reclassified. They form a finite exact early correction.

Pinned elementary ingredients:
- Real.log_two_gt_d9 (Mathlib.Analysis.Complex.ExponentialBounds),
- two_sqrt_le_linear_rate (existing grwtsk/math),
- Nat.exists_prime_and_dvd, Nat.eq_of_dvd_of_lt_two_mul,
- existing source highShell_le_upper and bankSmooth.
No arithmetic Mertens cancellation, RH, GRH, changed prime bank or source
coefficient. Lean compilation, kernel replay and axiom audit NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeSingletonTail

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.PrimeSmoothFiniteConvolution
open GRWTSK.NumberTheory.Moebius.NearSquareRootEulerPrefix
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs
open GRWTSK.NumberTheory.Moebius.HighSmoothAllRateProof
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveHighSmoothAllShell
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothFiniteComplement
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeBankWitness
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeFullHigh

/-- Concrete threshold for the ORIGINAL cut-off: (s+1)*log2>4. -/
theorem shell_time_gt_four {s : ℕ} (hs : 5 ≤ s) :
    4 < dyadicTime (s + 1) := by
  have hlog : (2 / 3 : ℝ) < Real.log 2 := by
    have h := Real.log_two_gt_d9
    linarith
  have ha : 0 ≤ Real.log (2 : ℝ) :=
    (Real.log_pos (by norm_num : (1 : ℝ) < 2)).le
  have hs6 : (6 : ℝ) ≤ ((s + 1 : ℕ) : ℝ) := by
    exact_mod_cast (show 6 ≤ s + 1 by omega)
  have hmul :
      (6 : ℝ) * Real.log 2 ≤
        (((s + 1 : ℕ) : ℝ)) * Real.log 2 :=
    mul_le_mul_of_nonneg_right hs6 ha
  unfold dyadicTime time
  nlinarith [hmul, hlog]

/-- True source Q(N)>1 already from shell s=5, N=64;
the threshold requires no asymptotic or numerical approximation. -/
theorem nearSquareRootCut_gt_one_of_shell_large
    {s : ℕ} (hs : 5 ≤ s) :
    1 < nearSquareRootCut (2 * (2 ^ s)) := by
  let T : ℝ := dyadicTime (s + 1)
  have hT4 : 4 < T := shell_time_gt_four hs
  have hT : 0 ≤ T := (lt_trans (by norm_num : (0 : ℝ) < 4) hT4).le
  have hroot := two_sqrt_le_linear_rate 1 T (by norm_num) hT
  have hpos : 0 < T - 2 * Real.sqrt T := by linarith
  have hNat : 2 * (2 ^ s) = 2 ^ (s + 1) := by
    simp [pow_succ, Nat.mul_comm]
  have hNexp : (((2 * (2 ^ s) : ℕ) : ℝ)) = Real.exp T := by
    rw [hNat]
    exact (exp_dyadicTime (s + 1)).symm
  have hNlog : Real.log (((2 * (2 ^ s) : ℕ) : ℝ)) = T := by
    rw [hNexp, Real.log_exp]
  calc
    (1 : ℝ) = Real.exp 0 := by rw [Real.exp_zero]
    _ < Real.exp (T - 2 * Real.sqrt T) := Real.exp_lt_exp.mpr hpos
    _ = nearSquareRootCut (2 * (2 ^ s)) := by
      unfold nearSquareRootCut
      rw [hNlog, hNexp, ← Real.exp_add]
      congr 1
      ring

/-- An ORIGINAL n in the genuine one-prime moving highSmoothBlock must
be the very chosen prime, provided the original cutoff is at least one.
The <=2X shell bound is decisive: two multiples of p_s cannot fit. -/
theorem movingHighShell_eq_singleton_of_one_le_cutoff (s : ℕ)
    (hcut : 1 ≤ nearSquareRootCut (2 * (2 ^ s))) :
    movingHighShell s = {chosenPrime s} := by
  classical
  apply Finset.ext
  intro n
  constructor
  · intro hn
    have hn' : n ∈ highShell (singletonBank s) s := hn
    have hnupper : n ≤ 2 ^ (s + 1) :=
      highShell_le_upper (singletonBank s) s n hn'
    unfold highShell at hn'
    have hmem :
        n ∈ (balancedBlock (2 ^ s)
          (Real.log (2 * (((2 ^ s : ℕ) : ℝ))))).filter
            (hasNearMaximalSmoothDivisor (singletonBank s) (2 ^ s)) := hn'
    obtain ⟨d, hdn, hsm, hdlarge⟩ := (Finset.mem_filter.mp hmem).2
    have hdoner : (1 : ℝ) < (d : ℝ) :=
      lt_of_le_of_lt hcut hdlarge
    have hdnot : d ≠ 1 := by
      intro hd
      subst d
      norm_num at hdoner
    obtain ⟨q, hqprime, hqd⟩ := Nat.exists_prime_and_dvd hdnot
    have hqmem : q ∈ (singletonBank s).primes := hsm q hqprime hqd
    have hqeq : q = chosenPrime s := by
      simpa only [singletonBank, Finset.mem_singleton] using hqmem
    have hpdiv : chosenPrime s ∣ n := by
      simpa only [hqeq] using hqd.trans hdn
    have hpgt : 2 ^ s < chosenPrime s := chosenPrime_gt s
    have hn2 : n < 2 * chosenPrime s := by
      have he : 2 ^ (s + 1) = 2 * (2 ^ s) := by
        simp [pow_succ, Nat.mul_comm]
      omega
    have heq := Nat.eq_of_dvd_of_lt_two_mul
      (chosenPrime_prime s).ne_zero hpdiv hn2
    exact Finset.mem_singleton.mpr (by omega)
  · intro hn
    have heq := Finset.mem_singleton.mp hn
    subst n
    exact chosenPrime_mem_original_highShell s

/-- Exact FULL (not only selected-prime) moving-bank high shell for
every original dyadic index s>=5. No cofactor-count upper bound enters. -/
theorem movingHighShell_eq_singleton {s : ℕ} (hs : 5 ≤ s) :
    movingHighShell s = {chosenPrime s} := by
  exact movingHighShell_eq_singleton_of_one_le_cutoff s
    (nearSquareRootCut_gt_one_of_shell_large hs).le

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeSingletonTail
