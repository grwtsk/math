import Mathlib.NumberTheory.Real.GoldenRatio
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Analysis.Calculus.Deriv.Inv
import Mathlib.Tactic

/-!
# Actual positive continued-fraction iterates and geometric convergence

Local attribution: grwtsk contributors.
Grant Sanderson, The other way to visualize derivatives (2018-05-19),
Blog Adaptation Vivek Verma,
https://www.3blue1brown.com/lessons/derivatives-and-transforms/ .
All bodies and inherited suppliers: NOT_RUN_USER_DEFERRED.

The finite truncations are actual iterates of 1+1/x. Positive starts supply all
nonzero denominators, enter [1,2] after two steps, and converge through an actual
two-step contraction. Neither a convergent orbit nor stability is assumed.
The negative fixed point and poles are retained separately from this domain.
-/

namespace GRWTSK.Sequences.GoldenFractionIteration

open Filter Set
open scoped Topology

noncomputable def step (x : ℝ) : ℝ := 1+1/x
noncomputable def orbit (x : ℝ) : ℕ → ℝ
  | 0 => x
  | n+1 => step (orbit x n)

@[simp] theorem orbit_zero (x : ℝ) : orbit x 0 = x := rfl
@[simp] theorem orbit_succ (x : ℝ) (n : ℕ) : orbit x (n+1) = step (orbit x n) := rfl

theorem orbit_add (x : ℝ) (m n : ℕ) : orbit (orbit x m) n = orbit x (m+n) := by
  induction n with
  | zero => simp
  | succ n ih => simp [ih,Nat.add_assoc]

theorem step_positive {x : ℝ} (hx : 0 < x) : 0 < step x := by
  dsimp [step]
  positivity

theorem orbit_positive {x : ℝ} (hx : 0 < x) (n : ℕ) : 0 < orbit x n := by
  induction n with
  | zero => exact hx
  | succ n ih => exact step_positive ih

theorem step_interval {x : ℝ} (hx : x ∈ Icc 1 2) : step x ∈ Icc 1 2 := by
  have hp : 0 < x := by linarith [hx.1]
  dsimp [step]
  constructor
  · have := one_div_pos.mpr hp
    linarith
  · have hi : 1/x ≤ (1 : ℝ) := (div_le_iff₀ hp).2 (by linarith [hx.1])
    linarith

theorem orbit_interval {x : ℝ} (hx : x ∈ Icc 1 2) (n : ℕ) : orbit x n ∈ Icc 1 2 := by
  induction n with
  | zero => exact hx
  | succ n ih => exact step_interval ih

theorem positive_entry {x : ℝ} (hx : 0 < x) : orbit x 2 ∈ Icc 1 2 := by
  have hi : 1 ≤ step x := by dsimp [step]; have := one_div_pos.mpr hx; linarith
  have hp := step_positive hx
  have hu : 1/step x ≤ (1 : ℝ) := (div_le_iff₀ hp).2 (by linarith)
  change step (step x) ∈ Icc 1 2
  dsimp [step] at *
  constructor <;> linarith [one_div_pos.mpr hp]

theorem golden_fixed : step Real.goldenRatio = Real.goldenRatio := by
  dsimp [step]
  field_simp [Real.goldenRatio_ne_zero]
  nlinarith [Real.goldenRatio_sq]

theorem conjugate_fixed : step Real.goldenConj = Real.goldenConj := by
  dsimp [step]
  have hn := Real.goldenConj_ne_zero
  field_simp [hn]
  nlinarith [Real.goldenConj_sq]

theorem conjugate_orbit (n : ℕ) : orbit Real.goldenConj n = Real.goldenConj := by
  induction n with
  | zero => rfl
  | succ n ih => rw [orbit_succ,ih,conjugate_fixed]

theorem two_step_formula {x : ℝ} (hx : 0 < x) :
    step (step x) = (2*x+1)/(x+1) := by
  have hn : x ≠ 0 := ne_of_gt hx
  have ha : x+1 ≠ 0 := by positivity
  dsimp [step]
  field_simp [hn,ha]
  <;> ring

theorem one_step_distance {x y : ℝ} (hx : x ∈ Icc 1 2) (hy : y ∈ Icc 1 2) :
    |step x-step y| ≤ |x-y| := by
  have hxp : 0 < x := by linarith [hx.1]
  have hyp : 0 < y := by linarith [hy.1]
  have he : step x-step y = -(x-y)/(x*y) := by
    dsimp [step]
    field_simp [ne_of_gt hxp,ne_of_gt hyp]
    <;> ring
  rw [he,abs_div,abs_neg,abs_of_pos (mul_pos hxp hyp)]
  apply (div_le_iff₀ (mul_pos hxp hyp)).2
  have hd : 1 ≤ x*y := by nlinarith [hx.1,hy.1]
  nlinarith [abs_nonneg (x-y)]

theorem two_step_distance {x y : ℝ} (hx : x ∈ Icc 1 2) (hy : y ∈ Icc 1 2) :
    |step (step x)-step (step y)| ≤ (1/4 : ℝ)*|x-y| := by
  have hp : 0 < x := by linarith [hx.1]
  have hq : 0 < y := by linarith [hy.1]
  rw [two_step_formula hp,two_step_formula hq]
  have he : (2*x+1)/(x+1)-(2*y+1)/(y+1) = (x-y)/((x+1)*(y+1)) := by
    field_simp [ne_of_gt (show 0 < x+1 by linarith),
      ne_of_gt (show 0 < y+1 by linarith)]
    <;> ring
  rw [he,abs_div,abs_of_pos (by positivity : 0 < (x+1)*(y+1))]
  apply (div_le_iff₀ (by positivity : 0 < (x+1)*(y+1))).2
  have hd : 4 ≤ (x+1)*(y+1) := by nlinarith [hx.1,hy.1]
  nlinarith [abs_nonneg (x-y)]

theorem golden_interval : Real.goldenRatio ∈ Icc (1 : ℝ) 2 :=
  ⟨Real.one_lt_goldenRatio.le,Real.goldenRatio_lt_two.le⟩

theorem even_error {x : ℝ} (hx : x ∈ Icc 1 2) (m : ℕ) :
    |orbit x (2*m)-Real.goldenRatio| ≤ (1/4 : ℝ)^m*|x-Real.goldenRatio| := by
  induction m with
  | zero => simp
  | succ m ih =>
    have hs := two_step_distance (orbit_interval hx (2*m)) golden_interval
    simp only [golden_fixed] at hs
    have he : orbit x (2*(m+1)) = step (step (orbit x (2*m))) := by
      have hn : 2*(m+1) = (2*m+1)+1 := by omega
      rw [hn,orbit_succ,orbit_succ]
    rw [he,pow_succ]
    nlinarith

theorem odd_error {x : ℝ} (hx : x ∈ Icc 1 2) (m : ℕ) :
    |orbit x (2*m+1)-Real.goldenRatio| ≤ (1/4 : ℝ)^m*|x-Real.goldenRatio| := by
  have hs := one_step_distance (orbit_interval hx (2*m)) golden_interval
  rw [golden_fixed] at hs
  rw [orbit_succ]
  exact hs.trans (even_error hx m)

theorem every_iterate_error {x : ℝ} (hx : x ∈ Icc 1 2) (n : ℕ) :
    |orbit x n-Real.goldenRatio| ≤ (1/4 : ℝ)^(n/2)*|x-Real.goldenRatio| := by
  have hm := Nat.mod_lt n (by omega : 0 < 2)
  by_cases hz : n%2 = 0
  · have he : n = 2*(n/2) := by omega
    conv_lhs => rw [he]
    exact even_error hx (n/2)
  · have he : n = 2*(n/2)+1 := by omega
    conv_lhs => rw [he]
    exact odd_error hx (n/2)

theorem interval_orbit_tendsto {x : ℝ} (hx : x ∈ Icc 1 2) :
    Tendsto (orbit x) atTop (𝓝 Real.goldenRatio) := by
  have hp : Tendsto (fun n : ℕ => (1/4 : ℝ)^(n/2)) atTop (𝓝 (0 : ℝ)) :=
    (tendsto_pow_atTop_nhds_zero_of_lt_one (by norm_num : (0 : ℝ) ≤ 1/4)
      (by norm_num : (1/4 : ℝ) < 1)).comp (Nat.tendsto_div_const_atTop (by omega : 2 ≠ 0))
  apply tendsto_iff_norm_sub_tendsto_zero.mpr
  have hb := hp.mul_const |x-Real.goldenRatio|
  apply squeeze_zero (fun _ => norm_nonneg _)
    (fun n => by simpa only [Real.norm_eq_abs] using every_iterate_error hx n)
  simpa using hb

/-- The original finite truncations converge, not just an even subsequence. -/
theorem positive_orbit_tendsto {x : ℝ} (hx : 0 < x) :
    Tendsto (orbit x) atTop (𝓝 Real.goldenRatio) := by
  have hs := interval_orbit_tendsto (positive_entry hx)
  have he : orbit (orbit x 2) = (fun n => orbit x (n+2)) := by
    funext n
    rw [orbit_add]
    congr 1 <;> omega
  have ht : Tendsto (fun n => orbit x (n+2)) atTop (𝓝 Real.goldenRatio) := by
    rwa [he] at hs
  exact (tendsto_add_atTop_iff_nat 2).mp ht

/-- The source's positive finite continued-fraction truncations start at1. -/
theorem continued_fraction_one :
    orbit 1 1 = 2 ∧ orbit 1 2 = (3/2 : ℝ) ∧ orbit 1 3 = (5/3 : ℝ) ∧
    Tendsto (orbit 1) atTop (𝓝 Real.goldenRatio) := by
  refine ⟨?_,?_,?_,positive_orbit_tendsto (by norm_num : (0 : ℝ) < 1)⟩
  all_goals norm_num [orbit,step]

end GRWTSK.Sequences.GoldenFractionIteration
