/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCompleteHighGcdDivisorCover
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleDoubleAbelAnalyticGates
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Elementary source kernel and fixed gcd ratio gates

The remaining original complete high-gcd divisor-cover source has
a positive multiples-summation obligation. The two main elementary
analytic interfaces should not remain embedded in that SUM.

First, use the ACTUAL if-at-birth response and the already-written
pickupResponse_eq_positivePart theorem for positive n. At ALL u:
  0 <= pickupResponse n u <= 2 / sqrt(n).
The pinned intervalIntegral.norm_integral_le_of_norm_le_const
then gives the ORIGINAL causal upper
  |pickupResponseGram T m n| <= 4*T/(sqrt(m)*sqrt(n))
for positive m,n and T>=0. The true mu coefficient has |mu|<=1,
so the literal sourceKernel has the same absolute envelope.

Second, the PREVIOUSLY OPEN scalar floor gate is elementary:
for T>=4, sqrt T<=T/2, hence x=exp(T-sqrt T)>=2.
The pinned Nat.lt_floor_add_one yields floor(x)>=x/2.
With D_*(T)=max(1,floor x), N=floor(exp T),
  N / D_* <= 2*exp(sqrt T).
This is a proof candidate supplying the PRECISE original
FixedGcdRatioTarget, not a new assumption.

The purely scalar exponential-rate payment can also be supplied
from epsilon*T/2<=exp(epsilon*T/2), with the SAME fixed cutoff.
Neither calculation assumes Mertens cancellation or RH.

The finite positive common-divisor MULTIPLES reindex and reciprocal
square summation remain a separate elementary unproved Lean target.
The all-positive-rate low-gcd original signed estimate remains OPEN.

Lean compilation, exact types, fresh independent kernel replay and
transitive axiom audit NOT_RUN for all declarations in this file.
-/

namespace GRWTSK.NumberTheory.Moebius.OriginalGramRootFloorSuppliers

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison
open GRWTSK.NumberTheory.LiouvilleDoubleAbelAnalyticGates
open GRWTSK.NumberTheory.Moebius.UnmaskedLowGcdEndpoint
open GRWTSK.NumberTheory.Moebius.FixedSublinearCompensatedEndpoint

classical

/-- Pointwise true original causal response bound on EVERY
physical time, with the unchanged birth gate at log n. -/
theorem pickupResponse_nonneg_le_two_root
    (n : ℕ) (hn : 1 ≤ n) (u : ℝ) :
    0 ≤ pickupResponse n u ∧
      pickupResponse n u ≤ 2 * (Real.sqrt (n : ℝ))⁻¹ := by
  rw [pickupResponse_eq_positivePart n hn u]
  have hinv : 0 ≤ (Real.sqrt (n : ℝ))⁻¹ :=
    inv_nonneg.mpr (Real.sqrt_nonneg _)
  have hdiff :
      (Real.sqrt (n : ℝ))⁻¹ - Real.exp (-u / 2) ≤
        (Real.sqrt (n : ℝ))⁻¹ :=
    sub_le_self _ (Real.exp_pos _).le
  have hmax :
      max ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-u / 2)) 0 ≤
        (Real.sqrt (n : ℝ))⁻¹ := max_le hdiff hinv
  constructor
  · exact mul_nonneg (by norm_num) (le_max_right _ _)
  · exact mul_le_mul_of_nonneg_left hmax (by norm_num)

/-- The actual original causal RESPONSE Gram, not an unshifted
gcd model or an abstract Gram matrix, obeys a uniform bound. -/
theorem pickupResponseGram_abs_le_root
    (m n : ℕ) (hm : 1 ≤ m) (hn : 1 ≤ n)
    (T : ℝ) (hT : 0 ≤ T) :
    |pickupResponseGram T m n| ≤
      4*T*(Real.sqrt (m : ℝ))⁻¹ *
        (Real.sqrt (n : ℝ))⁻¹ := by
  let a : ℝ := (Real.sqrt (m : ℝ))⁻¹
  let b : ℝ := (Real.sqrt (n : ℝ))⁻¹
  have ha : 0 ≤ a := inv_nonneg.mpr (Real.sqrt_nonneg _)
  have hb : 0 ≤ b := inv_nonneg.mpr (Real.sqrt_nonneg _)
  have hpoint (u : ℝ) :
      ‖pickupResponse m u * pickupResponse n u‖ ≤ 4*a*b := by
    obtain ⟨hm0, hmb⟩ := pickupResponse_nonneg_le_two_root m hm u
    obtain ⟨hn0, hnb⟩ := pickupResponse_nonneg_le_two_root n hn u
    have hmba : pickupResponse m u ≤ 2*a := hmb
    have hnbb : pickupResponse n u ≤ 2*b := hnb
    have hp :
        pickupResponse m u * pickupResponse n u ≤
          (2*a)*(2*b) :=
      mul_le_mul hmba hnbb hn0 (by positivity)
    calc
      ‖pickupResponse m u * pickupResponse n u‖ =
          pickupResponse m u * pickupResponse n u := by
        rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg hm0 hn0)]
      _ ≤ (2*a)*(2*b) := hp
      _ = 4*a*b := by ring
  have hint :
      ‖∫ u in (0 : ℝ)..T,
          pickupResponse m u * pickupResponse n u‖ ≤
        (4*a*b) * |T - 0| :=
    intervalIntegral.norm_integral_le_of_norm_le_const
      (a := (0 : ℝ)) (b := T)
      (C := 4*a*b)
      (f := fun u => pickupResponse m u * pickupResponse n u)
      (by intro u hu; exact hpoint u)
  change |pickupResponseGram T m n| ≤
      4*T*(Real.sqrt (m : ℝ))⁻¹ *
        (Real.sqrt (n : ℝ))⁻¹
  have hnorm : |pickupResponseGram T m n| ≤ (4*a*b)*T := by
    simpa only [pickupResponseGram, Real.norm_eq_abs,
      sub_zero, abs_of_nonneg hT] using hint
  dsimp [a, b] at hnorm
  nlinarith [hnorm]

/-- The complete original signed Möbius entry inherits the
same envelope, since the true |mu(n)|<=1 is preserved. -/
theorem sourceKernel_abs_le_root
    (m n : ℕ) (hm : 1 ≤ m) (hn : 1 ≤ n)
    (T : ℝ) (hT : 0 ≤ T) :
    |sourceKernel T m n| ≤
      4*T*(Real.sqrt (m : ℝ))⁻¹ *
        (Real.sqrt (n : ℝ))⁻¹ := by
  have hmμ : |moebiusReal m| ≤ 1 := by
    unfold moebiusReal
    exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := m))
  have hnμ : |moebiusReal n| ≤ 1 := by
    unfold moebiusReal
    exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))
  have hc : |moebiusReal m * moebiusReal n| ≤ 1 := by
    calc
      _ = |moebiusReal m| * |moebiusReal n| := abs_mul _ _
      _ ≤ (1 : ℝ)*1 := by
        exact mul_le_mul hmμ hnμ (abs_nonneg _) (by norm_num)
      _ = 1 := by ring
  have hk := pickupResponseGram_abs_le_root m n hm hn T hT
  unfold sourceKernel
  rw [abs_mul]
  calc
    |moebiusReal m * moebiusReal n| *
        |pickupResponseGram T m n| ≤
      (1 : ℝ) * |pickupResponseGram T m n| :=
      mul_le_mul_of_nonneg_right hc (abs_nonneg _)
    _ = |pickupResponseGram T m n| := one_mul _
    _ ≤ _ := hk

/-- Source-specific exact floor cutoff inequality; eliminates
a previously unproved elementary scalar Prop from the original
unmasked low-gcd endpoint reduction. The proof uses no mu. -/
theorem fixedGcdRatio_proof : FixedGcdRatioTarget := by
  intro T hT
  have hT0 : 0 ≤ T := by linarith
  have hsqrtSq : (Real.sqrt T)^2 = T := Real.sq_sqrt hT0
  have hsqrtNN : 0 ≤ Real.sqrt T := Real.sqrt_nonneg T
  have hprod : 0 ≤ T*(T-4) :=
    mul_nonneg hT0 (by linarith)
  have hsqrtHalf : Real.sqrt T ≤ T/2 := by
    by_contra h
    have hh : T/2 < Real.sqrt T := lt_of_not_ge h
    nlinarith [hsqrtSq, hprod, hsqrtNN]
  let x : ℝ := Real.exp (T-Real.sqrt T)
  have hx2 : (2 : ℝ) ≤ x := by
    have hl : 2 ≤ T-Real.sqrt T := by linarith
    have he := Real.add_one_le_exp (T-Real.sqrt T)
    dsimp [x]
    linarith
  have hfloor : x/2 ≤ (⌊x⌋₊ : ℝ) := by
    have hh : x < (⌊x⌋₊ : ℝ) + 1 := by
      simpa only [Nat.cast_add, Nat.cast_one]
        using (Nat.lt_floor_add_one x)
    linarith
  have hD :
      (⌊x⌋₊ : ℝ) ≤ (fixedGcdCutoff T : ℝ) := by
    dsimp [x, fixedGcdCutoff]
    exact_mod_cast (le_max_right (1 : ℕ)
      ⌊Real.exp (T-Real.sqrt T)⌋₊)
  have hxD : x ≤ 2*(fixedGcdCutoff T : ℝ) := by
    linarith
  have hN : (⌊Real.exp T⌋₊ : ℝ) ≤ Real.exp T :=
    Nat.floor_le (Real.exp_pos _).le
  have hexp : Real.exp T = x*Real.exp (Real.sqrt T) := by
    dsimp [x]
    rw [← Real.exp_add]
    congr 1
    ring
  have hdpos : (0 : ℝ) < (fixedGcdCutoff T : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one
      (fixedGcdCutoff_pos T))
  apply (div_le_iff₀ hdpos).mpr
  calc
    (⌊Real.exp T⌋₊ : ℝ) ≤ Real.exp T := hN
    _ = x * Real.exp (Real.sqrt T) := hexp
    _ ≤ (2*(fixedGcdCutoff T : ℝ))*Real.exp (Real.sqrt T) :=
      mul_le_mul_of_nonneg_right hxD (Real.exp_pos _).le
    _ = (2*Real.exp (Real.sqrt T))*
        (fixedGcdCutoff T : ℝ) := by ring

/-- The numeric endpoint now consumes only the finite ORIGINAL
positive divisor multiples calculation, no floor/ratio assumption.
The latter is discharged by the authored proof body above. -/
theorem endpointSum_le_fixedPlain_of_divisorCover_only
    (hCover :
      GRWTSK.NumberTheory.Moebius.CompleteHighGcdDivisorCover.DivisorCoverRootTailTarget)
    {T : ℝ} (hT : 4 ≤ T) :
    GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature.endpointSum T ≤
      fixedPlainLowGcdCross T +
        32*T*Real.exp (Real.sqrt T) + 1/4 := by
  exact GRWTSK.NumberTheory.Moebius.CompleteHighGcdDivisorCover.
    endpointSum_le_fixedPlain_of_divisorCover
      hCover fixedGcdRatio_proof hT

end GRWTSK.NumberTheory.Moebius.OriginalGramRootFloorSuppliers
