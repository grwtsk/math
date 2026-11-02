/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMScaleDependentPrimeFiniteException
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic

/-!
# The original first FIVE moving-prime highSmoothBlock shells are COMPLETE

This complements the exact singleton-tail proof from s>=5.
For 0<=s<5, source T=(s+1)*log2 lies strictly between zero and four.
Hence T-2sqrt T<0, so the REAL original nearSquareRootCut
Q(2^(s+1))=exp(T-2sqrt T) is strictly less than 1.

The authentic divisor d=1 is then admissible for EVERY original
source n in the full balancedBlock: 1|n and bankSmooth {p_s} 1.
Thus the highSmoothBlock B_s (2^s) T_s is the ENTIRE original source
half-open integer shell (2^s,2^(s+1)] at s=0,...,4.
No selected n is omitted, no artificial coefficient is added, and
all squareful zero values are retained.

For s>=5 the other source file gives the EXACT singleton {p_s}.
Hence the full moving high source has the explicit original
finite low-index segment n=2,...,32 and thereafter one p_s
per shell. This exact statement is strictly stronger than the
previous cofactor-cardinality estimates for this moving bank.

Lean acceptance remains NOT_RUN. This source does not assert
Mertens cancellation or RH.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeEarlyShells

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusPNTDyadicBilinearBlock
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.PrimeSmoothFiniteConvolution
open GRWTSK.NumberTheory.Moebius.NearSquareRootEulerPrefix
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeBankWitness
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeFullHigh
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeSingletonTail

/-- The opposite finite source threshold: 0<T_s<4 for s=0..4. -/
theorem early_shell_time_lt_four {s : ℕ} (hs : s < 5) :
    0 < dyadicTime (s + 1) ∧ dyadicTime (s + 1) < 4 := by
  have hlog : (Real.log (2 : ℝ)) < (4 / 5 : ℝ) := by
    have h := Real.log_two_lt_d9
    linarith
  have ha : 0 < Real.log (2 : ℝ) :=
    Real.log_pos (by norm_num : (1 : ℝ) < 2)
  have hs5 : (((s + 1 : ℕ) : ℝ)) ≤ 5 := by
    exact_mod_cast (show s + 1 ≤ 5 by omega)
  have hmul :
      (((s + 1 : ℕ) : ℝ)) * Real.log 2 ≤
        5 * Real.log 2 :=
    mul_le_mul_of_nonneg_right hs5 ha.le
  unfold dyadicTime time
  constructor
  · positivity
  · nlinarith [hmul, hlog]

/-- At ALL five early shells the source cutoff is strictly less than one.
The real inequality is exact, not a truncated table of floating decimals. -/
theorem nearSquareRootCut_lt_one_of_small_shell
    {s : ℕ} (hs : s < 5) :
    nearSquareRootCut (2 * (2 ^ s)) < 1 := by
  let T : ℝ := dyadicTime (s + 1)
  obtain ⟨hTpos, hTlt4⟩ := early_shell_time_lt_four hs
  have hroot : 0 < Real.sqrt T := Real.sqrt_pos.2 hTpos
  have hroot2 : Real.sqrt T < 2 := by
    have h := Real.sqrt_lt_sqrt hTpos.le hTlt4
    norm_num at h
    exact h
  have hneg : T - 2 * Real.sqrt T < 0 := by
    have hsq : (Real.sqrt T) ^ 2 = T := Real.sq_sqrt hTpos.le
    nlinarith [mul_pos hroot (sub_pos.mpr hroot2)]
  have hNat : 2 * (2 ^ s) = 2 ^ (s + 1) := by
    simp [pow_succ, Nat.mul_comm]
  have hNexp : (((2 * (2 ^ s) : ℕ) : ℝ)) = Real.exp T := by
    rw [hNat]
    exact (exp_dyadicTime (s + 1)).symm
  have hNlog : Real.log (((2 * (2 ^ s) : ℕ) : ℝ)) = T := by
    rw [hNexp, Real.log_exp]
  calc
    nearSquareRootCut (2 * (2 ^ s)) =
        Real.exp (T - 2 * Real.sqrt T) := by
      unfold nearSquareRootCut
      rw [hNlog, hNexp, ← Real.exp_add]
      congr 1
      ring
    _ < Real.exp 0 := Real.exp_lt_exp.mpr hneg
    _ = 1 := Real.exp_zero

/-- The REAL original divisor d=1 is smooth for every singleton bank,
and passes the actual source cutoff in the first five dyadic shells. -/
theorem early_one_is_admissible
    {s : ℕ} (hs : s < 5) (n : ℕ) :
    hasNearMaximalSmoothDivisor (singletonBank s) (2 ^ s) n := by
  have hsm : bankSmooth (singletonBank s).primes 1 := by
    intro q hq hqd
    have hq1 : q = 1 := Nat.dvd_one.mp hqd
    exact (hq.ne_one hq1).elim
  exact ⟨1, one_dvd _, hsm, by
    simpa only [Nat.cast_one] using
      (nearSquareRootCut_lt_one_of_small_shell hs)⟩

/-- Exact genuine highSmoothBlock membership for EVERY original
source index in the early shell, not just the chosen prime. -/
theorem movingHighShell_eq_balancedBlock_of_small
    {s : ℕ} (hs : s < 5) :
    movingHighShell s =
      balancedBlock (2 ^ s) (Real.log (2 * (((2 ^ s : ℕ) : ℝ)))) := by
  classical
  apply Finset.ext
  intro n
  change
    n ∈ (balancedBlock (2 ^ s)
      (Real.log (2 * (((2 ^ s : ℕ) : ℝ))))).filter
          (hasNearMaximalSmoothDivisor (singletonBank s) (2 ^ s)) ↔
    n ∈ balancedBlock (2 ^ s)
      (Real.log (2 * (((2 ^ s : ℕ) : ℝ))))
  simp [early_one_is_admissible hs n]

/-- The ordinary endpoint filter equals the whole original dyadic
half-open shell when T=log(2^(s+1)), with no clipped-out indices. -/
theorem balancedBlock_eq_dyadic_Ioc (s : ℕ) :
    balancedBlock (2 ^ s) (Real.log (2 * (((2 ^ s : ℕ) : ℝ)))) =
      Finset.Ioc (2 ^ s) (2 * (2 ^ s)) := by
  classical
  have hcut :
      ⌊Real.exp (Real.log (2 * (((2 ^ s : ℕ) : ℝ))))⌋₊ =
        2 * (2 ^ s) := by
    rw [sourceShellTime_eq_dyadic s, dyadic_cutoff]
    simp [pow_succ, Nat.mul_comm]
  apply Finset.ext
  intro n
  change
    n ∈ (Finset.Ioc (2 ^ s) (2 * (2 ^ s))).filter
      (fun k => k ∈ endpointIndex
        (Real.log (2 * (((2 ^ s : ℕ) : ℝ))))) ↔
      n ∈ Finset.Ioc (2 ^ s) (2 * (2 ^ s))
  constructor
  · intro h
    exact (Finset.mem_filter.mp h).1
  · intro h
    have hi := Finset.mem_Ioc.mp h
    apply Finset.mem_filter.mpr
    refine ⟨h, ?_⟩
    unfold endpointIndex
    rw [hcut]
    apply Finset.mem_Icc.mpr
    constructor
    · have hpos : 1 ≤ 2 ^ s := by positivity
      omega
    · exact hi.2

/-- FIRST FIVE: full ORIGINAL integer shell. AFTER FOUR: singleton prime.
Both descriptions refer to the exact same repository source predicate. -/
theorem movingHighShell_eq_full_dyadic_Ioc
    {s : ℕ} (hs : s < 5) :
    movingHighShell s = Finset.Ioc (2 ^ s) (2 * (2 ^ s)) := by
  rw [movingHighShell_eq_balancedBlock_of_small hs]
  exact balancedBlock_eq_dyadic_Ioc s

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeEarlyShells
