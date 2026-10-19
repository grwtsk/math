import Mathlib.Algebra.Ring.IsFormallyReal
import GRWTSK.Analysis.AsymptoticAnalysis.SublinearDyadic
import GRWTSK.Analysis.Inequalities.ResidualGrowthComparison

/-! Source: the supplied transported-weight manuscript, Proposition 2.1.
Research direction: grwtsk contributors; formalization assistance: ChatGPT.
Proof source prepared. Pinned kernel replay is required.
-/
noncomputable section
namespace GRWTSK.Analysis.LogarithmicGrowth
open GRWTSK.Analysis.SublinearDyadic
open GRWTSK.Analysis.ResidualGrowthComparison

theorem constant_upperSublinear (C : ℝ) : UpperSublinear (fun _ => C) := by
  apply upperSublinear_of_affine_bounds
  intro ε hε
  exact ⟨max 0 C, le_max_left _ _, fun n _ =>
    (le_max_right 0 C).trans (le_add_of_nonneg_right (mul_nonneg hε.le (Nat.cast_nonneg n)))⟩

theorem scale_upperSublinear (f : ℕ → ℝ) (h : UpperSublinear f)
    (a : ℝ) (ha : 0 ≤ a) : UpperSublinear (fun n => a*f n) := by
  by_cases hz : a=0
  · simpa [hz] using constant_upperSublinear 0
  · have hp : 0 < a := lt_of_le_of_ne ha (Ne.symm hz)
    intro ε hε
    obtain ⟨n₀, hn₀⟩ := h (ε/a) (div_pos hε hp)
    refine ⟨n₀, ?_⟩
    intro n hn
    have hh := mul_le_mul_of_nonneg_left (hn₀ n hn) ha
    calc
      a*f n ≤ a*(ε/a*(n:ℝ)) := hh
      _ = ε*(n:ℝ) := by field_simp [hz]

lemma log_one_add_le_two_sqrt (x : ℝ) (hx : 0 ≤ x) :
    Real.log (1+x) ≤ 2*Real.sqrt x := by
  have hs := Real.sq_sqrt hx
  have hn := Real.sqrt_nonneg x
  have hp : 0 < 1+Real.sqrt x := by positivity
  have hb : 1+x ≤ (1+Real.sqrt x)^2 := by nlinarith
  have hl := Real.log_le_log (by positivity : 0 < 1+x) hb
  rw [Real.log_pow] at hl
  have ht := Real.log_le_sub_one_of_pos hp
  norm_num at hl
  linarith

theorem log_one_add_nat_upperSublinear :
    UpperSublinear (fun n : ℕ => Real.log (1+(n:ℝ))) := by
  intro ε hε
  obtain ⟨K, hK⟩ := exists_nat_ge (4/ε^2)
  refine ⟨max 1 K, ?_⟩
  intro n hn
  have hnK : K ≤ n := (le_max_right 1 K).trans hn
  have hb : 4/ε^2 ≤ (n:ℝ) := hK.trans (by exact_mod_cast hnK)
  have hε2 : 0 < ε^2 := sq_pos_of_pos hε
  have he := (div_le_iff₀ hε2).mp hb
  have hs := Real.sq_sqrt (Nat.cast_nonneg n : (0:ℝ) ≤ n)
  have hsn := Real.sqrt_nonneg (n:ℝ)
  have hp : 0 ≤ ε*Real.sqrt (n:ℝ) := mul_nonneg hε.le hsn
  have hh : (ε*Real.sqrt (n:ℝ))^2 = ε^2*(n:ℝ) := by rw [mul_pow, hs]
  have hlower : 2 ≤ ε*Real.sqrt (n:ℝ) := by nlinarith
  have hm := mul_le_mul_of_nonneg_right hlower hsn
  have hlog := log_one_add_le_two_sqrt (n:ℝ) (Nat.cast_nonneg n)
  nlinarith

/-- Both residual formulations have the same subexponential growth content.
The scalar comparison assumptions must be instantiated from the actual spectrum. -/
theorem residual_growth_iff (β J : ℕ → ℝ)
    (hβ : ∀ n, 0 ≤ β n) (hJ : ∀ n, 0 ≤ J n)
    (hlower : ∀ n, (5/9:ℝ)*β n^6 ≤ J n)
    (hupper : ∀ n, J n ≤ (n:ℝ)*β n^6) :
    UpperSublinear (fun n => Real.log (1+β n)) ↔
    UpperSublinear (fun n => Real.log (1+J n)) := by
  constructor
  · intro hb
    have hs := log_one_add_nat_upperSublinear.add (scale_upperSublinear _ hb 6 (by norm_num))
    apply hs.mono
    intro n
    have hh := Real.log_le_log (by linarith [hJ n] : 0 < 1+J n)
      (residual_one_add_bound _ _ n (hβ n) (hupper n))
    rw [Real.log_mul (by positivity : (1+(n:ℝ)) ≠ 0)
      (pow_ne_zero 6 (ne_of_gt (by linarith [hβ n] : 0 < 1+β n))), Real.log_pow] at hh
    norm_num at hh ⊢
    exact hh
  · intro hj
    have hs := (constant_upperSublinear (Real.log 2)).add hj
    apply hs.mono
    intro n
    have hh := Real.log_le_log (by linarith [hβ n] : 0 < 1+β n)
      (relative_le_of_sixth _ _ (hβ n) (hJ n) (hlower n))
    rw [Real.log_mul (by norm_num : (2:ℝ) ≠ 0) (ne_of_gt (by linarith [hJ n] : 0 < 1+J n))] at hh
    exact hh

/-- Any fixed positive exponent floor fails the actual little-o condition. -/
theorem positive_floor_not_sublinear (c : ℝ) (hc : 0 < c) :
    ¬ UpperSublinear (fun n : ℕ => c*(n:ℝ)) := by
  intro h
  obtain ⟨K, hK⟩ := h (c/2) (by linarith)
  have hh := hK (K+1) (by omega)
  have hn : (0:ℝ) < (K+1:ℕ) := by positivity
  nlinarith

/-- A finite successful prefix is not a theorem about the tail. -/
theorem finite_prefix_does_not_force_sublinear (M : ℕ) :
    ∃ f : ℕ → ℝ, (∀ n ≤ M, f n=0) ∧ ¬ UpperSublinear f := by
  refine ⟨fun n => if n ≤ M then 0 else (n:ℝ), ?_, ?_⟩
  · intro n hn; simp [hn]
  · intro h
    obtain ⟨K, hK⟩ := h (1/2) (by norm_num)
    let n := max K M+1
    have hnK : K ≤ n := by dsimp [n]; omega
    have hnM : ¬ n ≤ M := by dsimp [n]; omega
    have hn : (0:ℝ) < (n:ℝ) := by exact_mod_cast (by dsimp [n]; omega : 0 < n)
    have hh := hK n hnK
    simp only [if_neg hnM] at hh
    nlinarith

end GRWTSK.Analysis.LogarithmicGrowth
