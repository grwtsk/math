# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant2942e3b14974662d56ea7ef32dc96eeb59f650f0e7e1cf945a1541cbe543f3f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0acab9210e70b70d02c915b549ded26fb114ea6` · SHA-256 `2942e3b14974662d56ea7ef32dc96eeb59f650f0e7e1cf945a1541cbe543f3f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel

/-!
# Exact spacing of the source logarithmic frequencies

Adjacent logarithmic frequencies have gaps comparable to the reciprocal of
their index. The finite source inventory admits a reciprocal-length lower bound;
there is no positive spacing constant valid for all integer inventories.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateLogFrequencySpacing

open Filter
open EstimateSourceMobiusKernel

/-- Exact reciprocal bounds for consecutive positive logarithmic frequencies. -/
theorem adjacent_log_gap_bounds (n : ℕ) (hn : 1 ≤ n) :
    1 / ((n : ℝ) + 1) ≤ Real.log ((n : ℝ) + 1) - Real.log n ∧
      Real.log ((n : ℝ) + 1) - Real.log n ≤ 1 / (n : ℝ) := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast hn
  have hn10 : 0 < (n : ℝ) + 1 := by positivity
  have hratio := div_pos hn10 hn0
  have hlog := Real.log_div hn10.ne' hn0.ne'
  constructor
  · have h := Real.one_sub_inv_le_log_of_pos hratio
    rw [hlog] at h
    have heq : 1 - (((n : ℝ) + 1) / (n : ℝ))⁻¹ = 1 / ((n : ℝ) + 1) := by
      field_simp
      ring
    rwa [heq] at h
  · have h := Real.log_le_sub_one_of_pos hratio
    rw [hlog] at h
    have heq : ((n : ℝ) + 1) / (n : ℝ) - 1 = 1 / (n : ℝ) := by
      field_simp
      ring
    rwa [heq] at h

/-- A local logarithmic gap uses the larger index, not a fictitious fixed spacing. -/
theorem log_gap_lower (m n : ℕ) (hm : 1 ≤ m) (hmn : m < n) :
    1 / (n : ℝ) ≤ Real.log n - Real.log m := by
  have hm0 : 0 < (m : ℝ) := by exact_mod_cast hm
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (hm.trans hmn.le)
  have hmnR : (m : ℝ) + 1 ≤ (n : ℝ) := by exact_mod_cast hmn
  have h := Real.one_sub_inv_le_log_of_pos (div_pos hn0 hm0)
  rw [Real.log_div hn0.ne' hm0.ne'] at h
  have heq : 1 - ((n : ℝ) / (m : ℝ))⁻¹ = ((n : ℝ) - m) / n := by
    field_simp
  rw [heq] at h
  exact (div_le_div_of_nonneg_right (by linarith : (1 : ℝ) ≤ (n : ℝ) - m) hn0.le).trans h

/-- The finite inventory lower bound records its dependence on its full length. -/
theorem inventory_log_gap_lower (N m n : ℕ) (hm : 1 ≤ m) (hmn : m < n)
    (hnN : n ≤ N) :
    1 / (N : ℝ) ≤ Real.log n - Real.log m := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (hm.trans hmn.le)
  have hnNR : (n : ℝ) ≤ N := by exact_mod_cast hnN
  exact (one_div_le_one_div_of_le hn0 hnNR).trans (log_gap_lower m n hm hmn)

/-- Specialization to the literal source cutoff `floor(exp(2*A))`. -/
theorem source_inventory_log_gap_lower (A : ℝ) (m n : ℕ) (hm : 1 ≤ m)
    (hmn : m < n) (hn : n ≤ sourceKernelCutoff A) :
    1 / (sourceKernelCutoff A : ℝ) ≤ Real.log n - Real.log m :=
  inventory_log_gap_lower (sourceKernelCutoff A) m n hm hmn hn

/-- Every other positive logarithmic frequency is separated by the local reciprocal scale. -/
theorem local_log_gap_lower (m n : ℕ) (hm : 1 ≤ m) (hn : 1 ≤ n) (hne : m ≠ n) :
    1 / ((n : ℝ) + 1) ≤ |Real.log m - Real.log n| := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast hn
  rcases lt_or_gt_of_ne hne with hmn | hnm
  · have h := log_gap_lower m n hm hmn
    have hinv : 1 / ((n : ℝ) + 1) ≤ 1 / (n : ℝ) :=
      one_div_le_one_div_of_le hn0 (by linarith)
    have hab : Real.log n - Real.log m ≤ |Real.log m - Real.log n| := by
      rw [abs_sub_comm]
      exact le_abs_self _
    exact hinv.trans (h.trans hab)
  · have hnmR : (n : ℝ) + 1 ≤ (m : ℝ) := by exact_mod_cast hnm
    have hlog : Real.log ((n : ℝ) + 1) ≤ Real.log m :=
      Real.log_le_log (by positivity) hnmR
    have h := (adjacent_log_gap_bounds n hn).1
    exact (h.trans (sub_le_sub_right hlog _)).trans (le_abs_self _)

/-- The literal coefficient square keeps the inverse-index normalization. -/
theorem coefficient_square (n : ℕ) (hn : 1 ≤ n) (c : ℝ) :
    (c / Real.sqrt (n : ℝ)) ^ 2 = c ^ 2 / (n : ℝ) := by
  rw [div_pow, Real.sq_sqrt (by positivity : 0 ≤ (n : ℝ))]

/-- Local reciprocal-gap weighting removes the coefficient's inverse-index decay. -/
theorem local_spacing_weighted_coefficient_square (n : ℕ) (hn : 1 ≤ n) (c : ℝ) :
    (c / Real.sqrt (n : ℝ)) ^ 2 / (1 / ((n : ℝ) + 1)) =
      (((n : ℝ) + 1) / (n : ℝ)) * c ^ 2 := by
  rw [coefficient_square n hn c]
  field_simp

/-- Exact finite coefficient norm at the local logarithmic spacing scale. -/
theorem local_spacing_weighted_square_sum (N : ℕ) (c : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N,
      (c n / Real.sqrt (n : ℝ)) ^ 2 / (1 / ((n : ℝ) + 1))) =
      ∑ n ∈ Finset.Icc 1 N, (((n : ℝ) + 1) / (n : ℝ)) * (c n) ^ 2 := by
  apply Finset.sum_congr rfl
  intro n hn
  exact local_spacing_weighted_coefficient_square n (Finset.mem_Icc.mp hn).1 (c n)

/-- The last adjacent gap in a finite inventory has the reciprocal predecessor upper bound. -/
theorem inventory_last_gap_upper (N : ℕ) (hN : 2 ≤ N) :
    Real.log (N : ℝ) - Real.log ((N - 1 : ℕ) : ℝ) ≤
      1 / ((N - 1 : ℕ) : ℝ) := by
  have hp : 1 ≤ N - 1 := by omega
  have heq : ((N - 1 : ℕ) : ℝ) + 1 = (N : ℝ) := by
    exact_mod_cast (Nat.sub_add_cancel (by omega : 1 ≤ N))
  simpa only [heq] using (adjacent_log_gap_bounds (N - 1) hp).2

/-- The source's actual last adjacent spacing is of order `exp(-2*A)`. -/
theorem source_last_gap_bounds (A : ℝ) (hA : 1 ≤ A) :
    Real.exp (-(2 * A)) ≤
        Real.log (sourceKernelCutoff A : ℝ) -
          Real.log ((sourceKernelCutoff A - 1 : ℕ) : ℝ) ∧
      Real.log (sourceKernelCutoff A : ℝ) -
          Real.log ((sourceKernelCutoff A - 1 : ℕ) : ℝ) ≤
        2 * Real.exp (-(2 * A)) := by
  have hexp : 4 ≤ Real.exp (2 * A) := by
    have h := Real.add_one_le_exp A
    have hid : Real.exp (2 * A) = Real.exp A * Real.exp A := by
      rw [show 2 * A = A + A by ring, Real.exp_add]
    rw [hid]
    nlinarith
  have hN : 2 ≤ sourceKernelCutoff A := by
    apply (Nat.le_floor_iff (Real.exp_pos _).le).2
    norm_num only [Nat.cast_ofNat]
    linarith
  have hp : 1 ≤ sourceKernelCutoff A - 1 := by omega
  have hp0 : 0 < ((sourceKernelCutoff A - 1 : ℕ) : ℝ) := by exact_mod_cast hp
  have hN0 : 0 < (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast (by omega : 0 < sourceKernelCutoff A)
  have hNE : (sourceKernelCutoff A : ℝ) ≤ Real.exp (2 * A) :=
    Nat.floor_le (Real.exp_pos _).le
  have hEN : Real.exp (2 * A) < (sourceKernelCutoff A : ℝ) + 1 :=
    Nat.lt_floor_add_one _
  have hpcast : ((sourceKernelCutoff A - 1 : ℕ) : ℝ) + 1 =
      (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast (Nat.sub_add_cancel (by omega : 1 ≤ sourceKernelCutoff A))
  constructor
  · have hinv : Real.exp (-(2 * A)) ≤ 1 / (sourceKernelCutoff A : ℝ) := by
      rw [Real.exp_neg, ← one_div]
      exact one_div_le_one_div_of_le hN0 hNE
    exact hinv.trans (inventory_log_gap_lower (sourceKernelCutoff A)
      (sourceKernelCutoff A - 1) (sourceKernelCutoff A) hp (by omega) le_rfl)
  · have hhalf : Real.exp (2 * A) / 2 ≤
        ((sourceKernelCutoff A - 1 : ℕ) : ℝ) := by linarith
    have hinv := one_div_le_one_div_of_le (by positivity : 0 < Real.exp (2 * A) / 2) hhalf
    have heq : 1 / (Real.exp (2 * A) / 2) = 2 * Real.exp (-(2 * A)) := by
      rw [Real.exp_neg]
      field_simp
    rw [heq] at hinv
    exact (inventory_last_gap_upper (sourceKernelCutoff A) hN).trans hinv

/-- The adjacent gaps eventually fall below every prescribed positive constant. -/
theorem adjacent_log_gaps_eventually_lt (δ : ℝ) (hδ : 0 < δ) :
    ∀ᶠ n : ℕ in atTop, Real.log ((n : ℝ) + 1) - Real.log n < δ :=
  Real.tendsto_log_nat_add_one_sub_log.eventually (eventually_lt_nhds hδ)

/-- There is no positive separation constant for all positive logarithmic frequencies. -/
theorem no_uniform_positive_log_spacing :
    ¬ ∃ δ : ℝ, 0 < δ ∧
      ∀ n : ℕ, 1 ≤ n → δ ≤ Real.log ((n : ℝ) + 1) - Real.log n := by
  rintro ⟨δ, hδ, hgap⟩
  obtain ⟨n, hn, hlt⟩ := ((eventually_ge_atTop 1).and
    (adjacent_log_gaps_eventually_lt δ hδ)).exists
  exact (not_lt_of_ge (hgap n hn)) hlt

end EstimateLogFrequencySpacing
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
