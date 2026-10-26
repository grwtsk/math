/- Copyright (c) 2026 grwtsk contributors. MIT.
Local source attribution: grwtsk contributors.
Imported Mathlib/GRWTSK work retains original authorship and licenses. -/
import GRWTSK.Analysis.Geometry.FiniteQuadraticMidpointDecoder

set_option autoImplicit false
noncomputable section

/-!
# Exact observation residual and decoder amplification

Errors attach to the *three actual* quadratic source samples (start, exact
contact midpoint, finish). Their decoder residual is a complete matrix-vector
identity. The central control coordinate has amplification coefficients
1/2, 2, 1/2; the factor 3 under a uniform absolute error bound is not
silently replaced by a dimension-free isometry or a signed Gram estimate.
-/

namespace GRWTSK.Analysis.Geometry.FiniteQuadraticMidpointDecoder

/-- The entire source residual induced by three independent ordinary-
evaluation errors, without suppressing the mixed central coordinate. -/
theorem decode_contactSamples_add_error (x e : Controls) :
    decoderMatrix *ᵥ (contactSamples x + e) - x =
      decoderMatrix *ᵥ e := by
  rw [Matrix.mulVec_add, decode_contactSamples]
  simp

/-- The two outer control-coordinate errors are copied exactly by the
decoder and cannot be assumed to cancel the central error. -/
theorem decoder_error_start (e : Controls) :
    (decoderMatrix *ᵥ e) 0 = e 0 := by
  norm_num [decoderMatrix, Matrix.mulVec, Matrix.dotProduct, Fin.sum_univ_three]

theorem decoder_error_finish (e : Controls) :
    (decoderMatrix *ᵥ e) 2 = e 2 := by
  norm_num [decoderMatrix, Matrix.mulVec, Matrix.dotProduct, Fin.sum_univ_three]

/-- The central control coordinate uses all three observation errors. -/
theorem decoder_error_control (e : Controls) :
    (decoderMatrix *ᵥ e) 1 =
      (-(1 / 2 : ℝ)) * e 0 + 2 * e 1 +
        (-(1 / 2 : ℝ)) * e 2 := by
  norm_num [decoderMatrix, Matrix.mulVec, Matrix.dotProduct,
    Fin.sum_univ_three]

/-- A *genuine* absolute-value error budget for the central recovered
control coordinate, with each observation error kept separate. -/
theorem decoder_error_control_norm_le (e : Controls) :
    ‖(decoderMatrix *ᵥ e) 1‖ ≤
      (1 / 2 : ℝ) * ‖e 0‖ + 2 * ‖e 1‖ +
        (1 / 2 : ℝ) * ‖e 2‖ := by
  rw [decoder_error_control]
  have hleft := norm_add_le
    ((-(1 / 2 : ℝ)) * e 0 + 2 * e 1)
    ((-(1 / 2 : ℝ)) * e 2)
  have hfirst := norm_add_le ((-(1 / 2 : ℝ)) * e 0) (2 * e 1)
  calc
    ‖(-(1 / 2 : ℝ)) * e 0 + 2 * e 1 + (-(1 / 2 : ℝ)) * e 2‖ ≤
        ‖(-(1 / 2 : ℝ)) * e 0 + 2 * e 1‖ +
          ‖(-(1 / 2 : ℝ)) * e 2‖ := hleft
    _ ≤ (‖(-(1 / 2 : ℝ)) * e 0‖ + ‖2 * e 1‖) +
          ‖(-(1 / 2 : ℝ)) * e 2‖ := by
        exact add_le_add_right hfirst _
    _ = (1 / 2 : ℝ) * ‖e 0‖ + 2 * ‖e 1‖ +
          (1 / 2 : ℝ) * ‖e 2‖ := by
        simp [norm_mul] <;> ring

/-- Supplied per-observation absolute error budgets imply the exact
coordinate-specific decoder budget, not a guessed small-error premise. -/
theorem decoder_error_control_budget (e : Controls) (budget : Fin 3 → ℝ)
    (hbudget : ∀ i, ‖e i‖ ≤ budget i) :
    ‖(decoderMatrix *ᵥ e) 1‖ ≤
      (1 / 2 : ℝ) * budget 0 + 2 * budget 1 +
        (1 / 2 : ℝ) * budget 2 := by
  have hnorm := decoder_error_control_norm_le e
  have h0 := hbudget 0
  have h1 := hbudget 1
  have h2 := hbudget 2
  nlinarith

/-- Uniform input measurement uncertainty can amplify by factor three
in the central source control coordinate. It is not an isometry. -/
theorem decoder_error_control_uniform (e : Controls) (ε : ℝ)
    (hbudget : ∀ i, ‖e i‖ ≤ ε) :
    ‖(decoderMatrix *ᵥ e) 1‖ ≤ 3 * ε := by
  have hb := decoder_error_control_budget e (fun _ => ε) hbudget
  nlinarith

/-- The factor three is attained: the two endpoint errors oppose the
middle error, so cancellation cannot be presumed from the contact geometry. -/
theorem decoder_uniform_factor_three_attained :
    ∃ e : Controls,
      (∀ i, ‖e i‖ ≤ (1 : ℝ)) ∧
        ‖(decoderMatrix *ᵥ e) 1‖ = 3 := by
  refine ⟨(fun i => if i = 1 then (1 : ℝ) else -1), ?_, ?_⟩
  · intro i
    fin_cases i <;> norm_num
  · rw [decoder_error_control]
    norm_num

end GRWTSK.Analysis.Geometry.FiniteQuadraticMidpointDecoder
