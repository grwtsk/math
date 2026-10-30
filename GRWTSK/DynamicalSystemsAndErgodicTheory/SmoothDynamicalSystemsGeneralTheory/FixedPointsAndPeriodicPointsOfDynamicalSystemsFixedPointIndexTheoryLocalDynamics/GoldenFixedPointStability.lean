import GRWTSK.RealFunctions.FunctionsOfOneVariable.DifferentiationRealFunctionsOfOneVariableGeneralTheoryGeneralizedDerivativesMeanValueTheorems.DerivativeLocalTransform
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv

/-!
# Actual stable and repelling neighborhoods for the golden-fraction map

Local attribution: grwtsk contributors.
Grant Sanderson, The other way to visualize derivatives (2018-05-19),
Blog Adaptation Vivek Verma,
https://www.3blue1brown.com/lessons/derivatives-and-transforms/ .
All bodies and inherited suppliers: NOT_RUN_USER_DEFERRED.

Actual distances expand by more than two in a concrete punctured neighborhood
of the conjugate. A nonfixed start cannot stay there forever; every denominator
before its first exit is nonzero. At the positive fixed point actual uniform
in-time stability is returned alongside the independent attraction theorem.
No global classification of negative-start basins is inferred.
-/

namespace GRWTSK.Dynamics.GoldenFixedPointStability

open Set Filter
open GRWTSK.Sequences.GoldenFractionIteration
open GRWTSK.RealAnalysis.DerivativeLocalTransform
open scoped Topology

theorem conjugate_rational_bounds : (-5/8 : ℝ) < Real.goldenConj ∧ Real.goldenConj < -1/2 := by
  have hs := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 5)
  have hp := Real.sqrt_nonneg (5 : ℝ)
  have hl : (2 : ℝ) < Real.sqrt 5 := by nlinarith
  have hu : Real.sqrt 5 < (9/4 : ℝ) := by nlinarith
  dsimp [Real.goldenConj]
  constructor <;> linarith

theorem conjugate_derivative_gt_two : 2 < |deriv step Real.goldenConj| := by
  rw [(step_derivative Real.goldenConj Real.goldenConj_ne_zero).deriv]
  have hp : 0 < Real.goldenConj^2 := sq_pos_of_ne_zero Real.goldenConj_ne_zero
  rw [abs_div,abs_of_pos hp]
  norm_num only [abs_neg,abs_one]
  apply (lt_div_iff₀ hp).2
  nlinarith [Real.goldenConj_sq,conjugate_rational_bounds.2]

theorem fixed_point_difference (x p : ℝ) (hx : x ≠ 0) (hp : p ≠ 0) (hf : step p = p) :
    step x-p = -(x-p)/(x*p) := by
  calc step x-p = step x-step p := by rw [hf]
       _ = -(x-p)/(x*p) := by
         dsimp [step]
         field_simp [hx,hp]
         <;> ring

/-- Every point in this actual neighborhood is away from the pole. -/
theorem conjugate_neighborhood_domain (x : ℝ) (hx : |x-Real.goldenConj| < (1/8 : ℝ)) :
    (-3/4 : ℝ) < x ∧ x < -3/8 ∧ x ≠ 0 := by
  have hd := abs_lt.mp hx
  have hb := conjugate_rational_bounds
  constructor
  · linarith
  constructor
  · linarith
  · linarith

theorem conjugate_neighborhood_repulsion (x : ℝ)
    (hx : |x-Real.goldenConj| < (1/8 : ℝ)) (hn : x ≠ Real.goldenConj) :
    2*|x-Real.goldenConj| < |step x-Real.goldenConj| := by
  obtain ⟨hl,hu,hzero⟩ := conjugate_neighborhood_domain x hx
  have hp : 0 < x*Real.goldenConj := mul_pos_of_neg_of_neg (by linarith) Real.goldenConj_neg
  have hm : x*Real.goldenConj < (1/2 : ℝ) := by
    calc x*Real.goldenConj = (-x)*(-Real.goldenConj) := by ring
         _ < (3/4)*(-Real.goldenConj) :=
           mul_lt_mul_of_pos_right (by linarith) (neg_pos.mpr Real.goldenConj_neg)
         _ < (3/4)*(5/8) :=
           mul_lt_mul_of_pos_left (by linarith [conjugate_rational_bounds.1]) (by norm_num)
         _ < 1/2 := by norm_num
  rw [fixed_point_difference x Real.goldenConj hzero Real.goldenConj_ne_zero conjugate_fixed,
    abs_div,abs_neg,abs_of_pos hp]
  apply (lt_div_iff₀ hp).2
  have hd : 0 < |x-Real.goldenConj| := abs_pos.mpr (sub_ne_zero.mpr hn)
  nlinarith

/-- A nonfixed orbit must leave the concrete neighborhood in finitely many steps. -/
theorem conjugate_finite_escape (x : ℝ) (hx : x ≠ Real.goldenConj) :
    ∃ N : ℕ, (1/8 : ℝ) ≤ |orbit x N-Real.goldenConj| := by
  by_contra hn
  have hstay : ∀ n : ℕ, |orbit x n-Real.goldenConj| < (1/8 : ℝ) := by
    intro n
    exact lt_of_not_ge (fun h => hn ⟨n,h⟩)
  have hd : 0 < |x-Real.goldenConj| := abs_pos.mpr (sub_ne_zero.mpr hx)
  have hl : ∀ n : ℕ, (2 : ℝ)^n*|x-Real.goldenConj| ≤ |orbit x n-Real.goldenConj| := by
    intro n
    induction n with
    | zero => simp
    | succ n ih =>
      have hp : 0 < |orbit x n-Real.goldenConj| :=
        lt_of_lt_of_le (mul_pos (by positivity) hd) ih
      have he := conjugate_neighborhood_repulsion (orbit x n) (hstay n)
        (sub_ne_zero.mp (abs_pos.mp hp))
      rw [orbit_succ,pow_succ]
      nlinarith
  have hg : Tendsto (fun n : ℕ => (2 : ℝ)^n*|x-Real.goldenConj|) atTop atTop :=
    (tendsto_pow_atTop_atTop_of_one_lt (by norm_num : (1 : ℝ) < 2)).atTop_mul_const hd
  obtain ⟨N,hN⟩ := (hg.eventually (eventually_ge_atTop (1/8 : ℝ))).exists
  exact (not_le_of_gt (hstay N)) (hN.trans (hl N))

/-- The finite escape has valid nonzero denominators at every preceding iterate. -/
theorem conjugate_first_escape_domain (x : ℝ) (hx : x ≠ Real.goldenConj) :
    ∃ N : ℕ, (1/8 : ℝ) ≤ |orbit x N-Real.goldenConj| ∧
      ∀ k < N, orbit x k ≠ 0 := by
  classical
  have he := conjugate_finite_escape x hx
  refine ⟨Nat.find he,Nat.find_spec he,fun k hk => ?_⟩
  have hd : |orbit x k-Real.goldenConj| < (1/8 : ℝ) :=
    lt_of_not_ge (Nat.find_min he hk)
  exact (conjugate_neighborhood_domain (orbit x k) hd).2.2

/-- Actual uniform-in-time Lyapunov stability, with all iterates quantified after the radius. -/
theorem golden_lyapunov_stability (ε : ℝ) (hε : 0 < ε) :
    ∃ η > 0, ∀ x : ℝ, |x-Real.goldenRatio| < η →
      ∀ n : ℕ, |orbit x n-Real.goldenRatio| < ε := by
  let η := min ε (min (Real.goldenRatio-1) (2-Real.goldenRatio))
  have hη : 0 < η := lt_min hε (lt_min (by linarith [Real.one_lt_goldenRatio])
    (by linarith [Real.goldenRatio_lt_two]))
  refine ⟨η,hη,fun x hx n => ?_⟩
  have hxe : |x-Real.goldenRatio| < ε := lt_of_lt_of_le hx (min_le_left _ _)
  have hxl : |x-Real.goldenRatio| < Real.goldenRatio-1 :=
    lt_of_lt_of_le hx ((min_le_right _ _).trans (min_le_left _ _))
  have hxu : |x-Real.goldenRatio| < 2-Real.goldenRatio :=
    lt_of_lt_of_le hx ((min_le_right _ _).trans (min_le_right _ _))
  have hb : x ∈ Icc (1 : ℝ) 2 := by
    have hl := abs_lt.mp hxl
    have hu := abs_lt.mp hxu
    constructor <;> linarith
  have hp : (1/4 : ℝ)^(n/2) ≤ 1 := pow_le_one₀ (by norm_num) (by norm_num)
  calc |orbit x n-Real.goldenRatio| ≤ (1/4 : ℝ)^(n/2)*|x-Real.goldenRatio| :=
         every_iterate_error hb n
       _ ≤ |x-Real.goldenRatio| := by nlinarith [abs_nonneg (x-Real.goldenRatio)]
       _ < ε := hxe

/-- The same actual neighborhood supplies stability and the independent attraction consumer. -/
theorem golden_stable_attracting (ε : ℝ) (hε : 0 < ε) :
    ∃ η > 0, ∀ x : ℝ, |x-Real.goldenRatio| < η →
      Tendsto (orbit x) atTop (𝓝 Real.goldenRatio) ∧
      ∀ n : ℕ, |orbit x n-Real.goldenRatio| < ε := by
  obtain ⟨d,hd,hc⟩ := golden_lyapunov_stability ε hε
  refine ⟨min d (Real.goldenRatio/2),lt_min hd (by positivity),fun x hx => ?_⟩
  have hxd : |x-Real.goldenRatio| < d := lt_of_lt_of_le hx (min_le_left _ _)
  have hxp : |x-Real.goldenRatio| < Real.goldenRatio/2 :=
    lt_of_lt_of_le hx (min_le_right _ _)
  have hp : 0 < x := by
    have h := abs_lt.mp hxp
    linarith [Real.goldenRatio_pos]
  exact ⟨positive_orbit_tendsto hp,hc x hxd⟩

/-- The source product-rule quiz is an actual derivative consumer, not an interactive receipt. -/
theorem source_product_derivative (x : ℝ) :
    HasDerivAt (fun t : ℝ => Real.sin t*t^2) (x^2*Real.cos x+2*x*Real.sin x) x := by
  have hd := (Real.hasDerivAt_sin x).mul ((hasDerivAt_id x).pow 2)
  convert hd using 1 <;> ring

end GRWTSK.Dynamics.GoldenFixedPointStability
