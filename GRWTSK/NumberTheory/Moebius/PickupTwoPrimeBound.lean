/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib sources retain their upstream licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupPrimeBlockExtraction

/-!
# Two-prime cancellation, the exact period-36 budget, and a third-prime obstruction

All arithmetic statements concern the original causal pickup. The two-prime
positivity is proved from the five scalar hinge pieces, not from a Gram matrix.
The complete periodic table is a kernel-reducible integer calculation, not a
native_decide/oracle proof. The exponent of the resulting energy bound is ONE.
SOURCE_PROOF_CANDIDATE / compilation, kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupTwoPrimeBound

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.Analysis.FiniteSums.PrimeBlockKernel
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockExtraction
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-- The causal support is equivalently an actual positive-part formula. -/
theorem response_hinge {n : ℕ} (hn : 1 ≤ n) (u : ℝ) :
    pickupResponse n u = 2 * hinge ((Real.sqrt n)⁻¹) (Real.exp (-u/2)) := by
  have he := pickup_exp_negative_log_half hn
  unfold pickupResponse hinge
  by_cases h : Real.log (n:ℝ) ≤ u
  · have hs : 0 ≤ (Real.sqrt n)⁻¹-Real.exp (-u/2) := by
      rw [← he]
      exact sub_nonneg.mpr (Real.exp_le_exp.mpr (by linarith))
    simp only [if_pos h, max_eq_left hs]
  · have hs : (Real.sqrt n)⁻¹-Real.exp (-u/2) ≤ 0 := by
      rw [← he]
      exact sub_nonpos.mpr (Real.exp_le_exp.mpr (by linarith))
    simp only [if_neg h, max_eq_right hs, mul_zero]

/-- Multiplicative index dilation becomes a scalar hinge at the same cutoff. -/
theorem response_scaled {d m : ℕ} (hd : 1 ≤ d) (hm : 1 ≤ m) (u : ℝ) :
    pickupResponse (d*m) u = 2*(Real.sqrt m)⁻¹ *
      hinge ((Real.sqrt d)⁻¹) (Real.sqrt m * Real.exp (-u/2)) := by
  have hmpos : 0 < Real.sqrt (m:ℝ) := Real.sqrt_pos.mpr (by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hm))
  have hs : 0 ≤ (Real.sqrt (m:ℝ))⁻¹ := inv_nonneg.mpr hmpos.le
  rw [response_hinge (by nlinarith : 1 ≤ d*m)]
  simp only [Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg d), mul_inv_rev, hinge]
  have he : (Real.sqrt (m:ℝ))⁻¹ *
      ((Real.sqrt (d:ℝ))⁻¹ - Real.sqrt m * Real.exp (-u/2)) =
      (Real.sqrt m)⁻¹ * (Real.sqrt d)⁻¹ - Real.exp (-u/2) := by
    field_simp [hmpos.ne']; ring
  rw [← he]
  have hmax : max ((Real.sqrt (m:ℝ))⁻¹ *
        ((Real.sqrt (d:ℝ))⁻¹-Real.sqrt m*Real.exp (-u/2))) 0 =
      (Real.sqrt (m:ℝ))⁻¹ * max ((Real.sqrt (d:ℝ))⁻¹-Real.sqrt m*Real.exp (-u/2)) 0 := by
    by_cases hz : 0 ≤ (Real.sqrt (d:ℝ))⁻¹-Real.sqrt m*Real.exp (-u/2)
    · rw [max_eq_left hz, max_eq_left (mul_nonneg hs hz)]
    · have hz' := le_of_not_ge hz
      rw [max_eq_right hz', max_eq_right (mul_nonpos_of_nonneg_of_nonpos hs hz'), mul_zero]
  rw [hmax]
  ring

/-- Explicit original two-prime block. -/
theorem block_two (p q m : ℕ) (u : ℝ) :
    block [p,q] (fun n => pickupResponse n u) m =
      pickupResponse m u - pickupResponse (p*m) u - pickupResponse (q*m) u +
        pickupResponse ((p*q)*m) u := by
  simp only [block_cons, block_nil]
  rw [show q*(p*m) = (p*q)*m by ring]
  ring

/-- This is the actual source kernel, not an independently selected positive form. -/
theorem block_two_scaled {p q m : ℕ} (hp : 1 ≤ p) (hq : 1 ≤ q) (hm : 1 ≤ m)
    (u : ℝ) :
    block [p,q] (fun n => pickupResponse n u) m =
      2*(Real.sqrt m)⁻¹ * twoHinge ((Real.sqrt p)⁻¹) ((Real.sqrt q)⁻¹)
        (Real.sqrt m * Real.exp (-u/2)) := by
  rw [block_two]
  have h0 := response_scaled (d := 1) (m := m) (by omega) hm u
  simp only [one_mul, Nat.cast_one, Real.sqrt_one, inv_one] at h0
  rw [h0, response_scaled hp hm, response_scaled hq hm,
    response_scaled (show 1 ≤ p*q by nlinarith) hm]
  simp only [Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg p), mul_inv_rev, twoHinge]
  rw [mul_comm (Real.sqrt (q:ℝ))⁻¹ (Real.sqrt (p:ℝ))⁻¹]
  ring

theorem two_prime_block_nonnegative {p q m : ℕ}
    (hp : p.Prime) (hq : q.Prime) (hpq : p ≤ q) (hm : 1 ≤ m) (u : ℝ) :
    0 ≤ block [p,q] (fun n => pickupResponse n u) m := by
  rw [block_two_scaled hp.one_le hq.one_le hm]
  have hpS : 0 < Real.sqrt (p:ℝ) := Real.sqrt_pos.mpr (by exact_mod_cast hp.pos)
  have horder : (Real.sqrt (q:ℝ))⁻¹ ≤ (Real.sqrt (p:ℝ))⁻¹ :=
    inv_anti₀ hpS (Real.sqrt_le_sqrt (by exact_mod_cast hpq))
  have hunit : (Real.sqrt (p:ℝ))⁻¹ ≤ 1 := by
    have hs : (1:ℝ) ≤ Real.sqrt (p:ℝ) := by
      simpa using Real.sqrt_le_sqrt (show (1:ℝ) ≤ p by exact_mod_cast hp.one_le)
    simpa using inv_anti₀ (by norm_num : (0:ℝ)<1) hs
  exact mul_nonneg (by positivity)
    (twoHinge_nonnegative _ _ _ (by positivity) horder hunit)

/-- Every causal response decreases with its positive integer label. -/
theorem response_antitone {m n : ℕ} (hm : 1 ≤ m) (hmn : m ≤ n) (u : ℝ) :
    pickupResponse n u ≤ pickupResponse m u := by
  rw [response_hinge (hm.trans hmn), response_hinge hm]
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  apply max_le_max _ le_rfl
  apply sub_le_sub_right
  exact inv_anti₀ (Real.sqrt_pos.mpr (by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hm)))
    (Real.sqrt_le_sqrt (by exact_mod_cast hmn))

/-- Exact integer coefficient after expanding the four coprime channels. -/
def gamma (n : ℕ) : ℤ :=
  if n % 4 = 0 ∨ n % 9 = 0 then 0
  else if n % 6 = 0 then 1
  else if n % 2 = 0 ∨ n % 3 = 0 then -1 else 1

/-- Coprimality masks, quotient floors and signs are all checked arithmetically. -/
set_option maxHeartbeats 1000000 in
theorem gamma_masks (n : ℕ) :
    gamma n =
      (if Rough [2,3] n then (1:ℤ) else 0) -
      (if 2 ∣ n ∧ Rough [2,3] (n/2) then 1 else 0) -
      (if 3 ∣ n ∧ Rough [2,3] (n/3) then 1 else 0) +
      (if 6 ∣ n ∧ Rough [2,3] (n/6) then 1 else 0) := by
  have hr (k : ℕ) : Rough [2,3] k ↔ ¬2 ∣ k ∧ ¬3 ∣ k := by simp [Rough]
  simp only [gamma, hr, Nat.dvd_iff_mod_eq_zero]
  split_ifs <;> omega

/-- The nonnegative block majorant has exactly this periodic coefficient sequence. -/
theorem block23_majorant_eq (u : ℝ) :
    (∑ m ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
      if Rough [2,3] m then block [2,3] (fun n => pickupResponse n u) m else 0) =
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, (gamma n:ℝ)*pickupResponse n u := by
  classical
  let N := ⌊Real.exp u⌋₊
  let f := fun n => pickupResponse n u
  have hsplit : (∑ m ∈ Finset.Icc 1 N, if Rough [2,3] m then block [2,3] f m else 0) =
      (∑ m ∈ Finset.Icc 1 N, if Rough [2,3] m then f m else 0) -
      (∑ m ∈ Finset.Icc 1 N, if Rough [2,3] m then f (2*m) else 0) -
      (∑ m ∈ Finset.Icc 1 N, if Rough [2,3] m then f (3*m) else 0) +
      ∑ m ∈ Finset.Icc 1 N, if Rough [2,3] m then f (6*m) else 0 := by
    rw [← Finset.sum_sub_distrib, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro m _
    by_cases h : Rough [2,3] m
    · simp only [if_pos h, f, block_two]; norm_num
    · simp [h]
  change _ = ∑ n ∈ Finset.Icc 1 N, (gamma n:ℝ)*f n
  rw [hsplit, dilation_reindex N 2 (by norm_num) f (response_support u),
    dilation_reindex N 3 (by norm_num) f (response_support u),
    dilation_reindex N 6 (by norm_num) f (response_support u)]
  rw [← Finset.sum_sub_distrib, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  rw [gamma_masks]
  push_cast
  split_ifs <;> ring

theorem gamma_period (n : ℕ) : gamma (n+36) = gamma n := by
  simp [gamma, Nat.add_mod]

def gammaPrefix : ℕ → ℤ
  | 0 => 0
  | n+1 => gammaPrefix n + gamma (n+1)

theorem gammaPrefix_sum (N : ℕ) :
    (gammaPrefix N:ℝ) = prefix (fun n => (gamma n:ℝ)) N := by
  induction N with
  | zero => simp [gammaPrefix, prefix]
  | succ N ih =>
      change ((gammaPrefix N + gamma (N+1):ℤ):ℝ) = _
      rw [Int.cast_add, ih]
      exact (sum_closed_step (fun n => (gamma n:ℝ)) N).symm

/-- Complete residue table; ordinary norm_num proof terms, no native oracle. -/
theorem gammaPrefix_36 : gammaPrefix 36 = 4 := by norm_num [gammaPrefix, gamma]

theorem gammaPrefix_period (n : ℕ) : gammaPrefix (n+36) = gammaPrefix n + 4 := by
  induction n with
  | zero => simpa [gammaPrefix] using gammaPrefix_36
  | succ n ih =>
      change gammaPrefix (n+36)+gamma (n+36+1) = (gammaPrefix n+gamma (n+1))+4
      rw [ih, show n+36+1 = (n+1)+36 by omega, gamma_period]
      ring

theorem gammaPrefix_blocks (q r : ℕ) :
    gammaPrefix (36*q+r) = 4*(q:ℤ)+gammaPrefix r := by
  induction q with
  | zero => simp
  | succ q ih =>
      rw [show 36*(q+1)+r = (36*q+r)+36 by omega, gammaPrefix_period, ih]
      push_cast
      ring

/-- The sharp finite prefix excess is 14/9; no asymptotic prime count is used. -/
theorem residue_excess (r : ℕ) (hr : r < 36) :
    9*gammaPrefix r - (r:ℤ) ≤ 14 := by
  interval_cases r <;> norm_num [gammaPrefix, gamma]

theorem gammaPrefix_bound (n : ℕ) : 9*gammaPrefix n - (n:ℤ) ≤ 14 := by
  have hn : n = 36*(n/36)+n%36 := by omega
  conv_lhs => rw [hn, gammaPrefix_blocks]
  have h := residue_excess (n%36) (Nat.mod_lt n (by norm_num))
  push_cast
  nlinarith

theorem gamma_prefix_upper (n : ℕ) :
    prefix (fun n => (gamma n:ℝ)) n ≤ (n:ℝ)/9 + 14/9 := by
  rw [← gammaPrefix_sum]
  have h : (9:ℝ)*(gammaPrefix n:ℝ)-(n:ℝ) ≤ 14 := by exact_mod_cast gammaPrefix_bound n
  linarith

/-- A harmonic square-root sum bound with its initial unit retained. -/
theorem sum_inv_sqrt_le {N : ℕ} (hN : 1 ≤ N) :
    (∑ n ∈ Finset.Icc 1 N, (Real.sqrt n)⁻¹) ≤ 2*Real.sqrt N-1 := by
  obtain ⟨k,rfl⟩ := Nat.exists_eq_succ_of_ne_zero (by omega : N ≠ 0)
  induction k with
  | zero => norm_num
  | succ k ih =>
      rw [sum_closed_step]
      have hx : 0 ≤ Real.sqrt ((k+1:ℕ):ℝ) := Real.sqrt_nonneg _
      have hy : 0 < Real.sqrt ((k+2:ℕ):ℝ) := Real.sqrt_pos.mpr (by positivity)
      have hx2 := Real.sq_sqrt (show (0:ℝ) ≤ (k+1:ℕ) by positivity)
      have hy2 := Real.sq_sqrt (show (0:ℝ) ≤ (k+2:ℕ) by positivity)
      have hb : (Real.sqrt ((k+2:ℕ):ℝ))⁻¹ ≤
          2*(Real.sqrt ((k+2:ℕ):ℝ)-Real.sqrt ((k+1:ℕ):ℝ)) := by
        rw [← one_div, div_le_iff₀ hy]
        push_cast at hx2 hy2
        nlinarith [sq_nonneg (Real.sqrt ((k+2:ℕ):ℝ)-Real.sqrt ((k+1:ℕ):ℝ))]
      have ht : (∑ n ∈ Finset.Icc 1 (k+1), (Real.sqrt n)⁻¹) +
          (Real.sqrt ((k+2:ℕ):ℝ))⁻¹ ≤ 2*Real.sqrt ((k+2:ℕ):ℝ)-1 := by
        linarith [ih, hb]
      simpa only [Nat.add_assoc] using ht

/-- Sum the original nonnegative causal weights; no coefficient count is lost. -/
theorem response_sum_le {u : ℝ} (hu : 0 ≤ u) :
    (∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, pickupResponse n u) ≤ 2*Real.exp (u/2)-2 := by
  let N := ⌊Real.exp u⌋₊
  have hN : 1 ≤ N := floor_exp_ge_one hu
  have hactive : ∀ n ∈ Finset.Icc 1 N, Real.log (n:ℝ) ≤ u := by
    intro n hn
    apply (Real.log_le_iff_le_exp (by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hn).1))).mpr
    exact (show (n:ℝ) ≤ N by exact_mod_cast (Finset.mem_Icc.mp hn).2).trans
      (Nat.floor_le (Real.exp_pos u).le)
  have he : Real.exp (-u/2) = (Real.exp (u/2))⁻¹ := by
    rw [show -u/2 = -(u/2) by ring, Real.exp_neg]
  have hs : (∑ n ∈ Finset.Icc 1 N, pickupResponse n u) =
      2*(∑ n ∈ Finset.Icc 1 N, (Real.sqrt n)⁻¹) - 2*(N:ℝ)/Real.exp (u/2) := by
    simp only [pickupResponse, hactive, if_true]
    rw [← Finset.mul_sum, Finset.sum_sub_distrib]
    simp only [Finset.sum_const, Nat.card_Icc, Nat.add_sub_cancel, nsmul_eq_mul]
    rw [he]
    ring
  rw [hs]
  have hsum := sum_inv_sqrt_le hN
  have hsq := Real.sq_sqrt (Nat.cast_nonneg N)
  have hpos := Real.exp_pos (u/2)
  have hlast : 4*Real.sqrt N-2-2*(N:ℝ)/Real.exp (u/2) ≤ 2*Real.exp (u/2)-2 := by
    apply (mul_le_mul_right hpos).mp
    have heq : (4*Real.sqrt N-2-2*(N:ℝ)/Real.exp (u/2))*Real.exp (u/2) =
        4*Real.sqrt N*Real.exp (u/2)-2*Real.exp (u/2)-2*(N:ℝ) := by
      field_simp [hpos.ne']
      ring
    rw [heq]
    nlinarith [sq_nonneg (Real.sqrt N-Real.exp (u/2))]
  linarith

/-- Two-prime arithmetic cancellation precedes every absolute value. -/
theorem wholePickup_abs_le_periodic {u : ℝ} (hu : 0 ≤ u) :
    |wholePickup u| ≤ ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, (gamma n:ℝ)*pickupResponse n u := by
  rw [wholePickup_eq_blocks [2,3] (by decide) (by intro p hp; simp at hp; rcases hp with rfl|rfl <;> norm_num) hu]
  rw [← block23_majorant_eq]
  calc
    _ ≤ ∑ m ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
        |if Rough [2,3] m then moebiusReal m*block [2,3] (fun n => pickupResponse n u) m else 0| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro m hm
      by_cases h : Rough [2,3] m
      · simp only [if_pos h, abs_mul]
        have hk := two_prime_block_nonnegative (p:=2) (q:=3)
          (by norm_num) (by norm_num) (by norm_num) (Finset.mem_Icc.mp hm).1 u
        rw [abs_of_nonneg hk]
        have hmu : |moebiusReal m| ≤ 1 := by
          unfold moebiusReal
          exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n:=m))
        simpa using mul_le_mul_of_nonneg_right hmu hk
      · simp [h]

/-- The explicit rate-one waveform bound, with all constants and the initial value. -/
theorem wholePickup_two_prime_bound {u : ℝ} (hu : 0 ≤ u) :
    |wholePickup u| ≤ (2/9)*Real.exp (u/2)+26/9-(28/9)*Real.exp (-u/2) := by
  have hp := affine_prefix_bound (fun n => (gamma n:ℝ)) (fun n => pickupResponse n u)
    ⌊Real.exp u⌋₊ (1/9) (14/9)
    (fun n _ => by simpa only [div_eq_mul_inv, mul_comm] using gamma_prefix_upper n)
    (fun n hn => sub_nonneg.mpr (response_antitone (Finset.mem_Icc.mp hn).1 (Nat.le_succ n) u))
    (response_support u _ (Nat.lt_succ_self _))
  have hr : pickupResponse 1 u = 2*(1-Real.exp (-u/2)) := by
    simp [pickupResponse, hu]
  have hs := response_sum_le hu
  have h := (wholePickup_abs_le_periodic hu).trans hp
  rw [hr] at h
  linarith

/-- Explicit energy allowance: its exponential rate remains one. -/
def energyBound (T : ℝ) : ℝ :=
  (4/81)*(Real.exp T-1)+(208/81)*(Real.exp (T/2)-1)+(676/81)*T

theorem energyBound_derivative (u : ℝ) :
    HasDerivAt energyBound (((2/9)*Real.exp (u/2)+26/9)^2) u := by
  have hhalf := ((hasDerivAt_id u).div_const 2).exp
  have h := (((Real.hasDerivAt_exp u).sub_const 1).const_mul (4/81)).add
    (((hhalf.sub_const 1).const_mul (208/81))).add ((hasDerivAt_id u).const_mul (676/81))
  have hexp : Real.exp (u/2)^2 = Real.exp u := by
    rw [pow_two, ← Real.exp_add]; congr 1; ring
  convert h using 1 <;> simp only [energyBound] <;> nlinarith [hexp]

theorem pickupEnergy_two_prime_bound {T : ℝ} (hT : 0 ≤ T) : pickupEnergy T ≤ energyBound T := by
  have hpoint (u : ℝ) (hu : u ∈ Icc 0 T) :
      wholePickup u^2 ≤ ((2/9)*Real.exp (u/2)+26/9)^2 := by
    have h := wholePickup_two_prime_bound hu.1
    have hdrop : |wholePickup u| ≤ (2/9)*Real.exp (u/2)+26/9 := by
      linarith [Real.exp_pos (-u/2)]
    have hs := (sq_le_sq₀ (abs_nonneg (wholePickup u)) (by positivity)).mpr hdrop
    simpa only [sq_abs] using hs
  have hc : Continuous (fun u : ℝ => ((2/9)*Real.exp (u/2)+26/9)^2) := by fun_prop
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (a:=0) (b:=T) (fun u _ => energyBound_derivative u) (hc.intervalIntegrable 0 T)
  have hz : energyBound 0 = 0 := by norm_num [energyBound]
  rw [hz, sub_zero] at hi
  exact (intervalIntegral.integral_mono_on hT
    ((wholePickup_continuous.pow 2).intervalIntegrable 0 T) (hc.intervalIntegrable 0 T) hpoint).trans_eq hi

theorem endpointSum_two_prime_bound {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T ≤ energyBound T + 1/4 := by
  have hE := pickupEnergy_two_prime_bound hT
  have hX := pickupEnergy_eq_diagonal_add_cross hT
  have hD := (pickupDiagonal_quadratic_bound hT).1
  have hq := (abs_le.mp (endpointSum_error hT)).2
  linarith

/-- A helper for rational certificates of inverse-square-root enclosures. -/
theorem inv_sqrt_lower {n a : ℝ} (hn : 0 < n) (ha : 0 ≤ a) (h : a^2*n < 1) :
    a < (Real.sqrt n)⁻¹ := by
  have hs := Real.sqrt_pos.mpr hn
  rw [← one_div, lt_div_iff₀ hs]
  by_contra hb
  have hge : 1 ≤ a*Real.sqrt n := le_of_not_gt hb
  have hsq := (sq_le_sq₀ (by norm_num : (0:ℝ)≤1) (mul_nonneg ha hs.le)).mpr hge
  rw [mul_pow, Real.sq_sqrt hn.le] at hsq
  norm_num at hsq
  linarith

theorem inv_sqrt_upper {n a : ℝ} (hn : 0 < n) (ha : 0 ≤ a) (h : 1 < a^2*n) :
    (Real.sqrt n)⁻¹ < a := by
  have hs := Real.sqrt_pos.mpr hn
  rw [← one_div, div_lt_iff₀ hs]
  by_contra hb
  have hle : a*Real.sqrt n ≤ 1 := le_of_not_gt hb
  have hsq := (sq_le_sq₀ (mul_nonneg ha hs.le) (by norm_num : (0:ℝ)≤1)).mpr hle
  rw [mul_pow, Real.sq_sqrt hn.le] at hsq
  norm_num at hsq
  linarith

theorem response_log_nat {n N : ℕ} (hn : 1 ≤ n) (hN : 1 ≤ N) :
    pickupResponse n (Real.log (N:ℝ)) =
      if n ≤ N then 2*((Real.sqrt n)⁻¹-(Real.sqrt N)⁻¹) else 0 := by
  have hnpos : (0:ℝ)<n := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  have hNpos : (0:ℝ)<N := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
  have hlog : Real.log (n:ℝ) ≤ Real.log (N:ℝ) ↔ n ≤ N := by
    rw [Real.log_le_log_iff hnpos hNpos]
    norm_cast
  simp only [pickupResponse, hlog, pickup_exp_negative_log_half hN]

/-- The concrete third-prime failure is rationally certified, not a decimal test. -/
theorem third_prime_counterexample :
    block [5,2,3] (fun n => pickupResponse n (Real.log 10)) 1 < -(899/62500:ℝ) := by
  have h2 := inv_sqrt_lower (n:=2) (a:=707106/1000000) (by norm_num) (by norm_num) (by norm_num)
  have h3 := inv_sqrt_lower (n:=3) (a:=577350/1000000) (by norm_num) (by norm_num) (by norm_num)
  have h5 := inv_sqrt_lower (n:=5) (a:=447213/1000000) (by norm_num) (by norm_num) (by norm_num)
  have h6 := inv_sqrt_upper (n:=6) (a:=408249/1000000) (by norm_num) (by norm_num) (by norm_num)
  have h10 := inv_sqrt_upper (n:=10) (a:=316228/1000000) (by norm_num) (by norm_num) (by norm_num)
  simp only [block_cons, block_nil]
  norm_num only [Nat.mul_one, Nat.reduceMul]
  rw [response_log_nat (n:=1) (N:=10) (by omega) (by omega),
    response_log_nat (n:=2) (N:=10) (by omega) (by omega),
    response_log_nat (n:=3) (N:=10) (by omega) (by omega),
    response_log_nat (n:=5) (N:=10) (by omega) (by omega),
    response_log_nat (n:=6) (N:=10) (by omega) (by omega),
    response_log_nat (n:=10) (N:=10) (by omega) (by omega),
    response_log_nat (n:=15) (N:=10) (by omega) (by omega),
    response_log_nat (n:=30) (N:=10) (by omega) (by omega)]
  norm_num
  linarith

end GRWTSK.NumberTheory.Moebius.PickupTwoPrimeBound
