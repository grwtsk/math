/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusUnmaskedLowGcdEndpoint
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongMertensAbel
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# An elementary divisor cover for the COMPLETE high-gcd original source

A positive weighted bound of all original m!=n,gcd(m,n)>D
does NOT require exact unique-gcd triple reindexing.
The natural gcd itself is one common divisor g>D, so the
indicator for gcd>D is bounded by the SUM of indicators
g|m and g|n, g>D. Overcount is harmless after abs.

This exact finite cover reduces the missing numerical root-tail
to a simpler source-independent multiples sum:
  sum_(g>D) sum_(m,n<=N, g|m,g|n) |sourceKernel T m n|.
For every fixed g, write m=ga,n=gb; unlike unique gcd
reindex this needs only divisibility. Use actual causal
K_T(ga,gb)<=4*T/(g*sqrt(ab)), actual |mu|<=1,
and the ALREADY AUTHORED finite reciprocal-root lemma
StrongMertensAbel.reciprocal_sqrt_sum_le_two_sqrt.
Finally sum_(g>D)g^(-2)<=1/D can be proved without integrals,
by 1/g^2 <= 1/(g-1)-1/g for g>=2.

The full positive multiples-sum estimate remains a named
UNPROVED Lean Prop here; the finite divisor-cover
and its conditional transport are authored proof candidates.
No RH-strength signed bound is assumed or proved.
-/

namespace GRWTSK.NumberTheory.Moebius.CompleteHighGcdDivisorCover

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison
open GRWTSK.NumberTheory.Moebius.UnmaskedLowGcdEndpoint
open GRWTSK.NumberTheory.Moebius.FixedSublinearCompensatedEndpoint
open GRWTSK.NumberTheory.Moebius.StrongMertensAbel

classical

/-- Complete all-divisor overcount of the original absolute high-gcd
source, using actual source indices and the original signed Gram
ONLY inside its absolute value. Diagonal pairs are allowed in
this POSITIVE cover, but the target remains off-diagonal. -/
def highGcdDivisorCoverCost (D : ℕ) (T : ℝ) : ℝ :=
  ∑ g ∈ Finset.Icc (D+1) ⌊Real.exp T⌋₊,
    ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
      if g ∣ m ∧ g ∣ n then |sourceKernel T m n| else 0

/-- Pure finite positive overcount, no Mobius arithmetic needed:
every original pair with gcd>D is witnessed by g=gcd(m,n)
as ONE common divisor above D. No unique-gcd reindexing
and no removal of comparable pairs. -/
theorem plainHighGcdAbsoluteCost_le_divisorCover (D : ℕ) (T : ℝ) :
    plainHighGcdAbsoluteCost D T ≤ highGcdDivisorCoverCost D T := by
  let S : Finset ℕ := endpointIndex T
  let G : Finset ℕ := Finset.Icc (D+1) ⌊Real.exp T⌋₊
  let w : ℕ → ℕ → ℕ → ℝ := fun g m n =>
    if g ∣ m ∧ g ∣ n then |sourceKernel T m n| else 0
  have hw (g m n : ℕ) : 0 ≤ w g m n := by
    dsimp [w]
    split_ifs <;> positivity
  have hpoint (m : ℕ) (hm : m ∈ S)
      (n : ℕ) (hn : n ∈ S) :
      (if m ≠ n ∧ D < Nat.gcd m n
        then |sourceKernel T m n| else 0) ≤
          ∑ g ∈ G, w g m n := by
    by_cases hsel : m ≠ n ∧ D < Nat.gcd m n
    · let g := Nat.gcd m n
      have hmpos : 0 < m := (Finset.mem_Icc.mp hm).1
      have hmle : m ≤ ⌊Real.exp T⌋₊ := (Finset.mem_Icc.mp hm).2
      have hdvd1 : g ∣ m := Nat.gcd_dvd_left m n
      have hdvd2 : g ∣ n := Nat.gcd_dvd_right m n
      have hgle : g ≤ m := Nat.le_of_dvd hmpos hdvd1
      have hmem : g ∈ G := Finset.mem_Icc.mpr (by
        constructor
        · dsimp [g]
          omega
        · exact hgle.trans hmle)
      have hin : w g m n = |sourceKernel T m n| := by
        simp [w, hdvd1, hdvd2]
      have hsingle :
          w g m n ≤ ∑ g' ∈ G, w g' m n :=
        Finset.single_le_sum (fun g' hg' hne => hw g' m n) hmem
      simpa only [if_pos hsel, hin] using hsingle
    · have hnonneg : 0 ≤ ∑ g ∈ G, w g m n :=
        Finset.sum_nonneg (fun g hg => hw g m n)
      simpa only [if_neg hsel] using hnonneg
  change (∑ m ∈ S, ∑ n ∈ S,
      if m ≠ n ∧ D < Nat.gcd m n
      then |sourceKernel T m n| else 0) ≤
    ∑ g ∈ G, ∑ m ∈ S, ∑ n ∈ S, w g m n
  calc
    _ ≤ ∑ m ∈ S, ∑ n ∈ S, ∑ g ∈ G, w g m n := by
      apply Finset.sum_le_sum
      intro m hm
      apply Finset.sum_le_sum
      intro n hn
      exact hpoint m hm n hn
    _ = ∑ m ∈ S, ∑ g ∈ G, ∑ n ∈ S, w g m n := by
      apply Finset.sum_congr rfl
      intro m hm
      exact Finset.sum_comm
    _ = _ := Finset.sum_comm

/-- The sole remaining finite positive multiples computation:
for fixed g, m=ga,n=gb, drop source signs after ABS,
use genuine causal upper and reciprocal-root finite telescoping;
then sum_(g>D) 1/g² <=1/D by elementary telescoping.
No signed primitive correlation appears here. Still UNPROVED in Lean. -/
def DivisorCoverRootTailTarget : Prop :=
  ∀ (D : ℕ) (T : ℝ), 0 ≤ T → 1 ≤ D →
    highGcdDivisorCoverCost D T ≤
      16*T*(⌊Real.exp T⌋₊ : ℝ)/(D : ℝ)

/-- Discharge the prior complete high-gcd arithmetic gate from
ONLY the elementary divisor-cover sum bound. The actual subset
comparison has an authored finite Lean proof candidate above. -/
theorem completeHighGcdRootTail_of_divisorCover
    (hCover : DivisorCoverRootTailTarget) :
    CompleteHighGcdAbsoluteRootTailTarget := by
  intro D T hT hD
  exact (plainHighGcdAbsoluteCost_le_divisorCover D T).trans
    (hCover D T hT hD)

/-- The prior source's endpoint return is now conditional on the
simpler positive multiples-sum target, not on a hypothesis
about Mobius pair cancellation or exact primitive gcd reindex. -/
theorem endpointSum_le_fixedPlain_of_divisorCover
    (hCover : DivisorCoverRootTailTarget)
    (hRatio : FixedGcdRatioTarget)
    {T : ℝ} (hT : 4 ≤ T) :
    endpointSum T ≤
      fixedPlainLowGcdCross T + 32*T*Real.exp (Real.sqrt T) + 1/4 := by
  exact endpointSum_le_fixedPlain_of_elementary
    (completeHighGcdRootTail_of_divisorCover hCover) hRatio hT

end GRWTSK.NumberTheory.Moebius.CompleteHighGcdDivisorCover
