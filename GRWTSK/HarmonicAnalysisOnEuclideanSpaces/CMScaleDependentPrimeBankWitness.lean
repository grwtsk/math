/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMOriginalHighSmoothEntireCorrection
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusHighSmoothDensePairs
import Mathlib.NumberTheory.Bertrand
import Mathlib.Tactic

/-!
# An explicit GROWING prime bank selects genuine nonzero Möbius atoms forever

The fixed-bank highSmoothBlock construction was proved (as unverified Lean
source candidates) to have only finitely many nonzero original Möbius atoms.
Allowing a different genuine PrimeBand at each dyadic shell changes this.

Pinned Mathlib's Bertrand theorem selects a genuine prime p_s in the original
source interval (2^s,2^(s+1)]. Set B_s={p_s}. The genuine source cutoff is
Q(N)=N*exp(-2sqrt(log N)) < N/2 for every N=2^(s+1).
Therefore d=p_s is an ACTUAL B_s-smooth divisor above Q(N);
p_s belongs to the original highSmoothBlock B_s (2^s) T_s.

Since p_s is prime, its original real Möbius coefficient is -1.
The selected p_s are distinct (different half-open integer shells);
hence there are infinitely many nonzero selected original atoms.

NO new arithmetic coefficient, arbitrary model, changed end-time,
alias quotient, or source-free high set is introduced. No signed
low-sector all-rate estimate, RH or GRH theorem is asserted.
Fresh pinned Lean compilation/replay/transitive axiom audit NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeBankWitness

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusPNTDyadicBilinearBlock
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.PrimeSmoothFiniteConvolution
open GRWTSK.NumberTheory.Moebius.NearSquareRootEulerPrefix
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveHighSmoothAllShell
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothDirectEnergy

/-- Genuine classical prime existence at exactly the original dyadic scale.
The source use of Bertrand is explicit and independent of Möbius cancellation. -/
private theorem bertrandDyadic (s : ℕ) :
    ∃ p : ℕ, p.Prime ∧ 2 ^ s < p ∧ p ≤ 2 * (2 ^ s) :=
  Nat.exists_prime_lt_and_le_two_mul (2 ^ s) (by positivity)

noncomputable def chosenPrime (s : ℕ) : ℕ :=
  Classical.choose (bertrandDyadic s)

theorem chosenPrime_property (s : ℕ) :
    (chosenPrime s).Prime ∧ 2 ^ s < chosenPrime s ∧
      chosenPrime s ≤ 2 * (2 ^ s) :=
  Classical.choose_spec (bertrandDyadic s)

theorem chosenPrime_prime (s : ℕ) : (chosenPrime s).Prime :=
  (chosenPrime_property s).1

theorem chosenPrime_gt (s : ℕ) : 2 ^ s < chosenPrime s :=
  (chosenPrime_property s).2.1

theorem chosenPrime_le (s : ℕ) : chosenPrime s ≤ 2 * (2 ^ s) :=
  (chosenPrime_property s).2.2

/-- One genuine source prime in the bank at each original dyadic shell. -/
def singletonBank (s : ℕ) : PrimeBand where
  primes := {chosenPrime s}
  prime_mem := by
    intro p hp
    have hp' : p = chosenPrime s := Finset.mem_singleton.mp hp
    subst p
    exact chosenPrime_prime s

@[simp] theorem singletonBank_card (s : ℕ) :
    (singletonBank s).primes.card = 1 := by
  simp [singletonBank]

/-- The chosen prime itself is genuinely smooth over its own bank, as
required by the existing hasNearMaximalSmoothDivisor source predicate. -/
theorem chosenPrime_bankSmooth (s : ℕ) :
    bankSmooth (singletonBank s).primes (chosenPrime s) := by
  intro q hq hqdiv
  have heq : q = chosenPrime s :=
    (hq.dvd_iff_eq (chosenPrime_prime s).ne_one).mp hqdiv
  simp [singletonBank, heq]

/-- Original dyadic logarithm normalizes to the existing immutable T_s. -/
theorem sourceShellTime_eq_dyadic (s : ℕ) :
    Real.log (2 * (((2 ^ s : ℕ) : ℝ))) =
      dyadicTime (s + 1) := by
  have he : (((2 ^ (s + 1) : ℕ) : ℝ)) =
      2 * (((2 ^ s : ℕ) : ℝ)) := by
    push_cast [pow_succ]
    ring
  rw [← he]
  exact log_dyadic_cutoff (s + 1)

/-- For EVERY original N=2^(s+1), its actual near-square-root cutoff
is below the LOWER dyadic shell endpoint X=2^s. No Mertens input. -/
theorem sourceCutoff_lt_halfShell (s : ℕ) :
    nearSquareRootCut (2 * (2 ^ s)) < ((2 ^ s : ℕ) : ℝ) := by
  let X : ℝ := ((2 ^ s : ℕ) : ℝ)
  let N : ℝ := 2 * X
  let T : ℝ := Real.log N
  let a : ℝ := Real.log 2
  have hX : 0 < X := by dsimp [X]; positivity
  have hN : 0 < N := by dsimp [N]; positivity
  have ha : 0 < a := by
    exact Real.log_pos (by norm_num : (1 : ℝ) < 2)
  have ha1 : a ≤ 1 := by
    dsimp [a]
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
    linarith
  have hNa : 2 ≤ N := by
    dsimp [N]
    have hX1 : 1 ≤ X := by dsimp [X]; positivity
    linarith
  have hTge : a ≤ T := by
    dsimp [a, T]
    exact Real.log_le_log (by norm_num) hNa
  have ha2 : a ^ 2 ≤ a := by
    nlinarith [mul_nonneg ha.le (sub_nonneg.mpr ha1)]
  have hSqrtA : a ≤ Real.sqrt a := by
    have hroot2 := Real.sq_sqrt ha.le
    have hrootpos := Real.sqrt_nonneg a
    nlinarith
  have hSqrtT : Real.sqrt a ≤ Real.sqrt T :=
    Real.sqrt_le_sqrt hTge
  have hstrict : a < 2 * Real.sqrt T := by linarith
  have hexp : Real.exp (-2 * Real.sqrt T) < Real.exp (-a) :=
    Real.exp_lt_exp.mpr (by linarith)
  have hhalf : Real.exp (-a) = (1 / 2 : ℝ) := by
    dsimp [a]
    rw [Real.exp_neg, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
    norm_num
  have hprod : N * Real.exp (-2 * Real.sqrt T) < N / 2 := by
    have h := mul_lt_mul_of_pos_left hexp hN
    rw [hhalf] at h
    nlinarith
  have hNhalf : N / 2 = X := by dsimp [N]; ring
  unfold nearSquareRootCut
  change N * Real.exp (-2 * Real.sqrt T) < X
  exact hprod.trans_eq hNhalf

/-- The chosen prime satisfies EXACTLY the original highSmoothBlock
predicate, including the genuine endpointIndex clipping at shell T_s. -/
theorem chosenPrime_mem_original_highShell (s : ℕ) :
    chosenPrime s ∈ highShell (singletonBank s) s := by
  classical
  let p : ℕ := chosenPrime s
  let X : ℕ := 2 ^ s
  let T : ℝ := Real.log (2 * ((X : ℕ) : ℝ))
  have hpg : X < p := chosenPrime_gt s
  have hpl : p ≤ 2 * X := chosenPrime_le s
  have hXpos : 1 ≤ X := by dsimp [X]; positivity
  have hT : T = dyadicTime (s + 1) := by
    dsimp [T, X]
    exact sourceShellTime_eq_dyadic s
  have hbound : p ≤ 2 ^ (s + 1) := by
    calc
      p ≤ 2 * X := hpl
      _ = 2 ^ (s + 1) := by dsimp [X]; simp [pow_succ, Nat.mul_comm]
  have hp : p ∈ endpointIndex T := by
    unfold endpointIndex
    rw [hT, dyadic_cutoff]
    exact Finset.mem_Icc.mpr ⟨by omega, hbound⟩
  have hsrc : p ∈ balancedBlock X T := by
    change p ∈ (Finset.Ioc X (2 * X)).filter (fun n => n ∈ endpointIndex T)
    exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨hpg, hpl⟩, hp⟩
  have hsmall : nearSquareRootCut (2 * X) < (p : ℝ) := by
    have hcut := sourceCutoff_lt_halfShell s
    have hpx : (X : ℝ) < (p : ℝ) := by exact_mod_cast hpg
    dsimp [X] at hcut
    exact lt_trans hcut hpx
  change p ∈ (balancedBlock X T).filter (hasNearMaximalSmoothDivisor (singletonBank s) X)
  apply Finset.mem_filter.mpr
  refine ⟨hsrc, ?_⟩
  exact ⟨p, dvd_rfl, chosenPrime_bankSmooth s, hsmall⟩

/-- The original signed source coefficient of the actual selected prime
is exactly -1, not merely nonzero or bounded by one. -/
theorem chosenPrime_moebius (s : ℕ) : moebiusReal (chosenPrime s) = -1 := by
  simp [moebiusReal, ArithmeticFunction.moebius_apply_prime (chosenPrime_prime s)]

/-- Two distinct dyadic shells contain distinct actual prime source labels. -/
theorem chosenPrime_injective : Function.Injective chosenPrime := by
  intro s t hst
  by_contra hne
  rcases lt_or_gt_of_ne hne with hlt | hgt
  · have hs : chosenPrime s ≤ 2 ^ (s + 1) := by
      simpa [pow_succ, Nat.mul_comm] using chosenPrime_le s
    have hp : 2 ^ (s + 1) ≤ 2 ^ t :=
      Nat.pow_le_pow_right (by omega) (by omega)
    have ht := chosenPrime_gt t
    rw [← hst] at ht
    omega
  · have ht : chosenPrime t ≤ 2 ^ (t + 1) := by
      simpa [pow_succ, Nat.mul_comm] using chosenPrime_le t
    have hp : 2 ^ (t + 1) ≤ 2 ^ s :=
      Nat.pow_le_pow_right (by omega) (by omega)
    have hs := chosenPrime_gt s
    rw [hst] at hs
    omega

/-- The schedule contains infinitely many pairwise different ORIGINAL
high-smooth source primes with coefficient -1, by pinned Bertrand. -/
theorem chosenPrime_infinite_range : Set.Infinite (Set.range chosenPrime) :=
  Set.infinite_range_of_injective chosenPrime_injective

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeBankWitness
