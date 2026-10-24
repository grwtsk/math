# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.FiniteConvolutionRecurrence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d078417c858db8e26bfd9614a3c83b4acba871f5` · SHA-256 `108a29bef5306f6751230a8fde0ddc6a402e8e71ccf2246b803ed2b44e97b71c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Order.Field.GeomSum
import Mathlib.Tactic

/-!
# Complete feedback factorial recurrence

Human mathematical direction: grwtsk contributors.
Formal implementation assistance: OpenAI Codex.

This leaf discharges the finite factorial recurrence used by the complete
shifted-row moment bootstrap. All previous moments remain in the sum.
It supplies no witness for the actual scalar arithmetic growth assertion.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.Asymptotics.FiniteConvolutionRecurrence

open Finset

/-- Complete finite geometric allowance, including the last shift. -/
theorem feedback_inverse_geometric_sum_le {ρ L : ℝ} (hρ : 0 < ρ)
    (hL : 0 < L) (hprod : 1 < ρ * L) (k : ℕ) :
    ∑ j ∈ Icc 1 k, ((ρ * L)⁻¹) ^ j ≤ 1 / (ρ * L - 1) := by
  have hp : 0 < ρ * L := mul_pos hρ hL
  have hq0 : 0 ≤ (ρ * L)⁻¹ := inv_nonneg.mpr hp.le
  have hq1 : (ρ * L)⁻¹ < 1 := (inv_lt_one₀ hp).2 hprod
  have H := geom_sum_Ico_le_of_lt_one (m := 1) (n := k + 1) hq0 hq1
  have he : (ρ * L)⁻¹ / (1 - (ρ * L)⁻¹) = 1 / (ρ * L - 1) := by
    field_simp
  have hinterval : Ico 1 (k + 1) = Icc 1 k := by
    ext j
    simp only [Finset.mem_Ico, Finset.mem_Icc]
    omega
  simpa only [hinterval, pow_one, he] using H

/-- Every inverse-shift term returns to the same leading power. -/
theorem feedback_inverse_shift_power {ρ L : ℝ} (hρ : ρ ≠ 0)
    (hL : L ≠ 0) {j k : ℕ} (hj : j ≤ k) :
    (ρ⁻¹) ^ j * L ^ (k - j) = L ^ k * ((ρ * L)⁻¹) ^ j := by
  rw [mul_inv_rev, mul_pow, inv_pow, inv_pow]
  field_simp
  rw [← pow_add, Nat.sub_add_cancel hj]

/-- Full positive convolution allowance; no moment index is discarded. -/
theorem feedback_inverse_shift_sum_le {ρ L : ℝ} (hρ : 0 < ρ)
    (hL : 0 < L) (hprod : 1 < ρ * L) (k : ℕ) :
    ∑ j ∈ Icc 1 k, (ρ⁻¹) ^ j * L ^ (k - j) ≤ L ^ k / (ρ * L - 1) := by
  calc
    _ = L ^ k * ∑ j ∈ Icc 1 k, ((ρ * L)⁻¹) ^ j := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro j hj
      exact feedback_inverse_shift_power hρ.ne' hL.ne' (Finset.mem_Icc.mp hj).2
    _ ≤ L ^ k * (1 / (ρ * L - 1)) :=
      mul_le_mul_of_nonneg_left (feedback_inverse_geometric_sum_le hρ hL hprod k)
        (pow_nonneg hL.le k)
    _ = _ := by ring

/-- The explicit lambda choice pays the complete transported ratio. -/
theorem feedback_transport_ratio_le_half {B ρ L : ℝ} (hB : 0 ≤ B)
    (hρ : 0 < ρ) (hLB : 2 * (B + 1) / ρ ≤ L) :
    1 < ρ * L ∧ 2 * B / (ρ * L - 1) ≤ 1 := by
  have Hp := (div_le_iff₀ hρ).mp hLB
  have Hprod : 1 < ρ * L := by nlinarith
  refine ⟨Hprod, ?_⟩
  apply (div_le_iff₀ (sub_pos.mpr Hprod)).2
  nlinarith

/-- The complete MB16--MB17 factorial recurrence has the claimed geometric gain. -/
theorem feedback_factorial_recurrence_bound {b : ℕ → ℝ} {a B ρ R L : ℝ}
    (_hb : ∀ k, 0 ≤ b k) (ha : 0 ≤ a) (hB : 0 ≤ B)
    (hρ : 0 < ρ) (hR : 0 < R)
    (hLR : 4 / R ≤ L) (hLB : 2 * (B + 1) / ρ ≤ L)
    (hb0 : b 0 ≤ a)
    (hrec : ∀ k : ℕ, 0 < k →
      b k ≤ a * (2 / R) ^ k + B * ∑ j ∈ Icc 1 k, (ρ⁻¹) ^ j * b (k - j)) :
    ∀ k : ℕ, b k ≤ 2 * a * L ^ k := by
  have hL : 0 < L := lt_of_lt_of_le (div_pos (by norm_num) hR) hLR
  obtain ⟨hprod, hratio⟩ := feedback_transport_ratio_le_half hB hρ hLB
  have htwo : 2 / R ≤ L := by
    have H : (2 : ℝ) / R ≤ 4 / R := by gcongr; norm_num
    exact H.trans hLR
  intro k
  induction k using Nat.strong_induction_on with
  | h k ih =>
    by_cases hk : k = 0
    · subst k
      simp only [pow_zero, mul_one]
      linarith
    · have hkpos : 0 < k := Nat.pos_of_ne_zero hk
      have Hsum : (∑ j ∈ Icc 1 k, (ρ⁻¹) ^ j * b (k - j)) ≤
          2 * a * ∑ j ∈ Icc 1 k, (ρ⁻¹) ^ j * L ^ (k - j) := by
        calc
          _ ≤ ∑ j ∈ Icc 1 k, (ρ⁻¹) ^ j * (2 * a * L ^ (k - j)) := by
            apply Finset.sum_le_sum
            intro j hj
            have hjpos : 0 < j := by
              have H := (Finset.mem_Icc.mp hj).1
              omega
            exact mul_le_mul_of_nonneg_left (ih (k - j) (Nat.sub_lt hkpos hjpos))
              (pow_nonneg (inv_nonneg.mpr hρ.le) j)
          _ = _ := by
            rw [Finset.mul_sum]
            apply Finset.sum_congr rfl
            intro j _
            ring
      have Herr : B * (∑ j ∈ Icc 1 k, (ρ⁻¹) ^ j * b (k - j)) ≤ a * L ^ k := by
        calc
          _ ≤ B * (2 * a * (L ^ k / (ρ * L - 1))) := by
            apply mul_le_mul_of_nonneg_left _ hB
            exact Hsum.trans (mul_le_mul_of_nonneg_left
              (feedback_inverse_shift_sum_le hρ hL hprod k) (by positivity))
          _ = (a * L ^ k) * (2 * B / (ρ * L - 1)) := by ring
          _ ≤ (a * L ^ k) * 1 :=
            mul_le_mul_of_nonneg_left hratio (mul_nonneg ha (pow_nonneg hL.le k))
          _ = a * L ^ k := mul_one _
      have Hforce : a * (2 / R) ^ k ≤ a * L ^ k :=
        mul_le_mul_of_nonneg_left
          (pow_le_pow_left₀ (div_nonneg (by norm_num) hR.le) htwo k) ha
      calc
        b k ≤ _ := hrec k hkpos
        _ ≤ a * L ^ k + a * L ^ k := add_le_add Hforce Herr
        _ = 2 * a * L ^ k := by ring

/-- The prescribed maximum in MB16 satisfies both explicit paid costs. -/
theorem feedback_factorial_recurrence_bound_of_max {b : ℕ → ℝ} {a B ρ R L : ℝ}
    (hb : ∀ k, 0 ≤ b k) (ha : 0 ≤ a) (hB : 0 ≤ B)
    (hρ : 0 < ρ) (hR : 0 < R)
    (hL : max (4 / R) (2 * (B + 1) / ρ) ≤ L)
    (hb0 : b 0 ≤ a)
    (hrec : ∀ k : ℕ, 0 < k →
      b k ≤ a * (2 / R) ^ k + B * ∑ j ∈ Icc 1 k, (ρ⁻¹) ^ j * b (k - j)) :
    ∀ k : ℕ, b k ≤ 2 * a * L ^ k :=
  feedback_factorial_recurrence_bound hb ha hB hρ hR
    ((le_max_left _ _).trans hL) ((le_max_right _ _).trans hL) hb0 hrec

end GRWTSK.Analysis.Asymptotics.FiniteConvolutionRecurrence
```
