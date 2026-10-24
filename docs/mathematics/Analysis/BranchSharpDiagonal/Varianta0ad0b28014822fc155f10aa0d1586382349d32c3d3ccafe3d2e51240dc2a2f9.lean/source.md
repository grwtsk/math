# Complete source: GRWTSK.Analysis.BranchSharpDiagonal.Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0e95b1dc23f1700c8892652db73d1586345d97c` · SHA-256 `a0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.BranchWeightedGrowth
import Mathlib.Analysis.SumIntegralComparisons

/-!
# Sharp diagonal for the genuine closed-reset pickup weights

Batch 39, `weighted-source-meter-energy.md`, section 3. The nonsingular
extension is constant up to the real cutoff A². Monotone comparison retains
both closed cutoffs and every integer; no floor correction is dropped.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
The sum/integral proof pattern also occurs in the separate CCC precision
continuation; its uncentered comparison is not substituted for these weights.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.Conversation.BranchSharpDiagonal
open OriginalSignedSupplier BranchWeightedGrowth
open GRWTSK.RiemannHypothesis.Conversation.WeightedSourcePickup
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel
open MeasureTheory Set
open scoped BigOperators

/-- The comparison in this module, with the following exact parameterization.

def comparison (A t x : ℝ) : ℝ := 4 * ((Real.sqrt (max (A ^ 2) x))⁻¹ - Real.exp (-t / 2)) ^ 2
-/
def comparison (A t x : ℝ) : ℝ :=
  4 * ((Real.sqrt (max (A ^ 2) x))⁻¹ - Real.exp (-t / 2)) ^ 2

theorem comparison_nonnegative (A t x : ℝ) : 0 ≤ comparison A t x := by
  unfold comparison
  positivity

theorem comparison_continuous {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    Continuous (comparison A t) := by
  have hp : 0 < A ^ 2 := by positivity
  have hc : Continuous (fun x : ℝ ↦ Real.sqrt (max (A ^ 2) x)) :=
    Real.continuous_sqrt.comp (continuous_const.max continuous_id)
  have hi := hc.inv₀ (fun x ↦ (Real.sqrt_pos.mpr (hp.trans_le (le_max_left _ _))).ne')
  exact continuous_const.mul ((hi.sub continuous_const).pow 2)

theorem comparison_below {A t x : ℝ} (hA : 1 ≤ A) (hx : x ≤ A ^ 2) :
    comparison A t x = 4 * (A⁻¹ - Real.exp (-t / 2)) ^ 2 := by
  simp [comparison, max_eq_left hx, Real.sqrt_sq (by linarith : 0 ≤ A)]

theorem comparison_above {A t x : ℝ} (hx : A ^ 2 ≤ x) :
    comparison A t x = 4 * ((Real.sqrt x)⁻¹ - Real.exp (-t / 2)) ^ 2 := by
  simp [comparison, max_eq_right hx]

theorem comparison_antitone {A t : ℝ} (hA : 1 ≤ A) (ht : 2 * Real.log A ≤ t) :
    AntitoneOn (comparison A t) (Icc 0 (Real.exp t)) := by
  have hp : 0 < A ^ 2 := by positivity
  intro x hx y hy hxy
  have hmax := max_le_max (le_refl (A ^ 2)) hxy
  have hxpos := Real.sqrt_pos.mpr (hp.trans_le (le_max_left (A ^ 2) x))
  have hypos := Real.sqrt_pos.mpr (hp.trans_le (le_max_left (A ^ 2) y))
  have hinv := inv_anti₀ hxpos (Real.sqrt_le_sqrt hmax)
  have hym : max (A ^ 2) y ≤ Real.exp t := max_le (cutoff_order hA ht) hy.2
  have hfloor := inv_anti₀ hypos (Real.sqrt_le_sqrt hym)
  rw [← exp_negative_half] at hfloor
  have hyres := sub_nonneg.mpr hfloor
  have hres := sub_le_sub_right hinv (Real.exp (-t / 2))
  unfold comparison
  exact mul_le_mul_of_nonneg_left
    ((sq_le_sq₀ hyres (hyres.trans hres)).2 hres) (by norm_num)

theorem comparison_atom {A t : ℝ} (hA : 1 ≤ A) (ht : 2 * Real.log A ≤ t)
    {n : ℕ} (hn : (n : ℝ) ≤ Real.exp t) :
    pickupWeight A t n ^ 2 = comparison A t n := by
  by_cases hlo : (n : ℝ) ≤ A ^ 2
  · rw [weight_low hA ht hlo, comparison_below hA hlo]
    ring
  · rw [weight_middle (lt_of_not_ge hlo) hn, comparison_above (le_of_not_ge hlo)]
    ring

theorem sum_Icc_eq_range (N : ℕ) (f : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, f n) = ∑ k ∈ Finset.range N, f (k + 1) := by
  apply Finset.sum_bij (fun n _ ↦ n - 1)
  · intro n hn
    have h := Finset.mem_Icc.mp hn
    simp only [Finset.mem_range]
    omega
  · intro n hn m hm he
    have h1 := (Finset.mem_Icc.mp hn).1
    have h2 := (Finset.mem_Icc.mp hm).1
    omega
  · intro k hk
    have h := Finset.mem_range.mp hk
    refine ⟨k + 1, Finset.mem_Icc.mpr ⟨by omega, by omega⟩, by omega⟩
  · intro n hn
    rw [Nat.sub_add_cancel (Finset.mem_Icc.mp hn).1]

theorem comparison_sum_le_integral {A t : ℝ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) :
    (∑ n ∈ Finset.Icc 1 ⌊Real.exp t⌋₊, comparison A t n) ≤
      ∫ x in (0 : ℝ)..Real.exp t, comparison A t x := by
  let N := ⌊Real.exp t⌋₊
  have hN : (N : ℝ) ≤ Real.exp t := Nat.floor_le (Real.exp_pos t).le
  have ha : AntitoneOn (comparison A t) (Icc 0 (0 + (N : ℝ))) :=
    (comparison_antitone hA ht).mono (by
      intro x hx
      exact ⟨hx.1, by simpa using hx.2.trans (by simpa using hN)⟩)
  have hsum := ha.sum_le_integral
  rw [sum_Icc_eq_range]
  calc
    _ ≤ ∫ x in (0 : ℝ)..(N : ℝ), comparison A t x := by simpa using hsum
    _ ≤ _ := intervalIntegral.integral_mono_interval le_rfl (Nat.cast_nonneg N) hN
      (ae_of_all _ (fun x ↦ comparison_nonnegative A t x))
      ((comparison_continuous hA t).intervalIntegrable 0 (Real.exp t))

theorem inverse_sqrt_integral {A t : ℝ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) :
    (∫ x in A ^ 2..Real.exp t, (Real.sqrt x)⁻¹) =
      2 * (Real.exp (t / 2) - A) := by
  have hcut := cutoff_order hA ht
  calc
    _ = ∫ x in A ^ 2..Real.exp t, x ^ (-(1 / 2 : ℝ)) := by
      apply intervalIntegral.integral_congr
      intro x hx
      rw [uIcc_of_le hcut] at hx
      change (Real.sqrt x)⁻¹ = x ^ (-(1 / 2 : ℝ))
      rw [Real.rpow_neg ((by positivity : 0 ≤ A ^ 2).trans hx.1), ← Real.sqrt_eq_rpow]
    _ = _ := by
      rw [integral_rpow (Or.inl (by norm_num : (-1 : ℝ) < -(1 / 2 : ℝ)))]
      norm_num
      rw [← Real.sqrt_eq_rpow, exp_half, ← Real.sqrt_eq_rpow,
        Real.sqrt_sq (by linarith : 0 ≤ A)]
      ring

theorem comparison_integral {A t : ℝ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) :
    (∫ x in (0 : ℝ)..Real.exp t, comparison A t x) =
      4 * (t - 2 * Real.log A) - 8 + 8 * A * Real.exp (-t / 2) := by
  have hp : 0 < A ^ 2 := by positivity
  have hcut := cutoff_order hA ht
  have hsmall : (∫ x in (0 : ℝ)..A ^ 2, comparison A t x) =
      A ^ 2 * (4 * (A⁻¹ - Real.exp (-t / 2)) ^ 2) := by
    calc
      _ = ∫ _x in (0 : ℝ)..A ^ 2, 4 * (A⁻¹ - Real.exp (-t / 2)) ^ 2 := by
        apply intervalIntegral.integral_congr
        intro x hx
        rw [uIcc_of_le hp.le] at hx
        exact comparison_below hA hx.2
      _ = _ := by simp only [intervalIntegral.integral_const, sub_zero, smul_eq_mul]
  have hInv : IntervalIntegrable (fun x : ℝ ↦ x⁻¹) volume (A ^ 2) (Real.exp t) := by
    apply ContinuousOn.intervalIntegrable_of_Icc hcut
    exact continuousOn_id.inv₀ (fun x hx ↦ (hp.trans_le hx.1).ne')
  have hSqrtInv : IntervalIntegrable (fun x : ℝ ↦ (Real.sqrt x)⁻¹)
      volume (A ^ 2) (Real.exp t) := by
    apply ContinuousOn.intervalIntegrable_of_Icc hcut
    exact Real.continuous_sqrt.continuousOn.inv₀
      (fun x hx ↦ (Real.sqrt_pos.mpr (hp.trans_le hx.1)).ne')
  have hlarge : (∫ x in A ^ 2..Real.exp t, comparison A t x) =
      4 * (t - 2 * Real.log A) -
        8 * Real.exp (-t / 2) * (2 * (Real.exp (t / 2) - A)) +
          4 * Real.exp (-t / 2) ^ 2 * (Real.exp t - A ^ 2) := by
    calc
      _ = ∫ x in A ^ 2..Real.exp t,
          4 * x⁻¹ - (8 * Real.exp (-t / 2)) * (Real.sqrt x)⁻¹ +
            4 * Real.exp (-t / 2) ^ 2 := by
        apply intervalIntegral.integral_congr
        intro x hx
        rw [uIcc_of_le hcut] at hx
        rw [comparison_above hx.1]
        have hi : (Real.sqrt x)⁻¹ ^ 2 = x⁻¹ := by
          rw [inv_pow, Real.sq_sqrt (hp.trans_le hx.1).le]
        calc
          _ = 4 * ((Real.sqrt x)⁻¹ ^ 2) -
              (8 * Real.exp (-t / 2)) * (Real.sqrt x)⁻¹ +
                4 * Real.exp (-t / 2) ^ 2 := by ring
          _ = _ := by rw [hi]
      _ = _ := by
        rw [intervalIntegral.integral_add
          ((hInv.const_mul 4).sub (hSqrtInv.const_mul (8 * Real.exp (-t / 2))))
          (continuous_const.intervalIntegrable _ _),
          intervalIntegral.integral_sub (hInv.const_mul 4)
            (hSqrtInv.const_mul (8 * Real.exp (-t / 2))),
          intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
          integral_inv_of_pos hp (Real.exp_pos t), inverse_sqrt_integral hA ht,
          intervalIntegral.integral_const]
        rw [Real.log_div (Real.exp_pos t).ne' hp.ne', Real.log_exp, Real.log_pow]
        simp only [Nat.cast_ofNat, smul_eq_mul]
        ring
  have hc : Real.exp (-t / 2) * Real.exp (t / 2) = 1 := by
    rw [← Real.exp_add, show -t / 2 + t / 2 = 0 by ring, Real.exp_zero]
  have hc2 : Real.exp (-t / 2) ^ 2 * Real.exp t = 1 := by
    rw [pow_two, ← Real.exp_add, ← Real.exp_add,
      show -t / 2 + -t / 2 + t = 0 by ring, Real.exp_zero]
  rw [← intervalIntegral.integral_add_adjacent_intervals
    ((comparison_continuous hA t).intervalIntegrable 0 (A ^ 2))
    ((comparison_continuous hA t).intervalIntegrable (A ^ 2) (Real.exp t)), hsmall, hlarge]
  have hAi : A * A⁻¹ = 1 := mul_inv_cancel₀ (by linarith : A ≠ 0)
  have hAi2 := congrArg (fun x : ℝ ↦ x ^ 2) hAi
  have hAi3 := congrArg (fun x : ℝ ↦ x * (A * Real.exp (-t / 2))) hAi
  nlinarith

theorem diagonal_le_comparison {A t : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) :
    diagonalEnergy A t ≤ ∑ n ∈ Finset.Icc 1 ⌊Real.exp t⌋₊, comparison A t n := by
  have hsub : Finset.Icc 1 ⌊Real.exp t⌋₊ ⊆ integerInventory A := by
    intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1,
      (Finset.mem_Icc.mp hn).2.trans (Nat.floor_mono (Real.exp_le_exp.mpr ht.2))⟩
  have he : (∑ n ∈ integerInventory A, realMoebius n ^ 2 * pickupWeight A t n ^ 2) =
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp t⌋₊, realMoebius n ^ 2 * pickupWeight A t n ^ 2 := by
    symm
    apply Finset.sum_subset hsub
    intro n hn hnot
    have hlo := (Finset.mem_Icc.mp hn).1
    have hhi : ⌊Real.exp t⌋₊ < n := by
      by_contra h
      exact hnot (Finset.mem_Icc.mpr ⟨hlo, le_of_not_gt h⟩)
    have hx : Real.exp t < (n : ℝ) := (Nat.floor_lt (Real.exp_pos t).le).mp hhi
    rw [weight_above hA ht.1 hx]
    ring
  unfold diagonalEnergy
  rw [he]
  apply Finset.sum_le_sum
  intro n hn
  have hx : (n : ℝ) ≤ Real.exp t :=
    (Nat.le_floor_iff (Real.exp_pos t).le).mp (Finset.mem_Icc.mp hn).2
  have h := mul_le_mul_of_nonneg_right (moebius_square_le_one n)
    (sq_nonneg (pickupWeight A t n))
  simpa only [one_mul, comparison_atom hA ht.1 hx] using h

theorem diagonal_exact_integral_bound {A t : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) :
    diagonalEnergy A t ≤ 4 * (t - 2 * Real.log A) - 8 +
      8 * A * Real.exp (-t / 2) := by
  have h := (diagonal_le_comparison hA ht).trans (comparison_sum_le_integral hA ht.1)
  rwa [comparison_integral hA ht.1] at h

theorem diagonal_sharp {A t : ℝ} (hA : 1 ≤ A) (ht : t ∈ readingWindow A) :
    diagonalEnergy A t ≤ 8 * A := by
  have he : Real.exp (-t / 2) ≤ A⁻¹ := by
    rw [← exp_negative_reset (by linarith : 0 < A)]
    exact Real.exp_le_exp.mpr (by linarith [ht.1])
  have hprod := mul_le_mul_of_nonneg_left he (by linarith : 0 ≤ A)
  rw [mul_inv_cancel₀ (by linarith : A ≠ 0)] at hprod
  linarith [diagonal_exact_integral_bound hA ht, Real.log_nonneg hA, ht.2]

theorem native_sharp_diagonal : NativeSharpDiagonalProblem := by
  intro A hA t ht
  exact diagonal_sharp hA ht

end FormalResearch.RiemannHypothesis.Conversation.BranchSharpDiagonal
```
