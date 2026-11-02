/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOriginalGramRootFloorSuppliers
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongMertensAbel
import Mathlib.Analysis.PSeries
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# The complete positive high-gcd divisor cover, and its all-rate scalar budget

These are proof CANDIDATES for the actual named propositions
CompleteHighGcdDivisorCover.DivisorCoverRootTailTarget and
UnmaskedLowGcdEndpoint.CompleteHighGcdScalarEveryRateTarget.

The source is the original two-orientation signed causal Mobius
sourceKernel; we take abs ONLY in the positive cover.
At fixed common divisor g, the finite multiples reindex m=g*a,
n=g*b is not an exact unique-GCD factorization and imposes no
coprimality or angular mask. The already authored source-root upper
gives a positive 4*T/(sqrt(m)*sqrt(n)) bound; the finite reciprocal
root sum gives 2*sqrt(N)/g per row. The pinned Mathlib theorem
Analysis.PSeries.sum_Ioc_inv_sq_le_sub pays the finite g^-2 tail.

For each epsilon>0 the scalar choice
  R=max(4,4/epsilon^2), C=64/epsilon
bounds 32*T*exp(sqrt T) by C*exp(epsilon*T) for T>=R
with the SAME arithmetic cutoff D_*(T).

No proof of the actual one-sided low-gcd signed all-rate target
PlainLowGcdEveryRateDyadic is claimed here. Every new Lean body is
a SOURCE_PROOF_CANDIDATE until pinned compilation, expected types,
fresh kernel and complete transitive axiom audit.
-/

namespace GRWTSK.NumberTheory.Moebius.CompleteHighGcdElementaryClosure

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison
open GRWTSK.NumberTheory.Moebius.StrongMertensAbel
open GRWTSK.NumberTheory.Moebius.UnmaskedLowGcdEndpoint
open GRWTSK.NumberTheory.Moebius.CompleteHighGcdDivisorCover
open GRWTSK.NumberTheory.Moebius.OriginalGramRootFloorSuppliers
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

classical

private def invRoot (n : ℕ) : ℝ := (Real.sqrt (n : ℝ))⁻¹

/-- The reciprocal-root Icc sum follows from the published
successive-root-width lemma, without any arithmetic premise. -/
theorem reciprocal_sqrt_Icc_le (N : ℕ) :
    (∑ k ∈ Finset.Icc 1 N, invRoot k) ≤ 2*Real.sqrt (N : ℝ) := by
  induction N with
  | zero => simp [invRoot]
  | succ N ih =>
      have hmem : 1 ≤ N+1 := by omega
      rw [Finset.sum_Icc_succ_top hmem]
      have hstep := inv_sqrt_succ_le_twice_gap N
      dsimp [invRoot] at *
      linarith

/-- An exact finite multiples reindex for ANY real source weight.
No signed or coprimality input is used. -/
theorem sum_Icc_divisible_multiples
    (N g : ℕ) (hg : 1 ≤ g) (f : ℕ → ℝ) :
    (∑ m ∈ Finset.Icc 1 N, if g ∣ m then f m else 0) =
      ∑ a ∈ Finset.Icc 1 (N/g), f (g*a) := by
  classical
  rw [← Finset.sum_filter]
  refine Finset.sum_nbij (fun m => m/g) ?_ ?_ ?_ ?_
  · intro m hm
    obtain ⟨hmS,hdiv⟩ := Finset.mem_filter.mp hm
    obtain ⟨hmpos,hmN⟩ := Finset.mem_Icc.mp hmS
    have hgm : g ≤ m := Nat.le_of_dvd (by omega : 0 < m) hdiv
    have hpos : 0 < m/g :=
      Nat.div_pos hgm (by omega : 0 < g)
    have hle : m/g ≤ N/g := Nat.div_le_div_right hmN
    exact Finset.mem_Icc.mpr ⟨hpos,hle⟩
  · intro m hm n hn heq
    have hdm : g ∣ m := (Finset.mem_filter.mp hm).2
    have hdn : g ∣ n := (Finset.mem_filter.mp hn).2
    calc
      m = m/g*g := (Nat.div_mul_cancel hdm).symm
      _ = n/g*g := congrArg (fun a : ℕ => a*g) heq
      _ = n := Nat.div_mul_cancel hdn
  · intro a ha
    obtain ⟨hapos,haN⟩ := Finset.mem_Icc.mp ha
    have hmul : a*g ≤ N :=
      (Nat.le_div_iff_mul_le (by omega : 0 < g)).mp haN
    have hgaN : g*a ≤ N := by simpa [mul_comm] using hmul
    have hgaPos : 1 ≤ g*a := by
      have h := Nat.mul_pos (by omega : 0 < g) hapos
      omega
    have hdiv : g ∣ g*a := ⟨a,rfl⟩
    refine ⟨g*a,
      Finset.mem_filter.mpr
        ⟨Finset.mem_Icc.mpr ⟨hgaPos,hgaN⟩,hdiv⟩,?_⟩
    exact Nat.mul_div_cancel_left a (by omega : 0 < g)
  · intro m hm
    have hdiv : g ∣ m := (Finset.mem_filter.mp hm).2
    have heq : g*(m/g) = m := by
      simpa [mul_comm] using (Nat.div_mul_cancel hdiv)
    simpa only [heq]

private theorem invRoot_mul (g a : ℕ) :
    invRoot (g*a) = invRoot g * invRoot a := by
  simp only [invRoot, Nat.cast_mul]
  rw [Real.sqrt_mul (by positivity), mul_inv_rev]
  ring

private def divisorRootRow (g N : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 N, if g ∣ m then invRoot m else 0

private theorem divisorRootRow_nonneg (g N : ℕ) :
    0 ≤ divisorRootRow g N := by
  unfold divisorRootRow
  apply Finset.sum_nonneg
  intro m hm
  split_ifs <;> positivity

/-- The key complete positive multiples row pays exactly one
factor g^-1, not merely g^-1/2. -/
theorem divisorRootRow_le
    (g N : ℕ) (hg : 1 ≤ g) :
    divisorRootRow g N ≤ 2*Real.sqrt (N : ℝ)/(g : ℝ) := by
  have hgNat : 0 < g := by omega
  have hgpos : (0 : ℝ) < (g : ℝ) := by exact_mod_cast hgNat
  have hsqrtPos : 0 < Real.sqrt (g : ℝ) :=
    Real.sqrt_pos.mpr hgpos
  have hsqrtEq : (Real.sqrt (g : ℝ))^2 = (g : ℝ) :=
    Real.sq_sqrt hgpos.le
  have hNdiv : (N/g)*g ≤ N := Nat.div_mul_le_self N g
  have hcast :
      ((N/g : ℕ) : ℝ)*(g : ℝ) ≤ (N : ℝ) := by
    exact_mod_cast hNdiv
  have hroot :
      Real.sqrt ((N/g : ℕ) : ℝ)*Real.sqrt (g : ℝ) ≤
        Real.sqrt (N : ℝ) := by
    calc
      _ = Real.sqrt (((N/g : ℕ) : ℝ)*(g : ℝ)) := by
        rw [Real.sqrt_mul (by positivity)]
      _ ≤ Real.sqrt (N : ℝ) := Real.sqrt_le_sqrt hcast
  have hrootDiv :
      Real.sqrt ((N/g : ℕ) : ℝ) ≤
        Real.sqrt (N : ℝ)/Real.sqrt (g : ℝ) :=
    (le_div_iff₀ hsqrtPos).mpr (by simpa [mul_comm] using hroot)
  have hbound :
      (Real.sqrt (g : ℝ))⁻¹ *
        (2*Real.sqrt ((N/g : ℕ) : ℝ)) ≤
          2*Real.sqrt (N : ℝ)/(g : ℝ) := by
    have hstep :
        (Real.sqrt (g : ℝ))⁻¹ *
          (2*Real.sqrt ((N/g : ℕ) : ℝ)) ≤
        (Real.sqrt (g : ℝ))⁻¹ *
          (2*(Real.sqrt (N : ℝ)/Real.sqrt (g : ℝ))) :=
      mul_le_mul_of_nonneg_left
        (by linarith [hrootDiv]) (by positivity)
    calc
      _ ≤ _ := hstep
      _ = 2*Real.sqrt (N : ℝ)/(g : ℝ) := by
        rw [← hsqrtEq]
        field_simp
        ring
  unfold divisorRootRow
  rw [sum_Icc_divisible_multiples N g hg invRoot]
  simp_rw [invRoot_mul g]
  rw [← Finset.mul_sum]
  have hs := reciprocal_sqrt_Icc_le (N/g)
  calc
    invRoot g * (∑ a ∈ Finset.Icc 1 (N/g), invRoot a) ≤
      invRoot g * (2*Real.sqrt ((N/g : ℕ) : ℝ)) :=
      mul_le_mul_of_nonneg_left hs (by
        unfold invRoot
        positivity)
    _ ≤ 2*Real.sqrt (N : ℝ)/(g : ℝ) := by
      simpa only [invRoot] using hbound

/-- Original both-index ordered positive divisor cover row,
from the original signed source kernel ONLY AFTER absolute value. -/
theorem divisorCoverRow_le
    (g : ℕ) (hg : 1 ≤ g) (T : ℝ) (hT : 0 ≤ T) :
    (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
       if g ∣ m ∧ g ∣ n then |sourceKernel T m n| else 0) ≤
      16*T*(⌊Real.exp T⌋₊ : ℝ)/(g : ℝ)^2 := by
  let S : Finset ℕ := endpointIndex T
  let w : ℕ → ℝ := fun m => if g ∣ m then invRoot m else 0
  have hw (m : ℕ) : 0 ≤ w m := by
    dsimp [w]
    split_ifs <;> positivity
  have hpoint (m : ℕ) (hm : m ∈ S)
      (n : ℕ) (hn : n ∈ S) :
      (if g ∣ m ∧ g ∣ n then |sourceKernel T m n| else 0) ≤
        (4*T)*w m*w n := by
    by_cases hgm : g ∣ m
    · by_cases hgn : g ∣ n
      · have hk := sourceKernel_abs_le_root
          m n (Finset.mem_Icc.mp hm).1
          (Finset.mem_Icc.mp hn).1 T hT
        simpa [w,invRoot,hgm,hgn,mul_assoc] using hk
      · simp [w,hgm,hgn]
    · simp [w,hgm]
  have hsum :
      (∑ m ∈ S, ∑ n ∈ S,
         if g ∣ m ∧ g ∣ n then |sourceKernel T m n| else 0) ≤
      (4*T)*(∑ m ∈ S, w m)^2 := by
    calc
      _ ≤ ∑ m ∈ S, ∑ n ∈ S, (4*T)*w m*w n := by
        apply Finset.sum_le_sum
        intro m hm
        apply Finset.sum_le_sum
        intro n hn
        exact hpoint m hm n hn
      _ = (∑ m ∈ S, (4*T)*w m)*
          (∑ n ∈ S, w n) := by
        rw [Finset.sum_mul_sum]
      _ = (4*T)*(∑ m ∈ S, w m)^2 := by
        rw [← Finset.mul_sum]
        ring
  let R : ℝ := ∑ m ∈ S, w m
  have hR : 0 ≤ R := Finset.sum_nonneg (fun m hm => hw m)
  have hRle :
      R ≤ 2*Real.sqrt (⌊Real.exp T⌋₊ : ℝ)/(g : ℝ) := by
    simpa only [R,w,S,endpointIndex,divisorRootRow] using
      (divisorRootRow_le g ⌊Real.exp T⌋₊ hg)
  have hB :
      0 ≤ 2*Real.sqrt (⌊Real.exp T⌋₊ : ℝ)/(g : ℝ) := by
    positivity
  have hRsq :
      R^2 ≤ (2*Real.sqrt (⌊Real.exp T⌋₊ : ℝ)/(g : ℝ))^2 := by
    nlinarith [hRle,hR,hB]
  have hfinal :
      (4*T)*R^2 ≤ 16*T*(⌊Real.exp T⌋₊ : ℝ)/(g : ℝ)^2 := by
    calc
      _ ≤ (4*T)*
        (2*Real.sqrt (⌊Real.exp T⌋₊ : ℝ)/(g : ℝ))^2 :=
          mul_le_mul_of_nonneg_left hRsq (by positivity)
      _ = 16*T*(⌊Real.exp T⌋₊ : ℝ)/(g : ℝ)^2 := by
        rw [div_pow,mul_pow,Real.sq_sqrt (by positivity)]
        ring
  exact hsum.trans (by simpa only [R] using hfinal)

/-- This FINITE inverse-square bound is ALREADY in pinned Mathlib
as sum_Ioc_inv_sq_le_sub. There is no new analytic premise. -/
theorem inverse_square_Icc_tail
    (D N : ℕ) (hD : 1 ≤ D) :
    (∑ g ∈ Finset.Icc (D+1) N, ((g : ℝ)^2)⁻¹) ≤
      (D : ℝ)⁻¹ := by
  by_cases hDN : D ≤ N
  · have hbound :
        (∑ g ∈ Finset.Ioc D N, ((g : ℝ)^2)⁻¹) ≤
          (D : ℝ)⁻¹ - (N : ℝ)⁻¹ :=
      sum_Ioc_inv_sq_le_sub (α := ℝ)
        (by omega : D ≠ 0) hDN
    have hfinal := hbound.trans
      (sub_le_self ((D : ℝ)⁻¹) (by positivity : 0 ≤ (N : ℝ)⁻¹))
    simpa only [Finset.Icc_add_one_left_eq_Ioc] using hfinal
  · have hempty : Finset.Icc (D+1) N = ∅ := by
      apply Finset.Icc_eq_empty_of_lt
      omega
    simp [hempty]
    positivity

/-- Complete previous original positive divisor-cover target,
with no additional arithmetic assumption. -/
theorem divisorCoverRootTail_proof : DivisorCoverRootTailTarget := by
  intro D T hT hD
  let N : ℕ := ⌊Real.exp T⌋₊
  let G : Finset ℕ := Finset.Icc (D+1) N
  have hbound :
      highGcdDivisorCoverCost D T ≤
        ∑ g ∈ G, (16*T*(N : ℝ))*((g : ℝ)^2)⁻¹ := by
    unfold highGcdDivisorCoverCost
    apply Finset.sum_le_sum
    intro g hg
    have hgle : D+1 ≤ g := (Finset.mem_Icc.mp hg).1
    have hpos : 1 ≤ g := by omega
    have hr := divisorCoverRow_le g hpos T hT
    simpa only [N,div_eq_mul_inv,mul_assoc] using hr
  have htail := inverse_square_Icc_tail D N hD
  have hTN : 0 ≤ 16*T*(N : ℝ) := by positivity
  change highGcdDivisorCoverCost D T ≤
    16*T*(N : ℝ)/(D : ℝ)
  calc
    _ ≤ ∑ g ∈ G, (16*T*(N : ℝ))*((g : ℝ)^2)⁻¹ := hbound
    _ = (16*T*(N : ℝ))*
      (∑ g ∈ G, ((g : ℝ)^2)⁻¹) := by
        rw [Finset.mul_sum]
    _ ≤ (16*T*(N : ℝ))*(D : ℝ)⁻¹ :=
      mul_le_mul_of_nonneg_left htail hTN
    _ = 16*T*(N : ℝ)/(D : ℝ) := by ring

/-- Positive-rate scalar proof with explicit witnesses,
NO requested-rate change of original source or gcd cutoff. -/
theorem completeHighGcdScalarEveryRate_proof :
    CompleteHighGcdScalarEveryRateTarget := by
  intro ε hε
  let R : ℝ := max 4 (4/ε^2)
  let C : ℝ := 64/ε
  refine ⟨C,R,by dsimp [C]; positivity,le_max_left _ _,?_⟩
  intro T hTR
  have hT4 : 4 ≤ T := (le_max_left _ _).trans hTR
  have hT0 : 0 ≤ T := by linarith
  have hεsq : 0 < ε^2 := sq_pos_of_pos hε
  have hthr : 4/ε^2 ≤ T := (le_max_right _ _).trans hTR
  have hquad : 4 ≤ T*ε^2 := (div_le_iff₀ hεsq).mp hthr
  have hprod : 0 ≤ T*(T*ε^2-4) :=
    mul_nonneg hT0 (by linarith)
  have hsqrt : Real.sqrt T ≤ ε*T/2 := by
    by_contra h
    have hlt : ε*T/2 < Real.sqrt T := lt_of_not_ge h
    have hdiff : 0 < Real.sqrt T-ε*T/2 := by linarith
    have hsum : 0 < Real.sqrt T+ε*T/2 := by
      have hh : 0 ≤ ε*T/2 := by positivity
      linarith
    have hp := mul_pos hdiff hsum
    nlinarith [Real.sq_sqrt hT0,hprod]
  have hexp : ε*T/2 ≤ Real.exp (ε*T/2) := by
    have hh := Real.add_one_le_exp (ε*T/2)
    linarith
  have hlin : 32*T ≤ (64*Real.exp (ε*T/2))/ε := by
    apply (le_div_iff₀ hε).mpr
    nlinarith [hexp]
  dsimp [C]
  calc
    32*T*Real.exp (Real.sqrt T) ≤
      32*T*Real.exp (ε*T/2) :=
      mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr hsqrt)
        (by positivity)
    _ ≤ ((64*Real.exp (ε*T/2))/ε)*Real.exp (ε*T/2) :=
      mul_le_mul_of_nonneg_right hlin (Real.exp_pos _).le
    _ = (64/ε)*Real.exp (ε*T) := by
      rw [show ε*T=ε*T/2+ε*T/2 by ring,Real.exp_add]
      ring

/-- The original source endpoint now has an unconditional
elementary positive bill; the signed fixed low-gcd packet is
unmodified and remains the separate RH-strength open input. -/
theorem endpointSum_le_fixedPlain_of_positive_elementary
    {T : ℝ} (hT : 4 ≤ T) :
    endpointSum T ≤
      fixedPlainLowGcdCross T +
        32*T*Real.exp (Real.sqrt T) + 1/4 := by
  exact endpointSum_le_fixedPlain_of_divisorCover_only
    divisorCoverRootTail_proof hT

end GRWTSK.NumberTheory.Moebius.CompleteHighGcdElementaryClosure
