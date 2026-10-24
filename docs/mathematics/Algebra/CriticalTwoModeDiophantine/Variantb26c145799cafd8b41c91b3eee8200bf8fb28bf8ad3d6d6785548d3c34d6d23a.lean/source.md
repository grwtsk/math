# Complete source: GRWTSK.Algebra.CriticalTwoModeDiophantine.Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e87a93636cdf6a3cf4bfbae020aedd5c7167c9e3` · SHA-256 `b26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeBasic
import Mathlib.Algebra.Order.Round
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Analysis.Real.Pi.Bounds

/-!
# Quantitative deficit for the unchanged badly approximable two-mode path

The source's Diophantine condition is recorded explicitly on nonzero integer
denominators. Nearest-period residuals, Jordan's cosine bound and the bounded
initial interval retain the actual path and every t in its complete prefix.
No arithmetic frequency, golden-ratio certificate or record-energy instance
is supplied by this module. Human exact two-mode direction: grwtsk contributors.
Local quantitative consumer: OpenAI Codex. Mathlib rounding, irrationality,
trigonometric and compactness declarations remain upstream.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeDiophantine
open CriticalTwoModeBasic Set
noncomputable section

/-- The badly approximable in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def BadlyApproximable (α : ℝ) : Prop := ∃ c : ℝ, 0 < c ∧ ∀ m : ℤ, m ≠ 0 → ∀ n : ℤ, c / |(m :
ℝ)| ≤ |α * (m : ℝ) - (n : ℝ)|
-/
def BadlyApproximable (α : ℝ) : Prop :=
  ∃ c : ℝ, 0 < c ∧ ∀ m : ℤ, m ≠ 0 → ∀ n : ℤ,
    c / |(m : ℝ)| ≤ |α * (m : ℝ) - (n : ℝ)|

/-- The nearest period in this module, with the following exact parameterization.

def nearestPeriod (t : ℝ) : ℤ := round (t / (2 * Real.pi))
-/
def nearestPeriod (t : ℝ) : ℤ := round (t / (2 * Real.pi))
/-- The period residual in this module, with the following exact parameterization.

def periodResidual (t : ℝ) : ℝ := t - (nearestPeriod t : ℝ) * (2 * Real.pi)
-/
def periodResidual (t : ℝ) : ℝ := t - (nearestPeriod t : ℝ) * (2 * Real.pi)

theorem badly_approximable_iff_positive_denominators (α : ℝ) :
    BadlyApproximable α ↔ ∃ c : ℝ, 0 < c ∧ ∀ m : ℕ, 1 ≤ m → ∀ n : ℤ,
      c/(m : ℝ) ≤ |α*(m : ℝ)-(n : ℝ)| := by
  constructor
  · rintro ⟨c,hc,hbad⟩
    refine ⟨c,hc,?_⟩
    intro m hm n
    have hm0 : m ≠ 0 := by omega
    have hmZ : (m : ℤ) ≠ 0 := by exact_mod_cast hm0
    simpa only [Int.cast_natCast, abs_of_nonneg (Nat.cast_nonneg (α := ℝ) m)] using
      hbad (m : ℤ) hmZ n
  · rintro ⟨c,hc,hbad⟩
    refine ⟨c,hc,?_⟩
    have hpos (m : ℤ) (hm : 0 < m) (n : ℤ) :
        c/|(m : ℝ)| ≤ |α*(m : ℝ)-(n : ℝ)| := by
      have he : (m.toNat : ℝ) = (m : ℝ) := by exact_mod_cast Int.toNat_of_nonneg hm.le
      have hmR : (0 : ℝ) < (m : ℝ) := by exact_mod_cast hm
      simpa only [he,abs_of_pos hmR] using hbad m.toNat (by omega) n
    intro m hm n
    rcases lt_or_gt_of_ne hm with hmneg | hmpos
    · have h := hpos (-m) (neg_pos.mpr hmneg) (-n)
      simp only [Int.cast_neg,abs_neg] at h
      have he : α*(-(m : ℝ))-(-(n : ℝ)) = -(α*(m : ℝ)-(n : ℝ)) := by ring
      rw [he,abs_neg] at h
      exact h
    · exact hpos m hmpos n

theorem badly_approximable_is_irrational {α : ℝ} (hα : BadlyApproximable α) :
    Irrational α := by
  obtain ⟨c, hc, hbad⟩ := hα
  apply (irrational_iff_ne_rational α).mpr
  intro a b hb he
  have h := hbad b hb a
  have hbR : (b : ℝ) ≠ 0 := by exact_mod_cast hb
  rw [he, div_mul_cancel₀ _ hbR, sub_self, abs_zero] at h
  exact (not_le_of_gt (div_pos hc (abs_pos.mpr hbR))) h

theorem literal_period_residual_abs_le_pi (t : ℝ) : |periodResidual t| ≤ Real.pi := by
  have h := abs_sub_round (t / (2 * Real.pi))
  have he : periodResidual t =
      (t / (2 * Real.pi) - (nearestPeriod t : ℝ)) * (2 * Real.pi) := by
    unfold periodResidual
    field_simp [Real.pi_ne_zero]
  rw [he, abs_mul, abs_of_pos (by positivity : (0 : ℝ) < 2 * Real.pi)]
  have h' := mul_le_mul_of_nonneg_right h (by positivity : (0 : ℝ) ≤ 2 * Real.pi)
  calc
    _ ≤ (1 / 2) * (2 * Real.pi) := h'
    _ = _ := by ring

theorem literal_period_residual_cos (t : ℝ) : Real.cos (periodResidual t) = Real.cos t :=
  Real.cos_sub_int_mul_two_pi t (nearestPeriod t)

theorem literal_period_residual_deficit (t : ℝ) :
    (2 / Real.pi ^ 2) * periodResidual t ^ 2 ≤ 1 - Real.cos t := by
  have h := Real.cos_le_one_sub_mul_cos_sq (literal_period_residual_abs_le_pi t)
  rw [literal_period_residual_cos] at h
  linarith

theorem literal_two_mode_residual_deficit (α t : ℝ) :
    (2 / Real.pi ^ 2) * (periodResidual t ^ 2 + periodResidual (α*t) ^ 2) ≤
      2 - twoMode α t := by
  have h1 := literal_period_residual_deficit t
  have h2 := literal_period_residual_deficit (α*t)
  unfold twoMode
  linarith

theorem literal_nearest_period_size_bound {t T : ℝ} (ht : 0 ≤ t) (htT : t ≤ T)
    (hT : 1 ≤ T) : |(nearestPeriod t : ℝ)| ≤ T := by
  have h : |t - periodResidual t| ≤ |t| + |periodResidual t| := by
    simpa only [Real.norm_eq_abs] using norm_sub_le t (periodResidual t)
  rw [abs_of_nonneg ht] at h
  have he : t - periodResidual t = (nearestPeriod t : ℝ) * (2 * Real.pi) := by
    unfold periodResidual
    ring
  rw [he, abs_mul, abs_of_pos (by positivity : (0 : ℝ) < 2 * Real.pi)] at h
  have hr := literal_period_residual_abs_le_pi t
  have hp := Real.pi_gt_three
  have hpaid := mul_nonneg (sub_nonneg.mpr hT) (by linarith : (0 : ℝ) ≤ Real.pi - 1)
  apply (mul_le_mul_iff_left₀ (by positivity : (0 : ℝ) < 2 * Real.pi)).mp
  calc
    _ ≤ t + |periodResidual t| := h
    _ ≤ T + Real.pi := add_le_add htT hr
    _ ≤ _ := by nlinarith

theorem literal_nonzero_period_diophantine_price {α c t T : ℝ}
    (hbad : ∀ m : ℤ, m ≠ 0 → ∀ n : ℤ, c / |(m : ℝ)| ≤ |α * (m : ℝ) - (n : ℝ)|)
    (ht : 0 ≤ t) (htT : t ≤ T) (hT : 1 ≤ T) (hm : nearestPeriod t ≠ 0) :
    2 * Real.pi * c ≤ T * (|α| * |periodResidual t| + |periodResidual (α*t)|) := by
  have hmR : (nearestPeriod t : ℝ) ≠ 0 := by exact_mod_cast hm
  have hb := (div_le_iff₀ (abs_pos.mpr hmR)).mp
    (hbad (nearestPeriod t) hm (nearestPeriod (α*t)))
  have he : (2 * Real.pi) *
      (α * (nearestPeriod t : ℝ) - (nearestPeriod (α*t) : ℝ)) =
      periodResidual (α*t) - α * periodResidual t := by
    unfold periodResidual
    ring
  have htr : |periodResidual (α*t) - α * periodResidual t| ≤
      |periodResidual (α*t)| + |α * periodResidual t| := by
    simpa only [Real.norm_eq_abs] using norm_sub_le (periodResidual (α*t)) (α * periodResidual t)
  rw [← he, abs_mul, abs_of_pos (by positivity : (0 : ℝ) < 2 * Real.pi), abs_mul] at htr
  have hsize := literal_nearest_period_size_bound ht htT hT
  calc
    _ ≤ (2 * Real.pi) *
        (|α * (nearestPeriod t : ℝ) - (nearestPeriod (α*t) : ℝ)| * |(nearestPeriod t : ℝ)|) := by
      gcongr
    _ = |(nearestPeriod t : ℝ)| * ((2 * Real.pi) *
        |α * (nearestPeriod t : ℝ) - (nearestPeriod (α*t) : ℝ)|) := by ring
    _ ≤ T * (|periodResidual (α*t)| + |α| * |periodResidual t|) :=
      mul_le_mul hsize htr (by positivity) (by linarith)
    _ = _ := by ring

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeDiophantine
```
