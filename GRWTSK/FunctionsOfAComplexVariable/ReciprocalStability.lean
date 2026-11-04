/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Topology.Order.Compact
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

set_option autoImplicit false

noncomputable section

/-!
# Exact residuals and quantitative stability of complex division

The scalar identity a (u - y/a) = a u - y is the primary argument. Its norm
converts a complete residual into an exact error, and an independently supplied
positive lower bound on |a| gives a certified error allowance. The perturbation
bound retains both denominator margins: delta and delta - eta.

The compact-set result uses the actual minimum of a continuous norm. It gives
an existential margin, not an algorithm for finding one, a global margin, or a
uniform bound over an unbounded family. A family of nonzero constant functions
has arbitrarily large inverse norms, which tests this distinction independently
of any zeta or L-function hypothesis.

Consumer: conditional analytic division and sampled reconstruction in the
number-theory modules. No prime-counting error estimate or numerical certificate
is inferred from continuity. The algebra and extreme-value theorem are standard;
novelty not claimed. Mathlib is pinned by the existing manifest at
 d13f23b723b8a846827a245b89c10fc7d3f11612; upstream attribution is unchanged.
AI-assisted formalization. Independent review, compilation, fresh kernel check,
and transitive axiom audit: NOT_RUN. Target: leanprover/lean4:v4.34.1.
-/

namespace GRWTSK.Analysis.Division

/-- The whole residual is retained, including numerator and denominator errors. -/
def residual (a u y : ℂ) : ℂ := a * u - y

/-- The exact algebraic source-return identity. -/
theorem residual_identity {a : ℂ} (ha : a ≠ 0) (u y : ℂ) :
    a * (u - y / a) = residual a u y := by
  dsimp [residual]
  field_simp [ha] <;> ring

theorem residual_norm_identity {a : ℂ} (ha : a ≠ 0) (u y : ℂ) :
    ‖a‖ * ‖u - y / a‖ = ‖residual a u y‖ := by
  simpa only [norm_mul] using congrArg norm (residual_identity ha u y)

/-- This is equality, not merely a one-sided estimate. -/
theorem error_eq_residual_div_norm {a : ℂ} (ha : a ≠ 0) (u y : ℂ) :
    ‖u - y / a‖ = ‖residual a u y‖ / ‖a‖ := by
  apply (eq_div_iff (ne_of_gt (norm_pos_iff.mpr ha))).mpr
  simpa only [mul_comm] using residual_norm_identity ha u y

/-- A numerical lower-bound certificate is a separate hypothesis. -/
theorem error_le_of_residual {a u y : ℂ} {δ ε : ℝ}
    (hδ : 0 < δ) (hmargin : δ ≤ ‖a‖)
    (hresidual : ‖residual a u y‖ ≤ ε) :
    ‖u - y / a‖ ≤ ε / δ := by
  have ha : a ≠ 0 := norm_pos_iff.mp (lt_of_lt_of_le hδ hmargin)
  apply (le_div_iff₀ hδ).mpr
  calc
    ‖u - y / a‖ * δ ≤ ‖u - y / a‖ * ‖a‖ :=
      mul_le_mul_of_nonneg_left hmargin (norm_nonneg _)
    _ = ‖residual a u y‖ := by
      simpa only [mul_comm] using residual_norm_identity ha u y
    _ ≤ ε := hresidual

/-- Vanishing residual has exactly one solution when the denominator is nonzero. -/
theorem residual_zero_iff {a : ℂ} (ha : a ≠ 0) (u y : ℂ) :
    residual a u y = 0 ↔ u = y / a := by
  rw [← residual_identity ha u y, mul_eq_zero]
  simp only [ha, false_or, sub_eq_zero]

/-- The inverse is the special case with right-hand side one. -/
theorem inverse_error_le {a u : ℂ} {δ ε : ℝ}
    (hδ : 0 < δ) (hmargin : δ ≤ ‖a‖) (hresidual : ‖a * u - 1‖ ≤ ε) :
    ‖u - a⁻¹‖ ≤ ε / δ := by
  simpa only [one_div] using
    (error_le_of_residual (a := a) (u := u) (y := 1) hδ hmargin hresidual)

/-- Perturbation spends part of the original denominator margin. -/
theorem perturbed_margin {a b : ℂ} {δ η : ℝ}
    (hmargin : δ ≤ ‖a‖) (hperturb : ‖b - a‖ ≤ η) :
    δ - η ≤ ‖b‖ := by
  have htriangle : ‖a‖ ≤ ‖a - b‖ + ‖b‖ := by
    calc
      ‖a‖ = ‖(a - b) + b‖ := by rw [sub_add_cancel]
      _ ≤ ‖a - b‖ + ‖b‖ := norm_add_le _ _
  rw [norm_sub_rev a b] at htriangle
  linarith

/-- The strict perturbation threshold is material. -/
theorem perturbed_nonzero {a b : ℂ} {δ η : ℝ}
    (hmargin : δ ≤ ‖a‖) (hperturb : ‖b - a‖ ≤ η) (hgap : η < δ) : b ≠ 0 := by
  apply norm_pos_iff.mp
  exact lt_of_lt_of_le (sub_pos.mpr hgap) (perturbed_margin hmargin hperturb)

/-- Exact two-denominator identity for reciprocal perturbation. -/
theorem inverse_difference_norm {a b : ℂ} (ha : a ≠ 0) (hb : b ≠ 0) :
    ‖b⁻¹ - a⁻¹‖ * (‖a‖ * ‖b‖) = ‖b - a‖ := by
  have algebra : (b⁻¹ - a⁻¹) * (a * b) = a - b := by
    field_simp [ha, hb] <;> ring
  calc
    ‖b⁻¹ - a⁻¹‖ * (‖a‖ * ‖b‖) = ‖(b⁻¹ - a⁻¹) * (a * b)‖ := by
      simp only [norm_mul]
    _ = ‖a - b‖ := congrArg norm algebra
    _ = ‖b - a‖ := norm_sub_rev _ _

/-- Both the nonzero conclusion and the explicit stability estimate are returned. -/
theorem inverse_perturbation_bound {a b : ℂ} {δ η : ℝ}
    (hδ : 0 < δ) (hmargin : δ ≤ ‖a‖)
    (hperturb : ‖b - a‖ ≤ η) (hgap : η < δ) :
    b ≠ 0 ∧ ‖b⁻¹ - a⁻¹‖ ≤ η / (δ * (δ - η)) := by
  have ha : a ≠ 0 := norm_pos_iff.mp (lt_of_lt_of_le hδ hmargin)
  have hb := perturbed_nonzero hmargin hperturb hgap
  have hremaining : 0 < δ - η := sub_pos.mpr hgap
  have hproduct : δ * (δ - η) ≤ ‖a‖ * ‖b‖ :=
    mul_le_mul hmargin (perturbed_margin hmargin hperturb)
      hremaining.le (norm_nonneg a)
  refine ⟨hb, ?_⟩
  apply (le_div_iff₀ (mul_pos hδ hremaining)).mpr
  calc
    ‖b⁻¹ - a⁻¹‖ * (δ * (δ - η)) ≤ ‖b⁻¹ - a⁻¹‖ * (‖a‖ * ‖b‖) :=
      mul_le_mul_of_nonneg_left hproduct (norm_nonneg _)
    _ = ‖b - a‖ := inverse_difference_norm ha hb
    _ ≤ η := hperturb

/-- Compactness and continuity upgrade pointwise nonvanishing to an existential margin.
The empty compact set is allowed; no artificial nonempty premise is introduced. -/
theorem compact_positive_margin {K : Set ℂ} (hK : IsCompact K)
    {f : ℂ → ℂ} (hc : ContinuousOn f K) (hn : ∀ z ∈ K, f z ≠ 0) :
    ∃ δ : ℝ, 0 < δ ∧ ∀ z ∈ K, δ ≤ ‖f z‖ := by
  exact hK.exists_forall_le' hc.norm (fun z hz => norm_pos_iff.mpr (hn z hz))

/-- One margin controls every approximate solution on this fixed compact set. -/
theorem compact_uniform_residual_control {K : Set ℂ} (hK : IsCompact K)
    {f : ℂ → ℂ} (hc : ContinuousOn f K) (hn : ∀ z ∈ K, f z ≠ 0) :
    ∃ δ : ℝ, 0 < δ ∧
      ∀ (u y : ℂ → ℂ) (ε : ℝ),
        (∀ z ∈ K, ‖residual (f z) (u z) (y z)‖ ≤ ε) →
        ∀ z ∈ K, ‖u z - y z / f z‖ ≤ ε / δ := by
  obtain ⟨δ, hδ, hbound⟩ := compact_positive_margin hK hc hn
  refine ⟨δ, hδ, ?_⟩
  intro u y ε hr z hz
  exact error_le_of_residual hδ (hbound z hz) (hr z hz)

/-- Nonvanishing alone cannot give a uniform inverse norm over a family. -/
theorem nonzero_scalars_have_unbounded_inverses (R : ℝ) (hR : 0 ≤ R) :
    ∃ a : ℂ, a ≠ 0 ∧ R < ‖a⁻¹‖ := by
  have hp : 0 < R + 1 := by linarith
  have hcast : ((R + 1 : ℝ) : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr (ne_of_gt hp)
  refine ⟨((R + 1 : ℝ) : ℂ)⁻¹, inv_ne_zero hcast, ?_⟩
  simp only [inv_inv, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hp]
  linarith

/-- At equality in the perturbation threshold, complete loss of invertibility is possible. -/
theorem perturbation_threshold_is_strict :
    ‖(0 : ℂ) - 1‖ = 1 ∧ (0 : ℂ) = 0 := by
  norm_num

end GRWTSK.Analysis.Division
