# Complete source: GRWTSK.NumberTheory.Moebius.GramDiagonalBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73170183bfc55c49aa578ffbe940a2f84637ef02` · SHA-256 `39ce2d4a37312a18d1e406a1a917b6c27a95ba5b1040dbc4780b8f3fbc31a5ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license.
Source-specific CCC continuation; local conditional candidate, RH remains open. -/
import GRWTSK.NumberTheory.Moebius.FiniteResponseSum
import GRWTSK.Analysis.Inequalities.ExponentialDiagonal
import Mathlib.Analysis.SumIntegralComparisons

/-!
# Sharp diagonal allowance for the actual pickup-response Gram

Human mathematical direction and theorem selection: grwtsk contributors.
Formal implementation assistance: OpenAI Codex.

The comparison is constant below 1. Its use is restricted to [0, exp u],
where it is nonnegative and decreasing; the singular formula is never
integrated below 1. All source cutoffs remain closed.
-/

set_option autoImplicit false

noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory Set
open scoped BigOperators

/-- The nonsingular constant extension on the comparison interval. -/
def diagonalComparison (u x : ℝ) : ℝ :=
  4 * ((Real.sqrt (max 1 x))⁻¹ - Real.exp (-u / 2)) ^ 2

theorem diagonal_sqrt_exp (u : ℝ) : Real.sqrt (Real.exp u) = Real.exp (u / 2) := by
  have he : Real.exp u = Real.exp (u / 2) ^ 2 := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  rw [he, Real.sqrt_sq (Real.exp_pos _).le]

theorem diagonal_negative_half_sqrt (u : ℝ) :
    Real.exp (-u / 2) = (Real.sqrt (Real.exp u))⁻¹ := by
  rw [diagonal_sqrt_exp, show -u / 2 = -(u / 2) by ring, Real.exp_neg]

theorem diagonalComparison_nonneg (u x : ℝ) : 0 ≤ diagonalComparison u x := by
  unfold diagonalComparison
  positivity

theorem diagonalComparison_continuous (u : ℝ) : Continuous (diagonalComparison u) := by
  have hc : Continuous (fun x : ℝ => Real.sqrt (max 1 x)) :=
    Real.continuous_sqrt.comp (continuous_const.max continuous_id)
  have hi : Continuous (fun x : ℝ => (Real.sqrt (max 1 x))⁻¹) :=
    hc.inv₀ (fun x => (Real.sqrt_pos.mpr (lt_of_lt_of_le zero_lt_one (le_max_left _ _))).ne')
  exact continuous_const.mul ((hi.sub continuous_const).pow 2)

theorem diagonalComparison_antitone {u : ℝ} (hu : 0 ≤ u) :
    AntitoneOn (diagonalComparison u) (Icc 0 (Real.exp u)) := by
  have hEu : 1 ≤ Real.exp u := by simpa using Real.exp_le_exp.mpr hu
  intro x hx y hy hxy
  have hmax : max (1 : ℝ) x ≤ max 1 y := max_le_max le_rfl hxy
  have hxpos : 0 < Real.sqrt (max 1 x) :=
    Real.sqrt_pos.mpr (lt_of_lt_of_le zero_lt_one (le_max_left _ _))
  have hypos : 0 < Real.sqrt (max 1 y) :=
    Real.sqrt_pos.mpr (lt_of_lt_of_le zero_lt_one (le_max_left _ _))
  have hinv := inv_anti₀ hxpos (Real.sqrt_le_sqrt hmax)
  have hym : max (1 : ℝ) y ≤ Real.exp u := max_le hEu hy.2
  have hfloor := inv_anti₀ hypos (Real.sqrt_le_sqrt hym)
  rw [← diagonal_negative_half_sqrt] at hfloor
  have hyres : 0 ≤ (Real.sqrt (max 1 y))⁻¹ - Real.exp (-u / 2) := sub_nonneg.mpr hfloor
  have hres := sub_le_sub_right hinv (Real.exp (-u / 2))
  unfold diagonalComparison
  exact mul_le_mul_of_nonneg_left
    ((sq_le_sq₀ hyres (hyres.trans hres)).2 hres) (by norm_num)

theorem diagonalComparison_eq_below_one {u x : ℝ} (hx : x ≤ 1) :
    diagonalComparison u x = 4 * (1 - Real.exp (-u / 2)) ^ 2 := by
  simp [diagonalComparison, max_eq_left hx]

theorem diagonalComparison_eq_above_one {u x : ℝ} (hx : 1 ≤ x) :
    diagonalComparison u x = 4 * ((Real.sqrt x)⁻¹ - Real.exp (-u / 2)) ^ 2 := by
  simp [diagonalComparison, max_eq_right hx]

theorem diagonalComparison_atom {u : ℝ} {n : ℕ} (hn : 1 ≤ n)
    (hnu : n ≤ ⌊Real.exp u⌋₊) :
    pickupResponse n u ^ 2 = diagonalComparison u n := by
  have hnreal : (1 : ℝ) ≤ n := by exact_mod_cast hn
  rw [diagonalComparison_eq_above_one hnreal]
  simp only [pickupResponse,
    if_pos ((pickup_log_le_iff_closed_cutoff hn u).mpr hnu)]
  ring

theorem diagonal_sum_Icc_eq_range (N : ℕ) (f : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, f n) = ∑ k ∈ Finset.range N, f (k + 1) := by
  apply Finset.sum_bij (fun n _ => n - 1)
  · intro n hn
    have hne := Finset.mem_Icc.mp hn
    simp only [Finset.mem_range]
    omega
  · intro n hn m hm he
    have hn1 := (Finset.mem_Icc.mp hn).1
    have hm1 := (Finset.mem_Icc.mp hm).1
    omega
  · intro k hk
    have hkN := Finset.mem_range.mp hk
    refine ⟨k + 1, Finset.mem_Icc.mpr ⟨by omega, by omega⟩, by omega⟩
  · intro n hn
    rw [Nat.sub_add_cancel (Finset.mem_Icc.mp hn).1]

/-- Monotone sum/integral comparison, with no singular interval below 1. -/
theorem diagonalComparison_sum_le_integral {u : ℝ} (hu : 0 ≤ u) :
    (∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, diagonalComparison u n) ≤
      ∫ x in (0 : ℝ)..Real.exp u, diagonalComparison u x := by
  let N := ⌊Real.exp u⌋₊
  have hN : (N : ℝ) ≤ Real.exp u := Nat.floor_le (Real.exp_pos u).le
  have ha : AntitoneOn (diagonalComparison u) (Icc 0 (0 + (N : ℝ))) :=
    (diagonalComparison_antitone hu).mono (by
      intro x hx
      exact ⟨hx.1, by simpa using hx.2.trans (by simpa using hN)⟩)
  have hsum := ha.sum_le_integral
  rw [diagonal_sum_Icc_eq_range]
  calc
    _ ≤ ∫ x in (0 : ℝ)..(N : ℝ), diagonalComparison u x := by simpa using hsum
    _ ≤ _ := intervalIntegral.integral_mono_interval le_rfl (Nat.cast_nonneg N) hN
      (ae_of_all _ (fun x => diagonalComparison_nonneg u x))
      ((diagonalComparison_continuous u).intervalIntegrable 0 (Real.exp u))

theorem diagonal_inverse_sqrt_integral {u : ℝ} (hu : 0 ≤ u) :
    (∫ x in (1 : ℝ)..Real.exp u, (Real.sqrt x)⁻¹) =
      2 * (Real.exp (u / 2) - 1) := by
  have hEu : 1 ≤ Real.exp u := by simpa using Real.exp_le_exp.mpr hu
  calc
    _ = ∫ x in (1 : ℝ)..Real.exp u, x ^ (-(1 / 2 : ℝ)) := by
      apply intervalIntegral.integral_congr
      intro x hx
      rw [uIcc_of_le hEu] at hx
      change (Real.sqrt x)⁻¹ = x ^ (-(1 / 2 : ℝ))
      rw [Real.rpow_neg (by linarith [hx.1]), ← Real.sqrt_eq_rpow]
    _ = _ := by
      rw [integral_rpow (Or.inl (by norm_num : (-1 : ℝ) < -(1 / 2 : ℝ)))]
      norm_num
      rw [← Real.sqrt_eq_rpow, diagonal_sqrt_exp]
      ring

theorem diagonalComparison_integral {u : ℝ} (hu : 0 ≤ u) :
    (∫ x in (0 : ℝ)..Real.exp u, diagonalComparison u x) =
      4 * u - 8 + 8 * Real.exp (-u / 2) := by
  have hEu : 1 ≤ Real.exp u := by simpa using Real.exp_le_exp.mpr hu
  have hsmall : (∫ x in (0 : ℝ)..1, diagonalComparison u x) =
      4 * (1 - Real.exp (-u / 2)) ^ 2 := by
    calc
      _ = ∫ _x in (0 : ℝ)..1, 4 * (1 - Real.exp (-u / 2)) ^ 2 := by
        apply intervalIntegral.integral_congr
        intro x hx
        rw [uIcc_of_le (by norm_num : (0 : ℝ) ≤ 1)] at hx
        exact diagonalComparison_eq_below_one hx.2
      _ = _ := by simp
  have hInv : IntervalIntegrable (fun x : ℝ => x⁻¹) volume 1 (Real.exp u) := by
    apply ContinuousOn.intervalIntegrable_of_Icc hEu
    exact continuousOn_id.inv₀ (fun x hx => (by linarith [hx.1] : 0 < x).ne')
  have hSqrtInv : IntervalIntegrable (fun x : ℝ => (Real.sqrt x)⁻¹) volume 1 (Real.exp u) := by
    apply ContinuousOn.intervalIntegrable_of_Icc hEu
    exact Real.continuous_sqrt.continuousOn.inv₀
      (fun x hx => (Real.sqrt_pos.mpr (by linarith [hx.1] : 0 < x)).ne')
  have hlarge : (∫ x in (1 : ℝ)..Real.exp u, diagonalComparison u x) =
      4 * u - 8 * Real.exp (-u / 2) * (2 * (Real.exp (u / 2) - 1)) +
        4 * Real.exp (-u / 2) ^ 2 * (Real.exp u - 1) := by
    calc
      _ = ∫ x in (1 : ℝ)..Real.exp u,
          4 * x⁻¹ - (8 * Real.exp (-u / 2)) * (Real.sqrt x)⁻¹ +
            4 * Real.exp (-u / 2) ^ 2 := by
        apply intervalIntegral.integral_congr
        intro x hx
        rw [uIcc_of_le hEu] at hx
        rw [diagonalComparison_eq_above_one hx.1]
        have hi : (Real.sqrt x)⁻¹ ^ 2 = x⁻¹ := by
          rw [inv_pow, Real.sq_sqrt (by linarith [hx.1])]
        calc
          _ = 4 * ((Real.sqrt x)⁻¹ ^ 2) -
              (8 * Real.exp (-u / 2)) * (Real.sqrt x)⁻¹ +
                4 * Real.exp (-u / 2) ^ 2 := by ring
          _ = _ := by rw [hi]
      _ = _ := by
        rw [intervalIntegral.integral_add
          ((hInv.const_mul 4).sub (hSqrtInv.const_mul (8 * Real.exp (-u / 2))))
          (continuous_const.intervalIntegrable _ _),
          intervalIntegral.integral_sub (hInv.const_mul 4)
            (hSqrtInv.const_mul (8 * Real.exp (-u / 2))),
          intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
          integral_inv_of_pos (by norm_num) (Real.exp_pos u),
          diagonal_inverse_sqrt_integral hu, intervalIntegral.integral_const]
        simp [Real.log_exp, smul_eq_mul]
        ring
  have hc : Real.exp (-u / 2) * Real.exp (u / 2) = 1 := by
    rw [← Real.exp_add, show -u / 2 + u / 2 = 0 by ring, Real.exp_zero]
  have hc2 : Real.exp (-u / 2) ^ 2 * Real.exp u = 1 := by
    rw [pow_two, ← Real.exp_add, ← Real.exp_add,
      show -u / 2 + -u / 2 + u = 0 by ring, Real.exp_zero]
  rw [← intervalIntegral.integral_add_adjacent_intervals
    ((diagonalComparison_continuous u).intervalIntegrable 0 1)
    ((diagonalComparison_continuous u).intervalIntegrable 1 (Real.exp u)), hsmall, hlarge]
  nlinarith

/-- Inactive members of the final closed inventory have exactly zero response. -/
theorem pickup_response_square_sum_cutoff {u T : ℝ} (huT : u ≤ T) :
    (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, pickupResponse n u ^ 2) =
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, pickupResponse n u ^ 2 := by
  symm
  apply Finset.sum_subset
  · intro n hn
    have hne := Finset.mem_Icc.mp hn
    exact Finset.mem_Icc.mpr ⟨hne.1,
      hne.2.trans (Nat.floor_mono (Real.exp_le_exp.mpr huT))⟩
  · intro n hnT hnu
    have hn1 := (Finset.mem_Icc.mp hnT).1
    have hnot : ¬Real.log n ≤ u := by
      intro h
      exact hnu (Finset.mem_Icc.mpr
        ⟨hn1, (pickup_log_le_iff_closed_cutoff hn1 u).mp h⟩)
    simp [pickupResponse, hnot]

theorem moebiusReal_sq_le_one (n : ℕ) : moebiusReal n ^ 2 ≤ 1 := by
  have hs := (sq_le_sq₀ (abs_nonneg (moebiusReal n)) (by norm_num : (0 : ℝ) ≤ 1)).2
    (moebiusReal_abs_le_one n)
  simpa only [sq_abs, one_pow] using hs

/-- A pointwise sharp allowance for the actual diagonal integrand. -/
theorem pickup_diagonal_density_le {u T : ℝ} (hu : 0 ≤ u) (huT : u ≤ T) :
    (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      moebiusReal n ^ 2 * pickupResponse n u ^ 2) ≤
        4 * u - 8 + 8 * Real.exp (-u / 2) := by
  calc
    _ ≤ ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, pickupResponse n u ^ 2 := by
      apply Finset.sum_le_sum
      intro n _
      simpa only [one_mul] using
        mul_le_mul_of_nonneg_right (moebiusReal_sq_le_one n) (sq_nonneg (pickupResponse n u))
    _ = ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, pickupResponse n u ^ 2 :=
      pickup_response_square_sum_cutoff huT
    _ = ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, diagonalComparison u n := by
      apply Finset.sum_congr rfl
      intro n hn
      have hne := Finset.mem_Icc.mp hn
      exact diagonalComparison_atom hne.1 hne.2
    _ ≤ ∫ x in (0 : ℝ)..Real.exp u, diagonalComparison u x :=
      diagonalComparison_sum_le_integral hu
    _ = _ := diagonalComparison_integral hu

/-- Finite Fubini returns to the actual response diagonal, for any real endpoint. -/
theorem pickupDiagonal_eq_integral_density (T : ℝ) :
    pickupDiagonal T = ∫ u in (0 : ℝ)..T,
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, moebiusReal n ^ 2 * pickupResponse n u ^ 2 := by
  unfold pickupDiagonal pickupResponseGram
  symm
  rw [intervalIntegral.integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro n _
    rw [intervalIntegral.integral_const_mul]
    simp only [pow_two]
  · intro n hn
    exact (continuous_const.mul
      ((pickupResponse_continuous (Finset.mem_Icc.mp hn).1).pow 2)).intervalIntegrable 0 T

theorem diagonal_time_integral (T : ℝ) :
    (∫ u in (0 : ℝ)..T, 4 * u - 8 + 8 * Real.exp (-u / 2)) =
      2 * T ^ 2 - 8 * T + 16 * (1 - Real.exp (-T / 2)) := by
  have hid : IntervalIntegrable (fun u : ℝ => 4 * u) volume 0 T :=
    (continuous_const.mul continuous_id).intervalIntegrable 0 T
  have hexp : IntervalIntegrable (fun u : ℝ => 8 * Real.exp (-u / 2)) volume 0 T :=
    (continuous_const.mul
      (Real.continuous_exp.comp ((continuous_id.neg).div_const 2))).intervalIntegrable 0 T
  rw [intervalIntegral.integral_add
    (hid.sub (continuous_const.intervalIntegrable _ _)) hexp,
    intervalIntegral.integral_sub hid (continuous_const.intervalIntegrable _ _),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
    integral_id, intervalIntegral.integral_const, pickup_negative_half_integral]
  simp only [neg_zero, zero_div, Real.exp_zero, sub_zero, zero_pow,
    ne_eq, OfNat.ofNat_ne_zero, not_false_eq_true, smul_eq_mul]
  ring

/-- The sharpened bound is unconditional for every real nonnegative time. -/
theorem pickupDiagonal_le_sharp {T : ℝ} (hT : 0 ≤ T) :
    pickupDiagonal T ≤ 2 * T ^ 2 - 8 * T + 16 * (1 - Real.exp (-T / 2)) := by
  rw [pickupDiagonal_eq_integral_density]
  have hd : IntervalIntegrable (fun u : ℝ =>
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, moebiusReal n ^ 2 * pickupResponse n u ^ 2)
      volume 0 T := by
    apply Continuous.intervalIntegrable
    exact continuous_finsetSum _ fun n hn => continuous_const.mul
      ((pickupResponse_continuous (Finset.mem_Icc.mp hn).1).pow 2)
  have hb : IntervalIntegrable (fun u : ℝ => 4 * u - 8 + 8 * Real.exp (-u / 2)) volume 0 T :=
    (((continuous_const.mul continuous_id).sub continuous_const).add
      (continuous_const.mul
        (Real.continuous_exp.comp ((continuous_id.neg).div_const 2)))).intervalIntegrable 0 T
  calc
    _ ≤ ∫ u in (0 : ℝ)..T, 4 * u - 8 + 8 * Real.exp (-u / 2) := by
      apply intervalIntegral.integral_mono_on hT hd hb
      intro u hu
      exact pickup_diagonal_density_le hu.1 hu.2
    _ = _ := diagonal_time_integral T

/-- The literal three-part P01 statement for the actual source response Gram. -/
theorem pickupDiagonal_sharp_bound {T : ℝ} (hT : 0 ≤ T) :
    0 ≤ pickupDiagonal T ∧
      pickupDiagonal T ≤ 2 * T ^ 2 - 8 * T + 16 * (1 - Real.exp (-T / 2)) ∧
        2 * T ^ 2 - 8 * T + 16 * (1 - Real.exp (-T / 2)) ≤ 2 * T ^ 2 :=
  ⟨pickupDiagonal_nonneg hT, pickupDiagonal_le_sharp hT,
    DiagonalAffineAlgebra.sharp_diagonal_le_quadratic T⟩

/-- The exact nonnegative/quadratic input required by the existing budget adapter. -/
theorem pickupDiagonal_quadratic_bound {T : ℝ} (hT : 0 ≤ T) :
    0 ≤ pickupDiagonal T ∧ pickupDiagonal T ≤ 2 * T ^ 2 := by
  have h := pickupDiagonal_sharp_bound hT
  exact ⟨h.1, h.2.1.trans h.2.2⟩

end GRWTSK.RiemannHypothesis.CCC
```
