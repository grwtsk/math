/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.IntervalMellinKernel
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Abel

set_option autoImplicit false

/-!
# A finite left quadrature for the actual interval Mellin kernel

The derivative in the integration variable is derived from the existing
positive-axis exponential. The partition error is then proved, not supplied
as an approximation premise. Ordered nodes and exact endpoint coverage remain
in the theorem types. Sample enclosures are still separate proof obligations.
No finite quadrature constructs a zeta source identity or an omitted-zero tail.
Source draft: NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.IntervalMellinQuadrature

open MeasureTheory Set Filter
open scoped Interval BigOperators
open GRWTSK.Analysis.Complex.IntervalMellinKernel

noncomputable section

/-- Spatial derivative bound, distinct from parameter sensitivity. -/
def spatialSlopeBound (a b β : ℝ) (z : ℂ) : ℝ :=
  ‖z - 1‖ * densityBound a b (β - 1)

theorem spatialSlopeBound_nonneg (a b β : ℝ) (z : ℂ) :
    0 ≤ spatialSlopeBound a b β z :=
  mul_nonneg (norm_nonneg _) (densityBound_pos _ _ _).le

/-- Reuse the already derived real-variable derivative of `logPower`. -/
theorem hasDerivAt_density_real {t : ℝ} (ht : 0 < t) (z : ℂ) :
    HasDerivAt (density z) ((z - 1) * density (z - 1) t) t :=
  hasDerivAt_logPower ht (z - 1)

theorem norm_spatial_derivative_le {a b β t : ℝ} {z : ℂ}
    (ha : 1 < a) (ht : t ∈ Icc a b) (hz : z.re ≤ β) :
    ‖(z - 1) * density (z - 1) t‖ ≤ spatialSlopeBound a b β z := by
  have hz' : (z - 1).re ≤ β - 1 := by simpa using sub_le_sub_right hz 1
  simpa only [norm_mul, spatialSlopeBound] using
    mul_le_mul_of_nonneg_left (norm_density_le ha ht hz') (norm_nonneg (z - 1))

/-- This estimate concerns movement in t, not movement of the complex parameter. -/
theorem density_spatial_lipschitz {a b β u v : ℝ} {z : ℂ}
    (ha : 1 < a) (hu : u ∈ Icc a b) (hv : v ∈ Icc a b) (hz : z.re ≤ β) :
    ‖density z v - density z u‖ ≤ spatialSlopeBound a b β z * |v - u| := by
  have h := (convex_Icc a b).norm_image_sub_le_of_norm_hasDerivWithin_le
    (fun t ht ↦ (hasDerivAt_density_real
      ((lt_trans zero_lt_one ha).trans_le ht.1) z).hasDerivWithinAt)
    (fun t ht ↦ norm_spatial_derivative_le ha ht hz) hu hv
  simpa only [Real.norm_eq_abs] using h

/-- The factor one-half comes from integrating the distance to the left node. -/
theorem left_cell_error {a b c d β : ℝ} {z : ℂ}
    (ha : 1 < a) (hac : a ≤ c) (hcd : c ≤ d) (hdb : d ≤ b) (hz : z.re ≤ β) :
    ‖kernel c d z - (d - c) • density z c‖ ≤
      spatialSlopeBound a b β z * (d - c) ^ 2 / 2 := by
  let D := spatialSlopeBound a b β z
  have hmajor : (∫ t in c..d, D * (t - c)) = D * (d - c) ^ 2 / 2 := by
    rw [intervalIntegral.integral_const_mul,
      intervalIntegral.integral_sub (f := fun t : ℝ ↦ t) (g := fun _ : ℝ ↦ c)
        (continuous_id.intervalIntegrable c d) intervalIntegrable_const, integral_id,
      intervalIntegral.integral_const]
    simp only [smul_eq_mul]
    ring
  have h := intervalIntegral.norm_integral_le_of_norm_le
    (a := c) (b := d) (μ := volume) (f := fun t ↦ density z t - density z c)
    (g := fun t : ℝ ↦ D * (t - c)) hcd
    (Eventually.of_forall fun t ht ↦ by
      have htc : 0 ≤ t - c := sub_nonneg.mpr ht.1.le
      simpa only [abs_of_nonneg htc] using
        density_spatial_lipschitz ha ⟨hac, hcd.trans hdb⟩
          ⟨hac.trans ht.1.le, ht.2.trans hdb⟩ hz)
    ((by fun_prop : Continuous (fun t : ℝ ↦ D * (t - c))).intervalIntegrable c d)
  rw [intervalIntegral.integral_sub (density_intervalIntegrable (ha.trans_le hac) hcd z)
      intervalIntegrable_const, intervalIntegral.integral_const, hmajor] at h
  exact h

/-- The actual finite quadrature, with each cell's own positive length. -/
def leftSum (x : ℕ → ℝ) (N : ℕ) (z : ℂ) : ℂ :=
  ∑ i ∈ Finset.range N, (x (i + 1) - x i) • density z (x i)

/-- An explicit derived bound; no caller-supplied kernel-error field. -/
def partitionError (x : ℕ → ℝ) (N : ℕ) (β : ℝ) (z : ℂ) : ℝ :=
  spatialSlopeBound (x 0) (x N) β z / 2 *
    ∑ i ∈ Finset.range N, (x (i + 1) - x i) ^ 2

theorem partitionError_nonneg (x : ℕ → ℝ) (N : ℕ) (β : ℝ) (z : ℂ) :
    0 ≤ partitionError x N β z := by
  exact mul_nonneg (div_nonneg (spatialSlopeBound_nonneg _ _ _ _) (by norm_num))
    (Finset.sum_nonneg fun _ _ ↦ sq_nonneg _)

/-- Every adjacent cell is used once, and the conclusion has the actual endpoints. -/
theorem kernel_eq_partition (x : ℕ → ℝ) (N : ℕ) (hx : Monotone x)
    (ha : 1 < x 0) (z : ℂ) :
    kernel (x 0) (x N) z = ∑ i ∈ Finset.range N, kernel (x i) (x (i + 1)) z := by
  have h := intervalIntegral.sum_integral_adjacent_intervals
    (a := x) (n := N) (f := density z) (μ := volume)
    (fun i _ ↦ density_intervalIntegrable (ha.trans_le (hx (Nat.zero_le i)))
      (hx (Nat.le_succ i)) z)
  exact h.symm

/-- A rigorous partition error for the existing integral kernel. -/
theorem leftSum_error (x : ℕ → ℝ) (N : ℕ) (hx : Monotone x)
    (ha : 1 < x 0) {β : ℝ} {z : ℂ} (hz : z.re ≤ β) :
    ‖kernel (x 0) (x N) z - leftSum x N z‖ ≤ partitionError x N β z := by
  calc
    _ = ‖∑ i ∈ Finset.range N,
        (kernel (x i) (x (i + 1)) z - (x (i + 1) - x i) • density z (x i))‖ := by
      rw [kernel_eq_partition x N hx ha z, leftSum, Finset.sum_sub_distrib]
    _ ≤ ∑ i ∈ Finset.range N,
        ‖kernel (x i) (x (i + 1)) z - (x (i + 1) - x i) • density z (x i)‖ :=
      norm_sum_le _ _
    _ ≤ ∑ i ∈ Finset.range N,
        spatialSlopeBound (x 0) (x N) β z * (x (i + 1) - x i) ^ 2 / 2 := by
      apply Finset.sum_le_sum
      intro i hi
      exact left_cell_error ha (hx (Nat.zero_le i)) (hx (Nat.le_succ i))
        (hx (Nat.succ_le_of_lt (Finset.mem_range.mp hi))) hz
    _ = _ := by
      simp only [partitionError, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      ring

/-- Node-value enclosures do not replace discretization error. Positive cell lengths
are retained, so signed weights cannot cancel the rounding allowance. -/
theorem leftSum_sample_error (x : ℕ → ℝ) (N : ℕ) (hx : Monotone x)
    (z : ℂ) (v : ℕ → ℂ) (ε : ℕ → ℝ)
    (hv : ∀ i < N, ‖density z (x i) - v i‖ ≤ ε i) :
    ‖leftSum x N z - ∑ i ∈ Finset.range N, (x (i + 1) - x i) • v i‖ ≤
      ∑ i ∈ Finset.range N, (x (i + 1) - x i) * ε i := by
  calc
    _ = ‖∑ i ∈ Finset.range N,
        (x (i + 1) - x i) • (density z (x i) - v i)‖ := by
      simp only [leftSum, smul_sub, Finset.sum_sub_distrib]
    _ ≤ ∑ i ∈ Finset.range N,
        ‖(x (i + 1) - x i) • (density z (x i) - v i)‖ := norm_sum_le _ _
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro i hi
      have hlen : 0 ≤ x (i + 1) - x i := sub_nonneg.mpr (hx (Nat.le_succ i))
      simpa only [norm_smul, Real.norm_eq_abs, abs_of_nonneg hlen] using
        mul_le_mul_of_nonneg_left (hv i (Finset.mem_range.mp hi)) hlen

/-- The approximation is the finite weighted sample sum, not an arbitrary target. -/
theorem kernel_sample_error (x : ℕ → ℝ) (N : ℕ) (hx : Monotone x)
    (ha : 1 < x 0) {β : ℝ} {z : ℂ} (hz : z.re ≤ β)
    (v : ℕ → ℂ) (ε : ℕ → ℝ)
    (hv : ∀ i < N, ‖density z (x i) - v i‖ ≤ ε i) :
    ‖kernel (x 0) (x N) z - ∑ i ∈ Finset.range N, (x (i + 1) - x i) • v i‖ ≤
      partitionError x N β z +
        ∑ i ∈ Finset.range N, (x (i + 1) - x i) * ε i := by
  calc
    _ = ‖(kernel (x 0) (x N) z - leftSum x N z) +
        (leftSum x N z - ∑ i ∈ Finset.range N, (x (i + 1) - x i) • v i)‖ := by
      congr 1
      abel
    _ ≤ ‖kernel (x 0) (x N) z - leftSum x N z‖ +
        ‖leftSum x N z - ∑ i ∈ Finset.range N, (x (i + 1) - x i) • v i‖ :=
      norm_add_le _ _
    _ ≤ _ := add_le_add (leftSum_error x N hx ha hz)
      (leftSum_sample_error x N hx z v ε hv)

/-- Finite natural multiplicities are retained through quadrature and sample errors.
No zero-source predicate or complete-complement statement is inferred. -/
theorem finite_weighted_sample_error {ι : Type*} (S : Finset ι)
    (m : ι → ℕ) (z : ι → ℂ) (β : ι → ℝ)
    (x : ℕ → ℝ) (N : ℕ) (hx : Monotone x) (ha : 1 < x 0)
    (v : ι → ℕ → ℂ) (ε : ι → ℕ → ℝ)
    (hz : ∀ j ∈ S, (z j).re ≤ β j)
    (hv : ∀ j ∈ S, ∀ i < N, ‖density (z j) (x i) - v j i‖ ≤ ε j i) :
    ‖(∑ j ∈ S, (m j : ℂ) * kernel (x 0) (x N) (z j)) -
      ∑ j ∈ S, (m j : ℂ) * (∑ i ∈ Finset.range N, (x (i + 1) - x i) • v j i)‖ ≤
      ∑ j ∈ S, (m j : ℝ) * (partitionError x N (β j) (z j) +
        ∑ i ∈ Finset.range N, (x (i + 1) - x i) * ε j i) := by
  calc
    _ = ‖∑ j ∈ S, (m j : ℂ) * (kernel (x 0) (x N) (z j) -
        ∑ i ∈ Finset.range N, (x (i + 1) - x i) • v j i)‖ := by
      simp only [mul_sub, Finset.sum_sub_distrib]
    _ ≤ ∑ j ∈ S, ‖(m j : ℂ) * (kernel (x 0) (x N) (z j) -
        ∑ i ∈ Finset.range N, (x (i + 1) - x i) • v j i)‖ := norm_sum_le _ _
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro j hj
      simpa [norm_mul] using
        mul_le_mul_of_nonneg_left
          (kernel_sample_error x N hx ha (hz j hj) (v j) (ε j) (hv j hj))
          (Nat.cast_nonneg (m j) : (0 : ℝ) ≤ m j)

/-- A concrete equal-width mesh. A positive N is required to reach b. -/
def uniformNodes (a b : ℝ) (N : ℕ) (i : ℕ) : ℝ :=
  a + (i : ℝ) * ((b - a) / (N : ℝ))

@[simp] theorem uniformNodes_zero (a b : ℝ) (N : ℕ) : uniformNodes a b N 0 = a := by
  simp [uniformNodes]

theorem uniformNodes_end (a b : ℝ) (N : ℕ) (hN : 0 < N) : uniformNodes a b N N = b := by
  have hN0 : (N : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hN)
  simp only [uniformNodes]
  field_simp [hN0]
  ring

theorem uniformNodes_step (a b : ℝ) (N i : ℕ) :
    uniformNodes a b N (i + 1) - uniformNodes a b N i = (b - a) / (N : ℝ) := by
  simp only [uniformNodes, Nat.cast_add, Nat.cast_one]
  ring

theorem uniformNodes_monotone {a b : ℝ} (hab : a ≤ b) (N : ℕ) :
    Monotone (uniformNodes a b N) := by
  intro i j hij
  dsimp only [uniformNodes]
  exact add_le_add_right (mul_le_mul_of_nonneg_right (by exact_mod_cast hij)
    (div_nonneg (sub_nonneg.mpr hab) (Nat.cast_nonneg (α := ℝ) N))) a

/-- The explicit inverse-cell-count bound; asymptotic statements are not assumed. -/
theorem uniform_leftSum_error {a b β : ℝ} {z : ℂ}
    (ha : 1 < a) (hab : a ≤ b) (hz : z.re ≤ β) (N : ℕ) (hN : 0 < N) :
    ‖kernel a b z - leftSum (uniformNodes a b N) N z‖ ≤
      spatialSlopeBound a b β z * (b - a) ^ 2 / (2 * (N : ℝ)) := by
  have hN0 : (N : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hN)
  have h := leftSum_error (uniformNodes a b N) N (uniformNodes_monotone hab N)
    (by simpa using ha) hz
  have he : partitionError (uniformNodes a b N) N β z =
      spatialSlopeBound a b β z * (b - a) ^ 2 / (2 * (N : ℝ)) := by
    simp only [partitionError, uniformNodes_zero, uniformNodes_end a b N hN,
      uniformNodes_step, Finset.sum_const, Finset.card_range, nsmul_eq_mul]
    field_simp [hN0]
  simpa only [uniformNodes_zero, uniformNodes_end a b N hN, he] using h

/-- A constant density has no discretization error at any covered partition. -/
theorem leftSum_one (x : ℕ → ℝ) (N : ℕ) (hx : Monotone x) (ha : 1 < x 0) :
    leftSum x N 1 = kernel (x 0) (x N) 1 := by
  have h := leftSum_error x N hx ha (z := 1) (β := 1) (by norm_num)
  simp only [partitionError, spatialSlopeBound, sub_self, norm_zero,
    zero_mul, zero_div] at h
  exact (sub_eq_zero.mp (norm_eq_zero.mp (le_antisymm h (norm_nonneg _)))).symm

/-- Positive-axis density at parameter two is the identity function. -/
theorem density_two {t : ℝ} (ht : 0 < t) : density 2 t = (t : ℂ) := by
  change Complex.exp (((2 : ℂ) - 1) * (Real.log t : ℂ)) = (t : ℂ)
  rw [show (2 : ℂ) - 1 = 1 by norm_num, one_mul, exp_real_log ht]

theorem kernel_two {a b : ℝ} (ha : 1 < a) (hab : a ≤ b) :
    kernel a b 2 = ((b ^ 2 - a ^ 2) / 2 : ℝ) := by
  have h : kernel a b 2 = ∫ t in a..b, (t : ℂ) := by
    apply intervalIntegral.integral_congr
    intro t ht
    have ht' : t ∈ Icc a b := (uIcc_of_le hab) ▸ ht
    exact density_two ((lt_trans zero_lt_one ha).trans_le ht'.1)
  rw [h, intervalIntegral.integral_ofReal, integral_id]

/-- The one-half coefficient is attained by the actual kernel at z=2. -/
theorem left_cell_error_at_two {a b : ℝ} (ha : 1 < a) (hab : a ≤ b) :
    kernel a b 2 - (b - a) • density 2 a = ((b - a) ^ 2 / 2 : ℝ) := by
  rw [kernel_two ha hab, density_two (lt_trans zero_lt_one ha), Complex.real_smul]
  push_cast
  ring

theorem sharp_half_control :
    ‖kernel 2 3 2 - (3 - 2 : ℝ) • density 2 2‖ = (1 / 2 : ℝ) := by
  rw [left_cell_error_at_two (by norm_num) (by norm_num)]
  norm_num

/-- With no cells the mesh never reaches a distinct right endpoint. -/
theorem zero_cells_not_full_interval :
    kernel 2 3 1 ≠ leftSum (uniformNodes 2 3 0) 0 1 := by
  norm_num [kernel_one, leftSum]

/-- Refining a mesh does not repair incorrect sample values. At z=1 the true
kernel has unit mass, while uniformly zero sample values always return zero. -/
theorem zero_samples_keep_error (N : ℕ) :
    ‖kernel 2 3 1 - ∑ i ∈ Finset.range N,
      (uniformNodes 2 3 N (i + 1) - uniformNodes 2 3 N i) • (0 : ℂ)‖ = 1 := by
  norm_num [kernel_one]

end
end GRWTSK.Analysis.Complex.IntervalMellinQuadrature
