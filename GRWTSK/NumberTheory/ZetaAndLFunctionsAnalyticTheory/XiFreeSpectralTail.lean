/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Topology.Algebra.Order.Field
import Mathlib.Tactic

/-! Lower bounds for the free part of an infrared spectral determinant.
See the companion manuscript for the association with the periodic spectrum. -/

open Filter
open scoped Topology BigOperators

namespace GRWTSK.XiFreeSpectralTail

/-- A positive telescoping minorant for one exterior spectral pair on the imaginary axis. -/
theorem log_pair_lower {a x : ℝ} (ha : 0 ≤ a) (hx : 0 < x) :
    a ^ 2 / (x + a) - a ^ 2 / (x + a + 1) ≤ Real.log (1 + (a / x) ^ 2) := by
  have hxa : 0 < x + a := by positivity
  have hxa' : 0 < x + a + 1 := by positivity
  have hden : 0 < x ^ 2 + a ^ 2 := by positivity
  calc
    _ = a ^ 2 / ((x + a) * (x + a + 1)) := by field_simp; ring
    _ ≤ a ^ 2 / (x ^ 2 + a ^ 2) := by
      apply div_le_div_of_nonneg_left (sq_nonneg _) hden
      nlinarith [mul_nonneg hx.le ha]
    _ = 1 - (1 + (a / x) ^ 2)⁻¹ := by
      have hp : 0 < 1 + (a / x) ^ 2 := by positivity
      field_simp
      ring
    _ ≤ _ := Real.one_sub_inv_le_log_of_pos (by positivity)

/-- The lower bound is uniform in the number of periodic modes kept in the core. -/
theorem partial_log_tail_lower {a x : ℝ} (ha : 0 ≤ a) (hx : 0 < x) (m : ℕ) :
    a ^ 2 / (x + a) - a ^ 2 / (x + (m : ℝ) + a) ≤
      ∑ k ∈ Finset.range m, Real.log (1 + (a / (x + (k : ℝ))) ^ 2) := by
  induction m with
  | zero => simp
  | succ m ih =>
    rw [Finset.sum_range_succ, Nat.cast_succ]
    have hk := log_pair_lower ha (x := x + (m : ℝ)) (by positivity)
    have he : x + ((m : ℝ) + 1) + a = x + (m : ℝ) + a + 1 := by ring
    rw [he]
    linarith

/-- Any upper bound for all finite log products also bounds the entire telescoping mass. -/
theorem log_tail_lower {a x B : ℝ} (ha : 0 ≤ a) (hx : 0 < x)
    (hB : ∀ m : ℕ, (∑ k ∈ Finset.range m, Real.log (1 + (a / (x + (k : ℝ))) ^ 2)) ≤ B) :
    a ^ 2 / (x + a) ≤ B := by
  have ht : Tendsto (fun m : ℕ => x + (m : ℝ) + a) atTop atTop :=
    tendsto_atTop_add_const_right _ _ (tendsto_atTop_add_const_left _ _ tendsto_natCast_atTop_atTop)
  have hz : Tendsto (fun m : ℕ => a ^ 2 / (x + (m : ℝ) + a)) atTop (𝓝 0) := by
    simpa [div_eq_mul_inv] using
      (tendsto_inv_atTop_zero.comp ht).const_mul (a ^ 2)
  apply le_of_tendsto (by simpa using tendsto_const_nhds.sub hz)
  exact Eventually.of_forall fun m => (partial_log_tail_lower ha hx m).trans (hB m)

/-- If every imaginary-axis determinant majorant has a subquadratic limiting log,
then the number of retained modes must grow faster than the squared length scale.
Here indexing starts at the first omitted mode, and the length is in units of 2π. -/
theorem cutoff_growth {b x : ℕ → ℝ} (hb : ∀ i, 0 < b i) (hx : ∀ i, 0 < x i)
    (hbtop : Tendsto b atTop atTop) {S : ℕ → ℝ → ℝ} {f : ℝ → ℝ}
    (hmajor : ∀ i y, 0 < y → ∀ m : ℕ,
      (∑ k ∈ Finset.range m, Real.log (1 + (y * b i / (x i + (k : ℝ))) ^ 2)) ≤ S i y)
    (hlim : ∀ y, 0 < y → Tendsto (fun i => S i y) atTop (𝓝 (f y)))
    (hsmall : Tendsto (fun y => f y / y ^ 2) atTop (𝓝 0)) :
    Tendsto (fun i => x i / b i ^ 2) atTop atTop := by
  apply tendsto_atTop.2
  intro A
  let M := max A 1
  have hM : 0 < M := lt_of_lt_of_le zero_lt_one (le_max_right _ _)
  have he : 0 < (1 : ℝ) / (2 * M) := by positivity
  obtain ⟨y, hy, hyf⟩ := ((eventually_gt_atTop (0 : ℝ)).and
    (hsmall.eventually (gt_mem_nhds he))).exists
  have hy2 : 0 < y ^ 2 := sq_pos_of_pos hy
  have hf : f y < y ^ 2 / (2 * M) := by
    have := (div_lt_iff₀ hy2).mp hyf
    linarith [show 1 / (2 * M) * y ^ 2 = y ^ 2 / (2 * M) by ring]
  filter_upwards [(hlim y hy).eventually (gt_mem_nhds hf),
      hbtop.eventually (eventually_gt_atTop (y / M))] with i hi hbi
  have hbi' := hb i
  have hxi := hx i
  have hden : 0 < x i + y * b i := by positivity
  have hlo := (log_tail_lower (a := y * b i) (by positivity) hxi (hmajor i y hy)).trans_lt hi
  have hcross := (div_lt_div_iff₀ hden (by positivity : 0 < 2 * M)).mp hlo
  have hlarge : (2 * M) * b i ^ 2 < x i + y * b i := by
    apply (mul_lt_mul_iff_right₀ hy2).mp
    nlinarith only [hcross]
  have hyb : y < M * b i := by linarith [(div_lt_iff₀ hM).mp hbi]
  have hcut : M * b i ^ 2 < x i := by
    nlinarith only [hlarge, mul_lt_mul_of_pos_right hyb hbi']
  exact (le_max_left A 1).trans ((lt_div_iff₀ (sq_pos_of_pos hbi')).mpr hcut).le

end GRWTSK.XiFreeSpectralTail
