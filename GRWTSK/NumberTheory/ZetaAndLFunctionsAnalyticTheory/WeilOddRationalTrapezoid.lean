/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.MeasureTheory.Integral.IntervalIntegral.TrapezoidalRule
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Tactic

/-!
# Half-line trapezoid error for the odd rational boundary kernel

Apply Mathlib's `trapezoidal_error_le_of_c2` from
`Mathlib/MeasureTheory/Integral/IntervalIntegral/TrapezoidalRule.lean`
at commit `d13f23b723b8a846827a245b89c10fc7d3f11612` to the literal
rational factor of the odd boundary signal. The second derivative on a cell
has absolute value at most 24 times the square of the kernel at the
left endpoint. Summation preserves the endpoint half-correction.
This permits a uniform high-mode signal enclosure with a much shorter
partial sum. The exponential correction is a separate scalar estimate.

Local attribution is to grwtsk contributors.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Filter
open scoped Interval Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddRationalTrapezoid

/-- The unexponentiated continuous boundary summand on the index line. -/
def kernel (w x : ℝ) : ℝ := ((2*x + 1/2)^2 + w^2)⁻¹

private theorem kernel_contDiff {w : ℝ} (hw : 0 < w) : ContDiff ℝ 2 (kernel w) := by
  unfold kernel
  have h : ContDiff ℝ 2 (fun x : ℝ => (2*x+1/2)^2+w^2) := by fun_prop
  exact h.inv (fun x => by positivity)

private theorem kernel_den_deriv (w x : ℝ) :
    HasDerivAt (fun y : ℝ => (2*y+1/2)^2+w^2) (4*(2*x+1/2)) x := by
  have hA : HasDerivAt (fun y : ℝ => 2*y+1/2) 2 x := by
    simpa only [id_eq, mul_one] using
      ((hasDerivAt_id x).const_mul (2 : ℝ)).add_const (1/2 : ℝ)
  convert (hA.pow 2).add_const (w^2) using 1
  norm_num
  ring

private theorem kernel_deriv {w : ℝ} (hw : 0 < w) (x : ℝ) :
    HasDerivAt (kernel w) (-4*(2*x+1/2)/((2*x+1/2)^2+w^2)^2) x := by
  unfold kernel
  convert (kernel_den_deriv w x).inv (by positivity) using 1
  ring

private theorem kernel_deriv2 {w : ℝ} (hw : 0 < w) (x : ℝ) :
    iteratedDeriv 2 (kernel w) x =
      8*(3*(2*x+1/2)^2-w^2)/((2*x+1/2)^2+w^2)^3 := by
  have hFun : deriv (kernel w) = fun y => -4*(2*y+1/2)/((2*y+1/2)^2+w^2)^2 :=
    funext (fun y => (kernel_deriv hw y).deriv)
  change iteratedDeriv (1+1) (kernel w) x = _
  rw [iteratedDeriv_succ, iteratedDeriv_one, hFun]
  have hA : HasDerivAt (fun y : ℝ => 2*y+1/2) 2 x := by
    simpa only [id_eq, mul_one] using
      ((hasDerivAt_id x).const_mul (2 : ℝ)).add_const (1/2 : ℝ)
  have hD : HasDerivAt (fun y : ℝ => ((2*y+1/2)^2+w^2)^2)
      (8*(2*x+1/2)*((2*x+1/2)^2+w^2)) x := by
    convert (kernel_den_deriv w x).pow 2 using 1
    norm_num
    ring
  have hDen : (2*x+1/2)^2+w^2 ≠ 0 := by positivity
  have h := (hA.const_mul (-4)).div hD (pow_ne_zero 2 hDen)
  convert h.deriv using 1
  field_simp [hDen]
  ring

private theorem kernel_second_abs_le {w x a : ℝ} (hw : 0 < w) (ha : 0 ≤ a) (hx : a ≤ x) :
    |iteratedDeriv 2 (kernel w) x| ≤ 24 * (kernel w a)^2 := by
  let A : ℝ := 2*a+1/2
  let X : ℝ := 2*x+1/2
  have hA : 0 < A := by unfold A; linarith
  have hAX : A ≤ X := by unfold A X; linarith
  have hX : 0 < X := hA.trans_le hAX
  have hden : 0 < X^2+w^2 := by positivity
  have hdenA : 0 < A^2+w^2 := by positivity
  have hmono : A^2+w^2 ≤ X^2+w^2 :=
    add_le_add (pow_le_pow_left₀ hA.le hAX 2) le_rfl
  have hnum : |3*X^2-w^2| ≤ 3*(X^2+w^2) := by
    rw [abs_le]
    constructor <;> nlinarith only [sq_nonneg X, sq_nonneg w]
  rw [kernel_deriv2 hw]
  change |8*(3*X^2-w^2)/(X^2+w^2)^3| ≤ 24 * ((A^2+w^2)⁻¹)^2
  rw [abs_div, abs_mul, abs_of_nonneg (by norm_num : (0:ℝ) ≤ 8),
    abs_of_pos (pow_pos hden _)]
  calc
    _ ≤ (8 * (3*(X^2+w^2))) / (X^2+w^2)^3 :=
      div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hnum (by norm_num)) (by positivity)
    _ = 24 * ((X^2+w^2)⁻¹)^2 := by field_simp [hden.ne']; ring
    _ ≤ _ := mul_le_mul_of_nonneg_left
      (pow_le_pow_left₀ (inv_nonneg.mpr hden.le) (inv_anti₀ hdenA hmono) 2) (by norm_num)

/-- One unit cell costs twice the square of its left-endpoint summand. -/
theorem oneCell_error_le {w a : ℝ} (hw : 0 < w) (ha : 0 ≤ a) :
    |trapezoidal_error (kernel w) 1 a (a+1)| ≤ 2 * (kernel w a)^2 := by
  have hLt : a < a+1 := by linarith
  have h := trapezoidal_error_le_of_c2 (kernel_contDiff hw).contDiffOn
    (ζ := 24 * (kernel w a)^2) (N := 1) (by
      intro x
      rw [uIcc_of_le hLt.le]
      by_cases hx : x ∈ Icc a (a+1)
      · rw [iteratedDerivWithin_eq_iteratedDeriv (uniqueDiffOn_Icc hLt)
          (kernel_contDiff hw).contDiffAt hx]
        exact kernel_second_abs_le hw ha hx.1
      · rw [iteratedDerivWithin_succ, derivWithin_zero_of_notMem_closure
          (by rwa [closure_Icc]), abs_zero]
        positivity) (by decide : 0 < 1)
  refine h.trans_eq ?_
  rw [show a+1-a = 1 by ring]
  norm_num
  ring

private theorem kernel_nonneg (w x : ℝ) : 0 ≤ kernel w x :=
  inv_nonneg.mpr (by positivity)

private theorem kernel_integrableOn {w a : ℝ} (hw : 0 < w) (ha : 0 ≤ a) :
    IntegrableOn (kernel w) (Ioi a) := by
  have hInt := (integrable_inv_one_add_sq.const_mul (4 : ℝ)).integrableOn (s := Ioi a)
  refine hInt.mono' (kernel_contDiff hw).continuous.aestronglyMeasurable ?_
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
  have hx0 : 0 ≤ x := ha.trans hx.le
  rw [Real.norm_eq_abs, abs_of_nonneg (kernel_nonneg w x)]
  have h : (1+x^2)/4 ≤ (2*x+1/2)^2+w^2 := by nlinarith
  exact (inv_anti₀ (by positivity) h).trans_eq (by
    field_simp [show 1+x^2 ≠ 0 by positivity])

private theorem kernel_summable {w a : ℝ} (ha : 0 ≤ a) :
    Summable (fun j : ℕ => kernel w (a+j)) := by
  have hp := (Real.summable_one_div_nat_pow (p := 2)).2 (by decide)
  have hshift := (summable_nat_add_iff (f := fun j : ℕ => 1 / (j : ℝ)^2) 1).2 hp
  refine Summable.of_nonneg_of_le (fun _ => kernel_nonneg _ _) (fun j => ?_) (hshift.mul_left 4)
  have hj : 0 ≤ (j : ℝ) := Nat.cast_nonneg _
  have hRate : ((j : ℝ)+1)/2 ≤ 2*(a+j)+1/2 := by linarith
  have hden : ((j : ℝ)+1)^2/4 ≤ (2*(a+j)+1/2)^2+w^2 := by
    have hSq := pow_le_pow_left₀ (by positivity : 0 ≤ ((j : ℝ)+1)/2) hRate 2
    nlinarith only [hSq, sq_nonneg w]
  refine (inv_anti₀ (by positivity) hden).trans_eq ?_
  push_cast
  field_simp

private theorem kernel_sq_summable {w a : ℝ} (hw : 0 < w) (ha : 0 ≤ a) :
    Summable (fun j : ℕ => (kernel w (a+j))^2) := by
  refine Summable.of_nonneg_of_le (fun _ => sq_nonneg _) (fun j => ?_)
    ((kernel_summable (w := w) ha).mul_left (w^2)⁻¹)
  rw [pow_two]
  exact mul_le_mul_of_nonneg_right (inv_anti₀ (by positivity)
    (le_add_of_nonneg_left (sq_nonneg _))) (kernel_nonneg _ _)

/-- Exact integral of the rational summand on a positive half-line. -/
theorem integral_kernel {w a : ℝ} (hw : 0 < w) (ha : 0 ≤ a) :
    (∫ x in Ioi a, kernel w x) =
      Real.pi/(4*w) - Real.arctan ((2*a+1/2)/w)/(2*w) := by
  let z (x : ℝ) := (2*x+1/2)/w
  let F (x : ℝ) := Real.arctan (z x)/(2*w)
  have hDeriv (x : ℝ) : HasDerivAt F (kernel w x) x := by
    have hz : HasDerivAt z (2/w) x := by
      unfold z
      simpa only [id_eq, mul_one] using
        (((hasDerivAt_id x).const_mul (2 : ℝ)).add_const (1/2 : ℝ)).div_const w
    have h := ((Real.hasDerivAt_arctan' (z x)).comp x hz).div_const (2*w)
    change HasDerivAt (fun x => (Real.arctan ∘ z) x/(2*w))
      (((2*x+1/2)^2+w^2)⁻¹) x
    convert h using 1
    unfold z
    field_simp [hw.ne', show (2*x+1/2)^2+w^2 ≠ 0 by positivity,
      show 1+((2*x+1/2)/w)^2 ≠ 0 by positivity]
    ring
  have hz : Tendsto z atTop atTop := by
    apply (tendsto_div_const_atTop_of_pos hw).2
    exact tendsto_atTop_add_const_right _ _ (tendsto_id.const_mul_atTop' (by norm_num))
  have hF : Tendsto F atTop (𝓝 ((Real.pi/2)/(2*w))) :=
    ((tendsto_nhds_of_tendsto_nhdsWithin Real.tendsto_arctan_atTop).comp hz).div_const _
  have h := integral_Ioi_of_hasDerivAt_of_tendsto' (fun x _ => hDeriv x)
    (kernel_integrableOn hw ha) hF
  simpa only [F, z, div_div, show (2:ℝ)*(2*w)=4*w by ring] using h

/-- Summing unit cells leaves exactly half the first summand in the
integral approximation to the literal infinite series. -/
theorem halfLine_error_le {w a : ℝ} (hw : 0 < w) (ha : 0 ≤ a) :
    |(∑' j : ℕ, kernel w (a+j)) -
      ((∫ x in Ioi a, kernel w x) + kernel w a / 2)| ≤
      2 * ∑' j : ℕ, (kernel w (a+j))^2 := by
  have hInt := kernel_integrableOn hw ha
  have hSum := kernel_summable (w := w) ha
  have hSq := kernel_sq_summable hw ha
  let f := kernel w
  let x : ℕ → ℝ := fun j => a+j
  have hC := (kernel_contDiff hw).continuous
  have hPartial (N : ℕ) :
      |(∑ j ∈ Finset.range N, f (x j)) + (f (x N) - f (x 0))/2 -
        (∫ t in a..x N, f t)| ≤ 2 * ∑' j : ℕ, (f (x j))^2 := by
    have hIntSum : (∑ j ∈ Finset.range N, ∫ t in x j..x (j+1), f t) =
        ∫ t in a..x N, f t := by
      have h := intervalIntegral.sum_integral_adjacent_intervals (a := x) (n := N) (μ := volume)
        (fun j _ => hC.intervalIntegrable (x j) (x (j+1)))
      simpa only [x, Nat.cast_zero, add_zero] using h
    have hShiftSum : (∑ j ∈ Finset.range N, f (x (j+1))) =
        (∑ j ∈ Finset.range N, f (x j)) + f (x N) - f (x 0) := by
      have h₁ := Finset.sum_range_succ (fun j => f (x j)) N
      have h₂ := Finset.sum_range_succ' (fun j => f (x j)) N
      linarith
    have hEq :
        (∑ j ∈ Finset.range N, trapezoidal_error f 1 (x j) (x (j+1))) =
          (∑ j ∈ Finset.range N, f (x j)) + (f (x N) - f (x 0))/2 -
            (∫ t in a..x N, f t) := by
      simp only [trapezoidal_error, Finset.sum_sub_distrib, hIntSum, trapezoidal_integral_one]
      have hstep (j : ℕ) : x (j+1) - x j = 1 := by simp [x]
      simp_rw [hstep, ← Finset.mul_sum, Finset.sum_add_distrib, hShiftSum]
      ring
    rw [← hEq]
    refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
    calc
      _ ≤ ∑ j ∈ Finset.range N, 2 * (f (x j))^2 := by
        apply Finset.sum_le_sum
        intro j hj
        have hx : 0 ≤ x j := by dsimp [x]; positivity
        simpa only [f, x, Nat.cast_add, Nat.cast_one, add_assoc] using oneCell_error_le hw hx
      _ ≤ _ := by
        rw [← Finset.mul_sum]
        exact mul_le_mul_of_nonneg_left (hSq.sum_le_tsum _ (fun _ _ => sq_nonneg _)) (by norm_num)
  have hxInf : Tendsto x atTop atTop := by
    exact tendsto_atTop_add_const_left atTop a tendsto_natCast_atTop_atTop
  have hLimit := ((hSum.hasSum.tendsto_sum_nat.add
    ((hSum.tendsto_atTop_zero.sub (tendsto_const_nhds (x := f (x 0)))).div_const 2)).sub
      (intervalIntegral_tendsto_integral_Ioi a hInt hxInf)).abs
  have hResult := le_of_tendsto hLimit (Eventually.of_forall hPartial)
  convert hResult using 1
  congr 1
  simp only [f, x, Nat.cast_zero, add_zero]
  ring


private theorem kernel_antitone {w : ℝ} (hw : 0 < w) : AntitoneOn (kernel w) (Ici 0) := by
  intro x hx y hy hxy
  have hA : 0 ≤ 2*x+1/2 := by have h : 0 ≤ x := hx; positivity
  have hRate : 2*x+1/2 ≤ 2*y+1/2 := by linarith
  exact inv_anti₀ (by positivity) (add_le_add (pow_le_pow_left₀ hA hRate 2) le_rfl)

private theorem sum_kernel_le {w : ℝ} (hw : 0 < w) :
    (∑' j : ℕ, kernel w j) ≤ Real.pi/(4*w) + 1/w^2 := by
  have hi := (kernel_antitone hw).tsum_le_integral
    (kernel_integrableOn hw (a := 0) le_rfl) (fun x _ => kernel_nonneg w x)
  rw [integral_kernel hw (a := 0) le_rfl] at hi
  have hArc : 0 ≤ Real.arctan ((2*(0:ℝ)+1/2)/w) := by
    rw [← Real.arctan_zero]
    exact Real.arctan_strictMono.monotone (by positivity)
  have h0 : kernel w 0 ≤ 1/w^2 := by
    rw [one_div]
    unfold kernel
    exact inv_anti₀ (by positivity) (le_add_of_nonneg_left (sq_nonneg _))
  have hs := (kernel_summable (w := w) (a := 0) le_rfl)
  have he := hs.tsum_eq_zero_add
  simp only [zero_add, Nat.cast_zero, Nat.cast_add, Nat.cast_one] at he
  linarith only [hi, h0, he, div_nonneg hArc (by positivity : 0 ≤ 2*w)]

private theorem arctan_enclosure {x : ℝ} (hx : 0 ≤ x) :
    x - x^3/3 ≤ Real.arctan x ∧ Real.arctan x ≤ x := by
  have hF : IntervalIntegrable (fun t : ℝ => (1+t^2)⁻¹) volume 0 x :=
    integrable_inv_one_add_sq.intervalIntegrable
  have hArctan : (∫ t : ℝ in 0..x, (1+t^2)⁻¹) = Real.arctan x := by
    rw [integral_inv_one_add_sq, Real.arctan_zero, sub_zero]
  have hPoly : Continuous (fun t : ℝ => 1-t^2) := by fun_prop
  have hLower := intervalIntegral.integral_mono_on hx (hPoly.intervalIntegrable 0 x) hF
    (fun t _ => by
      rw [← one_div]
      apply (le_div_iff₀ (by positivity : 0 < 1+t^2)).2
      nlinarith only [sq_nonneg (t^2)])
  have hUpper := intervalIntegral.integral_mono_on hx hF
    (continuous_const.intervalIntegrable 0 x) (fun t _ =>
      inv_le_one_of_one_le₀ (by nlinarith [sq_nonneg t]))
  rw [hArctan] at hLower hUpper
  have hSq : Continuous (fun t : ℝ => t^2) := by fun_prop
  rw [intervalIntegral.integral_sub (continuous_const.intervalIntegrable 0 x)
    (hSq.intervalIntegrable 0 x), integral_pow] at hLower
  simp only [intervalIntegral.integral_const, sub_zero, smul_eq_mul, mul_one, zero_pow
    (by decide : 3 ≠ 0)] at hLower hUpper
  exact ⟨by linarith, hUpper⟩

private theorem endpoint_error {w : ℝ} (hw : 0 < w) :
    |((∫ x in Ioi 0, kernel w x)+kernel w 0/2) -
      (Real.pi/(4*w)+1/(4*w^2))| ≤ 1/(6*w^4) := by
  let t := 1/(2*w)
  have hT : 0 ≤ t := by positivity
  obtain ⟨hl,hu⟩ := arctan_enclosure hT
  have hw2 : 0 < 2*w := by positivity
  have hInt : (∫ x in Ioi 0, kernel w x) = Real.pi/(4*w)-Real.arctan t/(2*w) := by
    rw [integral_kernel hw le_rfl]
    have hArg : (2*(0:ℝ)+1/2)/w = t := by unfold t; field_simp [hw.ne']; ring
    rw [hArg]
  have h1 : 0 ≤ t - Real.arctan t := sub_nonneg.mpr hu
  have h2 : t - Real.arctan t ≤ t^3/3 := by linarith
  have h3 : (t - Real.arctan t)/(2*w) ≤ 1/(48*w^4) := by
    calc
      _ ≤ (t^3/3)/(2*w) := div_le_div_of_nonneg_right h2 hw2.le
      _ = _ := by unfold t; field_simp [hw.ne']; ring
  have h4 : 0 ≤ 1/(2*w^2)-kernel w 0/2 := by
    have h : kernel w 0 ≤ 1/w^2 := by
      rw [one_div]
      unfold kernel
      exact inv_anti₀ (by positivity) (le_add_of_nonneg_left (sq_nonneg _))
    have hHalf : 1/(2*w^2) = (1/w^2)/2 := by field_simp [hw.ne']
    rw [hHalf]
    linarith
  have h5 : 1/(2*w^2)-kernel w 0/2 ≤ 1/(8*w^4) := by
    have hx : 0 < (1/4:ℝ)+w^2 := by positivity
    have hEq : 1/(2*w^2)-kernel w 0/2 = 1/(8*w^2)/(1/4+w^2) := by
      unfold kernel
      norm_num
      field_simp [hw.ne', hx.ne']
      ring
    rw [hEq]
    calc
      _ ≤ 1/(8*w^2)/w^2 :=
        div_le_div_of_nonneg_left (by positivity) (by positivity) (by linarith)
      _ = _ := by ring
  have hSplit : ((∫ x in Ioi 0, kernel w x)+kernel w 0/2) -
      (Real.pi/(4*w)+1/(4*w^2)) =
      (t-Real.arctan t)/(2*w) - (1/(2*w^2)-kernel w 0/2) := by
    rw [hInt]
    unfold t
    field_simp [hw.ne']
    ring
  rw [hSplit, abs_le]
  have hA := div_nonneg h1 hw2.le
  have hpos : 0 ≤ (w^4)⁻¹ := by positivity
  constructor <;> simp only [div_eq_mul_inv, mul_inv_rev] at * <;> linarith

/-- The complete unexponentiated boundary sum with its leading integral
and first rational correction. -/
theorem abs_sum_sub_highApprox_le {w : ℝ} (hw : 0 < w) :
    |(∑' j : ℕ, kernel w j) - (Real.pi/(4*w)+1/(4*w^2))| ≤
      Real.pi/(2*w^3)+ (13/6)/w^4 := by
  have hTr := halfLine_error_le hw (a := 0) le_rfl
  simp only [zero_add] at hTr
  have hSq : (∑' j : ℕ, (kernel w j)^2) ≤ (w^2)⁻¹ * (∑' j : ℕ, kernel w j) := by
    rw [← tsum_mul_left]
    have hs1 : Summable (fun j : ℕ => kernel w j) := by
      simpa only [zero_add] using kernel_summable (w := w) (a := 0) le_rfl
    have hs2 : Summable (fun j : ℕ => (kernel w j)^2) := by
      simpa only [zero_add] using kernel_sq_summable hw (a := 0) le_rfl
    refine hs2.tsum_le_tsum ?_ (hs1.mul_left _)
    intro j
    have h : kernel w j ≤ (w^2)⁻¹ := by
      unfold kernel
      exact inv_anti₀ (by positivity) (le_add_of_nonneg_left (sq_nonneg _))
    rw [pow_two]
    exact mul_le_mul_of_nonneg_right h (kernel_nonneg _ _)
  have hPr := mul_le_mul_of_nonneg_left ((hSq.trans
    (mul_le_mul_of_nonneg_left (sum_kernel_le hw) (by positivity)))) (by norm_num : (0:ℝ) ≤ 2)
  have hErr := endpoint_error hw
  refine (abs_sub_le _ ((∫ x in Ioi 0, kernel w x) + kernel w 0/2) _).trans ?_
  refine (add_le_add hTr hErr).trans ?_
  refine (add_le_add hPr le_rfl).trans_eq ?_
  field_simp [hw.ne']
  ring


/-- An explicit cubic tail radius for a retained rational sum. -/
theorem halfLine_error_le_invCube {w a : ℝ} (hw : 0 < w) (ha : 1 < a) :
    |(∑' j : ℕ, kernel w (a+j)) -
      ((∫ x in Ioi a, kernel w x) + kernel w a/2)| ≤ 1/(8*(a-1)^3) := by
  have ha0 : 0 ≤ a := by linarith
  refine (halfLine_error_le hw ha0).trans ?_
  let F (j : ℕ) := 1/(16*(a+j-1)^3)
  have hPoint (j : ℕ) : (kernel w (a+j))^2 ≤ F j - F (j+1) := by
    let x := a+j-1
    have hx : 0 < x := by unfold x; linarith [Nat.cast_nonneg (α := ℝ) j]
    have hX : 0 < x+1 := by positivity
    have hA : 0 < a+(j:ℝ) := by positivity
    have hDen : (2*(a+(j:ℝ)))^2 ≤ (2*(a+(j:ℝ))+1/2)^2+w^2 := by
      apply le_add_of_le_of_nonneg _ (sq_nonneg _)
      exact pow_le_pow_left₀ (by positivity) (by linarith) 2
    have hBound : kernel w (a+j) ≤ ((2*(a+(j:ℝ)))^2)⁻¹ :=
      inv_anti₀ (by positivity) hDen
    have hEq : 1/(16*(a+(j:ℝ))^4) = ((2*(a+(j:ℝ)))^2)⁻¹ ^ 2 := by
      field_simp [hA.ne']
      ring
    calc
      _ ≤ 1/(16*(a+(j:ℝ))^4) := by
        rw [hEq]
        exact pow_le_pow_left₀ (kernel_nonneg _ _) hBound 2
      _ ≤ F j - F (j+1) := by
        have hXA : a+(j:ℝ) = x+1 := by unfold x; ring
        have hNext : a+((j+1:ℕ):ℝ)-1 = x+1 := by push_cast; unfold x; ring
        change 1/(16*(a+(j:ℝ))^4) ≤ 1/(16*x^3) - 1/(16*(a+((j+1:ℕ):ℝ)-1)^3)
        rw [hXA,hNext]
        apply (le_of_mul_le_mul_right _ (by positivity : 0 < 16*x^3*(x+1)^4))
        field_simp [hx.ne',hX.ne']
        nlinarith [sq_nonneg x, pow_nonneg hx.le 3]
  have hTel (N : ℕ) : (∑ j ∈ Finset.range N, (F j - F (j+1))) = F 0 - F N := by
    induction N with
    | zero => simp
    | succ N ih => rw [Finset.sum_range_succ, ih]; ring
  have hPartial (N : ℕ) : (∑ j ∈ Finset.range N, (kernel w (a+j))^2) ≤ F 0 := by
    refine (Finset.sum_le_sum (fun j _ => hPoint j)).trans ?_
    rw [hTel]
    have hN : 0 ≤ a+(N:ℝ)-1 := by linarith [Nat.cast_nonneg (α := ℝ) N]
    exact sub_le_self _ (by unfold F; positivity)
  have hSum := le_of_tendsto (kernel_sq_summable hw ha0).hasSum.tendsto_sum_nat
    (Eventually.of_forall hPartial)
  refine (mul_le_mul_of_nonneg_left hSum (by norm_num : (0:ℝ) ≤ 2)).trans_eq ?_
  simp only [F,Nat.cast_zero,add_zero]
  field_simp [sub_ne_zero.mpr ha.ne']
  norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.OddRationalTrapezoid
