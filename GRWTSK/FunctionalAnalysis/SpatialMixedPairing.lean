/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionalAnalysis.SpatialGramEnclosure

/-!
# Signed mixed pairings from complete spatial cells

The two sampled families need not coincide. Thus their mixed matrix is not
replaced by a positive Gram matrix. Oriented entry errors are symmetrized
only after the target's symmetry is supplied. The existing quadratic error
allowance then gives a LOWER matrix for every real coefficient vector.

Consumer: WeilFiniteSineSignedEnergy, restoring the exact retained head to
the same residual columns used in WeilFiniteSineSpatialResidual.
MSC2020: 46C05, 65G20, 65D30. No positivity or certificate existence assumed.
SOURCE_PROOF_CANDIDATE; all Lean execution and certified arithmetic NOT_RUN.
-/
set_option autoImplicit false
open MeasureTheory Set Matrix
open scoped BigOperators Interval

namespace GRWTSK.FunctionalAnalysis.SpatialMixedPairing

open SpatialGramEnclosure
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

noncomputable def mixedSamples (x : ℕ → ℝ) (p q : ℕ → ι → ℝ)
    (N : ℕ) : Matrix ι ι ℝ :=
  fun i j => ∑ k ∈ Finset.range N, (x (k + 1) - x k) * (p k i * q k j)

noncomputable def mixedRadii (x : ℕ → ℝ) (p q r s : ℕ → ι → ℝ)
    (N : ℕ) : Matrix ι ι ℝ :=
  fun i j => ∑ k ∈ Finset.range N,
    (x (k + 1) - x k) * productRadius (p k i) (q k j) (r k i) (s k j)

/-- Different input/output families; the entire interval is integrated. -/
theorem mixed_integral_error (f g : ι → ℝ → ℝ)
    (x : ℕ → ℝ) (p q r s : ℕ → ι → ℝ) (N : ℕ)
    (hx : Monotone x)
    (hr : ∀ k < N, ∀ i, 0 ≤ r k i) (hs : ∀ k < N, ∀ i, 0 ≤ s k i)
    (hi : ∀ i j k, k < N →
      IntervalIntegrable (fun t => f i t * g j t) volume (x k) (x (k + 1)))
    (hf : ∀ k < N, ∀ i t, t ∈ Icc (x k) (x (k + 1)) → |f i t - p k i| ≤ r k i)
    (hg : ∀ k < N, ∀ i t, t ∈ Icc (x k) (x (k + 1)) → |g i t - q k i| ≤ s k i)
    (i j : ι) :
    |(∫ t in (x 0)..(x N), f i t * g j t) - mixedSamples x p q N i j| ≤
      mixedRadii x p q r s N i j := by
  have hsplit := intervalIntegral.sum_integral_adjacent_intervals
    (a := x) (n := N) (fun k hk => hi i j k hk)
  unfold mixedSamples mixedRadii
  rw [← hsplit, ← Finset.sum_sub_distrib]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro k hk
  exact cell_product_error (f i) (g j) (hx (Nat.le_succ k))
    (hr k (Finset.mem_range.mp hk) i) (hs k (Finset.mem_range.mp hk) j)
    (hi i j k (Finset.mem_range.mp hk))
    (hf k (Finset.mem_range.mp hk) i) (hg k (Finset.mem_range.mp hk) j)

theorem mixedRadii_nonneg (x : ℕ → ℝ) (p q r s : ℕ → ι → ℝ) (N : ℕ)
    (hx : Monotone x)
    (hr : ∀ k < N, ∀ i, 0 ≤ r k i) (hs : ∀ k < N, ∀ i, 0 ≤ s k i)
    (i j : ι) : 0 ≤ mixedRadii x p q r s N i j := by
  apply Finset.sum_nonneg
  intro k hk
  exact mul_nonneg (sub_nonneg.mpr (hx (Nat.le_succ k)))
    (productRadius_nonneg (hr k (Finset.mem_range.mp hk) i)
      (hs k (Finset.mem_range.mp hk) j))

noncomputable def symmetrize (A : Matrix ι ι ℝ) : Matrix ι ι ℝ :=
  fun i j => (A i j + A j i) / 2

theorem symmetrize_symmetric (A : Matrix ι ι ℝ) (i j : ι) :
    symmetrize A i j = symmetrize A j i := by unfold symmetrize; ring

theorem symmetrize_nonneg (E : Matrix ι ι ℝ) (hE : ∀ i j, 0 ≤ E i j)
    (i j : ι) : 0 ≤ symmetrize E i j := by
  unfold symmetrize
  exact div_nonneg (add_nonneg (hE i j) (hE j i)) (by norm_num)

/-- Both oriented errors are paid; averaging centers alone is insufficient. -/
theorem symmetric_entry_error (A C E : Matrix ι ι ℝ)
    (hA : ∀ i j, A i j = A j i)
    (herr : ∀ i j, |A i j - C i j| ≤ E i j) (i j : ι) :
    |A i j - symmetrize C i j| ≤ symmetrize E i j := by
  have hid : A i j - symmetrize C i j =
      ((A i j - C i j) + (A j i - C j i)) / 2 := by
    rw [← hA i j]
    unfold symmetrize
    ring
  rw [hid, abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  exact div_le_div_of_nonneg_right
    ((abs_add _ _).trans (add_le_add (herr i j) (herr j i))) (by norm_num)

/-- This matrix is a signed lower enclosure, NOT a positive Gram replacement. -/
noncomputable def lowerMatrix (C E : Matrix ι ι ℝ) : Matrix ι ι ℝ :=
  symmetrize C - diagonalAllowance (symmetrize E)

theorem quadratic_lower_of_oriented_error (A C E : Matrix ι ι ℝ)
    (hA : ∀ i j, A i j = A j i) (hE : ∀ i j, 0 ≤ E i j)
    (herr : ∀ i j, |A i j - C i j| ≤ E i j) (v : ι → ℝ) :
    quadratic (lowerMatrix C E) v ≤ quadratic A v := by
  have h := quadratic_error_le A (symmetrize C) (symmetrize E)
    (symmetrize_nonneg E hE) (symmetrize_symmetric E)
    (symmetric_entry_error A C E hA herr) v
  have hsub : quadratic (lowerMatrix C E) v = quadratic (symmetrize C) v -
      quadratic (diagonalAllowance (symmetrize E)) v := by
    simp only [lowerMatrix, quadratic_eq_double_sum, Matrix.sub_apply, mul_sub,
      Finset.sum_sub_distrib]
  rw [hsub]
  linarith [(abs_le.mp h).1]

/-- Restore an exact head matrix and add a separately bounded operator-row error. -/
noncomputable def signedLower (H : Matrix ι ι ℝ) (x : ℕ → ℝ)
    (p q r s : ℕ → ι → ℝ) (N : ℕ) (e n : ι → ℝ) : Matrix ι ι ℝ :=
  lowerMatrix (H + mixedSamples x p q N)
    (mixedRadii x p q r s N + fun i j => e i * n j)

/-- Exact finite rational assembly. No transcendental value is computed here. -/
def rationalSignedLower (H : Matrix ι ι ℚ) (x : ℕ → ℚ)
    (p q r s : ℕ → ι → ℚ) (N : ℕ) (e n : ι → ℚ) : Matrix ι ι ℚ :=
  let C : Matrix ι ι ℚ := fun i j => H i j +
    ∑ k ∈ Finset.range N, (x (k + 1) - x k) * (p k i * q k j)
  let E : Matrix ι ι ℚ := fun i j =>
    (∑ k ∈ Finset.range N, (x (k + 1) - x k) *
      (|p k i| * s k j + |q k j| * r k i + r k i * s k j)) + e i * n j
  fun i j => (C i j + C j i) / 2 -
    if i = j then ∑ a, (E i a + E a i) / 2 else 0

theorem rationalSignedLower_cast (H : Matrix ι ι ℚ) (x : ℕ → ℚ)
    (p q r s : ℕ → ι → ℚ) (N : ℕ) (e n : ι → ℚ) :
    (rationalSignedLower H x p q r s N e n).map (Rat.castHom ℝ) =
      signedLower (H.map (Rat.castHom ℝ)) (fun k => (x k : ℝ))
        (fun k i => (p k i : ℝ)) (fun k i => (q k i : ℝ))
        (fun k i => (r k i : ℝ)) (fun k i => (s k i : ℝ)) N
        (fun i => (e i : ℝ)) (fun i => (n i : ℝ)) := by
  ext i j
  by_cases hij : i = j <;>
    simp [rationalSignedLower, signedLower, lowerMatrix, symmetrize,
      mixedSamples, mixedRadii, diagonalAllowance, productRadius, hij]

end GRWTSK.FunctionalAnalysis.SpatialMixedPairing
