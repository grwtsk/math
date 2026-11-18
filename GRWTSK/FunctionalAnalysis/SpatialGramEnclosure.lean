/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.QuadraticCertificateCore
import Mathlib.Analysis.InnerProductSpace.GramMatrix
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Algebra.Order.BigOperators.Ring.Finset
import Mathlib.Tactic

/-!
# Complete spatial Gram enclosures and inexact head removal

A range bound is required throughout each cell. Midpoint samples without
that bound are not certificates. Scalar product ranges give complete
integral-entry enclosures; symmetric entry radii give a diagonal quadratic
allowance for EVERY real coefficient vector. Mathlib's `Matrix.gram` and
the repository's original `quadratic` are reused.

A head vector need only be orthogonal to the tests under consideration.
It need not be the exactly evaluated orthogonal projection. This gives a
safe upper residual budget without inverting a computed Gram matrix.
Consumer: WeilFiniteSineSpatialResidual.lean, on the original source.
Real scalars here; no complex-character transfer is asserted.

SOURCE_PROOF_CANDIDATE. Elaboration, exact types, kernel replay, transitive
axiom audit, certified arithmetic and independent review: NOT_RUN.
See SpatialGramEnclosure.md for argument and declaration-level provenance.
-/
set_option autoImplicit false
open MeasureTheory Set Matrix
open scoped BigOperators Interval

namespace GRWTSK.FunctionalAnalysis.SpatialGramEnclosure

open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- All three terms are needed, including the product of both errors. -/
noncomputable def productRadius (p q r s : ℝ) : ℝ := |p| * s + |q| * r + r * s

theorem productRadius_nonneg {p q r s : ℝ} (hr : 0 ≤ r) (hs : 0 ≤ s) :
    0 ≤ productRadius p q r s := by
  unfold productRadius
  positivity

theorem abs_product_sub_le {a b p q r s : ℝ} (hr : 0 ≤ r) (hs : 0 ≤ s)
    (ha : |a - p| ≤ r) (hb : |b - q| ≤ s) :
    |a * b - p * q| ≤ productRadius p q r s := by
  have hid : a * b - p * q = (a - p) * (b - q) + p * (b - q) + q * (a - p) := by ring
  rw [hid]
  calc
    _ ≤ |(a - p) * (b - q)| + |p * (b - q)| + |q * (a - p)| :=
      (abs_add _ _).trans (add_le_add_right (abs_add _ _) _)
    _ ≤ r * s + |p| * s + |q| * r := by
      simp only [abs_mul]
      exact add_le_add
        (add_le_add (mul_le_mul ha hb (abs_nonneg _) hr)
          (mul_le_mul_of_nonneg_left hb (abs_nonneg _)))
        (mul_le_mul_of_nonneg_left ha (abs_nonneg _))
    _ = _ := by unfold productRadius; ring

/-- A variation bound on the WHOLE cell, plus an outward midpoint sample. -/
theorem midpoint_range {f : ℝ → ℝ} {a b K p r : ℝ}
    (hab : a ≤ b) (hK : 0 ≤ K)
    (hv : ∀ t ∈ Icc a b, |f t - f ((a + b) / 2)| ≤ K * |t - (a + b) / 2|)
    (hp : |f ((a + b) / 2) - p| ≤ r)
    {t : ℝ} (ht : t ∈ Icc a b) :
    |f t - p| ≤ K * (b - a) / 2 + r := by
  have hd : |t - (a + b) / 2| ≤ (b - a) / 2 :=
    abs_le.mpr ⟨by linarith [ht.1], by linarith [ht.2]⟩
  calc
    |f t - p| ≤ |f t - f ((a + b) / 2)| + |f ((a + b) / 2) - p| :=
      abs_sub_le _ _ _
    _ ≤ K * |t - (a + b) / 2| + r := add_le_add (hv t ht) hp
    _ ≤ K * (b - a) / 2 + r := by
      nlinarith [mul_le_mul_of_nonneg_left hd hK]

/-- The complete cell integral, not a quadrature observation on a few points. -/
theorem cell_product_error (f g : ℝ → ℝ) {a b p q r s : ℝ}
    (hab : a ≤ b) (hr : 0 ≤ r) (hs : 0 ≤ s)
    (hi : IntervalIntegrable (fun t => f t * g t) volume a b)
    (hf : ∀ t ∈ Icc a b, |f t - p| ≤ r)
    (hg : ∀ t ∈ Icc a b, |g t - q| ≤ s) :
    |(∫ t in a..b, f t * g t) - (b - a) * (p * q)| ≤
      (b - a) * productRadius p q r s := by
  have hbnd : ∀ t ∈ Ι a b, ‖f t * g t - p * q‖ ≤ productRadius p q r s := by
    intro t ht
    rw [uIoc_of_le hab] at ht
    simpa only [Real.norm_eq_abs] using
      abs_product_sub_le hr hs (hf t ⟨ht.1.le, ht.2⟩) (hg t ⟨ht.1.le, ht.2⟩)
  have h := intervalIntegral.norm_integral_le_of_norm_le_const hbnd
  rw [intervalIntegral.integral_sub hi (intervalIntegrable_const),
    intervalIntegral.integral_const] at h
  simpa only [Real.norm_eq_abs, smul_eq_mul,
    abs_of_nonneg (sub_nonneg.mpr hab), mul_comm (productRadius p q r s)] using h

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- Integral Gram of the complete spatial representatives on an interval. -/
noncomputable def integralGram (f : ι → ℝ → ℝ) (a b : ℝ) : Matrix ι ι ℝ :=
  fun i j => ∫ t in a..b, f i t * f j t

noncomputable def sampleGram (x : ℕ → ℝ) (p : ℕ → ι → ℝ) (N : ℕ) : Matrix ι ι ℝ :=
  fun i j => ∑ k ∈ Finset.range N, (x (k + 1) - x k) * (p k i * p k j)

noncomputable def entryRadius (x : ℕ → ℝ) (p r : ℕ → ι → ℝ) (N : ℕ) : Matrix ι ι ℝ :=
  fun i j => ∑ k ∈ Finset.range N,
    (x (k + 1) - x k) * productRadius (p k i) (p k j) (r k i) (r k j)

theorem entryRadius_symmetric (x : ℕ → ℝ) (p r : ℕ → ι → ℝ) (N : ℕ)
    (i j : ι) : entryRadius x p r N i j = entryRadius x p r N j i := by
  unfold entryRadius
  apply Finset.sum_congr rfl
  intro k _
  unfold productRadius
  ring

theorem entryRadius_nonneg (x : ℕ → ℝ) (p r : ℕ → ι → ℝ) (N : ℕ)
    (hx : Monotone x) (hr : ∀ k < N, ∀ i, 0 ≤ r k i) (i j : ι) :
    0 ≤ entryRadius x p r N i j := by
  apply Finset.sum_nonneg
  intro k hk
  exact mul_nonneg (sub_nonneg.mpr (hx (Nat.le_succ k)))
    (productRadius_nonneg (hr k (Finset.mem_range.mp hk) i)
      (hr k (Finset.mem_range.mp hk) j))

/-- All spatial cells, all column pairs, and the whole interval are retained. -/
theorem integralGram_entry_error
    (f : ι → ℝ → ℝ) (x : ℕ → ℝ) (p r : ℕ → ι → ℝ) (N : ℕ)
    (hx : Monotone x) (hr : ∀ k < N, ∀ i, 0 ≤ r k i)
    (hi : ∀ i j k, k < N →
      IntervalIntegrable (fun t => f i t * f j t) volume (x k) (x (k + 1)))
    (hcell : ∀ k < N, ∀ i t, t ∈ Icc (x k) (x (k + 1)) → |f i t - p k i| ≤ r k i)
    (i j : ι) :
    |integralGram f (x 0) (x N) i j - sampleGram x p N i j| ≤ entryRadius x p r N i j := by
  have hsplit := intervalIntegral.sum_integral_adjacent_intervals
    (a := x) (n := N) (fun k hk => hi i j k hk)
  unfold integralGram sampleGram entryRadius
  rw [← hsplit, ← Finset.sum_sub_distrib]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro k hk
  have hkN := Finset.mem_range.mp hk
  exact cell_product_error (f i) (f j) (hx (Nat.le_succ k))
    (hr k hkN i) (hr k hkN j) (hi i j k hkN)
    (hcell k hkN i) (hcell k hkN j)

/-- Convenient expansion of the EXISTING repository quadratic. -/
theorem quadratic_eq_double_sum (A : Matrix ι ι ℝ) (v : ι → ℝ) :
    quadratic A v = ∑ i, ∑ j, (v i * v j) * A i j := by
  simp only [quadratic, Matrix.mulVec, dotProduct, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

noncomputable def diagonalAllowance (E : Matrix ι ι ℝ) : Matrix ι ι ℝ :=
  Matrix.diagonal (fun i => ∑ j, E i j)

theorem quadratic_diagonalAllowance (E : Matrix ι ι ℝ) (v : ι → ℝ) :
    quadratic (diagonalAllowance E) v = ∑ i, (∑ j, E i j) * (v i) ^ 2 := by
  simp only [diagonalAllowance, quadratic, Matrix.diagonal_mulVec, dotProduct]
  apply Finset.sum_congr rfl
  intro i _
  ring

/-- Symmetric entry radii imply a matrix-order allowance, not entrywise order. -/
theorem quadratic_error_le (A B E : Matrix ι ι ℝ)
    (hE : ∀ i j, 0 ≤ E i j) (hsym : ∀ i j, E i j = E j i)
    (herr : ∀ i j, |A i j - B i j| ≤ E i j) (v : ι → ℝ) :
    |quadratic A v - quadratic B v| ≤ quadratic (diagonalAllowance E) v := by
  have hid : quadratic A v - quadratic B v =
      ∑ i, ∑ j, (v i * v j) * (A i j - B i j) := by
    simp only [quadratic_eq_double_sum, mul_sub, Finset.sum_sub_distrib]
  have hswap : (∑ i, ∑ j, E i j * (v j) ^ 2) =
      ∑ i, ∑ j, E i j * (v i) ^ 2 := by
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    rw [hsym j i]
  rw [hid, quadratic_diagonalAllowance]
  calc
    _ ≤ ∑ i, ∑ j, |(v i * v j) * (A i j - B i j)| :=
      (Finset.abs_sum_le_sum_abs _ _).trans
        (Finset.sum_le_sum fun i _ => Finset.abs_sum_le_sum_abs _ _)
    _ ≤ ∑ i, ∑ j, E i j * ((v i) ^ 2 + (v j) ^ 2) / 2 := by
      apply Finset.sum_le_sum
      intro i _
      apply Finset.sum_le_sum
      intro j _
      have hy : |v i * v j| ≤ ((v i) ^ 2 + (v j) ^ 2) / 2 := by
        rw [abs_mul]
        nlinarith [sq_nonneg (|v i| - |v j|), sq_abs (v i), sq_abs (v j)]
      rw [abs_mul]
      exact (mul_le_mul_of_nonneg_left (herr i j) (abs_nonneg _)).trans
        (by nlinarith [mul_le_mul_of_nonneg_left hy (hE i j)])
    _ = ((∑ i, ∑ j, E i j * (v i) ^ 2) +
        (∑ i, ∑ j, E i j * (v j) ^ 2)) / 2 := by
      simp only [mul_add, add_div, Finset.sum_add_distrib, Finset.sum_div]
    _ = ∑ i, (∑ j, E i j) * (v i) ^ 2 := by
      rw [hswap]
      simp only [← Finset.sum_mul]
      ring

/-- A computable center plus a diagonal allowance bounds every vector. -/
theorem quadratic_upper_of_entry_error (A B E : Matrix ι ι ℝ)
    (hE : ∀ i j, 0 ≤ E i j) (hsym : ∀ i j, E i j = E j i)
    (herr : ∀ i j, |A i j - B i j| ≤ E i j) (v : ι → ℝ) :
    quadratic A v ≤ quadratic (B + diagonalAllowance E) v := by
  rw [quadratic_add]
  have h := (le_abs_self (quadratic A v - quadratic B v)).trans
    (quadratic_error_le A B E hE hsym herr v)
  linarith

theorem integralGram_upper_of_cells
    (f : ι → ℝ → ℝ) (x : ℕ → ℝ) (p r : ℕ → ι → ℝ) (N : ℕ)
    (hx : Monotone x) (hr : ∀ k < N, ∀ i, 0 ≤ r k i)
    (hi : ∀ i j k, k < N →
      IntervalIntegrable (fun t => f i t * f j t) volume (x k) (x (k + 1)))
    (hcell : ∀ k < N, ∀ i t, t ∈ Icc (x k) (x (k + 1)) → |f i t - p k i| ≤ r k i)
    (v : ι → ℝ) :
    quadratic (integralGram f (x 0) (x N)) v ≤
      quadratic (sampleGram x p N + diagonalAllowance (entryRadius x p r N)) v :=
  quadratic_upper_of_entry_error _ _ _ (entryRadius_nonneg x p r N hx hr)
    (entryRadius_symmetric x p r N) (integralGram_entry_error f x p r N hx hr hi hcell) v


/-- Computable rational cell radii; analytical validity is proved by the consumer. -/
def rationalCellRadii (y : ℕ → ℚ) (Khat : ι → ℚ) (e : ℕ → ι → ℚ) : ℕ → ι → ℚ :=
  fun k i => Khat i * (y (k + 1) - y k) / 2 + e k i

/-- Exact rational assembly from a finite range table. No floating point or
transcendental evaluation is hidden in this arithmetic function. -/
def rationalUpper (x : ℕ → ℚ) (p r : ℕ → ι → ℚ) (N : ℕ) : Matrix ι ι ℚ :=
  fun i j => (∑ k ∈ Finset.range N, (x (k + 1) - x k) * (p k i * p k j)) +
    if i = j then ∑ a : ι, ∑ k ∈ Finset.range N,
      (x (k + 1) - x k) *
        (|p k i| * r k a + |p k a| * r k i + r k i * r k a)
    else 0

theorem rationalUpper_cast (x : ℕ → ℚ) (p r : ℕ → ι → ℚ) (N : ℕ) :
    (rationalUpper x p r N).map (Rat.castHom ℝ) =
      sampleGram (fun k => (x k : ℝ)) (fun k i => (p k i : ℝ)) N +
        diagonalAllowance (entryRadius (fun k => (x k : ℝ))
          (fun k i => (p k i : ℝ)) (fun k i => (r k i : ℝ)) N) := by
  ext i j
  by_cases hij : i = j <;>
    simp [rationalUpper, sampleGram, diagonalAllowance, entryRadius, productRadius, hij]

section Hilbert
variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℝ H]

theorem gram_quadratic (z : ι → H) (v : ι → ℝ) :
    quadratic (Matrix.gram ℝ z) v = ‖∑ i, v i • z i‖ ^ 2 := by
  simpa only [quadratic, star_trivial, real_inner_self_eq_norm_sq] using
    (Matrix.star_dotProduct_gram_mulVec (𝕜 := ℝ) z v v)

/-- Columnwise errors bound the full vector error, not its observed coefficients. -/
theorem sum_row_error (z zhat : ι → H) (e : ι → ℝ)
    (he : ∀ i, ‖z i - zhat i‖ ≤ e i) (v : ι → ℝ) :
    ‖(∑ i, v i • z i) - ∑ i, v i • zhat i‖ ≤ ∑ i, |v i| * e i := by
  rw [← Finset.sum_sub_distrib]
  simp only [← smul_sub]
  apply (norm_sum_le _ _).trans
  apply Finset.sum_le_sum
  intro i _
  rw [norm_smul, Real.norm_eq_abs]
  exact mul_le_mul_of_nonneg_left (he i) (abs_nonneg _)

/-- An arbitrary retained-head subtraction is legitimate against high tests.
No assertion that `h` is an exact projection is made or needed. -/
theorem pairing_le_after_head (z zhat h w : H) {e : ℝ}
    (he : ‖z - zhat‖ ≤ e) (hh : inner ℝ h w = 0) :
    |inner ℝ z w| ≤ (‖zhat - h‖ + e) * ‖w‖ := by
  have hid : inner ℝ z w = inner ℝ (zhat - h) w + inner ℝ (z - zhat) w := by
    simp only [inner_sub_left, hh]
    ring
  rw [hid]
  calc
    _ ≤ |inner ℝ (zhat - h) w| + |inner ℝ (z - zhat) w| := abs_add _ _
    _ ≤ ‖zhat - h‖ * ‖w‖ + ‖z - zhat‖ * ‖w‖ := by
      exact add_le_add (by simpa only [Real.norm_eq_abs] using norm_inner_le_norm (zhat - h) w)
        (by simpa only [Real.norm_eq_abs] using norm_inner_le_norm (z - zhat) w)
    _ ≤ _ := by nlinarith [mul_le_mul_of_nonneg_right he (norm_nonneg w)]

end Hilbert

/-- A finite diagonal allowance for the squared sum of columnwise errors. -/
noncomputable def columnErrorMatrix (e : ι → ℝ) : Matrix ι ι ℝ :=
  Matrix.diagonal (fun i => (Fintype.card ι : ℝ) * (e i) ^ 2)

theorem column_error_sq_le (e : ι → ℝ) (v : ι → ℝ) :
    (∑ i, |v i| * e i) ^ 2 ≤ quadratic (columnErrorMatrix e) v := by
  have h := Finset.sum_mul_sq_le_sq_mul_sq (Finset.univ : Finset ι)
    (fun _ : ι => (1 : ℝ)) (fun i => |v i| * e i)
  have hd : quadratic (columnErrorMatrix e) v =
      (Fintype.card ι : ℝ) * ∑ i, (v i) ^ 2 * (e i) ^ 2 := by
    simp only [columnErrorMatrix, quadratic, Matrix.diagonal_mulVec, dotProduct, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    ring
  rw [hd]
  simpa only [one_mul, one_pow, Finset.sum_const, Finset.card_univ, nsmul_eq_mul,
    mul_one, mul_pow, sq_abs] using h

theorem weighted_square_le (a b : ℝ) {t : ℝ} (ht : 0 < t) :
    (a + b) ^ 2 ≤ (1 + t) * a ^ 2 + (1 + 1 / t) * b ^ 2 := by
  have hid : t * ((1 + t) * a ^ 2 + (1 + 1 / t) * b ^ 2 - (a + b) ^ 2) =
      (t * a - b) ^ 2 := by field_simp [ht.ne']; ring
  apply (mul_le_mul_left ht).mp
  nlinarith [sq_nonneg (t * a - b)]


/-- The full physical Gram, not a sampled or frequency-projected matrix. -/
theorem L2_gram_eq_integralGram
    (z : ι → Lp ℝ 2 (volume : Measure ℝ)) (f : ι → ℝ → ℝ) {a b : ℝ}
    (hab : a ≤ b) (hrep : ∀ i, z i =ᵐ[volume] f i)
    (hsupport : ∀ i, ∀ᵐ t ∂volume, t ∉ Icc a b → f i t = 0) :
    Matrix.gram ℝ z = integralGram f a b := by
  ext i j
  rw [Matrix.gram_apply, L2.inner_def]
  change (∫ t, inner ℝ (z i t) (z j t)) = ∫ t in a..b, f i t * f j t
  calc
    _ = ∫ t : ℝ, f i t * f j t := by
      apply integral_congr_ae
      filter_upwards [hrep i, hrep j] with t hi hj
      simp [hi, hj, RCLike.inner_apply, mul_comm]
    _ = _ := by
      rw [intervalIntegral.integral_of_le hab, ← integral_Icc_eq_integral_Ioc,
        ← integral_indicator measurableSet_Icc]
      apply integral_congr_ae
      filter_upwards [hsupport i] with t ht
      by_cases hin : t ∈ Icc a b
      · simp [hin]
      · simp [hin, ht hin]

/-- A complete cell enclosure pays for every physical coefficient combination. -/
theorem L2_gram_upper_of_cells
    (z : ι → Lp ℝ 2 (volume : Measure ℝ)) (f : ι → ℝ → ℝ)
    (x : ℕ → ℝ) (p r : ℕ → ι → ℝ) (N : ℕ)
    (hx : Monotone x) (hrep : ∀ i, z i =ᵐ[volume] f i)
    (hsupport : ∀ i, ∀ᵐ t ∂volume, t ∉ Icc (x 0) (x N) → f i t = 0)
    (hr : ∀ k < N, ∀ i, 0 ≤ r k i)
    (hi : ∀ i j k, k < N →
      IntervalIntegrable (fun t => f i t * f j t) volume (x k) (x (k + 1)))
    (hcell : ∀ k < N, ∀ i t, t ∈ Icc (x k) (x (k + 1)) → |f i t - p k i| ≤ r k i)
    (v : ι → ℝ) :
    ‖∑ i, v i • z i‖ ^ 2 ≤
      quadratic (sampleGram x p N + diagonalAllowance (entryRadius x p r N)) v := by
  rw [← gram_quadratic,
    L2_gram_eq_integralGram z f (hx (Nat.zero_le N)) hrep hsupport]
  exact integralGram_upper_of_cells f x p r N hx hr hi hcell v

section PairingSquare
variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℝ H]

/-- This controls the original pairing against every annihilating test. -/
theorem pairing_sq_le_after_head (z zhat h w : H) {e t : ℝ}
    (he : ‖z - zhat‖ ≤ e) (hh : inner ℝ h w = 0) (ht : 0 < t) :
    (inner ℝ z w) ^ 2 ≤
      ((1 + t) * ‖zhat - h‖ ^ 2 + (1 + 1 / t) * e ^ 2) * ‖w‖ ^ 2 := by
  have he0 : 0 ≤ e := (norm_nonneg _).trans he
  have hp := pairing_le_after_head z zhat h w he hh
  have hright0 : 0 ≤ (‖zhat - h‖ + e) * ‖w‖ := by positivity
  have hs := mul_le_mul hp hp (abs_nonneg _) hright0
  have hs' : (inner ℝ z w) ^ 2 ≤ (‖zhat - h‖ + e) ^ 2 * ‖w‖ ^ 2 := by
    nlinarith [sq_abs (inner ℝ z w)]
  exact hs'.trans (mul_le_mul_of_nonneg_right
    (weighted_square_le ‖zhat - h‖ e ht) (sq_nonneg _))

end PairingSquare

end GRWTSK.FunctionalAnalysis.SpatialGramEnclosure
