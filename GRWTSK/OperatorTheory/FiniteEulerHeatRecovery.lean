/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSpectralHeat

/-!
# Recovering diagonal heat data after finite Euler steps

All stages use the same spectral coordinates. If stage exposure is
`a`, its Euler multiplier is `1-a` and exact heat uses `exp(-a)`.
Decay-compensated Euler bias is bounded by the sum of squared stage
exposures. Observation noise still incurs the exact inverse gain.
-/

set_option autoImplicit false

noncomputable section

open scoped BigOperators

namespace GRWTSK.OperatorTheory.FiniteEulerHeatRecovery

open GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat (spectralHeat)
open GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat (diagonal dot)

/-- The compensated one-stage multiplier lies between `1-a²` and one. -/
theorem compensated_factor_bounds {a : ℝ} (ha : a ≤ 1) :
    1 - a ^ 2 ≤ Real.exp a * (1 - a) ∧
      0 ≤ Real.exp a * (1 - a) ∧ Real.exp a * (1 - a) ≤ 1 := by
  have hn : 0 ≤ 1 - a := sub_nonneg.mpr ha
  have lower : (1 + a) * (1 - a) ≤ Real.exp a * (1 - a) := by
    apply mul_le_mul_of_nonneg_right _ hn
    simpa only [add_comm] using Real.add_one_le_exp a
  have upper : 1 - a ≤ Real.exp (-a) := by
    simpa only [sub_eq_add_neg, add_comm] using Real.add_one_le_exp (-a)
  refine ⟨?_, mul_nonneg (Real.exp_pos _).le hn, ?_⟩
  · nlinarith
  · calc
      Real.exp a * (1 - a) ≤ Real.exp a * Real.exp (-a) :=
        mul_le_mul_of_nonneg_left upper (Real.exp_pos _).le
      _ = 1 := by rw [← Real.exp_add, add_neg_cancel, Real.exp_zero]

theorem compensated_factor_lt_one {a : ℝ} (nonzero : a ≠ 0) :
    Real.exp a * (1 - a) < 1 := by
  have upper : 1 - a < Real.exp (-a) := by
    simpa only [sub_eq_add_neg, add_comm] using Real.add_one_lt_exp (neg_ne_zero.mpr nonzero)
  calc
    Real.exp a * (1 - a) < Real.exp a * Real.exp (-a) :=
      mul_lt_mul_of_pos_left upper (Real.exp_pos _)
    _ = 1 := by rw [← Real.exp_add, add_neg_cancel, Real.exp_zero]

private theorem product_defect {J : Type*} (s : Finset J) (f : J → ℝ)
    (hf : ∀ j ∈ s, 0 ≤ f j ∧ f j ≤ 1) :
    0 ≤ (∏ j ∈ s, f j) ∧ (∏ j ∈ s, f j) ≤ 1 ∧
      1 - (∏ j ∈ s, f j) ≤ ∑ j ∈ s, (1 - f j) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | @insert j s hnot ih =>
    obtain ⟨factorNonneg, factorBound⟩ := hf j (Finset.mem_insert_self _ _)
    obtain ⟨productNonneg, productBound, tailBound⟩ :=
      ih (fun k hk => hf k (Finset.mem_insert_of_mem hk))
    rw [Finset.prod_insert hnot, Finset.sum_insert hnot]
    refine ⟨mul_nonneg factorNonneg productNonneg, ?_, ?_⟩
    · simpa only [mul_one] using
        (mul_le_mul factorBound productBound productNonneg zero_le_one)
    · have omitted : (1 - f j) * (∏ k ∈ s, f k) ≤ 1 - f j := by
        simpa only [mul_one] using
          mul_le_mul_of_nonneg_left productBound (sub_nonneg.mpr factorBound)
      calc
        1 - f j * (∏ k ∈ s, f k) =
            (1 - f j) * (∏ k ∈ s, f k) + (1 - ∏ k ∈ s, f k) := by ring
        _ ≤ (1 - f j) + ∑ k ∈ s, (1 - f k) := add_le_add omitted tailBound

<<<<<<< HEAD
=======
/-- The excess of a strictly subunit logarithmic exposure over its Euler
exposure is quadratic, with a constant controlled by the exposure cap. -/
theorem log_factor_defect_bounds {a cap : ℝ} (ha : 0 ≤ a) (hac : a ≤ cap) (hc : cap < 1) :
    a ^ 2 / 2 ≤ -Real.log (1 - a) - a ∧
      -Real.log (1 - a) - a ≤ a ^ 2 / (2 * (1 - cap)) := by
  let f (c x : ℝ) := -Real.log (1 - x) - x - c * (x ^ 2 / 2)
  have slope (c x : ℝ) (hx : x < 1) :
      HasDerivAt (f c) (x / (1 - x) - c * x) x := by
    have logSlope := ((hasDerivAt_id x).const_sub (1 : ℝ)).log (sub_ne_zero.mpr hx.ne')
    have quadSlope := ((hasDerivAt_pow 2 x).div_const (2 : ℝ)).const_mul c
    convert (logSlope.neg.sub (hasDerivAt_id x)).sub quadSlope using 1
    · rfl
    · simp only [id_eq]
      field_simp [sub_ne_zero.mpr hx.ne']
      ring
  have inside (x : ℝ) (hx : x ∈ Set.Icc (0 : ℝ) cap) : x < 1 := hx.2.trans_lt hc
  have cont (c : ℝ) : ContinuousOn (f c) (Set.Icc 0 cap) :=
    fun x hx => (slope c x (inside x hx)).continuousAt.continuousWithinAt
  have diff (c : ℝ) : DifferentiableOn ℝ (f c) (interior (Set.Icc 0 cap)) :=
    fun x hx => (slope c x (inside x (interior_subset hx))).differentiableAt.differentiableWithinAt
  have zero (c : ℝ) : f c 0 = 0 := by simp [f]
  have lo : MonotoneOn (f 1) (Set.Icc 0 cap) := by
    apply monotoneOn_of_deriv_nonneg (convex_Icc _ _) (cont 1) (diff 1)
    intro x hx
    have hmem := interior_subset hx
    have hlt := inside x hmem
    rw [(slope 1 x hlt).deriv, one_mul, sub_nonneg]
    exact (le_div_iff₀ (sub_pos.mpr hlt)).mpr (by nlinarith [sq_nonneg x])
  have hi : AntitoneOn (f (1 - cap)⁻¹) (Set.Icc 0 cap) := by
    apply antitoneOn_of_deriv_nonpos (convex_Icc _ _) (cont _) (diff _)
    intro x hx
    have hmem := interior_subset hx
    rw [(slope _ x (inside x hmem)).deriv, sub_nonpos]
    have denominators : 1 - cap ≤ 1 - x := by linarith [hmem.2]
    have bound := div_le_div_of_nonneg_left hmem.1 (sub_pos.mpr hc) denominators
    simpa only [div_eq_mul_inv, mul_comm] using bound
  have hzero : (0 : ℝ) ∈ Set.Icc 0 cap := ⟨le_rfl, ha.trans hac⟩
  have hmem : a ∈ Set.Icc (0 : ℝ) cap := ⟨ha, hac⟩
  have hlo : 0 ≤ f 1 a := by simpa only [zero] using lo hzero hmem ha
  have hhi : f (1 - cap)⁻¹ a ≤ 0 := by simpa only [zero] using hi hzero hmem ha
  refine ⟨sub_nonneg.mp (by simpa only [f, one_mul] using hlo), ?_⟩
  calc
    -Real.log (1 - a) - a ≤ (1 - cap)⁻¹ * (a ^ 2 / 2) := sub_nonpos.mp hhi
    _ = a ^ 2 / (2 * (1 - cap)) := by field_simp [sub_ne_zero.mpr hc.ne']

/-- Strictly subunit exposures can amplify arbitrarily much even when one
stage's total exposure and quadratic budget are both below one. -/
theorem subunit_gain_unbounded (gain : ℝ) (hg : 0 ≤ gain) :
    ∃ a : ℝ, 0 ≤ a ∧ a < 1 ∧ a ^ 2 < 1 ∧ gain < 1 / (1 - a) := by
  have positive : 0 < gain + 2 := by linarith
  have small : (gain + 2)⁻¹ ≤ 1 := by
    rw [← one_div]
    exact (div_le_one positive).mpr (by linarith)
  have nonneg : 0 ≤ 1 - (gain + 2)⁻¹ := sub_nonneg.mpr small
  have ltOne : 1 - (gain + 2)⁻¹ < 1 := sub_lt_self _ (inv_pos.mpr positive)
  refine ⟨1 - (gain + 2)⁻¹, nonneg, ltOne, ?_, ?_⟩
  · simpa using pow_lt_pow_left₀ ltOne nonneg (by decide : 2 ≠ 0)
  · rw [sub_sub_cancel, one_div, inv_inv]
    linarith

>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
section Schedule

variable {J I : Type*} [Fintype J]

def total (a : J → I → ℝ) (i : I) : ℝ := ∑ j, a j i

def squareBudget (a : J → I → ℝ) (i : I) : ℝ := ∑ j, (a j i) ^ 2

def eulerMultiplier (a : J → I → ℝ) (i : I) : ℝ := ∏ j, (1 - a j i)

def euler (a : J → I → ℝ) (x : I → ℝ) : I → ℝ :=
  fun i => eulerMultiplier a i * x i

/-- Chronological composition of Euler updates in the shared coordinates. -/
def runEuler (a : ℕ → I → ℝ) (x : I → ℝ) : ℕ → (I → ℝ)
  | 0 => x
  | n + 1 => diagonal (fun i => 1 - a n i) (runEuler a x n)

theorem runEuler_eq (a : ℕ → I → ℝ) (x : I → ℝ) (n : ℕ) :
    runEuler a x n = euler (fun j : Fin n => a j.val) x := by
  induction n with
  | zero =>
    funext i
    simp [runEuler, euler, eulerMultiplier]
  | succ n ih =>
    rw [runEuler, ih]
    funext i
    simp only [diagonal, LinearMap.coe_mk, AddHom.coe_mk, euler, eulerMultiplier]
    rw [Fin.prod_univ_castSucc]
    simp only [Fin.val_castSucc, Fin.val_last]
    ring

def recover (a : J → I → ℝ) : (I → ℝ) →ₗ[ℝ] (I → ℝ) :=
  spectralHeat (total a) (-1)

theorem recover_apply (a : J → I → ℝ) (y : I → ℝ) (i : I) :
    recover a y i = Real.exp (total a i) * y i := by
  simp [recover, spectralHeat, diagonal]

theorem recover_exact (a : J → I → ℝ) (x : I → ℝ) :
    recover a (spectralHeat (total a) 1 x) = x := by
  funext i
  rw [recover_apply]
  change Real.exp (total a i) * (Real.exp (-(1 : ℝ) * total a i) * x i) = x i
  rw [neg_mul, one_mul, ← mul_assoc, ← Real.exp_add, add_neg_cancel, Real.exp_zero, one_mul]

private theorem compensated_product_eq (a : J → I → ℝ) (i : I) :
    Real.exp (total a i) * eulerMultiplier a i =
      ∏ j, Real.exp (a j i) * (1 - a j i) := by
  rw [total, eulerMultiplier, Real.exp_sum, ← Finset.prod_mul_distrib]

/-- Relative Euler attenuation after compensating for the exact heat decay. -/
theorem compensated_product_bounds (a : J → I → ℝ) (i : I)
    (upper : ∀ j, a j i ≤ 1) :
    0 ≤ Real.exp (total a i) * eulerMultiplier a i ∧
      Real.exp (total a i) * eulerMultiplier a i ≤ 1 ∧
      1 - Real.exp (total a i) * eulerMultiplier a i ≤ squareBudget a i := by
  let f (j : J) := Real.exp (a j i) * (1 - a j i)
  rw [compensated_product_eq]
  obtain ⟨nonneg, bounded, defect⟩ := product_defect Finset.univ f
    (fun j _ => (compensated_factor_bounds (upper j)).2)
  refine ⟨nonneg, bounded, defect.trans (Finset.sum_le_sum ?_)⟩
  intro j _
  have h := (compensated_factor_bounds (upper j)).1
  change 1 - Real.exp (a j i) * (1 - a j i) ≤ (a j i) ^ 2
  linarith

theorem compensated_product_lt_one (a : J → I → ℝ) (i : I)
    (upper : ∀ j, a j i ≤ 1) {j : J} (nonzero : a j i ≠ 0) :
    Real.exp (total a i) * eulerMultiplier a i < 1 := by
  classical
  let f (k : J) := Real.exp (a k i) * (1 - a k i)
  obtain ⟨_, bounded, _⟩ := product_defect (Finset.univ.erase j) f
    (fun k _ => (compensated_factor_bounds (upper k)).2)
  have hn : 0 ≤ f j := (compensated_factor_bounds (upper j)).2.1
  calc
    Real.exp (total a i) * eulerMultiplier a i = ∏ k, f k := compensated_product_eq a i
    _ = (∏ k ∈ Finset.univ.erase j, f k) * f j :=
      (Finset.prod_erase_mul _ _ (Finset.mem_univ j)).symm
    _ ≤ 1 * f j := mul_le_mul_of_nonneg_right bounded hn
    _ < 1 := by simpa only [one_mul] using compensated_factor_lt_one nonzero

/-- Exact exponential compensation recovers the input precisely when
every mode with nonzero Euler exposure has zero initial coefficient. -/
theorem recover_euler_eq_source_iff (a : J → I → ℝ) (x : I → ℝ)
    (upper : ∀ j i, a j i ≤ 1) :
    recover a (euler a x) = x ↔ ∀ j i, a j i ≠ 0 → x i = 0 := by
  constructor
  · intro same j i nonzero
    have coefficient := congrFun same i
    rw [recover_apply, euler] at coefficient
    have defect : (Real.exp (total a i) * eulerMultiplier a i - 1) * x i = 0 := by
      rw [sub_mul, one_mul, mul_assoc, coefficient, sub_self]
    exact (mul_eq_zero.mp defect).resolve_left
      (sub_ne_zero.mpr (compensated_product_lt_one a i (fun j => upper j i) nonzero).ne)
  · intro vanishes
    funext i
    by_cases zero : x i = 0
    · simp [recover_apply, euler, zero]
    · have zeroExposure (j : J) : a j i = 0 := by
        by_contra exposed
        exact zero (vanishes j i exposed)
      simp [recover_apply, euler, eulerMultiplier, total, zeroExposure]

theorem recover_euler_error (a : J → I → ℝ) (x : I → ℝ) (i : I)
    (upper : ∀ j, a j i ≤ 1) :
    |recover a (euler a x) i - x i| ≤ squareBudget a i * |x i| := by
  obtain ⟨_, bounded, loss⟩ := compensated_product_bounds a i upper
  rw [recover_apply, euler,
    show Real.exp (total a i) * (eulerMultiplier a i * x i) - x i =
      (Real.exp (total a i) * eulerMultiplier a i - 1) * x i by ring,
    abs_mul, abs_of_nonpos (sub_nonpos.mpr bounded)]
  exact mul_le_mul_of_nonneg_right (by linarith) (abs_nonneg _)

theorem recover_euler_squareEnergy_le [Fintype I] (a : J → I → ℝ) (x : I → ℝ)
    (upper : ∀ j i, a j i ≤ 1) :
    (∑ i, (recover a (euler a x) i) ^ 2) ≤ ∑ i, (x i) ^ 2 := by
  apply Finset.sum_le_sum
  intro i _
  obtain ⟨nonneg, bound, _⟩ := compensated_product_bounds a i (fun j => upper j i)
  have squared : (Real.exp (total a i) * eulerMultiplier a i) ^ 2 ≤ 1 := by
    simpa only [pow_two, one_mul] using mul_le_mul bound bound nonneg zero_le_one
  calc
    (recover a (euler a x) i) ^ 2 =
        (Real.exp (total a i) * eulerMultiplier a i) ^ 2 * (x i) ^ 2 := by
      rw [recover_apply, euler]
      ring
    _ ≤ (x i) ^ 2 := by
      simpa only [one_mul] using mul_le_mul_of_nonneg_right squared (sq_nonneg (x i))

/-- The forward approximation charge is the compensated charge times the
exact forward attenuation. -/
theorem euler_forward_error (a : J → I → ℝ) (x : I → ℝ) (i : I)
    (upper : ∀ j, a j i ≤ 1) :
    |euler a x i - spectralHeat (total a) 1 x i| ≤
      Real.exp (-total a i) * squareBudget a i * |x i| := by
  have cancel : Real.exp (-total a i) * Real.exp (total a i) = 1 := by
    rw [← Real.exp_add, neg_add_cancel, Real.exp_zero]
  have factor :
      euler a x i - spectralHeat (total a) 1 x i =
        Real.exp (-total a i) * (recover a (euler a x) i - x i) := by
    rw [recover_apply]
    change euler a x i - Real.exp (-(1 : ℝ) * total a i) * x i =
      Real.exp (-total a i) * (Real.exp (total a i) * euler a x i - x i)
    rw [neg_mul, one_mul, mul_sub, ← mul_assoc, cancel, one_mul]
  rw [factor, abs_mul, abs_of_pos (Real.exp_pos _), mul_assoc]
  exact mul_le_mul_of_nonneg_left (recover_euler_error a x i upper) (Real.exp_pos _).le

/-- An observation perturbation is multiplied by the exact inverse gain.
The Euler discretization charge depends only on the squared exposures. -/
theorem recover_readout_error [Fintype I] (a : J → I → ℝ) (x y weight : I → ℝ)
    (upper : ∀ j i, a j i ≤ 1) :
    |dot weight (recover a y) - dot weight x| ≤
      ∑ i, |weight i| * (Real.exp (total a i) * |y i - euler a x i| +
        squareBudget a i * |x i|) := by
  unfold dot
  rw [← Finset.sum_sub_distrib]
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum ?_)
  intro i _
  rw [← mul_sub, abs_mul]
  apply mul_le_mul_of_nonneg_left _ (abs_nonneg _)
  calc
    |recover a y i - x i| ≤
        |recover a y i - recover a (euler a x) i| + |recover a (euler a x) i - x i| := by
      have split : recover a y i - x i =
          (recover a y i - recover a (euler a x) i) + (recover a (euler a x) i - x i) := by ring
      rw [split]
      exact abs_add_le _ _
    _ ≤ Real.exp (total a i) * |y i - euler a x i| + squareBudget a i * |x i| := by
      apply add_le_add _ (recover_euler_error a x i (fun j => upper j i))
      rw [recover_apply, recover_apply, ← mul_sub, abs_mul, abs_of_pos (Real.exp_pos _)]

theorem euler_leftInverse_of_strict (a : J → I → ℝ) (strict : ∀ j i, a j i < 1) :
    Function.LeftInverse (fun y i => y i / eulerMultiplier a i) (euler a) := by
  intro x
  funext i
  have positive : 0 < eulerMultiplier a i :=
    Finset.prod_pos (fun j _ => sub_pos.mpr (strict j i))
  change eulerMultiplier a i * x i / eulerMultiplier a i = x i
  calc
    eulerMultiplier a i * x i / eulerMultiplier a i =
        x i * (eulerMultiplier a i / eulerMultiplier a i) := by ring
    _ = x i := by rw [div_self positive.ne', mul_one]

/-- If the quadratic budget is below one, it also bounds the actual Euler
inverse gain, which undoes the Euler multipliers exactly. -/
theorem euler_inverse_gain_le (a : J → I → ℝ) (i : I)
    (upper : ∀ j, a j i ≤ 1) (small : squareBudget a i < 1) :
    1 / eulerMultiplier a i ≤ Real.exp (total a i) / (1 - squareBudget a i) := by
  obtain ⟨_, _, defect⟩ := compensated_product_bounds a i upper
  have lower : 1 - squareBudget a i ≤ Real.exp (total a i) * eulerMultiplier a i := by
    linarith
  have positive : 0 < eulerMultiplier a i := by
    apply lt_of_not_ge
    intro h
    have productNonpos : Real.exp (total a i) * eulerMultiplier a i ≤ 0 :=
      mul_nonpos_of_nonneg_of_nonpos (Real.exp_pos _).le h
    linarith
  apply (div_le_iff₀ positive).mpr
  rw [div_mul_eq_mul_div]
  exact (le_div_iff₀ (sub_pos.mpr small)).mpr (by simpa only [one_mul] using lower)

/-- The exact diagonal exposure encoded by strictly positive Euler factors. -/
def logExposure (a : J → I → ℝ) (i : I) : ℝ := ∑ j, -Real.log (1 - a j i)

theorem logExposure_nonneg (a : J → I → ℝ) (i : I)
    (lower : ∀ j, 0 ≤ a j i) (upper : ∀ j, a j i < 1) :
    0 ≤ logExposure a i := by
  apply Finset.sum_nonneg
  intro j _
  exact neg_nonneg.mpr
    (Real.log_nonpos (sub_pos.mpr (upper j)).le (by linarith [lower j]))

<<<<<<< HEAD
=======
/-- The calibrated Euler schedule's logarithmic clock inflation is bounded
above and below by its quadratic exposure budget. -/
theorem logExposure_sub_total_bounds (a : J → I → ℝ) (i : I) {cap : ℝ}
    (lower : ∀ j, 0 ≤ a j i) (upper : ∀ j, a j i ≤ cap) (cap_lt_one : cap < 1) :
    squareBudget a i / 2 ≤ logExposure a i - total a i ∧
      logExposure a i - total a i ≤ squareBudget a i / (2 * (1 - cap)) := by
  unfold squareBudget logExposure total
  rw [← Finset.sum_sub_distrib, Finset.sum_div, Finset.sum_div]
  exact ⟨Finset.sum_le_sum fun j _ => (log_factor_defect_bounds (lower j) (upper j) cap_lt_one).1,
    Finset.sum_le_sum fun j _ => (log_factor_defect_bounds (lower j) (upper j) cap_lt_one).2⟩

theorem euler_inverse_gain_eq_exp_logExposure (a : J → I → ℝ) (i : I)
    (strict : ∀ j, a j i < 1) :
    1 / eulerMultiplier a i = Real.exp (logExposure a i) := by
  rw [eulerMultiplier, logExposure, Real.exp_sum, one_div, ← Finset.prod_inv_distrib]
  apply Finset.prod_congr rfl
  intro j _
  rw [Real.exp_neg, Real.exp_log (sub_pos.mpr (strict j))]

/-- Actual Euler inverse gain with a uniform subunit cap. The bound applies
at every quadratic budget, including budgets at least one. -/
theorem euler_inverse_gain_log_bounds (a : J → I → ℝ) (i : I) {cap : ℝ}
    (lower : ∀ j, 0 ≤ a j i) (upper : ∀ j, a j i ≤ cap) (cap_lt_one : cap < 1) :
    Real.exp (total a i + squareBudget a i / 2) ≤ 1 / eulerMultiplier a i ∧
      1 / eulerMultiplier a i ≤
        Real.exp (total a i + squareBudget a i / (2 * (1 - cap))) := by
  obtain ⟨lo, hi⟩ := logExposure_sub_total_bounds a i lower upper cap_lt_one
  rw [euler_inverse_gain_eq_exp_logExposure a i (fun j => (upper j).trans_lt cap_lt_one)]
  exact ⟨Real.exp_le_exp.mpr (by linarith), Real.exp_le_exp.mpr (by linarith)⟩

/-- A common cap and total exposure bound suffice for a uniform Euler
inverse gain across finite schedules and modes. -/
theorem euler_inverse_gain_le_of_total_le (a : J → I → ℝ) (i : I) {cap budget : ℝ}
    (cap_nonneg : 0 ≤ cap) (cap_lt_one : cap < 1)
    (lower : ∀ j, 0 ≤ a j i) (upper : ∀ j, a j i ≤ cap) (total_le : total a i ≤ budget) :
    1 / eulerMultiplier a i ≤ Real.exp ((1 + cap / (2 * (1 - cap))) * budget) := by
  have quad : squareBudget a i ≤ cap * total a i := by
    unfold squareBudget total
    rw [Finset.mul_sum]
    exact Finset.sum_le_sum fun j _ =>
      by simpa only [pow_two] using mul_le_mul_of_nonneg_right (upper j) (lower j)
  have divisor : 0 < 2 * (1 - cap) := by linarith
  refine (euler_inverse_gain_log_bounds a i lower upper cap_lt_one).2.trans ?_
  apply Real.exp_le_exp.mpr
  calc
    total a i + squareBudget a i / (2 * (1 - cap)) ≤
        total a i + (cap * total a i) / (2 * (1 - cap)) :=
      add_le_add le_rfl (div_le_div_of_nonneg_right quad divisor.le)
    _ = (1 + cap / (2 * (1 - cap))) * total a i := by ring
    _ ≤ (1 + cap / (2 * (1 - cap))) * budget :=
      mul_le_mul_of_nonneg_left total_le (by positivity)

>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
theorem euler_eq_log_heat (a : J → I → ℝ) (x : I → ℝ) (strict : ∀ j i, a j i < 1) :
    euler a x = spectralHeat (logExposure a) 1 x := by
  funext i
  change eulerMultiplier a i * x i = Real.exp (-(1 : ℝ) * logExposure a i) * x i
  congr 1
  rw [neg_mul, one_mul, eulerMultiplier, logExposure,
    ← Finset.sum_neg_distrib, Real.exp_sum]
  apply Finset.prod_congr rfl
  intro j _
  rw [neg_neg, Real.exp_log (sub_pos.mpr (strict j i))]

/-- A proposed scalar clock fits the Euler product precisely when its
exposure agrees with the logarithmic exposure on every observed mode. -/
theorem euler_fits_clock_iff (a : J → I → ℝ) (strict : ∀ j i, a j i < 1)
    (rates : I → ℝ) (time : ℝ) :
    (∀ x, euler a x = spectralHeat rates time x) ↔
      ∀ i, logExposure a i = time * rates i := by
  constructor
  · intro matchClock i
    have agree := congrFun (matchClock (fun _ => 1)) i
    rw [euler_eq_log_heat a _ strict] at agree
    change Real.exp (-(1 : ℝ) * logExposure a i) * 1 =
      Real.exp (-time * rates i) * 1 at agree
    rw [mul_one, mul_one] at agree
    have eq := Real.exp_injective agree
    linarith
  · intro coordinate x
    rw [euler_eq_log_heat a x strict]
    funext i
    change Real.exp (-(1 : ℝ) * logExposure a i) * x i =
      Real.exp (-time * rates i) * x i
    rw [coordinate i, neg_mul, one_mul, ← neg_mul]

/-- A unit exposure destroys that mode in the Euler product. -/
theorem euler_erases_of_unit (a : J → I → ℝ) (x : I → ℝ) (i : I) {j : J} (hit : a j i = 1) :
    euler a x i = 0 := by
  have vanished : eulerMultiplier a i = 0 := by
    unfold eulerMultiplier
    apply Finset.prod_eq_zero (Finset.mem_univ j)
    simp [hit]
  simp [euler, vanished]

theorem no_leftInverse_of_unit [DecidableEq I] (a : J → I → ℝ) (i : I) {j : J}
    (hit : a j i = 1) :
    ¬ ∃ decode : (I → ℝ) → (I → ℝ), Function.LeftInverse decode (euler a) := by
  rintro ⟨decode, left⟩
  let impulse : I → ℝ := fun k => if k = i then 1 else 0
  have same : euler a impulse = euler a (fun _ => 0) := by
    funext k
    by_cases h : k = i
    · subst k
      rw [euler_erases_of_unit a impulse i hit, euler_erases_of_unit a _ i hit]
    · simp [euler, impulse, h]
  have impossible := congrFun (left.injective same) i
  simp [impulse] at impossible

/-- Equal subdivision preserves total exposure and divides the squared
Euler budget by the number of substeps. -/
def subdivide (a : J → I → ℝ) (m : ℕ) : J × Fin m → I → ℝ :=
  fun p i => a p.1 i / (m : ℝ)

theorem subdivide_total (a : J → I → ℝ) (m : ℕ) (hm : 0 < m) (i : I) :
    total (subdivide a m) i = total a i := by
  have hm' : (m : ℝ) ≠ 0 := by exact_mod_cast hm.ne'
  unfold total subdivide
  rw [Fintype.sum_prod_type]
  simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
  apply Finset.sum_congr rfl
  intro j _
  field_simp

theorem subdivide_squareBudget (a : J → I → ℝ) (m : ℕ) (hm : 0 < m) (i : I) :
    squareBudget (subdivide a m) i = squareBudget a i / (m : ℝ) := by
  have hm' : (m : ℝ) ≠ 0 := by exact_mod_cast hm.ne'
  unfold squareBudget subdivide
  rw [Fintype.sum_prod_type, Finset.sum_div]
  simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
  apply Finset.sum_congr rfl
  intro j _
  field_simp

theorem subdivide_recover_error (a : J → I → ℝ) (m : ℕ) (hm : 0 < m)
    (x : I → ℝ) (i : I) (upper : ∀ j, a j i ≤ (m : ℝ)) :
    |recover a (euler (subdivide a m) x) i - x i| ≤
      (squareBudget a i / (m : ℝ)) * |x i| := by
  have hm' : (0 : ℝ) < m := by exact_mod_cast hm
  have bound := recover_euler_error (subdivide a m) x i (fun p => by
    unfold subdivide
    exact (div_le_one hm').mpr (upper p.1))
  simpa only [recover_apply, subdivide_total a m hm, subdivide_squareBudget a m hm] using bound

end Schedule

<<<<<<< HEAD
=======
/-- Uniform inverse stability across growing finite schedules is equivalent
to a uniform bound on the exact logarithmic exposures of their modes. -/
theorem uniform_euler_inverse_gain_iff_logExposure
    {Slot Mode : ℕ → Type*} [∀ n, Fintype (Slot n)]
    (a : ∀ n, Slot n → Mode n → ℝ) (strict : ∀ n j i, a n j i < 1) :
    (∃ gain > (0 : ℝ), ∀ n i, 1 / eulerMultiplier (a n) i ≤ gain) ↔
      ∃ bound : ℝ, ∀ n i, logExposure (a n) i ≤ bound := by
  constructor
  · rintro ⟨gain, positive, bounded⟩
    refine ⟨Real.log gain, fun n i => Real.exp_le_exp.mp ?_⟩
    rw [Real.exp_log positive, ← euler_inverse_gain_eq_exp_logExposure (a n) i (fun j => strict n j i)]
    exact bounded n i
  · rintro ⟨bound, bounded⟩
    refine ⟨Real.exp bound, Real.exp_pos _, fun n i => ?_⟩
    rw [euler_inverse_gain_eq_exp_logExposure (a n) i (fun j => strict n j i)]
    exact Real.exp_le_exp.mpr (bounded n i)


/-- For a shared schedule of calibrated dwell times, the Euler response at
twice a positive rate is strictly smaller than the square of its response
at that rate, provided a slot is active and all doubled steps are subunit. -/
theorem eulerMultiplier_double_rate_lt_square {J I : Type*} [Fintype J]
    (dwell : J → ℝ) (rates : I → ℝ) (i k : I)
    (double : rates k = 2 * rates i)
    (subunit : ∀ j, 2 * (dwell j * rates i) < 1)
    (active : ∃ j, dwell j * rates i ≠ 0) :
    eulerMultiplier (fun j m => dwell j * rates m) k <
      (eulerMultiplier (fun j m => dwell j * rates m) i) ^ 2 := by
  simp only [eulerMultiplier, double, ← Finset.prod_pow]
  apply Finset.prod_lt_prod₀
  · intro j _
    linarith [subunit j]
  · intro j _
    nlinarith [sq_nonneg (dwell j * rates i)]
  · obtain ⟨j, hn⟩ := active
    exact ⟨j, Finset.mem_univ _, by nlinarith [sq_pos_of_ne_zero hn]⟩

/-- Two modes at rates λ and 2λ already obstruct an exact common scalar
heat time for the original generator. The constant input 1 witnesses
failure for every proposed time. -/
theorem euler_double_rate_ne_spectralHeat {J I : Type*} [Fintype J]
    (dwell : J → ℝ) (rates : I → ℝ) (i k : I)
    (double : rates k = 2 * rates i)
    (subunit : ∀ j, 2 * (dwell j * rates i) < 1)
    (active : ∃ j, dwell j * rates i ≠ 0) (time : ℝ) :
    euler (fun j m => dwell j * rates m) (fun _ => 1) ≠
      spectralHeat rates time (fun _ => 1) := by
  intro equal
  have atRate (m : I) :
      eulerMultiplier (fun j x => dwell j * rates x) m = Real.exp (-time * rates m) := by
    have h := congrFun equal m
    change eulerMultiplier (fun j x => dwell j * rates x) m * 1 =
      Real.exp (-time * rates m) * 1 at h
    simpa only [mul_one] using h
  have strict := eulerMultiplier_double_rate_lt_square dwell rates i k double subunit active
  rw [atRate, atRate, double, ← Real.exp_nat_mul] at strict
  have exponent : -time * (2 * rates i) = (↑(2 : ℕ) : ℝ) * (-time * rates i) := by
    push_cast
    ring
  rw [exponent] at strict
  exact (lt_irrefl _) strict


/-- On an active slot the logarithmic exposure per unit rate increases
strictly with the rate. This uses the original Euler factor. -/
private theorem logExposure_factor_rate_lt {c x y : ℝ}
    (active : 0 < c) (small : 0 < x) (ordered : x < y) (subunit : c * y < 1) :
    (-Real.log (1 - c * x)) / x < (-Real.log (1 - c * y)) / y := by
  have large := small.trans ordered
  have weight : 0 < x / y := div_pos small large
  have remaining : 0 < 1 - x / y := sub_pos.mpr ((div_lt_one large).mpr ordered)
  have endpoints : (1 : ℝ) ≠ 1 - c * y := by nlinarith [mul_pos active large]
  have concave := strictConcaveOn_log_Ioi.2
    (show (1 : ℝ) ∈ Set.Ioi 0 by exact Set.mem_Ioi.mpr (by norm_num))
    (show 1 - c * y ∈ Set.Ioi 0 from sub_pos.mpr subunit)
    endpoints remaining weight (by ring : 1 - x / y + x / y = 1)
  change (1 - x / y) * Real.log 1 + (x / y) * Real.log (1 - c * y) <
    Real.log ((1 - x / y) * 1 + (x / y) * (1 - c * y)) at concave
  have mix : (1 - x / y) * 1 + (x / y) * (1 - c * y) = 1 - c * x := by
    field_simp [large.ne']
    ring
  rw [mix, Real.log_one, mul_zero, zero_add] at concave
  apply (div_lt_iff₀ small).mpr
  calc
    -Real.log (1 - c * x) < -((x / y) * Real.log (1 - c * y)) := neg_lt_neg concave
    _ = (-Real.log (1 - c * y)) / y * x := by ring

/-- Any two distinct positive rates have different effective heat times
when a nonnegative shared Euler schedule has an active dwell. -/
theorem logExposure_per_rate_lt {J I : Type*} [Fintype J]
    (dwell : J → ℝ) (rates : I → ℝ) (i k : I)
    (nonneg : ∀ j, 0 ≤ dwell j) (active : ∃ j, 0 < dwell j)
    (small : 0 < rates i) (ordered : rates i < rates k)
    (subunit : ∀ j, dwell j * rates k < 1) :
    logExposure (fun j m => dwell j * rates m) i / rates i <
      logExposure (fun j m => dwell j * rates m) k / rates k := by
  simp only [logExposure, Finset.sum_div]
  apply Finset.sum_lt_sum
  · intro j _
    rcases (nonneg j).eq_or_lt with zero | positive
    · simp [← zero]
    · exact (logExposure_factor_rate_lt positive small ordered (subunit j)).le
  · obtain ⟨j, positive⟩ := active
    exact ⟨j, Finset.mem_univ _, logExposure_factor_rate_lt positive small ordered (subunit j)⟩

/-- A positive active shared schedule on two distinct positive modes
cannot use one exact scalar heat time for the original rates. -/
theorem no_common_clock_of_distinct_rates {J I : Type*} [Fintype J]
    (dwell : J → ℝ) (rates : I → ℝ) (i k : I)
    (nonneg : ∀ j, 0 ≤ dwell j) (active : ∃ j, 0 < dwell j)
    (small : 0 < rates i) (ordered : rates i < rates k)
    (strict : ∀ j m, dwell j * rates m < 1) (time : ℝ) :
    ¬ ∀ x, euler (fun j m => dwell j * rates m) x = spectralHeat rates time x := by
  intro agreement
  have equal := (euler_fits_clock_iff (fun j m => dwell j * rates m) strict rates time).mp agreement
  have different := logExposure_per_rate_lt dwell rates i k nonneg active small ordered (fun j => strict j k)
  rw [equal i, equal k, mul_div_cancel_right₀ _ small.ne',
    mul_div_cancel_right₀ _ (small.trans ordered).ne'] at different
  exact (lt_irrefl _) different


/-- A pairwise criterion for fitting a single clock to a finite collection
of logarithmic exposures at positive rates, with absolute log tolerance. -/
theorem exists_log_clock_iff_pairwise {I : Type*} [Fintype I] [Nonempty I]
    (rates exposure : I → ℝ) (positive : ∀ i, 0 < rates i) (error : ℝ) :
    (∃ t : ℝ, ∀ i, |exposure i - t * rates i| ≤ error) ↔
      ∀ i j, rates i * exposure j - rates j * exposure i ≤ error * (rates i + rates j) := by
  constructor
  · rintro ⟨t, fit⟩ i j
    have lower : exposure j - error ≤ t * rates j := by linarith [(abs_le.mp (fit j)).2]
    have upper : t * rates i ≤ exposure i + error := by linarith [(abs_le.mp (fit i)).1]
    have a := mul_le_mul_of_nonneg_right lower (positive i).le
    have b := mul_le_mul_of_nonneg_right upper (positive j).le
    nlinarith only [a, b]
  · intro pair
    let lower (i : I) := (exposure i - error) / rates i
    obtain ⟨j, _, maximal⟩ := Finset.exists_max_image Finset.univ lower Finset.univ_nonempty
    refine ⟨lower j, fun i => abs_le.mpr ⟨?_, ?_⟩⟩
    · have below : lower j ≤ (exposure i + error) / rates i := by
        dsimp only [lower]
        apply (div_le_div_iff₀ (positive j) (positive i)).mpr
        nlinarith only [pair i j]
      have upper := (le_div_iff₀ (positive i)).mp below
      linarith
    · have lo := (div_le_iff₀ (positive i)).mp (show lower i ≤ lower j from
        maximal i (Finset.mem_univ i))
      linarith

/-- The finite Euler clock tolerance is determined by the original
modewise logarithmic exposures and the unchanged modal rates. -/
theorem exists_euler_log_clock_iff_pairwise {J I : Type*} [Fintype J] [Fintype I] [Nonempty I]
    (a : J → I → ℝ) (rates : I → ℝ) (positive : ∀ i, 0 < rates i) (error : ℝ) :
    (∃ t : ℝ, ∀ i, |logExposure a i - t * rates i| ≤ error) ↔
      ∀ i j, rates i * logExposure a j - rates j * logExposure a i ≤
        error * (rates i + rates j) :=
  exists_log_clock_iff_pairwise rates (logExposure a) positive error

/-- A log tolerance is exactly an exponential multiplicative envelope
for the original strictly positive Euler multiplier. -/
theorem euler_log_error_iff_multiplier_envelope {J I : Type*} [Fintype J]
    (a : J → I → ℝ) (strict : ∀ j i, a j i < 1)
    (rates : I → ℝ) (i : I) (t error : ℝ) :
    |logExposure a i - t * rates i| ≤ error ↔
      Real.exp (-error) * Real.exp (-t * rates i) ≤ eulerMultiplier a i ∧
      eulerMultiplier a i ≤ Real.exp error * Real.exp (-t * rates i) := by
  have eq := congrFun (euler_eq_log_heat a (fun _ => 1) strict) i
  change eulerMultiplier a i * 1 = Real.exp (-(1 : ℝ) * logExposure a i) * 1 at eq
  simp only [mul_one, neg_mul, one_mul] at eq
  rw [eq, ← Real.exp_add, ← Real.exp_add, Real.exp_le_exp, Real.exp_le_exp, abs_le]
  constructor <;> intro h <;> constructor <;> linarith [h.1, h.2]

/-- For two distinct positive original rates with active shared dwell,
the necessary tolerance stays strictly positive. -/
theorem euler_shared_log_clock_error_pos {J I : Type*} [Fintype J]
    (dwell : J → ℝ) (rates : I → ℝ) (i j : I)
    (nonneg : ∀ k, 0 ≤ dwell k) (active : ∃ k, 0 < dwell k)
    (small : 0 < rates i) (ordered : rates i < rates j)
    (subunit : ∀ k, dwell k * rates j < 1) (t error : ℝ)
    (fit : ∀ m, |logExposure (fun k p => dwell k * rates p) m - t * rates m| ≤ error) :
    0 < (rates i * logExposure (fun k p => dwell k * rates p) j -
      rates j * logExposure (fun k p => dwell k * rates p) i) / (rates i + rates j) ∧
      (rates i * logExposure (fun k p => dwell k * rates p) j -
      rates j * logExposure (fun k p => dwell k * rates p) i) / (rates i + rates j) ≤ error := by
  let a := fun k p => dwell k * rates p
  have large := small.trans ordered
  have gap := (div_lt_div_iff₀ small large).mp
    (logExposure_per_rate_lt dwell rates i j nonneg active small ordered subunit)
  have lower : logExposure a j - error ≤ t * rates j := by linarith [(abs_le.mp (fit j)).2]
  have upper : t * rates i ≤ logExposure a i + error := by linarith [(abs_le.mp (fit i)).1]
  change 0 < (rates i * logExposure a j - rates j * logExposure a i) / (rates i + rates j) ∧ _
  refine ⟨div_pos (by linarith [gap]) (add_pos small large), ?_⟩
  apply (div_le_iff₀ (add_pos small large)).mpr
  nlinarith only [mul_le_mul_of_nonneg_right lower small.le,
    mul_le_mul_of_nonneg_right upper large.le]

>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
end GRWTSK.OperatorTheory.FiniteEulerHeatRecovery
