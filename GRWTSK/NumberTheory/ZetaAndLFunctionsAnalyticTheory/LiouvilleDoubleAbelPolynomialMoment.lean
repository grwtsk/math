/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleDoubleAbelAnalyticGates
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory

/-!
# Polynomial causal double-Abel kernel moment: an alternative coarse constant

Prove a cubic-in-T envelope by reversing the already established finite
mixed-difference telescope, *without* taking arithmetic correlation absolute
values. The 4T(1+T)^2 coefficient is larger than the sharper analytic
T^3/3+4T^2+7T from the review; it is enough for all-positive-rate
energy transport and uses only reciprocal-root and harmonic estimates.

The proof scripts below are candidates: they have not been compiled or
kernel audited. No smallness theorem for the signed arithmetic rectangles
is assumed or asserted.
-/

namespace GRWTSK.NumberTheory.LiouvilleDoubleAbelPolynomialMoment

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleDoubleAbelCausalKernel
open GRWTSK.NumberTheory.LiouvilleDoubleAbelAnalyticGates

private def invSqrtNat (n : ℕ) : ℝ :=
  (Real.sqrt (n : ℝ))⁻¹

private lemma invSqrtNat_nonneg (n : ℕ) : 0 ≤ invSqrtNat n := by
  unfold invSqrtNat
  positivity

private lemma sqrt_le_sum_invSqrt (p : ℕ) (hp : 1 ≤ p) :
    Real.sqrt (p : ℝ) ≤ ∑ m ∈ Finset.Icc 1 p, invSqrtNat m := by
  have hp0 : (0 : ℝ) < p := by
    exact_mod_cast (Nat.lt_of_lt_of_le Nat.zero_lt_one hp)
  have hsroot : 0 < Real.sqrt (p : ℝ) := Real.sqrt_pos.2 hp0
  have hlow : ∀ m ∈ Finset.Icc 1 p, invSqrtNat p ≤ invSqrtNat m := by
    intro m hm
    have hm0 : (0 : ℝ) < m := by
      exact_mod_cast (Nat.lt_of_lt_of_le Nat.zero_lt_one
        (Finset.mem_Icc.mp hm).1)
    have hmp : (m : ℝ) ≤ p := by
      exact_mod_cast (Finset.mem_Icc.mp hm).2
    unfold invSqrtNat
    exact one_div_le_one_div_of_le (Real.sqrt_pos.2 hm0)
      (Real.sqrt_le_sqrt hmp)
  have hsum :
      (∑ m ∈ Finset.Icc 1 p, invSqrtNat p) ≤
        ∑ m ∈ Finset.Icc 1 p, invSqrtNat m :=
    Finset.sum_le_sum hlow
  have hc : (Finset.Icc 1 p).card = p := by
    simp [Finset.card_Icc, Nat.add_sub_cancel_left]
  have hscalar : (p : ℝ) * invSqrtNat p = Real.sqrt (p : ℝ) := by
    unfold invSqrtNat
    have hs := Real.sq_sqrt (Nat.cast_nonneg p)
    rw [← hs]
    field_simp
    <;> ring
  simpa [Finset.sum_const, hc, nsmul_eq_mul, hscalar] using hsum

private def invSqrtRectangle (N p q : ℕ) : ℝ :=
  ∑ mg ∈ lattice N,
    if prefixLE mg (p, q) then
      invSqrtNat mg.1 * invSqrtNat mg.2 else 0

private lemma sum_if_le
    (m N : ℕ) (hm : m ≤ N) (f : ℕ → ℝ) :
    (∑ k ∈ Finset.Icc 1 N, if k ≤ m then f k else 0) =
      ∑ k ∈ Finset.Icc 1 m, f k := by
  classical
  rw [← Finset.sum_filter]
  congr 1
  ext k
  simp only [Finset.mem_filter, Finset.mem_Icc]
  omega

private lemma invSqrtRectangle_eq_product
    (N p q : ℕ) (hp : 1 ≤ p) (hq : 1 ≤ q)
    (hpN : p ≤ N) (hqN : q ≤ N) :
    invSqrtRectangle N p q =
      (∑ m ∈ Finset.Icc 1 p, invSqrtNat m) *
        (∑ g ∈ Finset.Icc 1 q, invSqrtNat g) := by
  classical
  unfold invSqrtRectangle lattice prefixLE
  simp only [Finset.sum_product]
  calc
    (∑ m ∈ Finset.Icc 1 N, ∑ g ∈ Finset.Icc 1 N,
        if m ≤ p ∧ g ≤ q then invSqrtNat m * invSqrtNat g else 0) =
      ∑ m ∈ Finset.Icc 1 N,
        if m ≤ p then invSqrtNat m *
          (∑ g ∈ Finset.Icc 1 N,
             if g ≤ q then invSqrtNat g else 0) else 0 := by
      apply Finset.sum_congr rfl
      intro m _
      by_cases hm : m ≤ p
      · simp only [if_pos hm, Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro g _
        split_ifs <;> simp
      · simp [hm]
    _ = (∑ m ∈ Finset.Icc 1 N,
          if m ≤ p then invSqrtNat m else 0) *
            (∑ g ∈ Finset.Icc 1 q, invSqrtNat g) := by
      rw [← sum_if_le q N hqN invSqrtNat]
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro m _
      split_ifs <;> simp
    _ = _ := by
      rw [sum_if_le p N hpN invSqrtNat]

/-- Both square-root weights are paid by complete positive rectangle
weight before changing the order of finite summation. -/
private theorem sqrt_weight_le_rectangle
    (N p q : ℕ) (hp : 1 ≤ p) (hq : 1 ≤ q)
    (hpN : p ≤ N) (hqN : q ≤ N) :
    Real.sqrt ((p * q : ℕ) : ℝ) ≤ invSqrtRectangle N p q := by
  rw [invSqrtRectangle_eq_product N p q hp hq hpN hqN]
  rw [Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg p)]
  exact mul_le_mul
    (sqrt_le_sum_invSqrt p hp)
    (sqrt_le_sum_invSqrt q hq)
    (Real.sqrt_nonneg _)
    (Finset.sum_nonneg (fun m _ => invSqrtNat_nonneg m))

/-- Generic finite positive rectangle Fubini: the original complete
source lattice is not replaced by a random or independent process. -/
private theorem rectangle_fubini
    (N : ℕ) (omega : ℕ → ℕ → ℝ) :
    (∑ pq ∈ lattice N,
      invSqrtRectangle N pq.1 pq.2 * omega pq.1 pq.2) =
      ∑ mg ∈ lattice N,
        (invSqrtNat mg.1 * invSqrtNat mg.2) *
          tailOfOmega N omega mg.1 mg.2 := by
  classical
  unfold invSqrtRectangle tailOfOmega
  calc
    (∑ pq ∈ lattice N,
        (∑ mg ∈ lattice N,
          if prefixLE mg pq then
            invSqrtNat mg.1 * invSqrtNat mg.2 else 0) *
          omega pq.1 pq.2) =
      ∑ pq ∈ lattice N, ∑ mg ∈ lattice N,
        if prefixLE mg pq then
          (invSqrtNat mg.1 * invSqrtNat mg.2) * omega pq.1 pq.2 else 0 := by
      apply Finset.sum_congr rfl
      intro pq _
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro mg _
      split_ifs <;> simp
    _ = ∑ mg ∈ lattice N, ∑ pq ∈ lattice N,
          if prefixLE mg pq then
            (invSqrtNat mg.1 * invSqrtNat mg.2) * omega pq.1 pq.2 else 0 := by
      rw [Finset.sum_comm]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro mg _
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro pq _
      split_ifs <;> simp

/-- A literal positive-index causal response never exceeds the original
untruncated reciprocal-root source weight. -/
private theorem original_response_le_two_invSqrt
    (n : ℕ) (hn : 1 ≤ n) (u : ℝ) :
    pickupResponse n u ≤ 2 * invSqrtNat n := by
  rw [pickupResponse_eq_positivePart n hn u]
  unfold invSqrtNat
  have hi : 0 ≤ (Real.sqrt (n : ℝ))⁻¹ := by positivity
  have hmax : max ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-u / 2)) 0 ≤
      (Real.sqrt (n : ℝ))⁻¹ := by
    apply max_le
    · linarith [Real.exp_pos (-u / 2)]
    · exact hi
  exact mul_le_mul_of_nonneg_left hmax (by norm_num)

/-- Source-specific integrated response Gram bound from the original
causal weight, with the exact physical time interval 0..T. -/
private theorem causalKernel_le_product
    (T : ℝ) (hT : 0 ≤ T) (m g : ℕ) (hm : 1 ≤ m) (hg : 1 ≤ g) :
    causalKernel T m g ≤
      4 * T * invSqrtNat m * invSqrtNat (m + g) := by
  let w : ℝ := 4 * invSqrtNat m * invSqrtNat (m + g)
  have hcont : Continuous
      (fun u : ℝ => pickupResponse m u * pickupResponse (m + g) u) :=
    (pickupResponse_continuous hm).mul
      (pickupResponse_continuous (by omega : 1 ≤ m + g))
  have hi := hcont.intervalIntegrable (0 : ℝ) T
  have hic : IntervalIntegrable (fun _ : ℝ => w)
      MeasureTheory.volume (0 : ℝ) T := continuous_const.intervalIntegrable _ _
  have hp (u : ℝ) :
      pickupResponse m u * pickupResponse (m + g) u ≤ w := by
    have hmn := pickupResponse_nonneg_positive (m + g) (by omega) u
    calc
      _ ≤ (2 * invSqrtNat m) * pickupResponse (m + g) u :=
        mul_le_mul_of_nonneg_right
          (original_response_le_two_invSqrt m hm u) hmn
      _ ≤ (2 * invSqrtNat m) * (2 * invSqrtNat (m + g)) :=
        mul_le_mul_of_nonneg_left
          (original_response_le_two_invSqrt (m + g) (by omega) u)
          (by positivity)
      _ = w := by unfold w; ring
  unfold causalKernel
  calc
    _ ≤ ∫ _u in (0 : ℝ)..T, w := by
      apply intervalIntegral.integral_mono_on hT hi hic
      intro u _
      exact hp u
    _ = T * w := by simp
    _ = _ := by unfold w; ring

/-- The reciprocal-root factor of the more distant endpoint has no
larger mass than the positive gap's reciprocal-root factor. -/
private theorem invSqrtNat_antitone
    (m g : ℕ) (hg : 1 ≤ g) :
    invSqrtNat (m + g) ≤ invSqrtNat g := by
  have hgp : (0 : ℝ) < g := by
    exact_mod_cast (Nat.lt_of_lt_of_le Nat.zero_lt_one hg)
  unfold invSqrtNat
  exact one_div_le_one_div_of_le (Real.sqrt_pos.2 hgp)
    (Real.sqrt_le_sqrt (by exact_mod_cast (Nat.le_add_left g m)))

/-- The pointwise positive kernel is at most the harmonic rectangle
mass. Every real source coefficient and original birth weight is kept. -/
private theorem weighted_kernel_le_harmonic
    (T : ℝ) (hT : 0 ≤ T) (m g : ℕ) (hm : 1 ≤ m) (hg : 1 ≤ g) :
    invSqrtNat m * invSqrtNat g * causalKernel T m g ≤
      4 * T * ((m : ℝ)⁻¹ * (g : ℝ)⁻¹) := by
  have hK := causalKernel_le_product T hT m g hm hg
  have hmon := invSqrtNat_antitone m g hg
  have hmn : 0 ≤ invSqrtNat m := invSqrtNat_nonneg m
  have hgn : 0 ≤ invSqrtNat g := invSqrtNat_nonneg g
  have hpow_m : (invSqrtNat m) ^ 2 = (m : ℝ)⁻¹ := by
    unfold invSqrtNat
    rw [inv_pow, Real.sq_sqrt (Nat.cast_nonneg m)]
  have hpow_g : (invSqrtNat g) ^ 2 = (g : ℝ)⁻¹ := by
    unfold invSqrtNat
    rw [inv_pow, Real.sq_sqrt (Nat.cast_nonneg g)]
  calc
    _ ≤ invSqrtNat m * invSqrtNat g *
          (4 * T * invSqrtNat m * invSqrtNat (m + g)) :=
      mul_le_mul_of_nonneg_left hK (mul_nonneg hmn hgn)
    _ ≤ invSqrtNat m * invSqrtNat g *
          (4 * T * invSqrtNat m * invSqrtNat g) := by
      apply mul_le_mul_of_nonneg_left ?_ (mul_nonneg hmn hgn)
      apply mul_le_mul_of_nonneg_left hmon
      positivity
    _ = _ := by
      calc
        _ = 4 * T * (invSqrtNat m) ^ 2 * (invSqrtNat g) ^ 2 := by ring
        _ = _ := by rw [hpow_m, hpow_g]; ring

private theorem inv_harmonic_sum_le (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, (n : ℝ)⁻¹) ≤ 1 + Real.log (N : ℝ) := by
  simpa only [harmonic_eq_sum_Icc,
    Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast] using
    (harmonic_le_one_add_log N)

/-- Cubic physical-time kernel moment, with a nonsharp but entirely
sufficient polynomial. A genuine theorem candidate, not an RH premise. -/
theorem sqrtWeightedOmegaMoment_le_coarse
    (N : ℕ) (hN : 2 ≤ N) :
    sqrtWeightedOmegaMoment N ≤
      4 * Real.log (N : ℝ) * (1 + Real.log (N : ℝ)) ^ 2 := by
  let T : ℝ := Real.log (N : ℝ)
  have hT : 0 ≤ T := Real.log_nonneg (by exact_mod_cast (show 1 ≤ N by omega))
  let omega : ℕ → ℕ → ℝ := causalOmega T
  have ho : ∀ pq ∈ lattice N, 0 ≤ omega pq.1 pq.2 := by
    intro pq hpq
    have hh := Finset.mem_product.mp hpq
    exact causalOmega_nonneg_actual T hT pq.1 pq.2
      (Finset.mem_Icc.mp hh.1).1 (Finset.mem_Icc.mp hh.2).1
  have hweight : ∀ pq ∈ lattice N,
      Real.sqrt ((pq.1 * pq.2 : ℕ) : ℝ) ≤
        invSqrtRectangle N pq.1 pq.2 := by
    intro pq hpq
    have hh := Finset.mem_product.mp hpq
    exact sqrt_weight_le_rectangle N pq.1 pq.2
      (Finset.mem_Icc.mp hh.1).1 (Finset.mem_Icc.mp hh.2).1
      (Finset.mem_Icc.mp hh.1).2 (Finset.mem_Icc.mp hh.2).2
  have hmain :
      sqrtWeightedOmegaMoment N ≤
        ∑ mg ∈ lattice N,
          (invSqrtNat mg.1 * invSqrtNat mg.2) *
            causalKernel T mg.1 mg.2 := by
    calc
      _ ≤ ∑ pq ∈ lattice N,
        invSqrtRectangle N pq.1 pq.2 * omega pq.1 pq.2 := by
        unfold sqrtWeightedOmegaMoment
        apply Finset.sum_le_sum
        intro pq hpq
        exact mul_le_mul_of_nonneg_right (hweight pq hpq) (ho pq hpq)
      _ = ∑ mg ∈ lattice N,
        (invSqrtNat mg.1 * invSqrtNat mg.2) *
          tailOfOmega N omega mg.1 mg.2 :=
        rectangle_fubini N omega
      _ = _ := by
        apply Finset.sum_congr rfl
        intro mg hmg
        have h := kernelTailIdentity_of_original_birth N (by omega) mg hmg
        change causalKernel T mg.1 mg.2 =
          tailOfOmega N omega mg.1 mg.2 at h
        rw [← h]
  have hbound :
      (∑ mg ∈ lattice N,
        (invSqrtNat mg.1 * invSqrtNat mg.2) *
          causalKernel T mg.1 mg.2) ≤
        (∑ m ∈ Finset.Icc 1 N, (m : ℝ)⁻¹) *
          (∑ g ∈ Finset.Icc 1 N, (g : ℝ)⁻¹) * (4 * T) := by
    unfold lattice
    rw [Finset.sum_product]
    calc
      (∑ m ∈ Finset.Icc 1 N, ∑ g ∈ Finset.Icc 1 N,
          invSqrtNat m * invSqrtNat g * causalKernel T m g) ≤
        ∑ m ∈ Finset.Icc 1 N, ∑ g ∈ Finset.Icc 1 N,
          4 * T * ((m : ℝ)⁻¹ * (g : ℝ)⁻¹) := by
        apply Finset.sum_le_sum
        intro m hm
        apply Finset.sum_le_sum
        intro g hg
        exact weighted_kernel_le_harmonic T hT m g
          (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hg).1
      _ = _ := by
        simp_rw [Finset.mul_sum, Finset.sum_mul]
        ring
  calc
    _ ≤ (∑ mg ∈ lattice N,
        (invSqrtNat mg.1 * invSqrtNat mg.2) *
          causalKernel T mg.1 mg.2) := hmain
    _ ≤ ((∑ m ∈ Finset.Icc 1 N, (m : ℝ)⁻¹) *
          (∑ g ∈ Finset.Icc 1 N, (g : ℝ)⁻¹)) * (4 * T) := by
      simpa only [mul_assoc] using hbound
    _ ≤ (1 + T) ^ 2 * (4 * T) := by
      have hb := inv_harmonic_sum_le N
      have hsum : 0 ≤ (∑ n ∈ Finset.Icc 1 N, (n : ℝ)⁻¹) :=
        Finset.sum_nonneg (fun n _ => inv_nonneg.mpr (Nat.cast_nonneg n))
      have hh : (∑ n ∈ Finset.Icc 1 N, (n : ℝ)⁻¹) ^ 2 ≤ (1 + T) ^ 2 := by
        have hnonneg : 0 ≤ 1 + T := by linarith
        have hle : (∑ n ∈ Finset.Icc 1 N, (n : ℝ)⁻¹) ≤ 1 + T := by
          simpa only [T] using hb
        nlinarith [mul_nonneg (sub_nonneg.mpr hle)
          (add_nonneg hsum hnonneg)]
      nlinarith [mul_nonneg (sub_nonneg.mpr hh) hT]
    _ = _ := by ring

end GRWTSK.NumberTheory.LiouvilleDoubleAbelPolynomialMoment
