/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionHigherDivisorReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletHermitianHighGcdTransfer
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCompleteHighGcdElementaryClosure
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# FULL Hermitian high-gcd tail for all Dirichlet characters

The previous family Hermitian gcd split paid only the OFF-DIAGONAL
high-gcd source. The universal higher-divisor energy return is
the negative FULL high-gcd Hermitian Gram, including diagonals
n>D. It is incorrect to apply an off-diagonal positive cost to
this full sum without paying the diagonal separately.

Instead, use the ORIGINAL common-divisor POSITIVE cover, which
has ALWAYS included all m,n, even the diagonal:
  |HighGcdFull_chi(D,T)| <=
    sum_(m,n,gcd(m,n)>D)|mu_chi(m)||mu_chi(n)||K_T(m,n)|
  <= sum_(m,n,gcd(m,n)>D)|sourceKernel(T,m,n)|
  <= highGcdDivisorCoverCost(D,T)
  <=16*T*N(T)/D for T>=0,D>=1.

There is no new arithmetic cancellation in this proof: the
crucial point is |mu(n)chi(n)|<=|mu(n)| and the positive
gcd-common-divisor witness. Comparable/incomparable, both
orientations and the whole original diagonal are retained.

At the SAME fixed D_*(T), T>=4, the complete higher-divisor
signed energy tail is <=32*T*exp(sqrt T) in ABSOLUTE value.
This is an actual mathematical strengthening of the previously
proved-on-paper first negative divisor collar statement:
ALL higher divisors together are paid at every positive rate.

No Dirichlet GRH or low-gcd signed cancellation follows.
Lean compilation, exact types, kernel and transitive audit NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Moebius.LFunctionDirichletFullGcdReturn

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.LFunctionFamilySieveBridge
open GRWTSK.NumberTheory.Moebius.LFunctionHigherDivisorReturn
open GRWTSK.NumberTheory.Moebius.DirichletHermitianHighGcdTransfer
open GRWTSK.NumberTheory.Moebius.CompleteHighGcdDivisorCover
open GRWTSK.NumberTheory.Moebius.CompleteHighGcdElementaryClosure
open GRWTSK.NumberTheory.Moebius.FixedSublinearCompensatedEndpoint
open GRWTSK.NumberTheory.Moebius.OriginalGramRootFloorSuppliers
open GRWTSK.NumberTheory.Moebius.LowGcdSieveSquareEnergy

classical

/-- Full positive Hermitian high-gcd cost. Unlike the earlier
familyWeightedHighGcdCost, the diagonal n>D is INCLUDED. -/
def familyFullHighGcdAbsoluteCost
    (F : NormalizedCoefficients) (D : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if D < Nat.gcd m n then
      ‖F.mobius m‖ * ‖F.mobius n‖ *
        |pickupResponseGram T m n| else 0

/-- Original real Möbius full high-gcd absolute cost,
with BOTH ordered orientations and diagonal retained. -/
def originalFullHighGcdAbsoluteCost (D : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if D < Nat.gcd m n then |sourceKernel T m n| else 0

/-- Genuine complex absolute-triangle comparison, using the real
part of the FULL Hermitian ordered source and its actual weights. -/
theorem familyFullHighGcd_abs_le_absoluteCost
    (F : NormalizedCoefficients) (D : ℕ) (T : ℝ) :
    |familyHighGcdFullGram F D T| ≤
      familyFullHighGcdAbsoluteCost F D T := by
  let S : Finset ℕ := endpointIndex T
  let K : ℕ → ℕ → ℂ := fun m n =>
    if D < Nat.gcd m n then familyHermitianKernel F T m n else 0
  have hpoint (m n : ℕ) :
      |(K m n).re| ≤
        if D < Nat.gcd m n then
          ‖F.mobius m‖ * ‖F.mobius n‖ *
            |pickupResponseGram T m n| else 0 := by
    by_cases h : D < Nat.gcd m n
    · have hb :
          |(familyHermitianKernel F T m n).re| ≤
            ‖familyHermitianKernel F T m n‖ :=
        Complex.abs_re_le_norm _
      have hnorm :
          ‖familyHermitianKernel F T m n‖ =
            ‖F.mobius m‖ * ‖F.mobius n‖ *
              |pickupResponseGram T m n| := by
        simp [familyHermitianKernel,norm_mul,norm_star,
          Complex.norm_real,mul_assoc]
      simpa [K,h] using hb.trans_eq hnorm
    · simp [K,h]
  have hre :
      (∑ m ∈ S, ∑ n ∈ S, K m n).re =
      ∑ m ∈ S, ∑ n ∈ S, (K m n).re := by
    rw [show (∑ m ∈ S, ∑ n ∈ S, K m n).re =
      ∑ m ∈ S, (∑ n ∈ S, K m n).re by
      induction S using Finset.induction_on with
      | empty => simp
      | @insert x s hx ih =>
          simp only [Finset.sum_insert hx,Complex.add_re,ih]]
    apply Finset.sum_congr rfl
    intro m hm
    induction S using Finset.induction_on with
    | empty => simp
    | @insert x s hx ih =>
        simp only [Finset.sum_insert hx,Complex.add_re,ih]
  unfold familyHighGcdFullGram familyFullHighGcdAbsoluteCost
  change |(∑ m ∈ S, ∑ n ∈ S, K m n).re| ≤
    ∑ m ∈ S, ∑ n ∈ S,
      if D < Nat.gcd m n then
        ‖F.mobius m‖ * ‖F.mobius n‖ *
          |pickupResponseGram T m n| else 0
  calc
    _ = |∑ m ∈ S, ∑ n ∈ S, (K m n).re| :=
      congrArg abs hre
    _ ≤ ∑ m ∈ S, |∑ n ∈ S, (K m n).re| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ S, ∑ n ∈ S, |(K m n).re| := by
      apply Finset.sum_le_sum
      intro m hm
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ S, ∑ n ∈ S,
      if D < Nat.gcd m n then
        ‖F.mobius m‖ * ‖F.mobius n‖ *
          |pickupResponseGram T m n| else 0 := by
      apply Finset.sum_le_sum
      intro m hm
      apply Finset.sum_le_sum
      intro n hn
      exact hpoint m n

/-- For actual complex Dirichlet χ, even the FULL high-gcd
Hermitian absolute cost is bounded pairwise by original μ's cost.
No off-diagonal-only mask is silently substituted. -/
theorem dirichletFullHighGcdCost_le_original
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    (D : ℕ) (T : ℝ) :
    familyFullHighGcdAbsoluteCost
      (dirichletCharacterCoefficients χ) D T ≤
      originalFullHighGcdAbsoluteCost D T := by
  unfold familyFullHighGcdAbsoluteCost
    originalFullHighGcdAbsoluteCost
  apply Finset.sum_le_sum
  intro m hm
  apply Finset.sum_le_sum
  intro n hn
  by_cases h : D < Nat.gcd m n
  · simp only [if_pos h]
    have hmμ := twistedMobius_norm_le_original χ m
    have hnμ := twistedMobius_norm_le_original χ n
    have hprod :
        ‖(dirichletCharacterCoefficients χ).mobius m‖ *
          ‖(dirichletCharacterCoefficients χ).mobius n‖ ≤
        |moebiusReal m| * |moebiusReal n| :=
      mul_le_mul hmμ hnμ (norm_nonneg _) (abs_nonneg _)
    have hk := mul_le_mul_of_nonneg_right hprod
      (abs_nonneg (pickupResponseGram T m n))
    simpa [sourceKernel,abs_mul,mul_assoc] using hk
  · simp only [if_neg h,le_refl]

/-- The original FINITE common divisor cover overcounts the
positive FULL gcd>D source. Every selected pair itself has
g=gcd(m,n)>D as a common divisor in (D,N].
This includes the original diagonal automatically. -/
theorem originalFullHighGcdCost_le_divisorCover
    (D : ℕ) (T : ℝ) :
    originalFullHighGcdAbsoluteCost D T ≤
      highGcdDivisorCoverCost D T := by
  let S : Finset ℕ := endpointIndex T
  let G : Finset ℕ := Finset.Icc (D+1) ⌊Real.exp T⌋₊
  let w : ℕ → ℕ → ℕ → ℝ := fun g m n =>
    if g ∣ m ∧ g ∣ n then |sourceKernel T m n| else 0
  have hw (g m n : ℕ) : 0 ≤ w g m n := by
    dsimp [w]
    split_ifs <;> positivity
  have hpoint (m : ℕ) (hm : m ∈ S)
      (n : ℕ) (hn : n ∈ S) :
      (if D < Nat.gcd m n
        then |sourceKernel T m n| else 0) ≤
        ∑ g ∈ G, w g m n := by
    by_cases hsel : D < Nat.gcd m n
    · let g := Nat.gcd m n
      have hmpos : 0 < m := (Finset.mem_Icc.mp hm).1
      have hmle : m ≤ ⌊Real.exp T⌋₊ :=
        (Finset.mem_Icc.mp hm).2
      have hdvd1 : g ∣ m := Nat.gcd_dvd_left m n
      have hdvd2 : g ∣ n := Nat.gcd_dvd_right m n
      have hgle : g ≤ m := Nat.le_of_dvd hmpos hdvd1
      have hmem : g ∈ G := Finset.mem_Icc.mpr (by
        constructor
        · dsimp [g]
          omega
        · exact hgle.trans hmle)
      have hin : w g m n = |sourceKernel T m n| := by
        simp [w,hdvd1,hdvd2]
      have hsingle :
          w g m n ≤ ∑ g' ∈ G, w g' m n :=
        Finset.single_le_sum
          (fun g' hg' hne => hw g' m n) hmem
      simpa only [if_pos hsel,hin] using hsingle
    · have hnonneg : 0 ≤ ∑ g ∈ G, w g m n :=
        Finset.sum_nonneg (fun g hg => hw g m n)
      simpa only [if_neg hsel] using hnonneg
  change
    (∑ m ∈ S, ∑ n ∈ S,
      if D < Nat.gcd m n
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

/-- COMPLETE original high-gcd Hermitian source:
no ordered pair, comparable case or diagonal dropped. -/
theorem dirichletFullHighGcd_abs_le_root
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    (D : ℕ) (T : ℝ)
    (hT : 0 ≤ T) (hD : 1 ≤ D) :
    |familyHighGcdFullGram
      (dirichletCharacterCoefficients χ) D T| ≤
        16*T*(⌊Real.exp T⌋₊ : ℝ)/(D : ℝ) := by
  calc
    _ ≤ familyFullHighGcdAbsoluteCost
        (dirichletCharacterCoefficients χ) D T :=
      familyFullHighGcd_abs_le_absoluteCost _ D T
    _ ≤ originalFullHighGcdAbsoluteCost D T :=
      dirichletFullHighGcdCost_le_original χ D T
    _ ≤ highGcdDivisorCoverCost D T :=
      originalFullHighGcdCost_le_divisorCover D T
    _ ≤ _ := divisorCoverRootTail_proof D T hT hD

/-- The very SAME D_*(T) pays even the FULL Hermitian gcd tail.
No rate-dependent cutoff, no signed arithmetic hypothesis. -/
theorem dirichletFullHighGcd_fixed_abs_le
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    {T : ℝ} (hT : 4 ≤ T) :
    |familyHighGcdFullGram
      (dirichletCharacterCoefficients χ)
      (fixedGcdCutoff T) T| ≤
        32*T*Real.exp (Real.sqrt T) := by
  have hT0 : 0 ≤ T := by linarith
  have hr := fixedGcdRatio_proof T hT
  calc
    _ ≤ 16*T*(⌊Real.exp T⌋₊ : ℝ)/(fixedGcdCutoff T : ℝ) :=
      dirichletFullHighGcd_abs_le_root χ (fixedGcdCutoff T)
        T hT0 (fixedGcdCutoff_pos T)
    _ = (16*T)*
      ((⌊Real.exp T⌋₊ : ℝ)/(fixedGcdCutoff T : ℝ)) := by ring
    _ ≤ (16*T)*(2*Real.exp (Real.sqrt T)) :=
      mul_le_mul_of_nonneg_left hr (by positivity)
    _ = _ := by ring

/-- ACTUAL completed fixed higher-divisor Dirichlet signed
energy packet, including all its original diagonal terms:
absolute value is paid by the unchanged full gcd divisor cover. -/
theorem dirichletHigherDivisorEnergy_fixed_abs_le
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    {T : ℝ} (hT : 4 ≤ T) :
    |∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      if fixedGcdCutoff T < d then
        lowGcdSieveWeight (fixedGcdCutoff T) d *
          familyDivisorRestrictedEnergy
            (dirichletCharacterCoefficients χ) d T
      else 0| ≤ 32*T*Real.exp (Real.sqrt T) := by
  have hreturn := familyHigherDivisorHermitianReturn_proof
    (dirichletCharacterCoefficients χ)
    (fixedGcdCutoff T) T (fixedGcdCutoff_pos T)
    (by linarith : 0 ≤ T)
  rw [hreturn,abs_neg]
  exact dirichletFullHighGcd_fixed_abs_le χ hT

end GRWTSK.NumberTheory.Moebius.LFunctionDirichletFullGcdReturn
