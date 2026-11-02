/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongIncomparableGcdReduced
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleDoubleAbelAnalyticGates
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleCausalPhysicalGramIntegrability
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Exact ORIGINAL causal Gram covariance under a common integer dilation

For g,a,b>=1 and ANY real time T, the literal CCC pickupResponse is
  r_(g*a)(u) = (sqrt g)^(-1) r_a(u-log g).
This is an identity of the original causal BIRTH-GATED response:
the threshold log(g*a) is moved to log a by the same log g shift.
The response is zero for negative physical time at positive a.

The pinned Mathlib intervalIntegral.integral_comp_sub_right
is used with the real measure. Its shifted interval runs from
-log g to T-log g; the negative-time portion [-log g,0] is
proven ZERO from the original birth support, rather than silently
dropped. Hence the actual original Gram satisfies
  K_T(g*a,g*b) = g^(-1)*K_(T-log g)(a,b).

This identity even holds for T<log g with oriented interval
integrals, where both sides are zero, but no physical negative
observation is inferred from that mathematical identity.

For squarefree g*a and g*b, genuine original Möbius multiplicativity
then gives BOTH the complete SIGNED termwise transport and the
source-diagonal transport. There is NO unshifted kernel identity:
in general K_T(g*a,g*b) != g^(-1)*K_T(a,b).

The original source masks (Putnam gap H, angular sigma at horizon T,
energy/physical threshold depending on floor(exp T)) are deliberately
NOT transported or simplified here. These remain in the source
definition until a separate exact comparison is proved.

The theorem scripts are only candidates until exact pinned Lean
elaboration, kernel and full axiom audit are executed.
-/

namespace GRWTSK.NumberTheory.Moebius.CausalGcdTimeShift

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleDoubleAbelAnalyticGates
open GRWTSK.NumberTheory.LiouvilleCausalPhysicalGramIntegrability
open GRWTSK.NumberTheory.Moebius.StrongIncomparableGcdReduced
open GRWTSK.NumberTheory.Moebius.StrongEarlyIndexCollar
open GRWTSK.NumberTheory.Moebius.FareyFaryKakeyaIncidence

/-- The ORIGINAL positive-integer response vanishes at all
nonpositive physical times. There is no log(0) evaluation. -/
theorem response_zero_of_nonpos
    (a : ℕ) (ha : 1 ≤ a) (u : ℝ) (hu : u ≤ 0) :
    pickupResponse a u = 0 := by
  have hroot : (1 : ℝ) ≤ Real.sqrt (a : ℝ) := by
    rw [← Real.sqrt_one]
    exact Real.sqrt_le_sqrt (by exact_mod_cast ha)
  have hsqrt : (Real.sqrt (a : ℝ))⁻¹ ≤ 1 := by
    simpa using (one_div_le_one_div_of_le
      (by norm_num : (0 : ℝ) < 1) hroot)
  have hexp : 1 ≤ Real.exp (-u / 2) := by
    have h : 0 ≤ -u/2 := by linarith
    simpa only [Real.exp_zero] using Real.exp_le_exp.mpr h
  have hdiff :
      (Real.sqrt (a : ℝ))⁻¹ - Real.exp (-u / 2) ≤ 0 := by
    linarith
  rw [pickupResponse_eq_positivePart a ha u, max_eq_right hdiff]
  ring

/-- True original causal dilation in the original real
physical-time coordinate and original indexed responses. -/
theorem pickupResponse_mul_timeShift
    (g a : ℕ) (hg : 1 ≤ g) (ha : 1 ≤ a) (u : ℝ) :
    pickupResponse (g*a) u =
      (Real.sqrt (g : ℝ))⁻¹ *
        pickupResponse a (u - Real.log (g : ℝ)) := by
  have hgpos : (0 : ℝ) < g := by exact_mod_cast (by omega : 0 < g)
  have hapos : (0 : ℝ) < a := by exact_mod_cast (by omega : 0 < a)
  have hgnonzero : (g : ℝ) ≠ 0 := ne_of_gt hgpos
  have hanonzero : (a : ℝ) ≠ 0 := ne_of_gt hapos
  have hlog :
      Real.log ((g*a : ℕ) : ℝ) =
        Real.log (g : ℝ) + Real.log (a : ℝ) := by
    rw [Nat.cast_mul, Real.log_mul hgnonzero hanonzero]
  have hbirth :
      Real.log ((g*a : ℕ) : ℝ) ≤ u ↔
        Real.log (a : ℝ) ≤ u - Real.log (g : ℝ) := by
    rw [hlog]
    constructor <;> intro h <;> linarith
  have hroot :
      (Real.sqrt ((g*a : ℕ) : ℝ))⁻¹ =
        (Real.sqrt (g : ℝ))⁻¹ *
          (Real.sqrt (a : ℝ))⁻¹ := by
    rw [Nat.cast_mul, Real.sqrt_mul (by positivity : 0 ≤ (g : ℝ)),
      mul_inv_rev]
    ring
  have hsqrtg :
      (Real.sqrt (g : ℝ))⁻¹ =
        Real.exp (-Real.log (g : ℝ) / 2) := by
    calc
      _ = (Real.exp (Real.log (g : ℝ) / 2))⁻¹ := by
        rw [Real.exp_half, Real.exp_log hgpos]
      _ = Real.exp (-(Real.log (g : ℝ) / 2)) := by
        rw [Real.exp_neg]
      _ = Real.exp (-Real.log (g : ℝ) / 2) := by ring
  have hshiftExp :
      Real.exp (-u/2) =
        (Real.sqrt (g : ℝ))⁻¹ *
          Real.exp (-(u - Real.log (g : ℝ))/2) := by
    rw [hsqrtg, ← Real.exp_add]
    congr 1
    ring
  unfold pickupResponse
  by_cases hb : Real.log (a : ℝ) ≤ u - Real.log (g : ℝ)
  · have hbig : Real.log ((g*a : ℕ) : ℝ) ≤ u :=
      hbirth.mpr hb
    rw [if_pos hbig, if_pos hb, hroot, hshiftExp]
    ring
  · have hbig : ¬Real.log ((g*a : ℕ) : ℝ) ≤ u :=
      fun h => hb (hbirth.mp h)
    rw [if_neg hbig, if_neg hb]
    ring

/-- The pinned original source's genuinely shifted product integral
is the SAME original Gram at the shifted horizon, even when the
input T is any real and the interval uses oriented endpoints. -/
theorem pickupResponseGram_mul_timeShift
    (g a b : ℕ) (hg : 1 ≤ g) (ha : 1 ≤ a) (hb : 1 ≤ b)
    (T : ℝ) :
    pickupResponseGram T (g*a) (g*b) =
      (g : ℝ)⁻¹ *
        pickupResponseGram (T - Real.log (g : ℝ)) a b := by
  let f : ℝ → ℝ := fun v =>
    pickupResponse a v * pickupResponse b v
  let d : ℝ := Real.log (g : ℝ)
  let q : ℝ := (Real.sqrt (g : ℝ))⁻¹
  have hd : 0 ≤ d := by
    dsimp [d]
    exact Real.log_nonneg (by exact_mod_cast hg)
  have hleft : -d ≤ (0 : ℝ) := by linarith
  have hzero :
      (∫ v in -d..(0 : ℝ), f v) = 0 := by
    have h:
        (∫ v in -d..(0 : ℝ), f v) =
        (∫ _v in -d..(0 : ℝ), (0 : ℝ)) := by
      apply intervalIntegral.integral_congr
      intro v hv
      have hvMem : v ∈ Set.Icc (-d) 0 := by
        simpa only [Set.uIcc_of_le hleft] using hv
      dsimp [f]
      rw [response_zero_of_nonpos a ha v hvMem.2]
      ring
    rw [h]
    simp
  have hf : Continuous f :=
    (pickupResponse_continuous a (by omega)).mul
      (pickupResponse_continuous b (by omega))
  have hshift :
      (∫ u in (0 : ℝ)..T, f (u - d)) =
        (∫ v in -d..(T-d), f v) := by
    simpa only [zero_sub] using
      (intervalIntegral.integral_comp_sub_right
        (f := f) (a := (0 : ℝ)) (b := T) (d := d))
  have hsplit :
      (∫ v in -d..(T-d), f v) =
        (∫ v in (0 : ℝ)..(T-d), f v) := by
    have hi₁ : IntervalIntegrable f volume (-d) 0 :=
      hf.intervalIntegrable _ _
    have hi₂ : IntervalIntegrable f volume 0 (T-d) :=
      hf.intervalIntegrable _ _
    have hadd :=
      intervalIntegral.integral_add_adjacent_intervals hi₁ hi₂
    rw [hzero, zero_add] at hadd
    exact hadd.symm
  have hq :
      q^2 = (g : ℝ)⁻¹ := by
    dsimp [q]
    rw [inv_pow, Real.sq_sqrt (by positivity : 0 ≤ (g : ℝ))]
  unfold pickupResponseGram
  calc
    (∫ u in (0 : ℝ)..T,
      pickupResponse (g*a) u * pickupResponse (g*b) u) =
        (∫ u in (0 : ℝ)..T, q^2 * f (u-d)) := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [pickupResponse_mul_timeShift g a hg ha u,
        pickupResponse_mul_timeShift g b hg hb u]
      dsimp [f, d, q]
      ring
    _ = q^2 * (∫ u in (0 : ℝ)..T, f (u-d)) := by
      rw [intervalIntegral.integral_const_mul]
    _ = q^2 * (∫ v in (0 : ℝ)..(T-d), f v) := by
      rw [hshift, hsplit]
    _ = (g : ℝ)⁻¹ *
          (∫ v in (0 : ℝ)..(T - Real.log (g : ℝ)),
            pickupResponse a v * pickupResponse b v) := by
      rw [hq]
      rfl

/-- The exact ORIGINAL signed coprime reduced kernel after
cancelling the repeated squarefree gcd Möbius factor. The
physical-time Gram carries a shifted cutoff, not a fake
unshifted homogeneous normalization. -/
theorem originalSignedKernel_gcd_timeShift
    (T : ℝ) (g a b : ℕ)
    (hg : 1 ≤ g) (ha : 1 ≤ a) (hb : 1 ≤ b)
    (hga : Squarefree (g*a))
    (hgb : Squarefree (g*b)) :
    sourceKernel T (g*a) (g*b) =
      (g : ℝ)⁻¹ * moebiusReal a * moebiusReal b *
        pickupResponseGram (T - Real.log (g : ℝ)) a b := by
  rw [sourceKernel_common_factor_cancel T g a b hga hgb,
    pickupResponseGram_mul_timeShift g a b hg ha hb T]
  ring

/-- Exact source diagonal covariance, valid for the SAME
original µ(n)^2-response energy when n=g*a is squarefree.
No Mertens bound, physical overlap selection or RH hypothesis. -/
theorem sourceDiagonal_gcd_timeShift
    (T : ℝ) (g a : ℕ) (hg : 1 ≤ g) (ha : 1 ≤ a)
    (hga : Squarefree (g*a)) :
    sourceDiagonal T (g*a) =
      (g : ℝ)⁻¹ *
        sourceDiagonal (T - Real.log (g : ℝ)) a := by
  have hcop : Nat.Coprime g a :=
    Nat.coprime_of_squarefree_mul hga
  obtain ⟨hsg, hsa⟩ := (Nat.squarefree_mul hcop).mp hga
  have hgmu : (moebiusReal (g*a))^2 = 1 := by
    unfold moebiusReal
    exact_mod_cast
      (ArithmeticFunction.moebius_sq_eq_one_of_squarefree hga)
  have hamu : (moebiusReal a)^2 = 1 := by
    unfold moebiusReal
    exact_mod_cast
      (ArithmeticFunction.moebius_sq_eq_one_of_squarefree hsa)
  unfold sourceDiagonal
  rw [hgmu, hamu,
    pickupResponseGram_mul_timeShift g a a hg ha ha T]
  ring

end GRWTSK.NumberTheory.Moebius.CausalGcdTimeShift
