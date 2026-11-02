/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMOriginalHighSmoothFiniteComplement
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusHighSmoothAllRateProof
import Mathlib.Data.Nat.Squarefree
import Mathlib.NumberTheory.SmoothNumbers
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Tactic

/-!
# Source-specific squarefree cutoff for actual high-smooth Möbius atoms

The exact existing highSmoothBlock requires a divisor d|n, bankSmooth B.primes d,
and nearSquareRootCut (2*X) < d. For a nonzero ORIGINAL moebiusReal n,
n is squarefree; hence d is squarefree, its prime factors lie in B.primes,
and d divides the FIXED prime product prod_(p in B.primes) p.

The existing scalar two_sqrt_le_linear_rate with epsilon=1 gives
  nearSquareRootCut N >= exp(log(N)/2 - 2).
Consequently, every nonzero ORIGINAL high-smooth atom on N=2^(s+1)
has N < exp(4 + 2*log(bankProduct B+1)).

This is far stronger than the previously published sparse count:
for a fixed prime bank B, *only finitely many* selected high indices
carry a nonzero Möbius coefficient. Higher highSmoothBlock index sets
may contain squareful indices; those carry literal zero coefficients.

No RH estimate, Mertens hypothesis, source alteration, or new axiom.
Compilation, expected types, native kernel replay and axiom audit NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothSquarefreeCutoff

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.PrimeSmoothFiniteConvolution
open GRWTSK.NumberTheory.Moebius.NearSquareRootEulerPrefix
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs
open GRWTSK.NumberTheory.Moebius.HighSmoothAllRateProof
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveHighSmoothAllShell
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothDirectEnergy
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothFiniteComplement

/-- Product of the ACTUAL fixed bank primes; this bank is not enlarged with s. -/
def bankPrimeProduct (B : PrimeBand) : ℕ := ∏ p ∈ B.primes, p

theorem bankPrimeProduct_pos (B : PrimeBand) : 0 < bankPrimeProduct B := by
  unfold bankPrimeProduct
  exact Finset.prod_pos fun p hp => (B.prime_mem p hp).pos

/-- An actual squarefree B-smooth divisor is bounded by the FIXED bank
product, not by a growing smooth-number/Euler factor count. -/
theorem squarefree_bankSmooth_dvd_primeProduct (B : PrimeBand)
    (d : ℕ) (hd : Squarefree d) (hsm : bankSmooth B.primes d) :
    d ∣ bankPrimeProduct B := by
  have hfact : d ∈ Nat.factoredNumbers B.primes :=
    (Nat.mem_factoredNumbers' (s := B.primes)).mpr hsm
  have hsubset : d.primeFactors ⊆ B.primes :=
    Nat.primeFactors_subset_of_mem_factoredNumbers hfact
  have hPne : bankPrimeProduct B ≠ 0 := (bankPrimeProduct_pos B).ne'
  have hfactor : (bankPrimeProduct B).primeFactors = B.primes := by
    unfold bankPrimeProduct
    exact Nat.primeFactors_prod (fun p hp => B.prime_mem p hp)
  have hdiv :
      (∏ p ∈ d.primeFactors, p) ∣ bankPrimeProduct B := by
    apply (Nat.prod_primeFactors_dvd_iff hPne).mpr
    simpa only [hfactor] using hsubset
  simpa only [Nat.prod_primeFactors_of_squarefree hd] using hdiv

/-- Original mu(n) vanishes precisely outside the squarefree carrier;
this is not a probabilistic independent-sign assumption. -/
theorem original_moebius_zero_of_nonsquarefree
    {n : ℕ} (hn : ¬Squarefree n) : moebiusReal n = 0 := by
  simp [moebiusReal, ArithmeticFunction.moebius_eq_zero_of_not_squarefree hn]

/-- The original high source divisor at n with mu(n)!=0 is <= fixed P_B. -/
theorem original_high_divisor_le_primeProduct (B : PrimeBand)
    {n d : ℕ} (hdn : d ∣ n) (hsm : bankSmooth B.primes d)
    (hmu : moebiusReal n ≠ 0) : d ≤ bankPrimeProduct B := by
  have hsqn : Squarefree n := by
    by_contra hbad
    exact hmu (original_moebius_zero_of_nonsquarefree hbad)
  have hsqd : Squarefree d := hsqn.squarefree_of_dvd hdn
  exact Nat.le_of_dvd (bankPrimeProduct_pos B)
    (squarefree_bankSmooth_dvd_primeProduct B d hsqd hsm)

/-- Real cutoff used solely as an explicit FINITE support certificate.
A slightly oversized P_B+1 avoids boundary/rounding ambiguities. -/
def highFiniteRealBound (B : PrimeBand) : ℝ :=
  Real.exp (4 + 2 * Real.log ((bankPrimeProduct B : ℝ) + 1))

def highFiniteCutoff (B : PrimeBand) : ℕ :=
  ⌈highFiniteRealBound B⌉₊

private theorem dyadic_shell_N_eq_pow (s : ℕ) :
    2 * (2 ^ s) = 2 ^ (s + 1) := by
  simp [pow_succ, Nat.mul_comm]

/-- Unconditional real calculus: for N>=1, the true source cutoff
satisfies Q(N)=exp(T-2sqrt(T)) with T=log N, and 2sqrt(T)<=2+T/2.
The only imported analytic inequality is the existing fixed-bank rate
lemma; no arithmetic cancellation enters. -/
theorem high_source_nonzero_implies_finite_real_bound
    (B : PrimeBand) (s n : ℕ)
    (hn : n ∈ highShell B s) (hmu : moebiusReal n ≠ 0) :
    (n : ℝ) < highFiniteRealBound B := by
  let N : ℕ := 2 * (2 ^ s)
  let T : ℝ := Real.log (N : ℝ)
  have hNpos : (0 : ℝ) < (N : ℝ) := by
    dsimp [N]
    positivity
  have hNge : (1 : ℝ) ≤ (N : ℝ) := by
    dsimp [N]
    exact_mod_cast (by positivity : 1 ≤ 2 * (2 ^ s))
  have hT : 0 ≤ T := Real.log_nonneg hNge
  have hroot : 2 * Real.sqrt T ≤ 2 + T / 2 := by
    simpa using (two_sqrt_le_linear_rate 1 T (by norm_num) hT)
  have hNExp : (N : ℝ) = Real.exp T :=
    (Real.exp_log hNpos).symm
  have hQ :
      nearSquareRootCut N = Real.exp (T - 2 * Real.sqrt T) := by
    unfold nearSquareRootCut
    change (N : ℝ) * Real.exp (-2 * Real.sqrt T) =
      Real.exp (T - 2 * Real.sqrt T)
    rw [hNExp, ← Real.exp_add]
    congr 1
    ring
  have hmem : n ∈ highSmoothBlock B (2 ^ s)
      (Real.log (2 * ((2 ^ s : ℕ) : ℝ))) := hn
  dsimp [highSmoothBlock] at hmem
  obtain ⟨d, hdn, hsmooth, hcut⟩ := (Finset.mem_filter.mp hmem).2
  have hsmall : d ≤ bankPrimeProduct B :=
    original_high_divisor_le_primeProduct B hdn hsmooth hmu
  have hdreal : (d : ℝ) ≤ (bankPrimeProduct B : ℝ) := by
    exact_mod_cast hsmall
  have hq_lt :
      Real.exp (T - 2 * Real.sqrt T) <
        (bankPrimeProduct B : ℝ) + 1 := by
    calc
      Real.exp (T - 2 * Real.sqrt T) = nearSquareRootCut N := hQ.symm
      _ < (d : ℝ) := by simpa only [N] using hcut
      _ ≤ (bankPrimeProduct B : ℝ) := hdreal
      _ < (bankPrimeProduct B : ℝ) + 1 := by linarith
  have hlogbound :
      T - 2 * Real.sqrt T <
        Real.log ((bankPrimeProduct B : ℝ) + 1) := by
    apply Real.exp_lt_exp.mp
    rw [Real.exp_log (by positivity :
      (0 : ℝ) < (bankPrimeProduct B : ℝ) + 1)]
    exact hq_lt
  have hTupper :
      T < 4 + 2 * Real.log ((bankPrimeProduct B : ℝ) + 1) := by
    linarith
  have hnupper : n ≤ N := by
    have hh : n ≤ 2 ^ (s + 1) := highShell_le_upper B s n hn
    simpa only [N, dyadic_shell_N_eq_pow] using hh
  have hnreal : (n : ℝ) ≤ (N : ℝ) := by exact_mod_cast hnupper
  calc
    (n : ℝ) ≤ (N : ℝ) := hnreal
    _ = Real.exp T := hNExp
    _ < highFiniteRealBound B := by
      unfold highFiniteRealBound
      exact Real.exp_lt_exp.mpr hTupper

/-- The actual nonzero ORIGINAL high atom has an explicit finite integer
bound depending on the fixed bank, not on observation time or dyadic j. -/
theorem highGlobal_nonzero_mem_finite_cutoff
    (B : PrimeBand) {n : ℕ}
    (hselected : ∃ s : ℕ, n ∈ highShell B s)
    (hmu : moebiusReal n ≠ 0) :
    n ∈ Finset.Icc 1 (highFiniteCutoff B) := by
  obtain ⟨s, hs⟩ := hselected
  have hpositive : 1 ≤ n := by
    have hlo := highShell_gt_lower B s n hs
    have hone : 1 ≤ 2 ^ s := by positivity
    omega
  have hreal :
      (n : ℝ) < (highFiniteCutoff B : ℝ) := by
    calc
      (n : ℝ) < highFiniteRealBound B :=
        high_source_nonzero_implies_finite_real_bound B s n hs hmu
      _ ≤ (highFiniteCutoff B : ℝ) :=
        Nat.le_ceil (highFiniteRealBound B)
  have hnlt : n < highFiniteCutoff B := by exact_mod_cast hreal
  exact Finset.mem_Icc.mpr ⟨hpositive, hnlt.le⟩

/-- As an explicit zero-coefficient theorem: all selected indices beyond
the fixed bank's finite cutoff are squareful (or at least mu-zero). -/
theorem original_high_mu_zero_above_cutoff (B : PrimeBand)
    {s n : ℕ} (hn : n ∈ highShell B s)
    (hlarge : highFiniteCutoff B < n) : moebiusReal n = 0 := by
  by_contra hmu
  have hmem := highGlobal_nonzero_mem_finite_cutoff B ⟨s, hn⟩ hmu
  have hle := (Finset.mem_Icc.mp hmem).2
  omega

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothSquarefreeCutoff
