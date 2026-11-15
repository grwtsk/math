/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.MeasureAndIntegration.FiniteResponseSum
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Analysis.Convex.SpecificFunctions.Basic
import Mathlib.Tactic

/-!
# Forward Gaussian heat increases the signed Möbius pickup energy at strong heat

For the genuine Möbius coefficients and the original causal pickup, every
heat increment `r > 0` from `s ≥ 8` strictly increases the physical-time
energy at every horizon `T > log 2`. The contribution from `μ(2) = -1`
dominates the signed change from all later indices, uniformly in the horizon.

Write `A = (log 2)^2`, `B = (log n)^2`, and `x = n/2` for `n ≥ 3`.
Since `log 2 ≥ 1/2` and `log x ≤ x-1`, we have `log n / log 2 ≤ x^2`
and `s(B-A) ≥ 8 log x`. Convexity of the exponential gives
`1-exp(-r B) ≤ (B/A)(1-exp(-r A))`. Hence the absolute coefficient
change at `n` is at most `x^(-4)` times the change at `2`. Causality
gives `0 ≤ pickupResponse n u ≤ pickupResponse 2 u` for `n ≥ 2`.
The tail weights sum to at most `8/9` by the finite telescope
`(2/n)^4 ≤ (16/9)(1/(n-1)-1/n)`. The same tail bound before taking
the heat difference keeps the wave nonnegative, since the `n = 1`
term stays fixed and `exp(-s A) ≤ 1/3`.

This uses the full closed source inventory and all its original signs.
The strict increase obstructs a nonnegative signed margin in
`GaussianHeatSignedEvolution.heatEnergy_nonincreasing_iff_signed_margin`.
The all-rate cancellation of the residual from zero heat remains open.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.GaussianHeatNoncontraction

open GRWTSK.RiemannHypothesis.CCC
open MeasureTheory

private theorem half_le_log_two : (1 / 2 : ℝ) ≤ Real.log 2 :=
  (by norm_num : (1 / 2 : ℝ) ≤ 0.6931471803).trans Real.log_two_gt_d9.le

private def damping (s : ℝ) (n : ℕ) : ℝ :=
  Real.exp (-s * Real.log (n : ℝ) ^ 2)

private def dampingDrop (s r : ℝ) (n : ℕ) : ℝ :=
  damping s n - damping (s + r) n

/-- The original signed heat wave written directly on its closed integer inventory. -/
def closedSourceWave (s T u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    moebiusReal n * Real.exp (-s * Real.log (n : ℝ) ^ 2) * pickupResponse n u

/-- The square is taken after summing the complete signed wave. -/
def closedSourceEnergy (s T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, closedSourceWave s T u ^ 2

theorem closedSourceWave_zero {T u : ℝ} (hu : 0 ≤ u) (huT : u ≤ T) :
    closedSourceWave 0 T u = wholePickup u := by
  rw [wholePickup_fixed_inventory hu huT]
  simp [closedSourceWave]

private theorem abs_moebius_le_one (n : ℕ) : |moebiusReal n| ≤ 1 := by
  unfold moebiusReal
  exact_mod_cast ArithmeticFunction.abs_moebius_le_one (n := n)

private theorem moebius_two : moebiusReal 2 = -1 := by
  unfold moebiusReal
  rw [ArithmeticFunction.moebius_apply_prime Nat.prime_two]
  norm_num

private theorem response_eq_max {n : ℕ} (hn : 1 ≤ n) (u : ℝ) :
    pickupResponse n u =
      2 * max (Real.exp (-(Real.log (n : ℝ)) / 2) - Real.exp (-u / 2)) 0 := by
  unfold pickupResponse
  rw [← pickup_exp_negative_log_half hn]
  by_cases h : Real.log (n : ℝ) ≤ u
  · rw [ite_eq_left h, max_eq_left]
    exact sub_nonneg.mpr (Real.exp_le_exp.mpr (by linarith))
  · rw [ite_eq_right h, max_eq_right]
    · ring
    · exact sub_nonpos.mpr (Real.exp_le_exp.mpr (by linarith [lt_of_not_ge h]))

private theorem response_nonneg {n : ℕ} (hn : 1 ≤ n) (u : ℝ) :
    0 ≤ pickupResponse n u := by
  rw [response_eq_max hn]
  positivity

private theorem response_le {m n : ℕ} (hm : 1 ≤ m) (hmn : m ≤ n) (u : ℝ) :
    pickupResponse n u ≤ pickupResponse m u := by
  have hmpos : (0 : ℝ) < m := by exact_mod_cast (show 0 < m by omega)
  have hlog := Real.log_le_log hmpos (by exact_mod_cast hmn : (m : ℝ) ≤ n)
  rw [response_eq_max (hm.trans hmn), response_eq_max hm]
  exact mul_le_mul_of_nonneg_left
    (max_le_max_right _ (sub_le_sub_right (Real.exp_le_exp.mpr (by linarith)) _))
    (by norm_num)

private theorem response_two_pos {u : ℝ} (hu : Real.log 2 < u) :
    0 < pickupResponse 2 u := by
  rw [response_eq_max (by decide : 1 ≤ (2 : ℕ))]
  push_cast
  have h : 0 < Real.exp (-Real.log 2 / 2) - Real.exp (-u / 2) :=
    sub_pos.mpr (Real.exp_lt_exp.mpr (by linarith))
  rw [max_eq_left h.le]
  positivity

private theorem damping_tail {s : ℝ} (hs : 8 ≤ s) {n : ℕ} (hn : 3 ≤ n) :
    damping s n ≤ damping s 2 * ((2 : ℝ) / n) ^ 8 := by
  have hnR : (3 : ℝ) ≤ n := by exact_mod_cast hn
  have hnpos : (0 : ℝ) < n := by linarith
  have hlog := Real.log_le_log (by norm_num : (0 : ℝ) < 2)
    (show (2 : ℝ) ≤ n by linarith)
  have hdiff : 0 ≤ Real.log (n : ℝ) - Real.log 2 := sub_nonneg.mpr hlog
  have hsum : 1 ≤ Real.log (n : ℝ) + Real.log 2 := by
    linarith [half_le_log_two]
  have hs_sum : 8 ≤ s * (Real.log (n : ℝ) + Real.log 2) := by
    simpa using mul_le_mul hs hsum (by norm_num : (0 : ℝ) ≤ 1) (by linarith : 0 ≤ s)
  have hexp :
      -(s * Real.log (n : ℝ) ^ 2) ≤
        -s * Real.log 2 ^ 2 + 8 * Real.log ((2 : ℝ) / n) := by
    rw [Real.log_div (by norm_num : (2 : ℝ) ≠ 0) hnpos.ne']
    nlinarith [mul_le_mul_of_nonneg_right hs_sum hdiff]
  have hpos : 0 < (2 : ℝ) / n := by positivity
  have hpow : Real.exp (8 * Real.log ((2 : ℝ) / n)) = ((2 : ℝ) / n) ^ 8 := by
    simpa only [Nat.cast_ofNat, Real.exp_log hpos] using
      Real.exp_nat_mul (Real.log ((2 : ℝ) / n)) 8
  simpa only [damping, Nat.cast_ofNat, neg_mul, Real.exp_add, hpow] using
    Real.exp_le_exp.mpr hexp

private theorem dampingDrop_eq (s r : ℝ) (n : ℕ) :
    dampingDrop s r n = damping s n * (1 - damping r n) := by
  unfold dampingDrop damping
  rw [show -(s + r) * Real.log (n : ℝ) ^ 2 =
    -s * Real.log (n : ℝ) ^ 2 + -r * Real.log (n : ℝ) ^ 2 by ring, Real.exp_add]
  ring

private theorem dampingDrop_nonneg {s r : ℝ} (hr : 0 < r) (n : ℕ) :
    0 ≤ dampingDrop s r n := by
  rw [dampingDrop_eq]
  have h : damping r n ≤ 1 := by
    unfold damping
    rw [← Real.exp_zero]
    exact Real.exp_le_exp.mpr (mul_nonpos_of_nonpos_of_nonneg (by linarith) (sq_nonneg _))
  exact mul_nonneg (Real.exp_pos _).le (sub_nonneg.mpr h)

private theorem dampingDrop_two_pos (s : ℝ) {r : ℝ} (hr : 0 < r) :
    0 < dampingDrop s r 2 := by
  rw [dampingDrop_eq]
  have hlog : 0 < Real.log 2 := by linarith [half_le_log_two]
  have h : damping r 2 < 1 := by
    unfold damping
    rw [← Real.exp_zero]
    exact Real.exp_lt_exp.mpr (mul_neg_of_neg_of_pos (neg_lt_zero.mpr hr)
      (by exact_mod_cast pow_pos hlog 2))
  exact mul_pos (Real.exp_pos _) (sub_pos.mpr h)

private theorem one_sub_exp_neg_le_scale {a b : ℝ} (ha : 0 < a) (hab : a ≤ b) :
    1 - Real.exp (-b) ≤ (b / a) * (1 - Real.exp (-a)) := by
  have hb : 0 < b := ha.trans_le hab
  have hconv :
      Real.exp ((a / b) • (-b) + (1 - a / b) • (0 : ℝ)) ≤
        (a / b) • Real.exp (-b) + (1 - a / b) • Real.exp 0 :=
    convexOn_exp.2 (Set.mem_univ (-b)) (Set.mem_univ (0 : ℝ)) (by positivity)
      (sub_nonneg.mpr ((div_le_one hb).2 hab)) (by ring)
  have harg : a / b * -b + (1 - a / b) * 0 = -a := by
    field_simp
    ring
  simp only [smul_eq_mul, harg, Real.exp_zero, mul_one] at hconv
  have hf : a * (1 - Real.exp (-b)) ≤ b * (1 - Real.exp (-a)) := by
    calc
      a * (1 - Real.exp (-b)) =
        b * (1 - (a / b * Real.exp (-b) + (1 - a / b))) := by
          field_simp
          ring
      _ ≤ b * (1 - Real.exp (-a)) :=
        mul_le_mul_of_nonneg_left (sub_le_sub_left hconv 1) hb.le
  rw [div_mul_eq_mul_div, le_div_iff₀ ha]
  simpa only [mul_comm a] using hf

private theorem dampingDrop_tail {s r : ℝ} (hs : 8 ≤ s) (hr : 0 < r)
    {n : ℕ} (hn : 3 ≤ n) :
    dampingDrop s r n ≤ dampingDrop s r 2 * ((2 : ℝ) / n) ^ 4 := by
  have hnR : (3 : ℝ) ≤ n := by exact_mod_cast hn
  let x : ℝ := (n : ℝ) / 2
  have hx : 1 ≤ x := by dsimp [x]; linarith
  have hxpos : 0 < x := by linarith
  have hlog2 : 0 < Real.log 2 := by linarith [half_le_log_two]
  have hnpos : (0 : ℝ) < n := by linarith
  have hlogn := Real.log_le_log (by norm_num : (0 : ℝ) < 2)
    (show (2 : ℝ) ≤ n by linarith)
  have hlogx : Real.log (n : ℝ) = Real.log 2 + Real.log x := by
    dsimp [x]
    rw [Real.log_div hnpos.ne' (by norm_num : (2 : ℝ) ≠ 0)]
    ring
  have hlin : x - 1 ≤ (x ^ 2 - 1) * Real.log 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hx) (sub_nonneg.mpr hx),
      mul_nonneg (show 0 ≤ x ^ 2 - 1 by nlinarith) (sub_nonneg.mpr half_le_log_two)]
  have hl : Real.log (n : ℝ) ≤ x ^ 2 * Real.log 2 := by
    linarith [Real.log_le_sub_one_of_pos hxpos]
  have ha : 0 < r * Real.log 2 ^ 2 := by positivity
  have hab : r * Real.log 2 ^ 2 ≤ r * Real.log (n : ℝ) ^ 2 :=
    mul_le_mul_of_nonneg_left (pow_le_pow_left₀ hlog2.le hlogn _) hr.le
  have hre : (r * Real.log (n : ℝ) ^ 2) / (r * Real.log 2 ^ 2) ≤ x ^ 4 := by
    apply (div_le_iff₀ ha).2
    have hp := pow_le_pow_left₀ (hlog2.le.trans hlogn) hl 2
    have h := mul_le_mul_of_nonneg_left hp hr.le
    convert h using 1
    ring
  have hsub : 1 - damping r n ≤ x ^ 4 * (1 - damping r 2) := by
    have h := one_sub_exp_neg_le_scale ha hab
    have hnonneg : 0 ≤ 1 - Real.exp (-(r * Real.log 2 ^ 2)) := by
      rw [← Real.exp_zero]
      exact sub_nonneg.mpr (Real.exp_le_exp.mpr (by linarith))
    simpa only [damping, Nat.cast_ofNat, neg_mul] using
      h.trans (mul_le_mul_of_nonneg_right hre hnonneg)
  have hbase : (2 : ℝ) / n = x⁻¹ := by dsimp [x]; field_simp
  have hy : (0 : ℝ) ≤ (2 : ℝ) / n := by positivity
  have hscale : ((2 : ℝ) / n) ^ 8 * x ^ 4 = ((2 : ℝ) / n) ^ 4 := by
    rw [hbase]
    field_simp
  rw [dampingDrop_eq, dampingDrop_eq]
  calc
    damping s n * (1 - damping r n) ≤
        (damping s 2 * ((2 : ℝ) / n) ^ 8) * (x ^ 4 * (1 - damping r 2)) :=
      mul_le_mul (damping_tail hs hn) hsub
        (sub_nonneg.mpr <| by
          unfold damping
          rw [← Real.exp_zero]
          exact Real.exp_le_exp.mpr (mul_nonpos_of_nonpos_of_nonneg (by linarith) (sq_nonneg _)))
        (mul_nonneg (Real.exp_pos _).le (pow_nonneg hy _))
    _ = damping s 2 * (1 - damping r 2) * ((2 : ℝ) / n) ^ 4 := by
      rw [← hscale]
      ring

private theorem damping_tail_le_four {s : ℝ} (hs : 8 ≤ s) {n : ℕ} (hn : 3 ≤ n) :
    damping s n ≤ damping s 2 * ((2 : ℝ) / n) ^ 4 := by
  have hnR : (3 : ℝ) ≤ n := by exact_mod_cast hn
  have hnpos : (0 : ℝ) < n := by linarith
  have hy : (2 : ℝ) / n ≤ 1 := (div_le_one hnpos).2 (by linarith)
  exact (damping_tail hs hn).trans
    (mul_le_mul_of_nonneg_left (pow_le_pow_of_le_one (by positivity) hy (by decide))
      (Real.exp_pos _).le)

private theorem damping_two_le_third {s : ℝ} (hs : 8 ≤ s) :
    damping s 2 ≤ 1 / 3 := by
  have hlog : 0 < Real.log 2 := by linarith [half_le_log_two]
  have hsq : (1 / 4 : ℝ) ≤ Real.log 2 ^ 2 := by nlinarith [half_le_log_two]
  have h : 2 ≤ s * Real.log 2 ^ 2 := by
    nlinarith [mul_le_mul hs hsq (by norm_num : (0 : ℝ) ≤ 1 / 4) (by linarith : 0 ≤ s)]
  unfold damping
  push_cast
  calc
    _ ≤ Real.exp (-2) := Real.exp_le_exp.mpr (by linarith)
    _ ≤ 1 / 3 := by
      rw [Real.exp_neg, inv_eq_one_div]
      exact one_div_le_one_div_of_le (by norm_num) (by linarith [Real.add_one_le_exp 2])

private theorem tail_sum (N : ℕ) :
    (∑ n ∈ Finset.Icc 3 N, ((2 : ℝ) / n) ^ 4) ≤ 8 / 9 := by
  have ht : ∀ {n : ℕ}, 3 ≤ n →
      ((2 : ℝ) / n) ^ 4 ≤ (16 / 9) * (1 / ((n : ℝ) - 1) - 1 / (n : ℝ)) := by
    intro n hn
    have hnR : (3 : ℝ) ≤ n := by exact_mod_cast hn
    have hnpos : (0 : ℝ) < n := by linarith
    have hprev : 0 < (n : ℝ) - 1 := by linarith
    calc
      ((2 : ℝ) / n) ^ 4 ≤ (16 / 9) / (n : ℝ) ^ 2 := by
        rw [div_pow]
        field_simp
        nlinarith
      _ ≤ (16 / 9) / ((n : ℝ) * ((n : ℝ) - 1)) := by
        apply div_le_div_of_nonneg_left (by norm_num) (mul_pos hnpos hprev)
        nlinarith
      _ = _ := by field_simp; ring
  have htel : ∀ N : ℕ, 2 ≤ N →
      (∑ n ∈ Finset.Icc 3 N, (1 / ((n : ℝ) - 1) - 1 / (n : ℝ))) =
        1 / 2 - 1 / (N : ℝ) := by
    intro N
    induction N with
    | zero => omega
    | succ N ih =>
      intro hN
      by_cases h : 2 ≤ N
      · rw [Finset.sum_Icc_succ_top (by omega : 3 ≤ N + 1), ih h]
        push_cast
        ring_nf
      · have h' : N = 1 := by omega
        subst N
        norm_num
  by_cases hN : 2 ≤ N
  · calc
      _ ≤ ∑ n ∈ Finset.Icc 3 N, (16 / 9) * (1 / ((n : ℝ) - 1) - 1 / (n : ℝ)) :=
        Finset.sum_le_sum fun _ hn => ht (Finset.mem_Icc.mp hn).1
      _ ≤ 8 / 9 := by
        rw [← Finset.mul_sum, htel N hN]
        nlinarith [show 0 ≤ 1 / (N : ℝ) by positivity]
  · have h : Finset.Icc 3 N = ∅ := Finset.Icc_eq_empty_of_lt (by omega)
    norm_num [h]

private theorem split_inventory {N : ℕ} (hN : 2 ≤ N) (f : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, f n) = f 1 + f 2 + ∑ n ∈ Finset.Icc 3 N, f n := by
  have hsplit (k : ℕ) (hk : k ≤ N) :
      (∑ n ∈ Finset.Icc k N, f n) = f k + ∑ n ∈ Finset.Icc (k + 1) N, f n := by
    have hmem : k ∈ Finset.Icc k N := Finset.mem_Icc.mpr ⟨le_rfl, hk⟩
    have herase : (Finset.Icc k N).erase k = Finset.Icc (k + 1) N := by
      ext n
      simp only [Finset.mem_erase, Finset.mem_Icc]
      omega
    rw [← herase, add_comm, Finset.sum_erase_add _ _ hmem]
  rw [hsplit 1 (by omega), hsplit 2 hN]
  ring

private theorem abs_tail_le {N : ℕ} (u A : ℝ) (a : ℕ → ℝ)
    (hA : 0 ≤ A) (ha : ∀ n, 3 ≤ n → 0 ≤ a n ∧ a n ≤ A * ((2 : ℝ) / n) ^ 4) :
    |∑ n ∈ Finset.Icc 3 N, moebiusReal n * a n * pickupResponse n u| ≤
      8 / 9 * A * pickupResponse 2 u := by
  have hp2 := response_nonneg (by decide : 1 ≤ (2 : ℕ)) u
  calc
    _ ≤ ∑ n ∈ Finset.Icc 3 N, |moebiusReal n * a n * pickupResponse n u| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ Finset.Icc 3 N, (A * pickupResponse 2 u) * ((2 : ℝ) / n) ^ 4 := by
      apply Finset.sum_le_sum
      intro n hn
      have h3 := (Finset.mem_Icc.mp hn).1
      have hpn := response_nonneg (show 1 ≤ n by omega) u
      rw [abs_mul, abs_mul, abs_of_nonneg (ha n h3).1, abs_of_nonneg hpn]
      calc
        _ ≤ a n * pickupResponse n u := by
          exact mul_le_mul_of_nonneg_right
            (by simpa using mul_le_mul_of_nonneg_right (abs_moebius_le_one n) (ha n h3).1)
            hpn
        _ ≤ (A * ((2 : ℝ) / n) ^ 4) * pickupResponse 2 u :=
          mul_le_mul (ha n h3).2
            (response_le (by decide : 1 ≤ (2 : ℕ)) (by omega) u)
            hpn (mul_nonneg hA (by positivity))
        _ = _ := by ring
    _ ≤ _ := by
      rw [← Finset.mul_sum]
      nlinarith [mul_le_mul_of_nonneg_left (tail_sum N) (mul_nonneg hA hp2)]

private theorem closedSourceWave_nonneg {s T : ℝ} (hs : 8 ≤ s)
    (hT : Real.log 2 < T) (u : ℝ) : 0 ≤ closedSourceWave s T u := by
  have hN : 2 ≤ ⌊Real.exp T⌋₊ := (pickup_log_le_iff_closed_cutoff (by decide) T).mp hT.le
  change 0 ≤ ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, moebiusReal n * damping s n * pickupResponse n u
  rw [split_inventory hN, moebius_two]
  have h1 : moebiusReal 1 * damping s 1 = 1 := by simp [moebiusReal, damping]
  rw [h1, one_mul]
  have hd := damping_two_le_third hs
  have hp := response_nonneg (by decide : 1 ≤ (2 : ℕ)) u
  have h12 := response_le (by decide : 1 ≤ (1 : ℕ)) (by decide : 1 ≤ (2 : ℕ)) u
  have htail := (abs_le.mp (abs_tail_le (N := ⌊Real.exp T⌋₊) u (damping s 2)
    (damping s) (Real.exp_pos _).le
    (fun _ hn => ⟨(Real.exp_pos _).le, damping_tail_le_four hs hn⟩))).1
  nlinarith [mul_le_mul_of_nonneg_right hd hp]

/-- The exact signed increase of the full wave is bounded below by a fixed
fraction of the original index-two contribution, uniformly in the horizon. -/
theorem closedSourceWave_forward_margin {s r T : ℝ} (hs : 8 ≤ s) (hr : 0 < r)
    (hT : Real.log 2 < T) (u : ℝ) :
    (1 / 9) * (Real.exp (-s * Real.log 2 ^ 2) -
        Real.exp (-(s + r) * Real.log 2 ^ 2)) * pickupResponse 2 u ≤
      closedSourceWave (s + r) T u - closedSourceWave s T u := by
  have hN : 2 ≤ ⌊Real.exp T⌋₊ := (pickup_log_le_iff_closed_cutoff (by decide) T).mp hT.le
  change (1 / 9) * dampingDrop s r 2 * pickupResponse 2 u ≤ _
  have hsplit :
      closedSourceWave (s + r) T u - closedSourceWave s T u =
        -(∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
          moebiusReal n * dampingDrop s r n * pickupResponse n u) := by
    unfold closedSourceWave
    rw [← Finset.sum_sub_distrib, ← Finset.sum_neg_distrib]
    exact Finset.sum_congr rfl fun _ _ => by unfold dampingDrop damping; ring
  rw [hsplit, split_inventory hN, moebius_two]
  have h1 : dampingDrop s r 1 = 0 := by simp [dampingDrop, damping]
  rw [h1, mul_zero, zero_mul, zero_add]
  have htail := (abs_le.mp (abs_tail_le (N := ⌊Real.exp T⌋₊) u
    (dampingDrop s r 2) (dampingDrop s r) (dampingDrop_two_pos s hr).le
    (fun n hn => ⟨dampingDrop_nonneg hr n, dampingDrop_tail hs hr hn⟩))).2
  linarith

theorem closedSourceEnergy_strictly_increases {s r T : ℝ} (hs : 8 ≤ s) (hr : 0 < r)
    (hT : Real.log 2 < T) :
    closedSourceEnergy s T < closedSourceEnergy (s + r) T := by
  have hT0 : 0 < T := by linarith [half_le_log_two]
  have hcont (a : ℝ) : Continuous (closedSourceWave a T) := by
    unfold closedSourceWave
    exact continuous_finsetSum _ fun n hn =>
      continuous_const.mul (pickupResponse_continuous (Finset.mem_Icc.mp hn).1)
  have hmargin (u : ℝ) :
      (1 / 9) * dampingDrop s r 2 * pickupResponse 2 u ≤
        closedSourceWave (s + r) T u - closedSourceWave s T u :=
    closedSourceWave_forward_margin hs hr hT u
  unfold closedSourceEnergy
  apply intervalIntegral.integral_lt_integral_of_continuousOn_of_le_of_exists_lt
    hT0 ((hcont s).pow 2).continuousOn ((hcont (s + r)).pow 2).continuousOn
  · intro u _
    have hnonneg := closedSourceWave_nonneg hs hT u
    have hp := response_nonneg (by decide : 1 ≤ (2 : ℕ)) u
    have h := mul_nonneg
      (mul_nonneg (by norm_num : (0 : ℝ) ≤ 1 / 9) (dampingDrop_two_pos s hr).le) hp
    exact pow_le_pow_left₀ hnonneg (by linarith [hmargin u]) _
  · refine ⟨T, ⟨hT0.le, le_rfl⟩, ?_⟩
    have hnonneg := closedSourceWave_nonneg hs hT T
    have h := mul_pos
      (mul_pos (by norm_num : (0 : ℝ) < 1 / 9) (dampingDrop_two_pos s hr))
      (response_two_pos hT)
    exact pow_lt_pow_left₀ (by linarith [hmargin T]) hnonneg (by decide)

end GRWTSK.NumberTheory.Moebius.GaussianHeatNoncontraction
