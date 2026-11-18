/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.FourierMomentEnclosure
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.MeasureTheory.Integral.Bochner.Set

/-!
# Raw moments and L1 bounds from finite cell enclosures

MSC2020: 65D30, 65G20, 42A38. Consumer: WeilZeroQuadratureEvaluation.
Integrate the monomial exactly against a cellwise constant approximation;
charge the variation of the ORIGINAL supported L1 test on every cell.
Midpoint sample errors and certified variation supply these cell enclosures.
No raw-moment integral or global L1 bound is assumed as an evaluation input.
Finite samples alone do not supply the between-sample variation hypothesis.

SOURCE_PROOF_CANDIDATE. Elaboration, exact-type checks, kernel replay,
transitive axiom audit, certified computation and independent review NOT_RUN.
Novelty UNASSESSED. See RawMomentQuadrature.md for argument and provenance.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.MeasureAndIntegration.RawMomentQuadrature

open GRWTSK.MeasureAndIntegration.FourierMomentEnclosure

/-- Exact integral of the real monomial on one oriented cell, cast to C. -/
def cellMomentWeight (a b : ℝ) (k : ℕ) : ℂ :=
  (((b ^ (k + 1) - a ^ (k + 1)) / (k + 1 : ℝ) : ℝ) : ℂ)

/-- Finite algebraic approximation; endpoints and coefficients are exact inputs. -/
def quadratureMoment (x : ℕ → ℝ) (v : ℕ → ℂ) (N k : ℕ) : ℂ :=
  ∑ j ∈ Finset.range N, v j * cellMomentWeight (x j) (x (j + 1)) k

/-- Sum of cellwise uniform function errors times cell lengths. -/
def cellVariationBudget (x ε : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range N, ε j * (x (j + 1) - x j)

/-- An explicit L1 upper budget from the same finite cell data. -/
def cellL1Budget (x : ℕ → ℝ) (v : ℕ → ℂ) (ε : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range N, (‖v j‖ + ε j) * (x (j + 1) - x j)

/-- Midpoint variation and sample error are separately charged. -/
def midpointCellError (x L r : ℕ → ℝ) (j : ℕ) : ℝ :=
  L j * ((x (j + 1) - x j) / 2) + r j

/-- Actual integration of the monomial, not an assumed quadrature identity. -/
theorem integral_const_mul_monomial (a b : ℝ) (v : ℂ) (k : ℕ) :
    (∫ t : ℝ in a..b, v * (t : ℂ) ^ k) = v * cellMomentWeight a b k := by
  rw [intervalIntegral.integral_const_mul]
  simp_rw [← Complex.ofReal_pow]
  rw [intervalIntegral.integral_ofReal, integral_pow]
  rfl

private theorem integral_interval_eq_integral_of_supported
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (g : ℝ → E) (T : ℝ) (hT : 0 ≤ T)
    (hs : ∀ t : ℝ, T < |t| → g t = 0) :
    (∫ t : ℝ in (-T)..T, g t) = ∫ t : ℝ, g t := by
  rw [intervalIntegral.integral_of_le (by linarith : -T ≤ T),
    ← MeasureTheory.integral_Icc_eq_integral_Ioc]
  apply MeasureTheory.setIntegral_eq_integral_of_forall_compl_eq_zero
  intro t ht
  apply hs t
  by_contra hn
  exact ht (abs_le.mp (le_of_not_gt hn))

private theorem rawMoment_eq_sum_cells
    (f : ℝ → ℂ) (T : ℝ) (hT : 0 ≤ T) (hf : Integrable f volume)
    (hs : ∀ t : ℝ, T < |t| → f t = 0)
    (x : ℕ → ℝ) (N : ℕ) (hx0 : x 0 = -T) (hxN : x N = T) (k : ℕ) :
    rawMoment f k = ∑ j ∈ Finset.range N,
      ∫ t : ℝ in x j..x (j + 1), f t * (t : ℂ) ^ k := by
  have hi := integrable_monomial f T hT hf hs k
  have hsplit := intervalIntegral.sum_integral_adjacent_intervals
    (a := x) (n := N) (fun _ _ => hi.intervalIntegrable)
  rw [hx0, hxN] at hsplit
  have he := integral_interval_eq_integral_of_supported
    (fun t : ℝ => f t * (t : ℂ) ^ k) T hT
    (fun t ht => by rw [hs t ht, zero_mul])
  exact he.symm.trans hsplit.symm

/-- A certified midpoint sample and between-sample variation imply a cell enclosure. -/
theorem norm_sub_sample_le_midpoint
    (f : ℝ → ℂ) (a b L r : ℝ) (v : ℂ) (hL : 0 ≤ L)
    (hvariation : ∀ t ∈ Icc a b,
      ‖f t - f ((a + b) / 2)‖ ≤ L * |t - (a + b) / 2|)
    (hsample : ‖f ((a + b) / 2) - v‖ ≤ r)
    (t : ℝ) (ht : t ∈ Icc a b) :
    ‖f t - v‖ ≤ L * ((b - a) / 2) + r := by
  have hdist : |t - (a + b) / 2| ≤ (b - a) / 2 :=
    abs_le.mpr ⟨by linarith [ht.1], by linarith [ht.2]⟩
  have htri := dist_triangle (f t) (f ((a + b) / 2)) v
  simp only [dist_eq_norm] at htri
  exact htri.trans (add_le_add
    ((hvariation t ht).trans (mul_le_mul_of_nonneg_left hdist hL)) hsample)

private theorem norm_cell_moment_sub_le
    (f : ℝ → ℂ) (T a b ε : ℝ) (v : ℂ) (k : ℕ)
    (hT : 0 ≤ T) (ha : -T ≤ a) (hab : a ≤ b) (hb : b ≤ T)
    (hε : 0 ≤ ε) (hi : IntervalIntegrable (fun t : ℝ => f t * (t : ℂ) ^ k) volume a b)
    (hcell : ∀ t ∈ Icc a b, ‖f t - v‖ ≤ ε) :
    ‖(∫ t : ℝ in a..b, f t * (t : ℂ) ^ k) - v * cellMomentWeight a b k‖ ≤
      (ε * T ^ k) * (b - a) := by
  have hc : Continuous (fun t : ℝ => v * (t : ℂ) ^ k) := by fun_prop
  rw [← integral_const_mul_monomial a b v k,
    ← intervalIntegral.integral_sub hi hc.intervalIntegrable]
  have hp (t : ℝ) (ht : t ∈ Set.uIoc a b) :
      ‖f t * (t : ℂ) ^ k - v * (t : ℂ) ^ k‖ ≤ ε * T ^ k := by
    rw [Set.uIoc_of_le hab] at ht
    have ht' : t ∈ Icc a b := ⟨ht.1.le, ht.2⟩
    have hnorm : |t| ≤ T := abs_le.mpr ⟨ha.trans ht'.1, ht'.2.trans hb⟩
    rw [← sub_mul, norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs]
    exact mul_le_mul (hcell t ht') (by gcongr <;> exact hnorm) (pow_nonneg (abs_nonneg _) _) hε
  simpa only [abs_of_nonneg (sub_nonneg.mpr hab)] using
    intervalIntegral.norm_integral_le_of_norm_le_const hp

/-- Every raw moment is enclosed by explicit finite arithmetic and a single
cell-variation budget. All cells cover the original support with no gaps. -/
theorem norm_rawMoment_sub_quadratureMoment_le
    (f : ℝ → ℂ) (T : ℝ) (hT : 0 ≤ T) (hf : Integrable f volume)
    (hs : ∀ t : ℝ, T < |t| → f t = 0)
    (x : ℕ → ℝ) (v : ℕ → ℂ) (ε : ℕ → ℝ) (N : ℕ)
    (hx0 : x 0 = -T) (hxN : x N = T)
    (hgeom : ∀ j < N, -T ≤ x j ∧ x j ≤ x (j + 1) ∧ x (j + 1) ≤ T)
    (hε : ∀ j < N, 0 ≤ ε j)
    (hcell : ∀ j < N, ∀ t ∈ Icc (x j) (x (j + 1)), ‖f t - v j‖ ≤ ε j)
    (k : ℕ) :
    ‖rawMoment f k - quadratureMoment x v N k‖ ≤ T ^ k * cellVariationBudget x ε N := by
  rw [rawMoment_eq_sum_cells f T hT hf hs x N hx0 hxN k, quadratureMoment,
    ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ j ∈ Finset.range N,
        ‖(∫ t : ℝ in x j..x (j + 1), f t * (t : ℂ) ^ k) -
          v j * cellMomentWeight (x j) (x (j + 1)) k‖ := norm_sum_le _ _
    _ ≤ ∑ j ∈ Finset.range N, (ε j * T ^ k) * (x (j + 1) - x j) := by
      apply Finset.sum_le_sum
      intro j hj
      have hj' := Finset.mem_range.mp hj
      exact norm_cell_moment_sub_le f T (x j) (x (j + 1)) (ε j) (v j) k hT
        (hgeom j hj').1 (hgeom j hj').2.1 (hgeom j hj').2.2 (hε j hj')
        (integrable_monomial f T hT hf hs k).intervalIntegrable (hcell j hj')
    _ = T ^ k * cellVariationBudget x ε N := by
      unfold cellVariationBudget
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro j _
      ring

/-- A valid cell-error budget is nonnegative. -/
theorem cellVariationBudget_nonneg (x ε : ℕ → ℝ) (N : ℕ)
    (hwidth : ∀ j < N, 0 ≤ x (j + 1) - x j)
    (hε : ∀ j < N, 0 ≤ ε j) : 0 ≤ cellVariationBudget x ε N := by
  apply Finset.sum_nonneg
  intro j hj
  exact mul_nonneg (hε j (Finset.mem_range.mp hj)) (hwidth j (Finset.mem_range.mp hj))

/-- The common cell error amplifies by at most exp(T*C) on a FIXED frequency
ball, independent of the number of retained moments. -/
theorem momentDataBudget_cell_error_le (T C E : ℝ) (hT : 0 ≤ T)
    (hC : 0 ≤ C) (hE : 0 ≤ E) (n : ℕ) :
    momentDataBudget C n (fun k => T ^ k * E) ≤ E * Real.exp (T * C) := by
  calc
    _ = E * ∑ k ∈ Finset.range n, (T * C) ^ k / (k.factorial : ℝ) := by
      unfold momentDataBudget
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro k _
      rw [mul_pow]
      ring
    _ ≤ E * Real.exp (T * C) :=
      mul_le_mul_of_nonneg_left (Real.sum_le_exp_of_nonneg (mul_nonneg hT hC) n) hE

/-- The same cells supply the global L1 bound; it is not a separate oracle. -/
theorem integral_norm_le_cellL1Budget
    (f : ℝ → ℂ) (T : ℝ) (hT : 0 ≤ T) (hf : Integrable f volume)
    (hs : ∀ t : ℝ, T < |t| → f t = 0)
    (x : ℕ → ℝ) (v : ℕ → ℂ) (ε : ℕ → ℝ) (N : ℕ)
    (hx0 : x 0 = -T) (hxN : x N = T)
    (hgeom : ∀ j < N, -T ≤ x j ∧ x j ≤ x (j + 1) ∧ x (j + 1) ≤ T)
    (hcell : ∀ j < N, ∀ t ∈ Icc (x j) (x (j + 1)), ‖f t - v j‖ ≤ ε j) :
    (∫ t : ℝ, ‖f t‖) ≤ cellL1Budget x v ε N := by
  have hsplit := intervalIntegral.sum_integral_adjacent_intervals
    (a := x) (n := N) (fun _ _ => hf.norm.intervalIntegrable)
  rw [hx0, hxN] at hsplit
  have he := integral_interval_eq_integral_of_supported (fun t => ‖f t‖) T hT
    (fun t ht => by rw [hs t ht, norm_zero])
  rw [← he, ← hsplit, cellL1Budget]
  apply Finset.sum_le_sum
  intro j hj
  have hj' := Finset.mem_range.mp hj
  have hab := (hgeom j hj').2.1
  have hp (t : ℝ) (ht : t ∈ Set.uIoc (x j) (x (j + 1))) :
      ‖‖f t‖‖ ≤ ‖v j‖ + ε j := by
    rw [Set.uIoc_of_le hab] at ht
    have hc := hcell j hj' t ⟨ht.1.le, ht.2⟩
    have ht := norm_add_le (f t - v j) (v j)
    rw [sub_add_cancel] at ht
    simpa only [norm_norm] using ht.trans (by linarith : ‖f t - v j‖ + ‖v j‖ ≤ ‖v j‖ + ε j)
  have hb := intervalIntegral.norm_integral_le_of_norm_le_const hp
  rw [Real.norm_eq_abs, abs_of_nonneg (sub_nonneg.mpr hab)] at hb
  exact (le_abs_self _).trans hb

/-- Midpoint data produce BOTH prior evaluation inputs at once. Local variation
and finite sample bounds remain certified premises, not guessed from samples. -/
theorem moment_and_l1_bounds_of_midpoint
    (f : ℝ → ℂ) (T : ℝ) (hT : 0 ≤ T) (hf : Integrable f volume)
    (hs : ∀ t : ℝ, T < |t| → f t = 0)
    (x : ℕ → ℝ) (v : ℕ → ℂ) (L r : ℕ → ℝ) (N : ℕ)
    (hx0 : x 0 = -T) (hxN : x N = T)
    (hgeom : ∀ j < N, -T ≤ x j ∧ x j ≤ x (j + 1) ∧ x (j + 1) ≤ T)
    (hL : ∀ j < N, 0 ≤ L j) (hr : ∀ j < N, 0 ≤ r j)
    (hvariation : ∀ j < N, ∀ t ∈ Icc (x j) (x (j + 1)),
      ‖f t - f ((x j + x (j + 1)) / 2)‖ ≤
        L j * |t - (x j + x (j + 1)) / 2|)
    (hsample : ∀ j < N, ‖f ((x j + x (j + 1)) / 2) - v j‖ ≤ r j) :
    (∀ k : ℕ, ‖rawMoment f k - quadratureMoment x v N k‖ ≤
      T ^ k * cellVariationBudget x (midpointCellError x L r) N) ∧
    (∫ t : ℝ, ‖f t‖) ≤ cellL1Budget x v (midpointCellError x L r) N := by
  have hε (j : ℕ) (hj : j < N) : 0 ≤ midpointCellError x L r j := by
    unfold midpointCellError
    exact add_nonneg (mul_nonneg (hL j hj)
      (div_nonneg (sub_nonneg.mpr (hgeom j hj).2.1) (by norm_num))) (hr j hj)
  have hcell (j : ℕ) (hj : j < N) (t : ℝ) (ht : t ∈ Icc (x j) (x (j + 1))) :
      ‖f t - v j‖ ≤ midpointCellError x L r j :=
    norm_sub_sample_le_midpoint f (x j) (x (j + 1)) (L j) (r j) (v j)
      (hL j hj) (hvariation j hj) (hsample j hj) t ht
  exact ⟨fun k => norm_rawMoment_sub_quadratureMoment_le f T hT hf hs x v
      (midpointCellError x L r) N hx0 hxN hgeom hε hcell k,
    integral_norm_le_cellL1Budget f T hT hf hs x v
      (midpointCellError x L r) N hx0 hxN hgeom hcell⟩

/-- One extra finite-arithmetic rounding error can be added to any moment bound. -/
theorem norm_rawMoment_sub_roundedQuadrature_le
    (f : ℝ → ℂ) (x : ℕ → ℝ) (v : ℕ → ℂ) (N k : ℕ)
    (η τ : ℝ) (μ : ℂ)
    (hquad : ‖rawMoment f k - quadratureMoment x v N k‖ ≤ η)
    (hround : ‖quadratureMoment x v N k - μ‖ ≤ τ) :
    ‖rawMoment f k - μ‖ ≤ η + τ := by
  have ht := dist_triangle (rawMoment f k) (quadratureMoment x v N k) μ
  simp only [dist_eq_norm] at ht
  exact ht.trans (add_le_add hquad hround)

/-- A mesh/precision bound controls the whole variation cost. This does not
assert the existence of certified sample values or variation constants. -/
theorem cellVariationBudget_le_of_mesh
    (x L r : ℕ → ℝ) (N : ℕ) (T K h e : ℝ)
    (hx0 : x 0 = -T) (hxN : x N = T)
    (hwidth : ∀ j < N, 0 ≤ x (j + 1) - x j ∧ x (j + 1) - x j ≤ h)
    (hK : 0 ≤ K) (hL : ∀ j < N, L j ≤ K) (hr : ∀ j < N, r j ≤ e) :
    cellVariationBudget x (midpointCellError x L r) N ≤ 2 * T * (K * h / 2 + e) := by
  have htel : ∀ m : ℕ, (∑ j ∈ Finset.range m, x (j + 1) - x j) = x m - x 0 := by
    intro m
    induction m with
    | zero => simp
    | succ m ih => rw [Finset.sum_range_succ, ih]; ring
  have hsum := htel N
  unfold cellVariationBudget
  calc
    _ ≤ ∑ j ∈ Finset.range N, (K * h / 2 + e) * (x (j + 1) - x j) := by
      apply Finset.sum_le_sum
      intro j hj
      have hj' := Finset.mem_range.mp hj
      apply mul_le_mul_of_nonneg_right _ (hwidth j hj').1
      unfold midpointCellError
      have hm := mul_le_mul (hL j hj') (hwidth j hj').2 (hwidth j hj').1 hK
      nlinarith [hr j hj']
    _ = 2 * T * (K * h / 2 + e) := by
      rw [← Finset.mul_sum, hsum, hx0, hxN]
      ring

end GRWTSK.MeasureAndIntegration.RawMomentQuadrature
